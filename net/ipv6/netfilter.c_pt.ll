; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter.c_pt.bc'
source_filename = "../net/ipv6/netfilter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip6_route_me_harder\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_route_me_harder\09\09\09\09"
module asm "\09.long\09__crc_ip6_route_me_harder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_route_me_harder:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_route_me_harder\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_route_me_harder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__nf_ip6_route\22, \22a\22\09"
module asm "\09.weak\09__crc___nf_ip6_route\09\09\09\09"
module asm "\09.long\09__crc___nf_ip6_route\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nf_ip6_route:\09\09\09\09\09"
module asm "\09.asciz \09\22__nf_ip6_route\22\09\09\09\09\09"
module asm "__kstrtabns___nf_ip6_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+br_ip6_fragment\22, \22a\22\09"
module asm "\09.weak\09__crc_br_ip6_fragment\09\09\09\09"
module asm "\09.long\09__crc_br_ip6_fragment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_br_ip6_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22br_ip6_fragment\22\09\09\09\09\09"
module asm "__kstrtabns_br_ip6_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.206, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_addr = type { %union.anon.91 }
%union.anon.91 = type { [4 x i32] }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.206 = type { %struct.anon.207 }
%struct.anon.207 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.185, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.186, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.187, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.181, [0 x i32], %union.anon.182, i16, i16, %union.anon.183, %struct.refcount_struct, [0 x i32], %union.anon.184 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { %struct.hlist_node }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.185 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.186 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.187 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
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
%struct.flowi = type { %union.anon.144 }
%union.anon.144 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.nf_ipv6_ops = type { ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.199, i16 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.201 }
%union.anon.201 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.203, i16 }
%struct.anon.203 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.204 }
%union.anon.204 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.sk_buff = type { %union.anon.82, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, i32, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.161 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.193, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.193 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.anon.145 = type { i16, i16 }
%struct.anon.202 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ip6_frag_state = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ip6_fraglist_iter = type { ptr, ptr, i32, i32, i32, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nf_queue_entry = type { %struct.list_head, ptr, i32, i32, ptr, ptr, %struct.nf_hook_state, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ip6_route_me_harder.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip6_route_me_harder\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv6/netfilter.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ip6_route_me_harder: No more route\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_ip6_route_me_harder = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_route_me_harder = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_route_me_harder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_route_me_harder to i32), ptr @__kstrtab_ip6_route_me_harder, ptr @__kstrtabns_ip6_route_me_harder }, section "___ksymtab+ip6_route_me_harder", align 4
@__nf_ip6_route.fake_pinfo = internal constant %struct.ipv6_pinfo zeroinitializer, align 4
@__nf_ip6_route.fake_sk = internal constant { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full } { %struct.sock { %struct.sock_common { %union.anon.14 zeroinitializer, %union.anon.16 zeroinitializer, %union.anon.17 zeroinitializer, i16 0, i8 0, i8 0, i32 1, %union.anon.19 zeroinitializer, ptr null, %struct.possible_net_t zeroinitializer, %struct.in6_addr zeroinitializer, %struct.in6_addr zeroinitializer, %struct.atomic64_t zeroinitializer, %union.anon.181 zeroinitializer, [0 x i32] zeroinitializer, %union.anon.182 zeroinitializer, i16 0, i16 0, %union.anon.183 zeroinitializer, %struct.refcount_struct zeroinitializer, [0 x i32] zeroinitializer, %union.anon.184 zeroinitializer }, ptr null, i32 0, i32 0, %struct.socket_lock_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, %struct.sk_buff_head zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.anon.185 zeroinitializer, %struct.llist_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, %union.anon.186 zeroinitializer, [2 x ptr] zeroinitializer, ptr null, %struct.atomic_t zeroinitializer, i32 0, i32 0, %struct.refcount_struct zeroinitializer, i32 0, %union.anon.187 zeroinitializer, %struct.sk_buff_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.timer_list zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.page_frag zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i16 0, i16 0, i16 0, i32 0, ptr null, %struct.rwlock_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.kuid_t zeroinitializer, i8 0, i16 0, %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, i32 0, i64 0, %struct.seqlock_t zeroinitializer, i16 0, i8 0, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.sock_cgroup_data zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.callback_head zeroinitializer, ptr null }, ptr @__nf_ip6_route.fake_pinfo, i32 0, i16 0, i16 0, ptr null, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, ptr null, %struct.inet_cork_full zeroinitializer }, align 8
@__kstrtab___nf_ip6_route = external dso_local constant [0 x i8], align 1
@__kstrtabns___nf_ip6_route = external dso_local constant [0 x i8], align 1
@__ksymtab___nf_ip6_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nf_ip6_route to i32), ptr @__kstrtab___nf_ip6_route, ptr @__kstrtabns___nf_ip6_route }, section "___ksymtab_gpl+__nf_ip6_route", align 4
@__kstrtab_br_ip6_fragment = external dso_local constant [0 x i8], align 1
@__kstrtabns_br_ip6_fragment = external dso_local constant [0 x i8], align 1
@__ksymtab_br_ip6_fragment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @br_ip6_fragment to i32), ptr @__kstrtab_br_ip6_fragment, ptr @__kstrtabns_br_ip6_fragment }, section "___ksymtab_gpl+br_ip6_fragment", align 4
@ipv6ops = internal constant { %struct.nf_ipv6_ops, [20 x i8] } { %struct.nf_ipv6_ops { ptr @ip6_route_input, ptr @ip6_fragment, ptr @nf_ip6_reroute }, [20 x i8] zeroinitializer }, align 32
@nf_ipv6_ops = external dso_local global ptr, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 47, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"ipv6ops\00", align 1
@___asan_gen_.19 = private constant [24 x i8] c"../net/ipv6/netfilter.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 236, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1011, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 271, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___nf_ip6_route, ptr @__ksymtab_br_ip6_fragment, ptr @__ksymtab_ip6_route_me_harder, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ipv6ops, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_route_me_harder(ptr noundef %net, ptr noundef %sk_partial, ptr noundef %skb) #0 align 64 {
entry:
  %flkeys = alloca %struct.flow_keys, align 8
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  %tobool.not.i = icmp eq ptr %sk_partial, null
  br i1 %tobool.not.i, label %entry.sk_to_full_sk.exit_crit_edge, label %land.lhs.true.i

entry.sk_to_full_sk.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_to_full_sk.exit

land.lhs.true.i:                                  ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk_partial, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp.i = icmp eq i8 %5, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.sock_common, ptr %sk_partial, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge, %entry.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %8, %if.then.i ], [ %sk_partial, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ], [ null, %entry.sk_to_full_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %flkeys) #8
  %9 = call ptr @memset(ptr %flkeys, i32 255, i32 72)
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr) #8
  %and = and i32 %call.i, 34
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #8
  %10 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %tobool.not = icmp eq ptr %sk.addr.0.i, null
  br i1 %tobool.not, label %sk_to_full_sk.exit.cond.false_crit_edge, label %land.lhs.true

sk_to_full_sk.exit.cond.false_crit_edge:          ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

land.lhs.true:                                    ; preds = %sk_to_full_sk.exit
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end10_crit_edge

land.lhs.true.cond.end10_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %sk_to_full_sk.exit.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %cond.false.cond.end10_crit_edge, label %cond.true7

cond.false.cond.end10_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end10

cond.true7:                                       ; preds = %cond.false
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i151 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool.not.i152 = icmp eq i32 %and.i151, 0
  br i1 %tobool.not.i152, label %cond.true7.skb_dst.exit_crit_edge, label %land.lhs.true.i154

cond.true7.skb_dst.exit_crit_edge:                ; preds = %cond.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.lhs.true.i154:                               ; preds = %cond.true7
  %call.i153 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool1.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i154.skb_dst.exit_crit_edge

land.lhs.true.i154.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i154
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !33

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i154.skb_dst.exit_crit_edge, %cond.true7.skb_dst.exit_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %and25.i = and i32 %17, -2
  %18 = inttoptr i32 %and25.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %skb_dst.exit, %cond.false.cond.end10_crit_edge, %land.lhs.true.cond.end10_crit_edge
  %cond11 = phi i32 [ %22, %skb_dst.exit ], [ 0, %cond.false.cond.end10_crit_edge ], [ %12, %land.lhs.true.cond.end10_crit_edge ]
  %23 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond11, ptr %fl6, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %24 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flowic_mark, align 8
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 3
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %29 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %flowic_tos, align 4
  br i1 %tobool.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #10
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i, i32 0, i32 55
  %30 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %retval.sroa.0.0.copyload.i = load i32, ptr %sk_uid.i, align 4
  br label %sock_net_uid.exit

cond.false.i:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #10
  %user_ns.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %31 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns.i, align 4
  %call.i156 = tail call i32 @make_kuid(ptr noundef %32, i32 noundef 0) #8
  br label %sock_net_uid.exit

sock_net_uid.exit:                                ; preds = %cond.false.i, %cond.true.i
  %retval.sroa.0.0.i = phi i32 [ %retval.sroa.0.0.copyload.i, %cond.true.i ], [ %call.i156, %cond.false.i ]
  %33 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.sroa.0.0.i, ptr %flowic_uid, align 4
  %flowic_tun_key = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 9
  %34 = ptrtoint ptr %flowic_tun_key to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %flowic_tun_key, align 8
  %flowic_multipath_hash = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 10
  %35 = ptrtoint ptr %flowic_multipath_hash to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flowic_multipath_hash, align 8
  %daddr13 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %daddr13, ptr %daddr, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr15 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %saddr, ptr %saddr15, i32 16)
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %38 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flowlabel, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %39 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %uli, align 4
  %mp_hash = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 5
  %40 = ptrtoint ptr %mp_hash to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %mp_hash, align 8
  %fib6_rules_require_fldissect.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 19
  %41 = ptrtoint ptr %fib6_rules_require_fldissect.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fib6_rules_require_fldissect.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i157 = icmp eq i32 %42, 0
  br i1 %tobool.not.i157, label %sock_net_uid.exit.fib6_rules_early_flow_dissect.exit_crit_edge, label %if.end.i

sock_net_uid.exit.fib6_rules_early_flow_dissect.exit_crit_edge: ; preds = %sock_net_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fib6_rules_early_flow_dissect.exit

if.end.i:                                         ; preds = %sock_net_uid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = call ptr @memset(ptr %flkeys, i32 0, i32 72)
  %call.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %flkeys, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #8
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %flkeys, i32 0, i32 6
  %44 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ports.i, align 4
  %sport.i = getelementptr inbounds %struct.anon.145, ptr %uli, i32 0, i32 1
  %46 = ptrtoint ptr %sport.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %sport.i, align 2
  %dst.i = getelementptr inbounds %struct.anon.202, ptr %ports.i, i32 0, i32 1
  %47 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dst.i, align 2
  %49 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %uli, align 4
  %ip_proto.i = getelementptr inbounds %struct.flow_keys, ptr %flkeys, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ip_proto.i, align 2
  %52 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %flowic_proto, align 2
  br label %fib6_rules_early_flow_dissect.exit

fib6_rules_early_flow_dissect.exit:               ; preds = %if.end.i, %sock_net_uid.exit.fib6_rules_early_flow_dissect.exit_crit_edge
  %call.i158 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef %sk.addr.0.i, ptr noundef nonnull %fl6, i32 noundef 0) #8
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i158, i32 0, i32 15
  %53 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %error, align 4
  %conv = sext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool18.not = icmp eq i16 %54, 0
  br i1 %tobool18.not, label %if.end75, label %if.then

if.then:                                          ; preds = %fib6_rules_early_flow_dissect.exit
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call.i158, i32 0, i32 6
  %55 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %56, null
  br i1 %cmp.not, label %if.then.do.body35_crit_edge, label %do.body, !prof !33

if.then.do.body35_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %56, i32 0, i32 33, i32 1
  %57 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ipv6, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i159 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i159 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %add = add i32 %65, %59
  %66 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %66, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx28 = getelementptr [37 x i64], ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx28, align 8
  %add29 = add i64 %68, 1
  store i64 %add29, ptr %arrayidx28, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %66, i32 0, i32 1, i32 0, i32 1
  %69 = call ptr @llvm.returnaddress(i32 0) #8
  %70 = ptrtoint ptr %69 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %70) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  %71 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  br label %do.body35

do.body35:                                        ; preds = %do.body, %if.then.do.body35_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %73 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ipv6_statistics, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i160 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i160 to ptr
  %cpu46 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu46 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu46, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %81, %75
  %82 = inttoptr i32 %add48 to ptr
  %syncp49 = getelementptr inbounds %struct.ipstats_mib, ptr %82, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp49)
  %arrayidx51 = getelementptr [37 x i64], ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx51, align 8
  %add52 = add i64 %84, 1
  store i64 %add52, ptr %arrayidx51, align 8
  %dep_map.i.i161 = getelementptr inbounds %struct.ipstats_mib, ptr %82, i32 0, i32 1, i32 0, i32 1
  %85 = call ptr @llvm.returnaddress(i32 0) #8
  %86 = ptrtoint ptr %85 to i32
  call void @lock_release(ptr noundef %dep_map.i.i161, i32 noundef %86) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  %87 = ptrtoint ptr %syncp49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp49, align 4
  %inc.i.i.i162 = add i32 %88, 1
  store i32 %inc.i.i.i162, ptr %syncp49, align 4
  call fastcc void @local_bh_enable()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6_route_me_harder.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_route_me_harder, %land.lhs.true68)) #8
          to label %do.end74 [label %land.lhs.true68], !srcloc !35

land.lhs.true68:                                  ; preds = %do.body35
  %call69 = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end74_crit_edge, label %if.then71

land.lhs.true68.do.end74_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip6_route_me_harder.descriptor, ptr noundef nonnull @.str.3) #8
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %land.lhs.true68.do.end74_crit_edge, %do.body35
  call void @dst_release(ptr noundef %call.i158) #8
  br label %cleanup

if.end75:                                         ; preds = %fib6_rules_early_flow_dissect.exit
  %89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i163 = icmp ne i32 %91, 0
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i163, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i.i, label %if.end75.skb_dst_drop.exit_crit_edge

if.end75.skb_dst_drop.exit_crit_edge:             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %91, -2
  %92 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %92) #8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end75.skb_dst_drop.exit_crit_edge
  %tobool.not.i166 = icmp eq ptr %call.i158, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %93 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i166, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %94 = ptrtoint ptr %call.i158 to i32
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %89, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags, align 8
  %98 = and i16 %97, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool78.not = icmp eq i16 %98, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %skb_dst_drop.exit.if.end91_crit_edge

skb_dst_drop.exit.if.end91_crit_edge:             ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true79:                                  ; preds = %skb_dst_drop.exit
  %call.i167 = call i32 @__xfrm_decode_session(ptr noundef %skb, ptr noundef nonnull %fl6, i32 noundef 10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp82 = icmp eq i32 %call.i167, 0
  br i1 %cmp82, label %if.then84, label %land.lhs.true79.if.end91_crit_edge

land.lhs.true79.if.end91_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then84:                                        ; preds = %land.lhs.true79
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %89, align 8
  %call86 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %call.i158, ptr noundef nonnull %fl6, ptr noundef %sk.addr.0.i, i32 noundef 0) #8
  %cmp.i173 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %call86 to i32
  br label %cleanup

if.end90:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.i174 = icmp eq ptr %call86, null
  %101 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %bf.load.i176 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i177 = and i32 %bf.load.i176, 4096
  %bf.shl.i178 = select i1 %tobool.not.i174, i32 %bf.load.mask.i177, i32 4096
  %bf.clear4.i179 = and i32 %bf.load.i176, -4097
  %bf.set.i180 = or i32 %bf.shl.i178, %bf.clear4.i179
  store i32 %bf.set.i180, ptr %slow_gro.i, align 2
  %102 = ptrtoint ptr %call86 to i32
  %103 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %89, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %land.lhs.true79.if.end91_crit_edge, %skb_dst_drop.exit.if.end91_crit_edge
  %104 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %89, align 8
  %and.i181 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.not.i182 = icmp eq i32 %and.i181, 0
  br i1 %tobool.not.i182, label %if.end91.skb_dst.exit192_crit_edge, label %land.lhs.true.i185

if.end91.skb_dst.exit192_crit_edge:               ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit192

land.lhs.true.i185:                               ; preds = %if.end91
  %call.i183 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool1.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool1.not.i184, label %land.rhs.i188, label %land.lhs.true.i185.skb_dst.exit192_crit_edge

land.lhs.true.i185.skb_dst.exit192_crit_edge:     ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit192

land.rhs.i188:                                    ; preds = %land.lhs.true.i185
  %call2.i186 = call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i186)
  %tobool3.not.i187 = icmp eq i32 %call2.i186, 0
  br i1 %tobool3.not.i187, label %do.end.i189, label %land.rhs.i188.skb_dst.exit192_crit_edge, !prof !33

land.rhs.i188.skb_dst.exit192_crit_edge:          ; preds = %land.rhs.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit192

do.end.i189:                                      ; preds = %land.rhs.i188
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit192

skb_dst.exit192:                                  ; preds = %do.end.i189, %land.rhs.i188.skb_dst.exit192_crit_edge, %land.lhs.true.i185.skb_dst.exit192_crit_edge, %if.end91.skb_dst.exit192_crit_edge
  %106 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %89, align 8
  %and25.i190 = and i32 %107, -2
  %108 = inttoptr i32 %and25.i190 to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 19
  %111 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %hard_header_len, align 2
  %conv94 = zext i16 %112 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %113 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i, align 4
  %115 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %116 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv94)
  %cmp96 = icmp ult i32 %sub.ptr.sub.i, %conv94
  br i1 %cmp96, label %land.lhs.true98, label %skb_dst.exit192.if.end105_crit_edge

skb_dst.exit192.if.end105_crit_edge:              ; preds = %skb_dst.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

land.lhs.true98:                                  ; preds = %skb_dst.exit192
  %sub = add nuw nsw i32 %conv94, 15
  %add100 = sub i32 %sub, %sub.ptr.sub.i
  %and101 = and i32 %add100, -16
  %call102 = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and101, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true98.if.end105_crit_edge, label %land.lhs.true98.cleanup_crit_edge

land.lhs.true98.cleanup_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true98.if.end105_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end105:                                        ; preds = %land.lhs.true98.if.end105_crit_edge, %skb_dst.exit192.if.end105_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %land.lhs.true98.cleanup_crit_edge, %if.then88, %do.end74
  %retval.0 = phi i32 [ %conv, %do.end74 ], [ 0, %if.end105 ], [ %100, %if.then88 ], [ -12, %land.lhs.true98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flkeys) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !36
  %5 = tail call i32 @llvm.read_register.i32(metadata !23) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %14 = tail call i32 @llvm.read_register.i32(metadata !23) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !23) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !23) #8
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %33 = tail call i32 @llvm.read_register.i32(metadata !23) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !40

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #8
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nf_ip6_route(ptr noundef %net, ptr nocapture noundef writeonly %dst, ptr noundef %fl, i1 noundef zeroext %strict) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %strict, ptr @__nf_ip6_route.fake_sk, ptr null
  %call.i = tail call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef %cond, ptr noundef %fl, i32 noundef 0) #8
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dst_release(ptr noundef %call.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dst, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv = sext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_ip6_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %data, ptr nocapture noundef readonly %output) #0 align 64 {
entry:
  %state = alloca %struct.ip6_frag_state, align 4
  %prevhdr = alloca ptr, align 4
  %iter = alloca %struct.ip6_fraglist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_max_size1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %frag_max_size1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %frag_max_size1, align 4
  %conv = zext i16 %1 to i32
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %state) #8
  %5 = call ptr @memset(ptr %state, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr) #8
  %6 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr, align 4, !annotation !42
  %call = call i32 @ip6_find_1stfragopt(ptr noundef %skb, ptr noundef nonnull %prevhdr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.blackhole_crit_edge, label %if.end

entry.blackhole_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %blackhole

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prevhdr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %11 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %mtu3 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %mtu3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp4 = icmp ult i32 %15, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %1)
  %cmp6 = icmp ult i16 %1, 1280
  %or.cond = or i1 %cmp6, %cmp4
  %add10 = add nuw i32 %call, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %conv)
  %cmp11 = icmp ugt i32 %add10, %conv
  %or.cond178 = select i1 %or.cond, i1 true, i1 %cmp11
  br i1 %or.cond178, label %if.end.blackhole_crit_edge, label %if.end14

if.end.blackhole_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %blackhole

if.end14:                                         ; preds = %if.end
  %add.neg = add nsw i32 %conv, -8
  %sub = sub i32 %add.neg, %call
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call18 = call i32 @ipv6_select_ident(ptr noundef %net, ptr noundef %daddr, ptr noundef %saddr) #8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp20 = icmp eq i16 %21, 1536
  br i1 %cmp20, label %land.lhs.true, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end14
  %call22 = call i32 @skb_checksum_help(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.blackhole_crit_edge

land.lhs.true.blackhole_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %blackhole

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.if.end24_crit_edge ], [ %call, %if.end14.if.end24_crit_edge ]
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %11, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hard_header_len, align 2
  %conv25 = zext i16 %25 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %needed_headroom, align 8
  %conv26 = zext i16 %27 to i32
  %add27 = add nuw nsw i32 %conv26, %conv25
  %and = and i32 %add27, 131056
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %31, null
  br i1 %cmp.i.not, label %if.end24.slow_path_crit_edge, label %if.then30

if.end24.slow_path_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_path

if.then30:                                        ; preds = %if.end24
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp10.not.i.i = icmp eq i8 %37, 0
  br i1 %cmp10.not.i.i, label %if.then30.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

if.then30.skb_pagelen.exit_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %if.then30
  %conv.i.i184 = zext i8 %37 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i184, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %29, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %38 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %39, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %if.then30.skb_pagelen.exit_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %if.then30.skb_pagelen.exit_crit_edge ], [ %add.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #8
  %40 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %41 = add i32 %call, %35
  %42 = sub i32 %33, %41
  %sub32 = add i32 %42, %len.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub32, i32 %sub)
  %cmp33 = icmp ugt i32 %sub32, %sub
  br i1 %cmp33, label %skb_pagelen.exit.cleanup.thread_crit_edge, label %lor.lhs.false35

skb_pagelen.exit.cleanup.thread_crit_edge:        ; preds = %skb_pagelen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false35:                                  ; preds = %skb_pagelen.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %45 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add37 = add nuw nsw i32 %and, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add37)
  %cmp38 = icmp ult i32 %sub.ptr.sub.i, %add37
  br i1 %cmp38, label %lor.lhs.false35.cleanup.thread_crit_edge, label %if.end41

lor.lhs.false35.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end41:                                         ; preds = %lor.lhs.false35
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %47 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end41.if.end45_crit_edge, label %skb_cloned.exit

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

skb_cloned.exit:                                  ; preds = %if.end41
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #8
  %48 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %49, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i186.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i186.not, label %skb_cloned.exit.if.end45_crit_edge, label %skb_cloned.exit.cleanup_crit_edge

skb_cloned.exit.cleanup_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_cloned.exit.if.end45_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45:                                         ; preds = %skb_cloned.exit.if.end45_crit_edge, %if.end41.if.end45_crit_edge
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 6
  %add52 = add i32 %call, 24
  %add53 = add i32 %add52, %and
  br label %for.cond

for.cond:                                         ; preds = %if.end57.for.cond_crit_edge, %if.end45
  %frag2.0.in = phi ptr [ %frag_list, %if.end45 ], [ %frag2.0, %if.end57.for.cond_crit_edge ]
  %52 = ptrtoint ptr %frag2.0.in to i32
  call void @__asan_load4_noabort(i32 %52)
  %frag2.0 = load ptr, ptr %frag2.0.in, align 8
  %tobool47.not = icmp eq ptr %frag2.0, null
  br i1 %tobool47.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %len = getelementptr inbounds %struct.sk_buff, ptr %frag2.0, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub)
  %cmp48 = icmp ugt i32 %54, %sub
  br i1 %cmp48, label %for.body.cleanup.thread_crit_edge, label %lor.lhs.false50

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false50:                                  ; preds = %for.body
  %data.i187 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0, i32 0, i32 19
  %55 = ptrtoint ptr %data.i187 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i187, align 4
  %head.i188 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0, i32 0, i32 18
  %57 = ptrtoint ptr %head.i188 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i188, align 8
  %sub.ptr.lhs.cast.i189 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i190 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i191 = sub i32 %sub.ptr.lhs.cast.i189, %sub.ptr.rhs.cast.i190
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i191, i32 %add53)
  %cmp54 = icmp ult i32 %sub.ptr.sub.i191, %add53
  br i1 %cmp54, label %lor.lhs.false50.cleanup.thread_crit_edge, label %if.end57

lor.lhs.false50.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end57:                                         ; preds = %lor.lhs.false50
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %frag2.0, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %users.i, align 4
  %cmp.i192.not = icmp eq i32 %60, 1
  br i1 %cmp.i192.not, label %if.end57.for.cond_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57.for.cond_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prevhdr, align 4
  %call62 = call i32 @ip6_fraglist_init(ptr noundef %skb, i32 noundef %call, ptr noundef %62, i8 noundef zeroext %10, i32 noundef %call18, ptr noundef nonnull %iter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %for.end.cleanup.thread_crit_edge, label %for.cond67.preheader

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.cond67.preheader:                             ; preds = %for.end
  %frag = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 1
  br label %for.cond67

for.cond67:                                       ; preds = %if.end77, %for.cond67.preheader
  %skb.addr.0 = phi ptr [ %68, %if.end77 ], [ %skb, %for.cond67.preheader ]
  %63 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %frag, align 4
  %tobool68.not = icmp eq ptr %64, null
  br i1 %tobool68.not, label %for.cond67.if.end70_crit_edge, label %if.then69

for.cond67.if.end70_crit_edge:                    ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #10
  call void @ip6_fraglist_prepare(ptr noundef %skb.addr.0, ptr noundef nonnull %iter) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %for.cond67.if.end70_crit_edge
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %4, ptr %65, align 8
  %call71 = call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %data, ptr noundef %skb.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.end82.critedge

lor.lhs.false73:                                  ; preds = %if.end70
  %67 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frag, align 4
  %tobool75.not = icmp eq ptr %68, null
  br i1 %tobool75.not, label %if.then81.critedge, label %if.end77

if.end77:                                         ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %frag, align 4
  store ptr null, ptr %68, align 8
  br label %for.cond67

if.then81.critedge:                               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iter, align 4
  call void @kfree(ptr noundef %73) #8
  br label %cleanup.thread200

if.end82.critedge:                                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iter, align 4
  call void @kfree(ptr noundef %75) #8
  %76 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %frag, align 4
  call void @kfree_skb_list(ptr noundef %77) #8
  br label %cleanup.thread200

cleanup.thread:                                   ; preds = %for.end.cleanup.thread_crit_edge, %lor.lhs.false50.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge, %lor.lhs.false35.cleanup.thread_crit_edge, %skb_pagelen.exit.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #8
  br label %blackhole

cleanup.thread200:                                ; preds = %if.end82.critedge, %if.then81.critedge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #8
  br label %cleanup107

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %skb_cloned.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #8
  br label %slow_path

slow_path:                                        ; preds = %cleanup, %if.end24.slow_path_crit_edge
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %11, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 22
  %80 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %needed_tailroom, align 2
  %hard_header_len87 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 19
  %82 = ptrtoint ptr %hard_header_len87 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hard_header_len87, align 2
  %conv88 = zext i16 %83 to i32
  %needed_headroom89 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 21
  %84 = ptrtoint ptr %needed_headroom89 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %needed_headroom89, align 8
  %conv90 = zext i16 %85 to i32
  %add91 = add nuw nsw i32 %conv90, %conv88
  %and92 = and i32 %add91, 131056
  %add93 = add nuw nsw i32 %and92, 16
  %86 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prevhdr, align 4
  call void @ip6_frag_init(ptr noundef %skb, i32 noundef %call, i32 noundef %sub, i16 noundef zeroext %81, i32 noundef %add93, ptr noundef %87, i8 noundef zeroext %10, i32 noundef %call18, ptr noundef nonnull %state) #8
  %left = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 3
  %88 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp94.not213 = icmp eq i32 %89, 0
  br i1 %cmp94.not213, label %slow_path.while.end_crit_edge, label %slow_path.while.body_crit_edge

slow_path.while.body_crit_edge:                   ; preds = %slow_path
  br label %while.body

slow_path.while.end_crit_edge:                    ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond:                                       ; preds = %if.end100
  %90 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %left, align 4
  %cmp94.not = icmp eq i32 %91, 0
  br i1 %cmp94.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %slow_path.while.body_crit_edge
  %call96 = call ptr @ip6_frag_next(ptr noundef %skb, ptr noundef nonnull %state) #8
  %cmp.i193 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %while.body.blackhole_crit_edge, label %if.end100

while.body.blackhole_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %blackhole

if.end100:                                        ; preds = %while.body
  %92 = getelementptr inbounds %struct.sk_buff, ptr %call96, i32 0, i32 2
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %4, ptr %92, align 8
  %call101 = call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %data, ptr noundef %call96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %while.cond, label %if.end100.blackhole_crit_edge

if.end100.blackhole_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %blackhole

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %slow_path.while.end_crit_edge
  %err.3.lcssa = phi i32 [ %err.0, %slow_path.while.end_crit_edge ], [ 0, %while.cond.while.end_crit_edge ]
  call void @consume_skb(ptr noundef %skb) #8
  br label %cleanup107

blackhole:                                        ; preds = %if.end100.blackhole_crit_edge, %while.body.blackhole_crit_edge, %cleanup.thread, %land.lhs.true.blackhole_crit_edge, %if.end.blackhole_crit_edge, %entry.blackhole_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup107

cleanup107:                                       ; preds = %blackhole, %while.end, %cleanup.thread200
  %retval.2 = phi i32 [ 0, %blackhole ], [ %err.3.lcssa, %while.end ], [ %call71, %cleanup.thread200 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_select_ident(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_fraglist_init(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_fraglist_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_frag_init(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_frag_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_netfilter_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ipv6_ops to i32))
  store volatile ptr @ipv6ops, ptr @nf_ipv6_ops, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_netfilter_fini() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ipv6_ops to i32))
  store volatile ptr null, ptr @nf_ipv6_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_ip6_reroute(ptr noundef %skb, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %entry1, i32 56
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %xor.i = xor i32 %9, %7
  %arrayidx4.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %entry1, i32 60
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %13, %11
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %entry1, i32 64
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %17, %15
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %entry1, i32 68
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %21, %19
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %saddr5 = getelementptr i8, ptr %entry1, i32 72
  %22 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr, align 4
  %24 = ptrtoint ptr %saddr5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr5, align 4
  %xor.i24 = xor i32 %25, %23
  %arrayidx4.i25 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx4.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i25, align 4
  %arrayidx6.i26 = getelementptr i8, ptr %entry1, i32 76
  %28 = ptrtoint ptr %arrayidx6.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i26, align 4
  %xor7.i27 = xor i32 %29, %27
  %or.i28 = or i32 %xor7.i27, %xor.i24
  %arrayidx9.i29 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i29, align 4
  %arrayidx11.i30 = getelementptr i8, ptr %entry1, i32 80
  %32 = ptrtoint ptr %arrayidx11.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i30, align 4
  %xor12.i31 = xor i32 %33, %31
  %or13.i32 = or i32 %or.i28, %xor12.i31
  %arrayidx15.i33 = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx15.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i33, align 4
  %arrayidx17.i34 = getelementptr i8, ptr %entry1, i32 84
  %36 = ptrtoint ptr %arrayidx17.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx17.i34, align 4
  %xor18.i35 = xor i32 %37, %35
  %or19.i36 = or i32 %or13.i32, %xor18.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i36)
  %cmp.i37 = icmp eq i32 %or19.i36, 0
  br i1 %cmp.i37, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %mark = getelementptr i8, ptr %entry1, i32 88
  %41 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp8.not = icmp eq i32 %40, %42
  br i1 %cmp8.not, label %lor.lhs.false7.cleanup15_crit_edge, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7.cleanup15_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

cleanup:                                          ; preds = %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %net = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 5
  %43 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_queue_entry, ptr %entry1, i32 0, i32 6, i32 4
  %45 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk, align 4
  %call13 = tail call i32 @ip6_route_me_harder(ptr noundef %44, ptr noundef %46, ptr noundef %skb)
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup, %lor.lhs.false7.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.1 = phi i32 [ %call13, %cleanup ], [ 0, %entry.cleanup15_crit_edge ], [ 0, %lor.lhs.false7.cleanup15_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter.c", i32 47, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ip6_route_me_harder.descriptor, !1, !"descriptor", i1 false, i1 false}
!6 = !{ptr @__ksymtab_ip6_route_me_harder, !7, !"__ksymtab_ip6_route_me_harder", i1 false, i1 false}
!7 = !{!"../net/ipv6/netfilter.c", i32 77, i32 1}
!8 = !{ptr @__nf_ip6_route.fake_pinfo, !9, !"fake_pinfo", i1 false, i1 false}
!9 = !{!"../net/ipv6/netfilter.c", i32 97, i32 33}
!10 = !{ptr @__nf_ip6_route.fake_sk, !11, !"fake_sk", i1 false, i1 false}
!11 = !{!"../net/ipv6/netfilter.c", i32 98, i32 32}
!12 = !{ptr @__ksymtab___nf_ip6_route, !13, !"__ksymtab___nf_ip6_route", i1 false, i1 false}
!13 = !{!"../net/ipv6/netfilter.c", i32 115, i32 1}
!14 = !{ptr @__ksymtab_br_ip6_fragment, !15, !"__ksymtab_br_ip6_fragment", i1 false, i1 false}
!15 = !{!"../net/ipv6/netfilter.c", i32 234, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipv6ops, !22, !"ipv6ops", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter.c", i32 236, i32 33}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2150315510}
!35 = !{i64 2148696320, i64 2148696325, i64 2148696338, i64 2148696382, i64 2148696416, i64 2148696437}
!36 = !{i64 2150207112}
!37 = !{i64 2150212046}
!38 = !{i64 2150233764}
!39 = !{i64 2150238658}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2150315185}
!42 = !{!"auto-init"}
