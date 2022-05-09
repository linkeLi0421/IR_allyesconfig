; ModuleID = '/llk/IR_all_yes/net/ipv4/fou.c_pt.bc'
source_filename = "../net/ipv4/fou.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fou_encap_hlen\22, \22a\22\09"
module asm "\09.weak\09__crc_fou_encap_hlen\09\09\09\09"
module asm "\09.long\09__crc_fou_encap_hlen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fou_encap_hlen:\09\09\09\09\09"
module asm "\09.asciz \09\22fou_encap_hlen\22\09\09\09\09\09"
module asm "__kstrtabns_fou_encap_hlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gue_encap_hlen\22, \22a\22\09"
module asm "\09.weak\09__crc_gue_encap_hlen\09\09\09\09"
module asm "\09.long\09__crc_gue_encap_hlen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gue_encap_hlen:\09\09\09\09\09"
module asm "\09.asciz \09\22gue_encap_hlen\22\09\09\09\09\09"
module asm "__kstrtabns_gue_encap_hlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__fou_build_header\22, \22a\22\09"
module asm "\09.weak\09__crc___fou_build_header\09\09\09\09"
module asm "\09.long\09__crc___fou_build_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fou_build_header:\09\09\09\09\09"
module asm "\09.asciz \09\22__fou_build_header\22\09\09\09\09\09"
module asm "__kstrtabns___fou_build_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__gue_build_header\22, \22a\22\09"
module asm "\09.weak\09__crc___gue_build_header\09\09\09\09"
module asm "\09.long\09__crc___gue_build_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___gue_build_header:\09\09\09\09\09"
module asm "\09.asciz \09\22__gue_build_header\22\09\09\09\09\09"
module asm "__kstrtabns___gue_build_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ip_tunnel_encap_ops = type { ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.anon.159 = type { i8, i8, i16 }
%struct.guehdr = type { %union.anon.158 }
%union.anon.158 = type { i32 }
%struct.anon.144 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.udp_tunnel_sock_cfg = type { ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.fou_cfg = type { i16, i8, i8, %struct.udp_port_cfg }
%struct.udp_port_cfg = type { i8, %union.anon.160, %union.anon.161, i16, i16, i32, i8 }
%union.anon.160 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%union.anon.161 = type { %struct.in6_addr }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.fou = type { ptr, i8, i8, i16, i8, i16, %struct.list_head, %struct.callback_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.fou_net = type { %struct.list_head, %struct.mutex }
%struct.anon.109 = type { i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.124 }
%union.anon.124 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.gro_remcsum = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_fou_encap_hlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_fou_encap_hlen = external dso_local constant [0 x i8], align 1
@__ksymtab_fou_encap_hlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fou_encap_hlen to i32), ptr @__kstrtab_fou_encap_hlen, ptr @__kstrtabns_fou_encap_hlen }, section "___ksymtab+fou_encap_hlen", align 4
@__kstrtab_gue_encap_hlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_gue_encap_hlen = external dso_local constant [0 x i8], align 1
@__ksymtab_gue_encap_hlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gue_encap_hlen to i32), ptr @__kstrtab_gue_encap_hlen, ptr @__kstrtabns_gue_encap_hlen }, section "___ksymtab+gue_encap_hlen", align 4
@__kstrtab___fou_build_header = external dso_local constant [0 x i8], align 1
@__kstrtabns___fou_build_header = external dso_local constant [0 x i8], align 1
@__ksymtab___fou_build_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fou_build_header to i32), ptr @__kstrtab___fou_build_header, ptr @__kstrtabns___fou_build_header }, section "___ksymtab+__fou_build_header", align 4
@__kstrtab___gue_build_header = external dso_local constant [0 x i8], align 1
@__kstrtabns___gue_build_header = external dso_local constant [0 x i8], align 1
@__ksymtab___gue_build_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__gue_build_header to i32), ptr @__kstrtab___gue_build_header, ptr @__kstrtabns___gue_build_header }, section "___ksymtab+__gue_build_header", align 4
@fou_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"fou\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 11, i32 0, i8 -128, i8 0, i8 3, i8 0, ptr @fou_nl_policy, ptr null, ptr null, ptr null, ptr @fou_nl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@fou_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fou_init_net, ptr null, ptr @fou_exit_net, ptr null, ptr @fou_net_id, i32 100 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_fou__591_1293_fou_init6 = internal global ptr @fou_init, section ".initcall6.init", align 4
@__exitcall_fou_fini = internal global ptr @fou_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author592 = internal constant [45 x i8] c"fou.author=Tom Herbert <therbert@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file593 = internal constant [22 x i8] c"fou.file=net/ipv4/fou\00", section ".modinfo", align 1
@__UNIQUE_ID_license594 = internal constant [16 x i8] c"fou.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description595 = internal constant [29 x i8] c"fou.description=Foo over UDP\00", section ".modinfo", align 1
@fou_iptun_ops = internal constant { %struct.ip_tunnel_encap_ops, [20 x i8] } { %struct.ip_tunnel_encap_ops { ptr @fou_encap_hlen, ptr @fou_build_header, ptr @gue_err }, [20 x i8] zeroinitializer }, align 32
@gue_iptun_ops = internal constant { %struct.ip_tunnel_encap_ops, [20 x i8] } { %struct.ip_tunnel_encap_ops { ptr @gue_encap_hlen, ptr @gue_build_header, ptr @gue_err }, [20 x i8] zeroinitializer }, align 32
@inet_protos = external dso_local global [256 x ptr], align 4
@gue_err_proto_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv4/fou.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fou_nl_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@fou_nl_ops = internal constant { [3 x %struct.genl_small_ops], [60 x i8] } { [3 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @fou_nl_cmd_add_port, ptr null, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @fou_nl_cmd_rm_port, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @fou_nl_cmd_get_port, ptr @fou_nl_dump, i8 3, i8 0, i8 0, i8 3 }], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@inet6_offloads = external dso_local global [256 x ptr], align 4
@inet_offloads = external dso_local global [256 x ptr], align 4
@fou_gro_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fou_gro_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gue_gro_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gue_gro_receive.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gue_gro_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fou_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@fou_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fn->fou_lock\00", [18 x i8] zeroinitializer }, align 32
@ip_tunnel_encap_add_fou_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013can't add fou ops\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip_tunnel_encap_add_fou_ops\00", [36 x i8] zeroinitializer }, align 32
@ip_tunnel_encap_add_fou_ops._entry_ptr = internal global ptr @ip_tunnel_encap_add_fou_ops._entry, section ".printk_index", align 4
@ip_tunnel_encap_add_fou_ops._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013can't add gue ops\0A\00", [43 x i8] zeroinitializer }, align 32
@ip_tunnel_encap_add_fou_ops._entry_ptr.13 = internal global ptr @ip_tunnel_encap_add_fou_ops._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 136]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"fou_net_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1256, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"fou_iptun_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1184, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"gue_iptun_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1190, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1107, i32 38 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"fou_nl_policy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 647, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"fou_nl_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 904, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"fou_net_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 43, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 991, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1240, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1202, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [18 x i8] c"../net/ipv4/fou.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1208, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author592, ptr @__UNIQUE_ID_description595, ptr @__UNIQUE_ID_file593, ptr @__UNIQUE_ID_license594, ptr @__exitcall_fou_fini, ptr @__initcall__kmod_fou__591_1293_fou_init6, ptr @__ksymtab___fou_build_header, ptr @__ksymtab___gue_build_header, ptr @__ksymtab_fou_encap_hlen, ptr @__ksymtab_gue_encap_hlen, ptr @fou_fini, ptr @ip_tunnel_encap_add_fou_ops._entry, ptr @ip_tunnel_encap_add_fou_ops._entry.11, ptr @ip_tunnel_encap_add_fou_ops._entry_ptr, ptr @ip_tunnel_encap_add_fou_ops._entry_ptr.13, ptr @fou_net_ops, ptr @fou_iptun_ops, ptr @gue_iptun_ops, ptr @.str, ptr @.str.1, ptr @fou_nl_policy, ptr @fou_nl_ops, ptr @fou_net_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @fou_init_net.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_iptun_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gue_iptun_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_nl_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_nl_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fou_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tunnel_encap_add_fou_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tunnel_encap_add_fou_ops._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fou_encap_hlen(ptr nocapture readnone %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gue_encap_hlen(ptr nocapture noundef readonly %e) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %spec.select = select i1 %tobool.not, i32 12, i32 16
  %3 = zext i16 %2 to i32
  %add3 = add nuw nsw i32 %spec.select, %3
  ret i32 %add3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fou_build_header(ptr noundef %skb, ptr nocapture noundef readonly %e, ptr nocapture readnone %protocol, ptr nocapture noundef writeonly %sport, i32 noundef %type) #3 align 64 {
entry:
  %min.addr.i = alloca i32, align 4
  %max.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sport1 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 2
  %0 = ptrtoint ptr %sport1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sport1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i)
  %7 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %min.addr.i, align 4
  %8 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %max.addr.i, align 4
  call void @inet_get_local_port_range(ptr noundef %6, ptr noundef nonnull %min.addr.i, ptr noundef nonnull %max.addr.i) #12
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %10 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %if.then.i.i, label %cond.false.skb_get_hash.exit.i_crit_edge

cond.false.skb_get_hash.exit.i_crit_edge:         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @__skb_get_hash(ptr noundef %skb) #12
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %cond.false.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %12 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge, !prof !83

skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge: ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %udp_flow_src_port.exit

if.else.i:                                        ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = call i32 @udp_flow_hashrnd() #12
  br label %udp_flow_src_port.exit

udp_flow_src_port.exit:                           ; preds = %if.else.i, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge
  %hash.0.i = phi i32 [ %call8.i, %if.else.i ], [ %13, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge ]
  %shl.i = shl i32 %hash.0.i, 16
  %xor.i = xor i32 %shl.i, %hash.0.i
  %conv11.i = zext i32 %xor.i to i64
  %14 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max.addr.i, align 4
  %16 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min.addr.i, align 4
  %sub.i = sub i32 %15, %17
  %conv12.i = sext i32 %sub.i to i64
  %mul.i = mul nsw i64 %conv12.i, %conv11.i
  %shr.i = lshr i64 %mul.i, 32
  %conv131.i = zext i32 %17 to i64
  %add.i = add nuw nsw i64 %shr.i, %conv131.i
  %conv14.i = trunc i64 %add.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %udp_flow_src_port.exit, %if.end.cond.end_crit_edge
  %cond.in = phi i16 [ %conv14.i, %udp_flow_src_port.exit ], [ %1, %if.end.cond.end_crit_edge ]
  %18 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %cond.in, ptr %sport, align 2
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gue_build_header(ptr noundef %skb, ptr nocapture noundef readonly %e, ptr nocapture noundef readonly %protocol, ptr nocapture noundef writeonly %sport, i32 noundef %type) #3 align 64 {
entry:
  %min.addr.i = alloca i32, align 4
  %max.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.lhs.true

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %ip_summed, align 8
  %4 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp = icmp eq i16 %4, 1536
  br i1 %cmp, label %5, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread

5:                                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %type, 8192
  br label %if.end.thread

if.end.thread:                                    ; preds = %5, %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %need_priv.0.off0123 = phi i1 [ true, %5 ], [ false, %land.lhs.true.if.end.thread_crit_edge ], [ false, %entry.if.end.thread_crit_edge ]
  %optlen.0122 = phi i32 [ 8, %5 ], [ 0, %land.lhs.true.if.end.thread_crit_edge ], [ 0, %entry.if.end.thread_crit_edge ]
  %type.addr.0121 = phi i32 [ %or, %5 ], [ %type, %land.lhs.true.if.end.thread_crit_edge ], [ %type, %entry.if.end.thread_crit_edge ]
  %call = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %type.addr.0121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.thread.cleanup73_crit_edge

if.end.thread.cleanup73_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup73

if.end8:                                          ; preds = %if.end.thread
  %sport9 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 2
  %6 = ptrtoint ptr %sport9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sport9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool11.not = icmp eq i16 %7, 0
  br i1 %tobool11.not, label %cond.false, label %if.end8.cond.end_crit_edge

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.addr.i)
  %13 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %min.addr.i, align 4
  %14 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %max.addr.i, align 4
  call void @inet_get_local_port_range(ptr noundef %12, ptr noundef nonnull %min.addr.i, ptr noundef nonnull %max.addr.i) #12
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %16 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %if.then.i.i, label %cond.false.skb_get_hash.exit.i_crit_edge

cond.false.skb_get_hash.exit.i_crit_edge:         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @__skb_get_hash(ptr noundef %skb) #12
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %cond.false.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %18 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge, !prof !83

skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge: ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %udp_flow_src_port.exit

if.else.i:                                        ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = call i32 @udp_flow_hashrnd() #12
  br label %udp_flow_src_port.exit

udp_flow_src_port.exit:                           ; preds = %if.else.i, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge
  %hash.0.i = phi i32 [ %call8.i, %if.else.i ], [ %19, %skb_get_hash.exit.i.udp_flow_src_port.exit_crit_edge ]
  %shl.i = shl i32 %hash.0.i, 16
  %xor.i = xor i32 %shl.i, %hash.0.i
  %conv11.i = zext i32 %xor.i to i64
  %20 = ptrtoint ptr %max.addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max.addr.i, align 4
  %22 = ptrtoint ptr %min.addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min.addr.i, align 4
  %sub.i = sub i32 %21, %23
  %conv12.i = sext i32 %sub.i to i64
  %mul.i = mul nsw i64 %conv12.i, %conv11.i
  %shr.i = lshr i64 %mul.i, 32
  %conv131.i = zext i32 %23 to i64
  %add.i = add nuw nsw i64 %shr.i, %conv131.i
  %conv14.i = trunc i64 %add.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.addr.i)
  br label %cond.end

cond.end:                                         ; preds = %udp_flow_src_port.exit, %if.end8.cond.end_crit_edge
  %cond15.in = phi i16 [ %conv14.i, %udp_flow_src_port.exit ], [ %7, %if.end8.cond.end_crit_edge ]
  %24 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %cond15.in, ptr %sport, align 2
  %add17 = or i32 %optlen.0122, 4
  %call18 = call ptr @skb_push(ptr noundef %skb, i32 noundef %add17) #12
  %data19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data19, align 4
  %27 = trunc i32 %optlen.0122 to i8
  %28 = lshr exact i8 %27, 2
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %26, align 4
  %flags29 = getelementptr inbounds %struct.anon.159, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %flags29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags29, align 2
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol, align 1
  %proto_ctype = getelementptr inbounds %struct.anon.159, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %proto_ctype, align 1
  %arrayidx = getelementptr %struct.guehdr, ptr %26, i32 1
  br i1 %need_priv.0.off0123, label %if.then31, label %cond.end.cleanup73_crit_edge

cond.end.cleanup73_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup73

if.then31:                                        ; preds = %cond.end
  %34 = ptrtoint ptr %flags29 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags29, align 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx, align 4
  %add.ptr = getelementptr %struct.guehdr, ptr %26, i32 2
  %and37 = and i32 %type.addr.0121, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then31.cleanup73_crit_edge, label %if.then39

if.then31.cleanup73_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup73

if.then39:                                        ; preds = %if.then31
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 8
  %conv.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data19, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i117 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %conv42 = and i32 %sub.i117, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %add17)
  %cmp43 = icmp ult i32 %conv42, %add17
  br i1 %cmp43, label %if.then39.cleanup73_crit_edge, label %if.end46

if.then39.cleanup73_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup73

if.end46:                                         ; preds = %if.then39
  %sub = sub i32 %sub.i117, %add17
  %conv48 = trunc i32 %sub to i16
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv48, ptr %add.ptr, align 2
  %csum_offset = getelementptr inbounds %struct.anon.144, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %csum_offset, align 2
  %conv53 = add i16 %45, %conv48
  %arrayidx54 = getelementptr i16, ptr %add.ptr, i32 1
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv53, ptr %arrayidx54, align 2
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not = icmp eq i16 %50, 0
  br i1 %tobool.i.not, label %if.then56, label %if.end46.if.end64_crit_edge

if.end46.if.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %ip_summed57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %51 = ptrtoint ptr %ip_summed57 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load58 = load i16, ptr %ip_summed57, align 8
  %bf.clear62 = and i16 %bf.load58, -1541
  store i16 %bf.clear62, ptr %ip_summed57, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %if.end46.if.end64_crit_edge
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %or65 = or i32 %53, -2147483648
  store i32 %or65, ptr %arrayidx, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end64, %if.then39.cleanup73_crit_edge, %if.then31.cleanup73_crit_edge, %cond.end.cleanup73_crit_edge, %if.end.thread.cleanup73_crit_edge
  %retval.3 = phi i32 [ %call, %if.end.thread.cleanup73_crit_edge ], [ -22, %if.then39.cleanup73_crit_edge ], [ 0, %if.end64 ], [ 0, %cond.end.cleanup73_crit_edge ], [ 0, %if.then31.cleanup73_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fou_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @ip_tunnel_encap_del_ops(ptr noundef nonnull @fou_iptun_ops, i32 noundef 1) #12
  %call1.i = tail call i32 @ip_tunnel_encap_del_ops(ptr noundef nonnull @gue_iptun_ops, i32 noundef 2) #12
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @fou_nl_family) #12
  tail call void @unregister_pernet_device(ptr noundef nonnull @fou_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @fou_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @fou_nl_family) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.unregister_crit_edge, label %if.end3

if.end.unregister_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unregister

if.end3:                                          ; preds = %if.end
  %call.i = tail call i32 @ip_tunnel_encap_add_ops(ptr noundef nonnull @fou_iptun_ops, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %if.end7

if.end.i:                                         ; preds = %if.end3
  %call2.i = tail call i32 @ip_tunnel_encap_add_ops(ptr noundef nonnull @gue_iptun_ops, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  %call10.i = tail call i32 @ip_tunnel_encap_del_ops(ptr noundef nonnull @fou_iptun_ops, i32 noundef 1) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  %call8 = tail call i32 @genl_unregister_family(ptr noundef nonnull @fou_nl_family) #12
  br label %unregister

unregister:                                       ; preds = %if.end7, %if.end.unregister_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.unregister_crit_edge ], [ %retval.0.i.ph, %if.end7 ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @fou_net_ops) #12
  br label %cleanup

cleanup:                                          ; preds = %unregister, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %unregister ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_get_local_port_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_flow_hashrnd() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_build_header(ptr noundef %skb, ptr nocapture noundef readonly %e, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef readonly %fl4) #3 align 64 {
entry:
  %sport = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.not, i32 1024, i32 2048
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sport) #12
  %3 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %sport, align 2, !annotation !84
  %call = call i32 @__fou_build_header(ptr noundef %skb, ptr noundef %e, ptr undef, ptr noundef nonnull %sport, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sport, align 2
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %dport.i = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 3
  %11 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dport.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %dest.i, align 2
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %5, ptr %add.ptr.i.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %16 to i16
  %len2.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %len2.i, align 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %21 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saddr.i, align 8
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %23 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr.i, align 4
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  tail call void @udp_set_csum(i1 noundef zeroext %tobool.not.i, ptr noundef %skb, i32 noundef %22, i32 noundef %24, i32 noundef %26) #12
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %protocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sport) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue_err(ptr noundef %skb, i32 noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !83

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !83

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i69 = zext i16 %13 to i32
  %add.ptr.i.i70 = getelementptr i8, ptr %11, i32 %conv.i.i69
  %arrayidx = getelementptr %struct.udphdr, ptr %add.ptr.i.i70, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %15 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i72 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i = add i16 %conv.i.i72, -8
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i, ptr %transport_header.i.i, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load3 = load i8, ptr %arrayidx, align 4
  %bf.lshr4 = lshr i8 %bf.load3, 4
  %conv5 = zext i8 %bf.lshr4 to i32
  %20 = zext i32 %conv5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv5, label %sw.bb.out_crit_edge [
    i32 4, label %sw.bb6
    i32 6, label %sw.bb8
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb6:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 4) to i32))
  %21 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 4), align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb6.do.end7.i_crit_edge

sw.bb6.do.end7.i_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %sw.bb6
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @gue_err_proto_handler.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1107, ptr noundef nonnull @.str.1) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %sw.bb6.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end18.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end18.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %err_handler.i = getelementptr inbounds %struct.net_protocol, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %err_handler.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %err_handler.i, align 4
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end18.i_crit_edge, label %if.then12.i

land.lhs.true10.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  %call14.i = tail call i32 %23(ptr noundef %skb, i32 noundef %info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.out_crit_edge, label %if.then12.i.if.end18.i_crit_edge

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i.out_crit_edge:                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %land.lhs.true10.i.if.end18.i_crit_edge, %do.end7.i.if.end18.i_crit_edge
  br label %out

sw.bb8:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 41) to i32))
  %24 = load volatile ptr, ptr getelementptr inbounds ([256 x ptr], ptr @inet_protos, i32 0, i32 41), align 4
  %call.i75 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i79, label %sw.bb8.do.end7.i84_crit_edge

sw.bb8.do.end7.i84_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i84

land.lhs.true.i79:                                ; preds = %sw.bb8
  %call2.i77 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i77)
  %tobool3.not.i78 = icmp eq i32 %call2.i77, 0
  br i1 %tobool3.not.i78, label %land.lhs.true.i79.do.end7.i84_crit_edge, label %land.lhs.true4.i81

land.lhs.true.i79.do.end7.i84_crit_edge:          ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i84

land.lhs.true4.i81:                               ; preds = %land.lhs.true.i79
  %.b22.i80 = load i1, ptr @gue_err_proto_handler.__warned, align 1
  br i1 %.b22.i80, label %land.lhs.true4.i81.do.end7.i84_crit_edge, label %if.then.i82

land.lhs.true4.i81.do.end7.i84_crit_edge:         ; preds = %land.lhs.true4.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i84

if.then.i82:                                      ; preds = %land.lhs.true4.i81
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1107, ptr noundef nonnull @.str.1) #12
  br label %do.end7.i84

do.end7.i84:                                      ; preds = %if.then.i82, %land.lhs.true4.i81.do.end7.i84_crit_edge, %land.lhs.true.i79.do.end7.i84_crit_edge, %sw.bb8.do.end7.i84_crit_edge
  %tobool9.not.i83 = icmp eq ptr %24, null
  br i1 %tobool9.not.i83, label %do.end7.i84.if.end18.i91_crit_edge, label %land.lhs.true10.i87

do.end7.i84.if.end18.i91_crit_edge:               ; preds = %do.end7.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i91

land.lhs.true10.i87:                              ; preds = %do.end7.i84
  %err_handler.i85 = getelementptr inbounds %struct.net_protocol, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %err_handler.i85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %err_handler.i85, align 4
  %tobool11.not.i86 = icmp eq ptr %26, null
  br i1 %tobool11.not.i86, label %land.lhs.true10.i87.if.end18.i91_crit_edge, label %if.then12.i90

land.lhs.true10.i87.if.end18.i91_crit_edge:       ; preds = %land.lhs.true10.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i91

if.then12.i90:                                    ; preds = %land.lhs.true10.i87
  %call14.i88 = tail call i32 %26(ptr noundef %skb, i32 noundef %info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i88)
  %tobool15.not.i89 = icmp eq i32 %call14.i88, 0
  br i1 %tobool15.not.i89, label %if.then12.i90.out_crit_edge, label %if.then12.i90.if.end18.i91_crit_edge

if.then12.i90.if.end18.i91_crit_edge:             ; preds = %if.then12.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i91

if.then12.i90.out_crit_edge:                      ; preds = %if.then12.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end18.i91:                                     ; preds = %if.then12.i90.if.end18.i91_crit_edge, %land.lhs.true10.i87.if.end18.i91_crit_edge, %do.end7.i84.if.end18.i91_crit_edge
  br label %out

sw.epilog:                                        ; preds = %if.end
  %27 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %bf.clear16 = shl i8 %bf.load, 2
  %28 = and i8 %bf.clear16, 124
  %shl = zext i8 %28 to i32
  %add19 = add i32 %add, %shl
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i96 = sub i32 %30, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %sub.i.i96)
  %cmp.not.i97 = icmp ugt i32 %add19, %sub.i.i96
  br i1 %cmp.not.i97, label %if.end.i99, label %if.end14.if.end22_crit_edge, !prof !83

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i99:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add19)
  %cmp3.i98 = icmp ult i32 %30, %add19
  br i1 %cmp3.i98, label %if.end.i99.cleanup_crit_edge, label %pskb_may_pull.exit105, !prof !83

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit105:                            ; preds = %if.end.i99
  %sub.i100 = sub i32 %add19, %sub.i.i96
  %call13.i101 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i100) #12
  %cmp14.i102.not = icmp eq ptr %call13.i101, null
  br i1 %cmp14.i102.not, label %pskb_may_pull.exit105.cleanup_crit_edge, label %pskb_may_pull.exit105.if.end22_crit_edge

pskb_may_pull.exit105.if.end22_crit_edge:         ; preds = %pskb_may_pull.exit105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

pskb_may_pull.exit105.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit105
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %pskb_may_pull.exit105.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %35 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i108 = zext i16 %36 to i32
  %add.ptr.i.i109 = getelementptr i8, ptr %34, i32 %conv.i.i108
  %arrayidx24 = getelementptr %struct.udphdr, ptr %add.ptr.i.i109, i32 1
  %flags1.i = getelementptr inbounds %struct.anon.159, ptr %arrayidx24, i32 0, i32 2
  %37 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags1.i, align 2
  %conv.i = zext i16 %38 to i32
  %and.i = and i32 %conv.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i110 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i110, label %if.end.i111, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i111:                                      ; preds = %if.end22
  %39 = shl i16 %38, 2
  %40 = and i16 %39, 4
  %41 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %shl)
  %cmp.i = icmp ugt i32 %41, %shl
  br i1 %cmp.i, label %if.end.i111.cleanup_crit_edge, label %if.end4.i

if.end.i111.cleanup_crit_edge:                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i111
  %and6.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end28_crit_edge, label %if.then8.i

if.end4.i.if.end28_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then8.i:                                       ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.guehdr, ptr %arrayidx24, i32 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 %41
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %42 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr9.i, align 4
  %and10.i = and i32 %43, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i112 = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i112, label %if.then8.i.if.end28_crit_edge, label %if.then8.i.cleanup_crit_edge

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.i.if.end28_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %if.then8.i.if.end28_crit_edge, %if.end4.i.if.end28_crit_edge
  %proto_ctype = getelementptr inbounds %struct.anon.159, ptr %arrayidx24, i32 0, i32 1
  %44 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %proto_ctype, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %45, label %if.end36 [
    i8 17, label %if.end28.cleanup_crit_edge
    i8 -120, label %if.end28.cleanup_crit_edge137
  ]

if.end28.cleanup_crit_edge137:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i115 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i116 = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i117 = sub i32 %sub.ptr.lhs.cast.i.i115, %sub.ptr.rhs.cast.i.i116
  %conv.i.i118 = trunc i32 %sub.ptr.sub.i.i117 to i16
  %conv1.i120 = add i16 %conv.i.i118, -8
  %49 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i120, ptr %transport_header.i.i, align 2
  %50 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proto_ctype, align 1
  %conv38 = zext i8 %51 to i32
  %call39 = tail call fastcc i32 @gue_err_proto_handler(i32 noundef %conv38, ptr noundef %skb, i32 noundef %info)
  br label %out

out:                                              ; preds = %if.end36, %if.end18.i91, %if.then12.i90.out_crit_edge, %if.end18.i, %if.then12.i.out_crit_edge, %sw.bb.out_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end36 ], [ -95, %sw.bb.out_crit_edge ], [ -2, %if.end18.i ], [ 0, %if.then12.i.out_crit_edge ], [ -2, %if.end18.i91 ], [ 0, %if.then12.i90.out_crit_edge ]
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i123 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i124 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i125 = sub i32 %sub.ptr.lhs.cast.i.i123, %sub.ptr.rhs.cast.i.i124
  %conv.i.i126 = trunc i32 %sub.ptr.sub.i.i125 to i16
  %56 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i128 = add i16 %conv.i.i126, %56
  %57 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv1.i128, ptr %transport_header.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end28.cleanup_crit_edge, %if.end28.cleanup_crit_edge137, %if.then8.i.cleanup_crit_edge, %if.end.i111.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %pskb_may_pull.exit105.cleanup_crit_edge, %if.end.i99.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ -22, %pskb_may_pull.exit105.cleanup_crit_edge ], [ -95, %if.end28.cleanup_crit_edge ], [ -95, %if.end28.cleanup_crit_edge137 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.i99.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end.i111.cleanup_crit_edge ], [ -22, %if.then8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_set_csum(i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gue_err_proto_handler(i32 noundef %proto, ptr noundef %skb, i32 noundef %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %proto
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @gue_err_proto_handler.__warned, align 1
  br i1 %.b22, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_err_proto_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1107, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.if.end18_crit_edge, label %land.lhs.true10

do.end7.if.end18_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true10:                                  ; preds = %do.end7
  %err_handler = getelementptr inbounds %struct.net_protocol, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %err_handler, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end18_crit_edge, label %if.then12

land.lhs.true10.if.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true10
  %call14 = tail call i32 %3(ptr noundef %skb, i32 noundef %info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %land.lhs.true10.if.end18_crit_edge, %do.end7.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end18 ], [ 0, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue_build_header(ptr noundef %skb, ptr nocapture noundef readonly %e, ptr nocapture noundef %protocol, ptr nocapture noundef readonly %fl4) #3 align 64 {
entry:
  %sport = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.not, i32 1024, i32 2048
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sport) #12
  %3 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %sport, align 2, !annotation !84
  %call = call i32 @__gue_build_header(ptr noundef %skb, ptr noundef %e, ptr noundef %protocol, ptr noundef nonnull %sport, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sport, align 2
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %dport.i = getelementptr inbounds %struct.ip_tunnel_encap, ptr %e, i32 0, i32 3
  %11 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dport.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %dest.i, align 2
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %5, ptr %add.ptr.i.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %16 to i16
  %len2.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %len2.i, align 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %21 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saddr.i, align 8
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %23 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daddr.i, align 4
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  tail call void @udp_set_csum(i1 noundef zeroext %tobool.not.i, ptr noundef %skb, i32 noundef %22, i32 noundef %24, i32 noundef %26) #12
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %protocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sport) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_nl_cmd_add_port(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  %sock.i = alloca ptr, align 4
  %tunnel_cfg.i = alloca %struct.udp_tunnel_sock_cfg, align 4
  %cfg = alloca %struct.fou_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cfg) #12
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 52)
  %call1 = call fastcc i32 @parse_nl_config(ptr noundef %info, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock.i) #12
  %3 = ptrtoint ptr %sock.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sock.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tunnel_cfg.i) #12
  %4 = call ptr @memset(ptr %tunnel_cfg.i, i32 255, i32 28)
  %udp_config.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %udp_config.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %udp_config.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %6, label %if.end.error.i_crit_edge [
    i8 2, label %if.then.i.i
    i8 10, label %if.then6.i.i
  ]

if.end.error.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @udp_sock_create4(ptr noundef %1, ptr noundef %udp_config.i, ptr noundef nonnull %sock.i) #12
  br label %udp_sock_create.exit.i

if.then6.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i = call i32 @udp_sock_create6(ptr noundef %1, ptr noundef %udp_config.i, ptr noundef nonnull %sock.i) #12
  br label %udp_sock_create.exit.i

udp_sock_create.exit.i:                           ; preds = %if.then6.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call7.i.i, %if.then6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %udp_sock_create.exit.i.error.i_crit_edge, label %if.end.i

udp_sock_create.exit.i.error.i_crit_edge:         ; preds = %udp_sock_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end.i:                                         ; preds = %udp_sock_create.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.error.i_crit_edge, label %if.end3.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock.i, align 4
  %sk4.i = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk4.i, align 16
  %local_udp_port.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %local_udp_port.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %local_udp_port.i, align 4
  %port.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %port.i, align 2
  %16 = ptrtoint ptr %udp_config.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %udp_config.i, align 4
  %family7.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %family7.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %family7.i, align 8
  %flags.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  %flags8.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %flags8.i, align 1
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cfg, align 4
  %type9.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %type9.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %type9.i, align 2
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %10, ptr %call7.i.i.i, align 8
  %26 = getelementptr inbounds i8, ptr %tunnel_cfg.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 24)
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %26, align 4
  %29 = ptrtoint ptr %tunnel_cfg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %tunnel_cfg.i, align 4
  %30 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %23, label %if.end3.i.error.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb13.i
  ]

if.end3.i.error.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %encap_rcv.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 2
  %31 = ptrtoint ptr %encap_rcv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fou_udp_recv, ptr %encap_rcv.i, align 4
  %gro_receive.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 5
  %32 = ptrtoint ptr %gro_receive.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fou_gro_receive, ptr %gro_receive.i, align 4
  %gro_complete.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 6
  %33 = ptrtoint ptr %gro_complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fou_gro_complete, ptr %gro_complete.i, align 4
  %protocol.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 1
  %34 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %protocol.i, align 2
  %protocol12.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %protocol12.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %protocol12.i, align 4
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %encap_rcv14.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 2
  %37 = ptrtoint ptr %encap_rcv14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gue_udp_recv, ptr %encap_rcv14.i, align 4
  %gro_receive15.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 5
  %38 = ptrtoint ptr %gro_receive15.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gue_gro_receive, ptr %gro_receive15.i, align 4
  %gro_complete16.i = getelementptr inbounds %struct.udp_tunnel_sock_cfg, ptr %tunnel_cfg.i, i32 0, i32 6
  %39 = ptrtoint ptr %gro_complete16.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gue_gro_complete, ptr %gro_complete16.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb.i
  call void @setup_udp_tunnel_sock(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %tunnel_cfg.i) #12
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 41
  %40 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2592, ptr %sk_allocation.i, align 8
  %41 = load i32, ptr @fou_net_id, align 4
  %call.i1.i = call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %41) #12
  %fou_lock.i.i = getelementptr inbounds %struct.fou_net, ptr %call.i1.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %fou_lock.i.i, i32 noundef 0) #12
  %42 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn20.i.i = load ptr, ptr %call.i1.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %call.i1.i
  br i1 %cmp.not21.i.i, label %sw.epilog.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.epilog.i.for.end.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.epilog.i
  %43 = ptrtoint ptr %udp_config.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %udp_config.i, align 4
  %peer_udp_port.i.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 4
  %bind_ifindex.i.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 5
  %45 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %46 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp20.i.i.i = icmp eq i8 %44, 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn22.i.i = phi ptr [ %.pn20.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.cond.backedge.i.i.for.body.i.i_crit_edge ]
  %fout.0.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -12
  %47 = ptrtoint ptr %fout.0.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fout.0.i.i, align 4
  %sk1.i.i.i = getelementptr inbounds %struct.socket, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %sk1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk1.i.i.i, align 16
  %family.i.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -4
  %51 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %family.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %44)
  %cmp.not.i.i.i = icmp eq i8 %52, %44
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %for.body.i.i.for.cond.backedge.i.i_crit_edge

for.body.i.i.for.cond.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %port.i.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -6
  %53 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %port.i.i.i, align 2
  %55 = ptrtoint ptr %local_udp_port.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %local_udp_port.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp7.not.i.i.i = icmp eq i16 %54, %56
  br i1 %cmp7.not.i.i.i, label %lor.lhs.false9.i.i.i, label %lor.lhs.false.i.i.i.for.cond.backedge.i.i_crit_edge

lor.lhs.false.i.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false9.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %57 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 4
  %60 = ptrtoint ptr %peer_udp_port.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %peer_udp_port.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %61)
  %cmp12.not.i.i.i = icmp eq i16 %59, %61
  br i1 %cmp12.not.i.i.i, label %lor.lhs.false14.i.i.i, label %lor.lhs.false9.i.i.i.for.cond.backedge.i.i_crit_edge

lor.lhs.false9.i.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %lor.lhs.false9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false14.i.i.i:                            ; preds = %lor.lhs.false9.i.i.i
  %skc_bound_dev_if.i.i.i = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 6
  %62 = ptrtoint ptr %skc_bound_dev_if.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %skc_bound_dev_if.i.i.i, align 4
  %64 = ptrtoint ptr %bind_ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bind_ifindex.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp16.not.i.i.i = icmp eq i32 %63, %65
  br i1 %cmp16.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false14.i.i.i.for.cond.backedge.i.i_crit_edge

lor.lhs.false14.i.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %lor.lhs.false14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false14.i.i.i
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.else32.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end.i.i.i
  %skc_rcv_saddr.i.i.i = getelementptr inbounds %struct.anon.109, ptr %50, i32 0, i32 1
  %66 = ptrtoint ptr %skc_rcv_saddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %skc_rcv_saddr.i.i.i, align 4
  %68 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp24.not.i.i.i = icmp eq i32 %67, %69
  br i1 %cmp24.not.i.i.i, label %lor.lhs.false26.i.i.i, label %if.then22.i.i.i.for.cond.backedge.i.i_crit_edge

if.then22.i.i.i.for.cond.backedge.i.i_crit_edge:  ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false26.i.i.i:                            ; preds = %if.then22.i.i.i
  %70 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %50, align 8
  %72 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp29.not.i.i.i = icmp eq i32 %71, %73
  br i1 %cmp29.not.i.i.i, label %lor.lhs.false26.i.i.i.fou_add_to_port_list.exit.i_crit_edge, label %lor.lhs.false26.i.i.i.for.cond.backedge.i.i_crit_edge

lor.lhs.false26.i.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %lor.lhs.false26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false26.i.i.i.fou_add_to_port_list.exit.i_crit_edge: ; preds = %lor.lhs.false26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_add_to_port_list.exit.i

for.cond.backedge.i.i:                            ; preds = %lor.lhs.false34.i.i.i.for.cond.backedge.i.i_crit_edge, %if.else32.i.i.i.for.cond.backedge.i.i_crit_edge, %lor.lhs.false26.i.i.i.for.cond.backedge.i.i_crit_edge, %if.then22.i.i.i.for.cond.backedge.i.i_crit_edge, %lor.lhs.false14.i.i.i.for.cond.backedge.i.i_crit_edge, %lor.lhs.false9.i.i.i.for.cond.backedge.i.i_crit_edge, %lor.lhs.false.i.i.i.for.cond.backedge.i.i_crit_edge, %for.body.i.i.for.cond.backedge.i.i_crit_edge
  %74 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %call.i1.i
  br i1 %cmp.not.i.i, label %for.cond.backedge.i.i.for.end.i.i_crit_edge, label %for.cond.backedge.i.i.for.body.i.i_crit_edge

for.cond.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.backedge.i.i.for.end.i.i_crit_edge:      ; preds = %for.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

if.else32.i.i.i:                                  ; preds = %if.end.i.i.i
  %skc_v6_rcv_saddr.i.i.i = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 11
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_rcv_saddr.i.i.i, ptr noundef dereferenceable(16) %45, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false34.i.i.i, label %if.else32.i.i.i.for.cond.backedge.i.i_crit_edge

if.else32.i.i.i.for.cond.backedge.i.i_crit_edge:  ; preds = %if.else32.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false34.i.i.i:                            ; preds = %if.else32.i.i.i
  %skc_v6_daddr.i.i.i = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 10
  %bcmp58.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_daddr.i.i.i, ptr noundef dereferenceable(16) %46, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %bcmp58.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %lor.lhs.false34.i.i.i.fou_add_to_port_list.exit.i_crit_edge, label %lor.lhs.false34.i.i.i.for.cond.backedge.i.i_crit_edge

lor.lhs.false34.i.i.i.for.cond.backedge.i.i_crit_edge: ; preds = %lor.lhs.false34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i.i

lor.lhs.false34.i.i.i.fou_add_to_port_list.exit.i_crit_edge: ; preds = %lor.lhs.false34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_add_to_port_list.exit.i

for.end.i.i:                                      ; preds = %for.cond.backedge.i.i.for.end.i.i_crit_edge, %sw.epilog.i.for.end.i.i_crit_edge
  %list9.i.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list9.i.i, ptr noundef %call.i1.i, ptr noundef %.pn20.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.fou_add_to_port_list.exit.thread.i_crit_edge

for.end.i.i.fou_add_to_port_list.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_add_to_port_list.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn20.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list9.i.i, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %list9.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %.pn20.i.i, ptr %list9.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.fou, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i1.i, ptr %prev3.i.i.i.i, align 8
  %78 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list9.i.i, ptr %call.i1.i, align 4
  br label %fou_add_to_port_list.exit.thread.i

fou_add_to_port_list.exit.thread.i:               ; preds = %if.end.i.i.i.i, %for.end.i.i.fou_add_to_port_list.exit.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %fou_lock.i.i) #12
  br label %fou_create.exit

fou_add_to_port_list.exit.i:                      ; preds = %lor.lhs.false34.i.i.i.fou_add_to_port_list.exit.i_crit_edge, %lor.lhs.false26.i.i.i.fou_add_to_port_list.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %fou_lock.i.i) #12
  br label %error.i

error.i:                                          ; preds = %fou_add_to_port_list.exit.i, %if.end3.i.error.i_crit_edge, %if.end.i.error.i_crit_edge, %udp_sock_create.exit.i.error.i_crit_edge, %if.end.error.i_crit_edge
  %fou.0.i = phi ptr [ null, %udp_sock_create.exit.i.error.i_crit_edge ], [ %call7.i.i.i, %fou_add_to_port_list.exit.i ], [ null, %if.end.i.error.i_crit_edge ], [ %call7.i.i.i, %if.end3.i.error.i_crit_edge ], [ null, %if.end.error.i_crit_edge ]
  %err.0.i = phi i32 [ %retval.0.i.i, %udp_sock_create.exit.i.error.i_crit_edge ], [ -114, %fou_add_to_port_list.exit.i ], [ -12, %if.end.i.error.i_crit_edge ], [ -22, %if.end3.i.error.i_crit_edge ], [ -96, %if.end.error.i_crit_edge ]
  call void @kfree(ptr noundef %fou.0.i) #12
  %79 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sock.i, align 4
  %tobool24.not.i = icmp eq ptr %80, null
  br i1 %tobool24.not.i, label %error.i.fou_create.exit_crit_edge, label %if.then25.i

error.i.fou_create.exit_crit_edge:                ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_create.exit

if.then25.i:                                      ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @udp_tunnel_sock_release(ptr noundef nonnull %80) #12
  br label %fou_create.exit

fou_create.exit:                                  ; preds = %if.then25.i, %error.i.fou_create.exit_crit_edge, %fou_add_to_port_list.exit.thread.i
  %retval.0.i = phi i32 [ %err.0.i, %if.then25.i ], [ %err.0.i, %error.i.fou_create.exit_crit_edge ], [ 0, %fou_add_to_port_list.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tunnel_cfg.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fou_create.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fou_create.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_nl_cmd_rm_port(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  %cfg = alloca %struct.fou_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cfg) #12
  %2 = call ptr @memset(ptr %cfg, i32 255, i32 52)
  %call1 = call fastcc i32 @parse_nl_config(ptr noundef %info, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @fou_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %3) #12
  %fou_lock.i = getelementptr inbounds %struct.fou_net, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fou_lock.i, i32 noundef 0) #12
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i = load ptr, ptr %call.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn20.i, %call.i
  br i1 %cmp.not22.i, label %if.end.fou_destroy.exit_crit_edge, label %for.body.lr.ph.i

if.end.fou_destroy.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_destroy.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %udp_config.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %udp_config.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %udp_config.i.i, align 4
  %local_udp_port.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 3
  %peer_udp_port.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 4
  %bind_ifindex.i.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 5
  %7 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %8 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp20.i.i = icmp eq i8 %6, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn23.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %fou.024.i = getelementptr i8, ptr %.pn23.i, i32 -12
  %9 = ptrtoint ptr %fou.024.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fou.024.i, align 4
  %sk1.i.i = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk1.i.i, align 16
  %family.i.i = getelementptr i8, ptr %.pn23.i, i32 -4
  %13 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %6)
  %cmp.not.i.i = icmp eq i8 %14, %6
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.for.cond.backedge.i_crit_edge

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %port.i.i = getelementptr i8, ptr %.pn23.i, i32 -6
  %15 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %port.i.i, align 2
  %17 = ptrtoint ptr %local_udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %local_udp_port.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp7.not.i.i = icmp eq i16 %16, %18
  br i1 %cmp7.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false.i.i.for.cond.backedge.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i.i
  %19 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %22 = ptrtoint ptr %peer_udp_port.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %peer_udp_port.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp12.not.i.i = icmp eq i16 %21, %23
  br i1 %cmp12.not.i.i, label %lor.lhs.false14.i.i, label %lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false9.i.i
  %skc_bound_dev_if.i.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 6
  %24 = ptrtoint ptr %skc_bound_dev_if.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skc_bound_dev_if.i.i, align 4
  %26 = ptrtoint ptr %bind_ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bind_ifindex.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp16.not.i.i = icmp eq i32 %25, %27
  br i1 %cmp16.not.i.i, label %if.end.i.i, label %lor.lhs.false14.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false14.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

if.end.i.i:                                       ; preds = %lor.lhs.false14.i.i
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.else32.i.i

if.then22.i.i:                                    ; preds = %if.end.i.i
  %skc_rcv_saddr.i.i = getelementptr inbounds %struct.anon.109, ptr %12, i32 0, i32 1
  %28 = ptrtoint ptr %skc_rcv_saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skc_rcv_saddr.i.i, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp24.not.i.i = icmp eq i32 %29, %31
  br i1 %cmp24.not.i.i, label %lor.lhs.false26.i.i, label %if.then22.i.i.for.cond.backedge.i_crit_edge

if.then22.i.i.for.cond.backedge.i_crit_edge:      ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false26.i.i:                              ; preds = %if.then22.i.i
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %12, align 8
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp29.not.i.i = icmp eq i32 %33, %35
  br i1 %cmp29.not.i.i, label %lor.lhs.false26.i.i.if.then.i_crit_edge, label %lor.lhs.false26.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false26.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false26.i.i.if.then.i_crit_edge:          ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

for.cond.backedge.i:                              ; preds = %lor.lhs.false34.i.i.for.cond.backedge.i_crit_edge, %if.else32.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false26.i.i.for.cond.backedge.i_crit_edge, %if.then22.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false14.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false9.i.i.for.cond.backedge.i_crit_edge, %lor.lhs.false.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %36 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.fou_destroy.exit_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.backedge.i.fou_destroy.exit_crit_edge:   ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_destroy.exit

if.else32.i.i:                                    ; preds = %if.end.i.i
  %skc_v6_rcv_saddr.i.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 11
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_rcv_saddr.i.i, ptr noundef dereferenceable(16) %7, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false34.i.i, label %if.else32.i.i.for.cond.backedge.i_crit_edge

if.else32.i.i.for.cond.backedge.i_crit_edge:      ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false34.i.i:                              ; preds = %if.else32.i.i
  %skc_v6_daddr.i.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 10
  %bcmp58.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_daddr.i.i, ptr noundef dereferenceable(16) %8, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58.i.i)
  %tobool37.not.i.i = icmp eq i32 %bcmp58.i.i, 0
  br i1 %tobool37.not.i.i, label %lor.lhs.false34.i.i.if.then.i_crit_edge, label %lor.lhs.false34.i.i.for.cond.backedge.i_crit_edge

lor.lhs.false34.i.i.for.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge.i

lor.lhs.false34.i.i.if.then.i_crit_edge:          ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false34.i.i.if.then.i_crit_edge, %lor.lhs.false26.i.i.if.then.i_crit_edge
  %fou.024.i.le = getelementptr i8, ptr %.pn23.i, i32 -12
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn23.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.list_del.exit.i.i_crit_edge

if.then.i.list_del.exit.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %.pn23.i, i32 4
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn23.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.list_del.exit.i.i_crit_edge
  %43 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn23.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn23.i, i32 4
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @udp_tunnel_sock_release(ptr noundef %10) #12
  %tobool.not.i15.i = icmp eq ptr %fou.024.i.le, null
  br i1 %tobool.not.i15.i, label %list_del.exit.i.i.fou_destroy.exit_crit_edge, label %do.end.i.i

list_del.exit.i.i.fou_destroy.exit_crit_edge:     ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_destroy.exit

do.end.i.i:                                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i.i = getelementptr i8, ptr %.pn23.i, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  br label %fou_destroy.exit

fou_destroy.exit:                                 ; preds = %do.end.i.i, %list_del.exit.i.i.fou_destroy.exit_crit_edge, %for.cond.backedge.i.fou_destroy.exit_crit_edge, %if.end.fou_destroy.exit_crit_edge
  %err.0.i = phi i32 [ 0, %list_del.exit.i.i.fou_destroy.exit_crit_edge ], [ 0, %do.end.i.i ], [ -22, %if.end.fou_destroy.exit_crit_edge ], [ -22, %for.cond.backedge.i.fou_destroy.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fou_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fou_destroy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %fou_destroy.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_nl_cmd_get_port(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #3 align 64 {
entry:
  %cfg = alloca %struct.fou_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %2 = load i32, ptr @fou_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cfg) #12
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 52)
  %call2 = call fastcc i32 @parse_nl_config(ptr noundef %info, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %local_udp_port = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %local_udp_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %udp_config = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %udp_config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %udp_config, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %7, label %if.end5.cleanup_crit_edge [
    i8 2, label %if.end5.if.end15_crit_edge
    i8 10, label %if.end5.if.end15_crit_edge77
  ]

if.end5.if.end15_crit_edge77:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end5.if.end15_crit_edge, %if.end5.if.end15_crit_edge77
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool17.not = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %fou_lock = getelementptr inbounds %struct.fou_net, ptr %call1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fou_lock, i32 noundef 0) #12
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn67 = load ptr, ptr %call1, align 4
  %cmp21.not69 = icmp eq ptr %.pn67, %call1
  br i1 %cmp21.not69, label %if.end19.for.end.thread_crit_edge, label %for.body.lr.ph

if.end19.for.end.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end19
  %peer_udp_port.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 4
  %bind_ifindex.i = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 5
  %10 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %11 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp20.i = icmp eq i8 %7, 2
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.backedge.for.end.thread_crit_edge, %if.end19.for.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %fou_lock) #12
  br label %out_free

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn70 = phi ptr [ %.pn67, %for.body.lr.ph ], [ %.pn, %for.cond.backedge.for.body_crit_edge ]
  %fout.071 = getelementptr i8, ptr %.pn70, i32 -12
  %12 = ptrtoint ptr %fout.071 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fout.071, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk1.i, align 16
  %family.i = getelementptr i8, ptr %.pn70, i32 -4
  %16 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %7)
  %cmp.not.i = icmp eq i8 %17, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false.i:                                  ; preds = %for.body
  %port.i = getelementptr i8, ptr %.pn70, i32 -6
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %5)
  %cmp7.not.i = icmp eq i16 %19, %5
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.for.cond.backedge_crit_edge

lor.lhs.false.i.for.cond.backedge_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %20 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 4
  %23 = ptrtoint ptr %peer_udp_port.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %peer_udp_port.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp12.not.i = icmp eq i16 %22, %24
  br i1 %cmp12.not.i, label %lor.lhs.false14.i, label %lor.lhs.false9.i.for.cond.backedge_crit_edge

lor.lhs.false9.i.for.cond.backedge_crit_edge:     ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false14.i:                                ; preds = %lor.lhs.false9.i
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 6
  %25 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %skc_bound_dev_if.i, align 4
  %27 = ptrtoint ptr %bind_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bind_ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp16.not.i = icmp eq i32 %26, %28
  br i1 %cmp16.not.i, label %if.end.i, label %lor.lhs.false14.i.for.cond.backedge_crit_edge

lor.lhs.false14.i.for.cond.backedge_crit_edge:    ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end.i:                                         ; preds = %lor.lhs.false14.i
  br i1 %cmp20.i, label %if.then22.i, label %if.else32.i

if.then22.i:                                      ; preds = %if.end.i
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.109, ptr %15, i32 0, i32 1
  %29 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %skc_rcv_saddr.i, align 4
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp24.not.i = icmp eq i32 %30, %32
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %if.then22.i.for.cond.backedge_crit_edge

if.then22.i.for.cond.backedge_crit_edge:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false26.i:                                ; preds = %if.then22.i
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %15, align 8
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp29.not.i = icmp eq i32 %34, %36
  br i1 %cmp29.not.i, label %lor.lhs.false26.i.for.end_crit_edge, label %lor.lhs.false26.i.for.cond.backedge_crit_edge

lor.lhs.false26.i.for.cond.backedge_crit_edge:    ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false26.i.for.end_crit_edge:              ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.backedge:                                ; preds = %lor.lhs.false34.i.for.cond.backedge_crit_edge, %if.else32.i.for.cond.backedge_crit_edge, %lor.lhs.false26.i.for.cond.backedge_crit_edge, %if.then22.i.for.cond.backedge_crit_edge, %lor.lhs.false14.i.for.cond.backedge_crit_edge, %lor.lhs.false9.i.for.cond.backedge_crit_edge, %lor.lhs.false.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %37 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn70, align 4
  %cmp21.not = icmp eq ptr %.pn, %call1
  br i1 %cmp21.not, label %for.cond.backedge.for.end.thread_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.backedge.for.end.thread_crit_edge:       ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

if.else32.i:                                      ; preds = %if.end.i
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_rcv_saddr.i, ptr noundef dereferenceable(16) %10, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false34.i, label %if.else32.i.for.cond.backedge_crit_edge

if.else32.i.for.cond.backedge_crit_edge:          ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false34.i:                                ; preds = %if.else32.i
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 10
  %bcmp58.i = call i32 @bcmp(ptr noundef dereferenceable(16) %skc_v6_daddr.i, ptr noundef dereferenceable(16) %11, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58.i)
  %tobool37.not.i = icmp eq i32 %bcmp58.i, 0
  br i1 %tobool37.not.i, label %lor.lhs.false34.i.for.end_crit_edge, label %lor.lhs.false34.i.for.cond.backedge_crit_edge

lor.lhs.false34.i.for.cond.backedge_crit_edge:    ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

lor.lhs.false34.i.for.end_crit_edge:              ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false34.i.for.end_crit_edge, %lor.lhs.false26.i.for.end_crit_edge
  %fout.071.le = getelementptr i8, ptr %.pn70, i32 -12
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %38 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %snd_portid, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info, align 4
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %42 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %genlhdr, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 2
  %call25 = tail call fastcc i32 @fou_dump_info(ptr noundef %fout.071.le, i32 noundef %39, i32 noundef %41, i32 noundef 0, ptr noundef nonnull %call.i.i, i8 noundef zeroext %45)
  tail call void @mutex_unlock(ptr noundef %fou_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp33 = icmp slt i32 %call25, 0
  br i1 %cmp33, label %for.end.out_free_crit_edge, label %if.end36

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_net.i, align 4
  %48 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %47, i32 0, i32 21
  %50 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %51, ptr noundef nonnull %call.i.i, i32 noundef %49, i32 noundef 64) #12
  %52 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  br label %cleanup

out_free:                                         ; preds = %for.end.out_free_crit_edge, %for.end.thread
  %ret.065 = phi i32 [ -3, %for.end.thread ], [ %call25, %for.end.out_free_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end36, %if.end15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.065, %out_free ], [ %52, %if.end36 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_nl_dump(ptr noundef %skb, ptr nocapture noundef %cb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = load i32, ptr @fou_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %fou_lock = getelementptr inbounds %struct.fou_net, ptr %call1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fou_lock, i32 noundef 0) #12
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn27 = load ptr, ptr %call1, align 4
  %cmp.not29 = icmp eq ptr %.pn27, %call1
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn31 = phi ptr [ %.pn27, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %idx.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inc = add i32 %idx.030, 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.030, i32 %9)
  %cmp3 = icmp slt i32 %idx.030, %9
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %fout.032 = getelementptr i8, ptr %.pn31, i32 -12
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call6 = tail call fastcc i32 @fou_dump_info(ptr noundef %fout.032, i32 noundef %13, i32 noundef %17, i32 noundef 2, ptr noundef %skb, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %call1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fou_lock) #12
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %idx.1, ptr %19, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_nl_config(ptr nocapture noundef readonly %info, ptr nocapture noundef %cfg) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  %tmp79 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 52)
  %udp_config = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3
  %1 = ptrtoint ptr %udp_config to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %udp_config, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %7, label %if.then.cleanup107_crit_edge [
    i8 2, label %if.then.sw.epilog_crit_edge
    i8 10, label %sw.bb
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then.cleanup107_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ipv6_v6only = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %ipv6_v6only to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %ipv6_v6only, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %ipv6_v6only, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge
  %10 = ptrtoint ptr %udp_config to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %udp_config, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs, align 4
  %arrayidx8 = getelementptr ptr, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i163 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i163 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i163, align 2
  %local_udp_port = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %local_udp_port to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %local_udp_port, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx17 = getelementptr ptr, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %if.then19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i164 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i164 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i164, align 1
  %protocol = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 1
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %protocol, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %25 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attrs, align 4
  %arrayidx25 = getelementptr ptr, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %28, null
  br i1 %tobool26.not, label %if.end23.if.end32_crit_edge, label %if.then27

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i165 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i165 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i165, align 1
  %conv31 = zext i8 %30 to i16
  %31 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv31, ptr %cfg, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end23.if.end32_crit_edge
  %32 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attrs, align 4
  %arrayidx34 = getelementptr ptr, ptr %33, i32 5
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %35, null
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 2
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 1
  %38 = or i8 %37, 1
  store i8 %38, ptr %flags, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %39 = ptrtoint ptr %udp_config to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %udp_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp = icmp eq i8 %40, 2
  %41 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %attrs, align 4
  br i1 %cmp, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end39
  %arrayidx46 = getelementptr ptr, ptr %42, i32 6
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx46, align 4
  %tobool47 = icmp ne ptr %44, null
  br i1 %tobool47, label %if.then48, label %if.then44.if.end53_crit_edge

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i166 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i166 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i166, align 4
  %47 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %47, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then44.if.end53_crit_edge
  %49 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attrs, align 4
  %arrayidx55 = getelementptr ptr, ptr %50, i32 8
  %51 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %52, null
  br i1 %tobool56.not, label %if.end53.if.end94_crit_edge, label %if.then57

if.end53.if.end94_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i167 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i167 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i167, align 4
  %55 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %55, align 4
  br label %if.then83

if.else:                                          ; preds = %if.end39
  %arrayidx65 = getelementptr ptr, ptr %42, i32 7
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %58, null
  br i1 %tobool66.not, label %if.else.if.end71_crit_edge, label %if.then67

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %59 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #12
  %60 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %58, i32 noundef 16) #12
  %61 = call ptr @memcpy(ptr %59, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.else.if.end71_crit_edge
  %62 = xor i1 %tobool66.not, true
  %63 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %attrs, align 4
  %arrayidx73 = getelementptr ptr, ptr %64, i32 9
  %65 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %66, null
  br i1 %tobool74.not, label %if.end71.if.end94_crit_edge, label %if.then75

if.end71.if.end94_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %67 = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp79) #12
  %68 = call ptr @memset(ptr %tmp79, i32 255, i32 16)
  %call.i168 = call i32 @nla_memcpy(ptr noundef nonnull %tmp79, ptr noundef nonnull %66, i32 noundef 16) #12
  %69 = call ptr @memcpy(ptr %67, ptr %tmp79, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp79) #12
  br label %if.then83

if.then83:                                        ; preds = %if.then75, %if.then57
  %has_local.2.off0.ph = phi i1 [ %62, %if.then75 ], [ %tobool47, %if.then57 ]
  %70 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %attrs, align 4
  %arrayidx85 = getelementptr ptr, ptr %71, i32 10
  %72 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %73, null
  br i1 %tobool86.not, label %if.then83.cleanup107_crit_edge, label %if.then87

if.then83.cleanup107_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i169 = getelementptr i8, ptr %73, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i169, align 2
  %peer_udp_port = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %peer_udp_port to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %peer_udp_port, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.end71.if.end94_crit_edge, %if.end53.if.end94_crit_edge
  %has_local.2.off0173 = phi i1 [ %has_local.2.off0.ph, %if.then87 ], [ %tobool47, %if.end53.if.end94_crit_edge ], [ %62, %if.end71.if.end94_crit_edge ]
  %77 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %attrs, align 4
  %arrayidx96 = getelementptr ptr, ptr %78, i32 11
  %79 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %80, null
  %has_local.2.off0.not = xor i1 %has_local.2.off0173, true
  %brmerge = select i1 %tobool97.not, i1 true, i1 %has_local.2.off0.not
  %.mux = select i1 %tobool97.not, i32 0, i32 -22
  br i1 %brmerge, label %if.end94.cleanup107_crit_edge, label %if.end101

if.end94.cleanup107_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i170 = getelementptr i8, ptr %80, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i170 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i170, align 4
  %bind_ifindex = getelementptr inbounds %struct.fou_cfg, ptr %cfg, i32 0, i32 3, i32 5
  %83 = ptrtoint ptr %bind_ifindex to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %bind_ifindex, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end101, %if.end94.cleanup107_crit_edge, %if.then83.cleanup107_crit_edge, %if.then.cleanup107_crit_edge
  %retval.1 = phi i32 [ -97, %if.then.cleanup107_crit_edge ], [ -22, %if.then83.cleanup107_crit_edge ], [ 0, %if.end101 ], [ %.mux, %if.end94.cleanup107_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_udp_recv(ptr nocapture noundef readonly %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @fou_recv_pull(ptr noundef %skb, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %drop

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %protocol = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 0, %conv
  br label %cleanup

drop:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drop ], [ %sub, %if.end4 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fou_gro_receive(ptr nocapture noundef readonly %sk, ptr noundef %head, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %protocol = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %encap_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %4 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %encap_mark, align 2
  %bf.clear4 = and i16 %bf.load, -16449
  %bf.set5 = or i16 %bf.clear4, 64
  store i16 %bf.set5, ptr %encap_mark, align 2
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %cond = select i1 %tobool.not, ptr @inet_offloads, ptr @inet6_offloads
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr ptr, ptr %cond, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %entry.do.end18_crit_edge

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true:                                    ; preds = %entry
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true15

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b33 = load i1, ptr @fou_gro_receive.__warned, align 1
  br i1 %.b33, label %land.lhs.true15.do.end18_crit_edge, label %if.then

land.lhs.true15.do.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.then:                                          ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fou_gro_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 251, ptr noundef nonnull @.str.1) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then, %land.lhs.true15.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %entry.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %do.end18.out_crit_edge, label %lor.lhs.false

do.end18.out_crit_edge:                           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %do.end18
  %gro_receive = getelementptr inbounds %struct.offload_callbacks, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gro_receive, align 4
  %tobool21.not = icmp eq ptr %9, null
  br i1 %tobool21.not, label %lor.lhs.false.out_crit_edge, label %if.end23

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end23:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i.i = load i16, ptr %encap_mark, align 2
  %11 = trunc i16 %bf.load.i.i to i8
  %12 = lshr i8 %11, 1
  %inc.i.i = add nuw i8 %12, 1
  %13 = and i8 %inc.i.i, 15
  %14 = shl nuw nsw i8 %13, 1
  %bf.shl.i.i = zext i8 %14 to i16
  %bf.clear2.i.i = and i16 %bf.load.i.i, -31
  %bf.set.i.i = or i16 %bf.clear2.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %encap_mark, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 15
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i, !prof !83

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %flush.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flush.i, align 4
  %17 = or i16 %16, 1
  store i16 %17, ptr %flush.i, align 4
  br label %out

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call ptr %9(ptr noundef %head, ptr noundef %skb) #12
  br label %out

out:                                              ; preds = %if.end.i, %if.then.i, %lor.lhs.false.out_crit_edge, %do.end18.out_crit_edge
  %pp.0 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ null, %do.end18.out_crit_edge ], [ null, %if.then.i ], [ %call5.i, %if.end.i ]
  ret ptr %pp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_gro_complete(ptr nocapture noundef readonly %sk, ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %protocol = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %is_ipv6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %4 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_ipv6, align 2
  %5 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %cond = select i1 %tobool.not, ptr @inet_offloads, ptr @inet6_offloads
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr ptr, ptr %cond, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @fou_gro_complete.__warned, align 1
  br i1 %.b51, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fou_gro_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 270, ptr noundef nonnull @.str.1) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end9.do.end25_crit_edge, label %lor.rhs

do.end9.do.end25_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

lor.rhs:                                          ; preds = %do.end9
  %gro_complete = getelementptr inbounds %struct.offload_callbacks, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gro_complete, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %lor.rhs.do.end25_crit_edge, label %if.end41.critedge, !prof !83

lor.rhs.do.end25_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end25:                                         ; preds = %lor.rhs.do.end25_crit_edge, %do.end9.do.end25_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %out

if.end41.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = tail call i32 %9(ptr noundef %skb, i32 noundef %nhoff) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %14 = trunc i32 %nhoff to i16
  %conv1.i = add i16 %conv.i.i, %14
  %15 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv1.i, ptr %inner_mac_header.i.i, align 2
  br label %out

out:                                              ; preds = %if.end41.critedge, %do.end25
  %err.0 = phi i32 [ %call44, %if.end41.critedge ], [ -38, %do.end25 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue_udp_recv(ptr nocapture noundef readonly %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup96_crit_edge, label %if.end

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup96

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 12
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !83

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp3.i = icmp ult i32 %3, 12
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !83

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %arrayidx = getelementptr %struct.udphdr, ptr %add.ptr.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %arrayidx, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %11 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %conv, label %if.end3.drop_crit_edge [
    i32 0, label %sw.epilog15
    i32 1, label %sw.bb
  ]

if.end3.drop_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb:                                            ; preds = %if.end3
  %bf.lshr6 = lshr i8 %bf.load, 4
  %conv7 = zext i8 %bf.lshr6 to i32
  %12 = zext i32 %conv7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %conv7, label %sw.bb.drop_crit_edge [
    i32 4, label %sw.bb.cleanup_crit_edge
    i32 6, label %sw.bb9
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.drop_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb.cleanup_crit_edge
  %prot.0.neg = phi i32 [ -41, %sw.bb9 ], [ -4, %sw.bb.cleanup_crit_edge ]
  %call10 = tail call fastcc i32 @fou_recv_pull(ptr noundef %skb, ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not.not, label %cleanup.cleanup96_crit_edge, label %cleanup.drop_crit_edge

cleanup.drop_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

cleanup.cleanup96_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup96

sw.epilog15:                                      ; preds = %if.end3
  %bf.clear = shl i8 %bf.load, 2
  %13 = and i8 %bf.clear, 124
  %shl = zext i8 %13 to i32
  %add = add nuw nsw i32 %shl, 12
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i151 = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i151)
  %cmp.not.i152 = icmp ugt i32 %add, %sub.i.i151
  br i1 %cmp.not.i152, label %if.end.i154, label %sw.epilog15.if.end20_crit_edge, !prof !83

sw.epilog15.if.end20_crit_edge:                   ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end.i154:                                      ; preds = %sw.epilog15
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp3.i153 = icmp ult i32 %15, %add
  br i1 %cmp3.i153, label %if.end.i154.drop_crit_edge, label %pskb_may_pull.exit160, !prof !83

if.end.i154.drop_crit_edge:                       ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit160:                            ; preds = %if.end.i154
  %sub.i155 = sub i32 %add, %sub.i.i151
  %call13.i156 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i155) #12
  %cmp14.i157.not = icmp eq ptr %call13.i156, null
  br i1 %cmp14.i157.not, label %pskb_may_pull.exit160.drop_crit_edge, label %pskb_may_pull.exit160.if.end20_crit_edge

pskb_may_pull.exit160.if.end20_crit_edge:         ; preds = %pskb_may_pull.exit160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

pskb_may_pull.exit160.drop_crit_edge:             ; preds = %pskb_may_pull.exit160
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end20:                                         ; preds = %pskb_may_pull.exit160.if.end20_crit_edge, %sw.epilog15.if.end20_crit_edge
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %20 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i163 = zext i16 %21 to i32
  %add.ptr.i.i164 = getelementptr i8, ptr %19, i32 %conv.i.i163
  %arrayidx22 = getelementptr %struct.udphdr, ptr %add.ptr.i.i164, i32 1
  %flags1.i = getelementptr inbounds %struct.anon.159, ptr %arrayidx22, i32 0, i32 2
  %22 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags1.i, align 2
  %conv.i = zext i16 %23 to i32
  %and.i = and i32 %conv.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i165, label %if.end20.drop_crit_edge

if.end20.drop_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end.i165:                                      ; preds = %if.end20
  %24 = shl i16 %23, 2
  %25 = and i16 %24, 4
  %26 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %shl)
  %cmp.i = icmp ugt i32 %26, %shl
  br i1 %cmp.i, label %if.end.i165.drop_crit_edge, label %if.end4.i

if.end.i165.drop_crit_edge:                       ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end4.i:                                        ; preds = %if.end.i165
  %and6.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end26_crit_edge, label %if.then8.i

if.end4.i.if.end26_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then8.i:                                       ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.guehdr, ptr %arrayidx22, i32 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 %26
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %27 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr9.i, align 4
  %and10.i = and i32 %28, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end26_crit_edge, label %if.then8.i.drop_crit_edge

if.then8.i.drop_crit_edge:                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.then8.i.if.end26_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %if.then8.i.if.end26_crit_edge, %if.end4.i.if.end26_crit_edge
  %add27 = add nuw nsw i32 %shl, 4
  %family = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp = icmp eq i8 %30, 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i167 = zext i16 %32 to i32
  %add.ptr.i.i168 = getelementptr i8, ptr %19, i32 %conv.i.i167
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i168, i32 0, i32 2
  %33 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tot_len, align 2
  %35 = trunc i32 %add to i16
  %conv34 = sub i16 %34, %35
  store i16 %conv34, ptr %tot_len, align 2
  br label %if.end43

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i168, i32 0, i32 2
  %36 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %payload_len, align 4
  %38 = trunc i32 %add to i16
  %conv40 = sub i16 %37, %38
  store i16 %conv40, ptr %payload_len, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then30
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i183 = zext i16 %42 to i32
  %add.ptr.i.i184 = getelementptr i8, ptr %40, i32 %conv.i.i183
  tail call fastcc void @skb_postpull_rcsum(ptr noundef %skb, ptr noundef %add.ptr.i.i184, i32 noundef %add)
  %flags = getelementptr %struct.udphdr, ptr %add.ptr.i.i164, i32 1, i32 1
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags, align 2
  %45 = and i16 %44, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool47.not = icmp eq i16 %45, 0
  br i1 %tobool47.not, label %if.end43.if.end75_crit_edge, label %if.then48

if.end43.if.end75_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then48:                                        ; preds = %if.end43
  %arrayidx45 = getelementptr %struct.udphdr, ptr %add.ptr.i.i164, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool55.not = icmp sgt i32 %47, -1
  br i1 %tobool55.not, label %if.then48.if.end75_crit_edge, label %if.then56

if.then48.if.end75_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then56:                                        ; preds = %if.then48
  %add.ptr58 = getelementptr %struct.udphdr, ptr %add.ptr.i.i164, i32 2
  %flags60 = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %flags60 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags60, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool63 = icmp ne i8 %50, 0
  %call65 = tail call fastcc ptr @gue_remcsum(ptr noundef %skb, ptr noundef %arrayidx22, ptr noundef %add.ptr58, i32 noundef %add27, i1 noundef zeroext %tobool63)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then56.drop_crit_edge, label %if.then56.if.end75_crit_edge

if.then56.if.end75_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then56.drop_crit_edge:                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end75:                                         ; preds = %if.then56.if.end75_crit_edge, %if.then48.if.end75_crit_edge, %if.end43.if.end75_crit_edge
  %guehdr.2 = phi ptr [ %arrayidx22, %if.end43.if.end75_crit_edge ], [ %arrayidx22, %if.then48.if.end75_crit_edge ], [ %call65, %if.then56.if.end75_crit_edge ]
  %51 = ptrtoint ptr %guehdr.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load76 = load i8, ptr %guehdr.2, align 4
  %52 = and i8 %bf.load76, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool79.not = icmp eq i8 %52, 0
  br i1 %tobool79.not, label %if.end85, label %if.then83, !prof !85

if.then83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup96

if.end85:                                         ; preds = %if.end75
  %proto_ctype86 = getelementptr inbounds %struct.anon.159, ptr %guehdr.2, i32 0, i32 1
  %53 = ptrtoint ptr %proto_ctype86 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %proto_ctype86, align 1
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len.i.i, align 4
  %sub.i185 = sub i32 %56, %add
  store i32 %sub.i185, ptr %len.i.i, align 4
  %57 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i185, i32 %58)
  %cmp.i186 = icmp ult i32 %sub.i185, %58
  br i1 %cmp.i186, label %do.body4.i, label %__skb_pull.exit, !prof !83

do.body4.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !86
  unreachable

__skb_pull.exit:                                  ; preds = %if.end85
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %60, i32 %add
  store ptr %add.ptr.i187, ptr %data.i, align 4
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i187 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i189 = trunc i32 %sub.ptr.sub.i to i16
  %63 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i189, ptr %transport_header.i.i, align 2
  %call89 = tail call fastcc i32 @iptunnel_pull_offloads(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %__skb_pull.exit.drop_crit_edge

__skb_pull.exit.drop_crit_edge:                   ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end92:                                         ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv93 = zext i8 %54 to i32
  %sub94 = sub nsw i32 0, %conv93
  br label %cleanup96

drop:                                             ; preds = %__skb_pull.exit.drop_crit_edge, %if.then56.drop_crit_edge, %if.then8.i.drop_crit_edge, %if.end.i165.drop_crit_edge, %if.end20.drop_crit_edge, %pskb_may_pull.exit160.drop_crit_edge, %if.end.i154.drop_crit_edge, %cleanup.drop_crit_edge, %sw.bb.drop_crit_edge, %if.end3.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup96

cleanup96:                                        ; preds = %drop, %if.end92, %if.then83, %cleanup.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ 0, %drop ], [ %prot.0.neg, %cleanup.cleanup96_crit_edge ], [ 0, %if.then83 ], [ %sub94, %if.end92 ], [ 1, %entry.cleanup96_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gue_gro_receive(ptr nocapture noundef readonly %sk, ptr noundef %head, ptr noundef %skb) #3 align 64 {
entry:
  %grc = alloca %struct.gro_remcsum, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %grc) #12
  %2 = getelementptr inbounds %struct.gro_remcsum, ptr %grc, i32 0, i32 1
  %3 = ptrtoint ptr %grc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %grc, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %2, align 4
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_offset.i, align 8
  %add = add i32 %6, 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %7 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %6
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp.i.not = icmp ult i32 %10, %add
  br i1 %cmp.i.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.skb_gro_header_slow.exit_crit_edge, !prof !83

if.then.skb_gro_header_slow.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp3.i.i = icmp ult i32 %12, %add
  br i1 %cmp3.i.i, label %if.end.i.i.if.then.i341_crit_edge, label %pskb_may_pull.exit.i, !prof !83

if.end.i.i.if.then.i341_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.if.then.i341_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.if.then.i341_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.skb_gro_header_slow.exit_crit_edge
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cb.i, align 8
  %16 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %18, i32 %6
  %tobool5.not = icmp eq ptr %add.ptr.i309, null
  br i1 %tobool5.not, label %skb_gro_header_slow.exit.if.then.i341_crit_edge, label %skb_gro_header_slow.exit.if.end10_crit_edge, !prof !83

skb_gro_header_slow.exit.if.end10_crit_edge:      ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

skb_gro_header_slow.exit.if.then.i341_crit_edge:  ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.end10:                                         ; preds = %skb_gro_header_slow.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %guehdr.0 = phi ptr [ %add.ptr.i309, %skb_gro_header_slow.exit.if.end10_crit_edge ], [ %add.ptr.i, %entry.if.end10_crit_edge ]
  %19 = ptrtoint ptr %guehdr.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %guehdr.0, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %20 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv, label %if.end10.if.then.i341_crit_edge [
    i32 0, label %sw.epilog17
    i32 1, label %sw.bb
  ]

if.end10.if.then.i341_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

sw.bb:                                            ; preds = %if.end10
  %bf.lshr12 = lshr i8 %bf.load, 4
  %conv13 = zext i8 %bf.lshr12 to i32
  %21 = zext i32 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %conv13, label %sw.bb.if.then.i341_crit_edge [
    i32 4, label %sw.bb.next_proto_crit_edge
    i32 6, label %sw.bb15
  ]

sw.bb.next_proto_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_proto

sw.bb.if.then.i341_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_proto

sw.epilog17:                                      ; preds = %if.end10
  %bf.clear = shl i8 %bf.load, 2
  %22 = and i8 %bf.clear, 124
  %shl = zext i8 %22 to i32
  %add20 = add i32 %add, %shl
  %23 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add20)
  %cmp.i311.not = icmp ult i32 %24, %add20
  br i1 %cmp.i311.not, label %if.then23, label %sw.epilog17.if.end36_crit_edge

sw.epilog17.if.end36_crit_edge:                   ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then23:                                        ; preds = %sw.epilog17
  %len.i.i.i313 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i.i313, align 4
  %data_len.i.i.i314 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i314, align 8
  %sub.i.i.i315 = sub i32 %26, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %sub.i.i.i315)
  %cmp.not.i.i316 = icmp ugt i32 %add20, %sub.i.i.i315
  br i1 %cmp.not.i.i316, label %if.end.i.i318, label %if.then23.skb_gro_header_slow.exit329_crit_edge, !prof !83

if.then23.skb_gro_header_slow.exit329_crit_edge:  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit329

if.end.i.i318:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add20)
  %cmp3.i.i317 = icmp ult i32 %26, %add20
  br i1 %cmp3.i.i317, label %if.end.i.i318.if.then.i341_crit_edge, label %pskb_may_pull.exit.i322, !prof !83

if.end.i.i318.if.then.i341_crit_edge:             ; preds = %if.end.i.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

pskb_may_pull.exit.i322:                          ; preds = %if.end.i.i318
  %sub.i.i319 = sub i32 %add20, %sub.i.i.i315
  %call13.i.i320 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i319) #12
  %cmp14.i.not.i321 = icmp eq ptr %call13.i.i320, null
  br i1 %cmp14.i.not.i321, label %pskb_may_pull.exit.i322.if.then.i341_crit_edge, label %pskb_may_pull.exit.i322.skb_gro_header_slow.exit329_crit_edge

pskb_may_pull.exit.i322.skb_gro_header_slow.exit329_crit_edge: ; preds = %pskb_may_pull.exit.i322
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit329

pskb_may_pull.exit.i322.if.then.i341_crit_edge:   ; preds = %pskb_may_pull.exit.i322
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

skb_gro_header_slow.exit329:                      ; preds = %pskb_may_pull.exit.i322.skb_gro_header_slow.exit329_crit_edge, %if.then23.skb_gro_header_slow.exit329_crit_edge
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cb.i, align 8
  %30 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i325 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i325 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i325, align 4
  %add.ptr.i326 = getelementptr i8, ptr %32, i32 %6
  %tobool25.not = icmp eq ptr %add.ptr.i326, null
  br i1 %tobool25.not, label %skb_gro_header_slow.exit329.if.then.i341_crit_edge, label %skb_gro_header_slow.exit329.if.end36_crit_edge, !prof !83

skb_gro_header_slow.exit329.if.end36_crit_edge:   ; preds = %skb_gro_header_slow.exit329
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

skb_gro_header_slow.exit329.if.then.i341_crit_edge: ; preds = %skb_gro_header_slow.exit329
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.end36:                                         ; preds = %skb_gro_header_slow.exit329.if.end36_crit_edge, %sw.epilog17.if.end36_crit_edge
  %guehdr.1 = phi ptr [ %add.ptr.i326, %skb_gro_header_slow.exit329.if.end36_crit_edge ], [ %guehdr.0, %sw.epilog17.if.end36_crit_edge ]
  %33 = ptrtoint ptr %guehdr.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load37 = load i8, ptr %guehdr.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load37)
  %34 = icmp ult i8 %bf.load37, 32
  br i1 %34, label %lor.lhs.false51, label %if.end36.if.then.i341_crit_edge, !prof !87

if.end36.if.then.i341_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

lor.lhs.false51:                                  ; preds = %if.end36
  %flags1.i = getelementptr inbounds %struct.anon.159, ptr %guehdr.1, i32 0, i32 2
  %35 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags1.i, align 2
  %conv.i330 = zext i16 %36 to i32
  %and.i = and i32 %conv.i330, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i332, label %lor.lhs.false51.if.then.i341_crit_edge

lor.lhs.false51.if.then.i341_crit_edge:           ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.end.i332:                                      ; preds = %lor.lhs.false51
  %37 = shl i16 %36, 2
  %38 = and i16 %37, 4
  %39 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %shl)
  %cmp.i331 = icmp ugt i32 %39, %shl
  br i1 %cmp.i331, label %if.end.i332.if.then.i341_crit_edge, label %if.end4.i

if.end.i332.if.then.i341_crit_edge:               ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.end4.i:                                        ; preds = %if.end.i332
  %and6.i = and i32 %conv.i330, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end55_crit_edge, label %if.then8.i

if.end4.i.if.end55_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then8.i:                                       ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.guehdr, ptr %guehdr.1, i32 1
  %add.ptr.i333 = getelementptr i8, ptr %arrayidx.i, i32 %39
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i333, i32 -4
  %40 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr9.i, align 4
  %and10.i = and i32 %41, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end55_crit_edge, label %if.then8.i.if.then.i341_crit_edge

if.then8.i.if.then.i341_crit_edge:                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.then8.i.if.end55_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %if.then8.i.if.end55_crit_edge, %if.end4.i.if.end55_crit_edge
  %add56 = add nuw nsw i32 %shl, 4
  %csum_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %42 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %csum_valid.i, align 2
  %43 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i334 = icmp eq i16 %43, 0
  br i1 %tobool.not.i334, label %if.end55.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i

if.end55.skb_gro_postpull_rcsum.exit_crit_edge:   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %csum.i, align 4
  %sub.i.i335 = sub i32 0, %45
  %call3.i = tail call i32 @csum_partial(ptr noundef %guehdr.1, i32 noundef %add56, i32 noundef %sub.i.i335) #12
  %sub.i11.i = sub i32 0, %call3.i
  %46 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i11.i, ptr %csum.i, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i, %if.end55.skb_gro_postpull_rcsum.exit_crit_edge
  %47 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags1.i, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool58.not = icmp eq i16 %49, 0
  br i1 %tobool58.not, label %skb_gro_postpull_rcsum.exit.if.end87_crit_edge, label %if.then59

skb_gro_postpull_rcsum.exit.if.end87_crit_edge:   ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then59:                                        ; preds = %skb_gro_postpull_rcsum.exit
  %arrayidx = getelementptr %struct.guehdr, ptr %guehdr.1, i32 1
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool66.not = icmp sgt i32 %51, -1
  br i1 %tobool66.not, label %if.then59.if.end87_crit_edge, label %if.then67

if.then59.if.end87_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then67:                                        ; preds = %if.then59
  %add.ptr69 = getelementptr %struct.guehdr, ptr %guehdr.1, i32 2
  %flags70 = getelementptr inbounds %struct.fou, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %flags70 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags70, align 1
  %54 = and i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool73 = icmp ne i8 %54, 0
  %call78 = call fastcc ptr @gue_gro_remcsum(ptr noundef %skb, i32 noundef %6, ptr noundef %guehdr.1, ptr noundef %add.ptr69, i32 noundef %add56, ptr noundef nonnull %grc, i1 noundef zeroext %tobool73)
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.then67.if.then.i341_crit_edge, label %if.then67.if.end87_crit_edge

if.then67.if.end87_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then67.if.then.i341_crit_edge:                 ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.end87:                                         ; preds = %if.then67.if.end87_crit_edge, %if.then59.if.end87_crit_edge, %skb_gro_postpull_rcsum.exit.if.end87_crit_edge
  %guehdr.4 = phi ptr [ %guehdr.1, %skb_gro_postpull_rcsum.exit.if.end87_crit_edge ], [ %guehdr.1, %if.then59.if.end87_crit_edge ], [ %call78, %if.then67.if.end87_crit_edge ]
  %55 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %56, %add56
  store i32 %add.i, ptr %data_offset.i, align 8
  %57 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %57)
  %p.0360 = load ptr, ptr %head, align 4
  %cmp89.not361 = icmp eq ptr %p.0360, %head
  br i1 %cmp89.not361, label %if.end87.for.end_crit_edge, label %for.body.lr.ph

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end87
  %arrayidx113 = getelementptr %struct.guehdr, ptr %guehdr.4, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup129.for.body_crit_edge, %for.body.lr.ph
  %p.0362 = phi ptr [ %p.0360, %for.body.lr.ph ], [ %p.0, %cleanup129.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0362, i32 0, i32 3, i32 26
  %58 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load93 = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load93)
  %tobool95.not = icmp sgt i16 %bf.load93, -1
  br i1 %tobool95.not, label %for.body.cleanup129_crit_edge, label %if.end97

for.body.cleanup129_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

if.end97:                                         ; preds = %for.body
  %data98 = getelementptr inbounds %struct.sk_buff, ptr %p.0362, i32 0, i32 19
  %59 = ptrtoint ptr %data98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data98, align 4
  %add.ptr99 = getelementptr i8, ptr %60, i32 %6
  %61 = ptrtoint ptr %guehdr.4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %guehdr.4, align 4
  %63 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp100.not = icmp eq i32 %62, %64
  br i1 %cmp100.not, label %if.end108, label %if.end97.cleanup129.sink.split_crit_edge

if.end97.cleanup129.sink.split_crit_edge:         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129.sink.split

if.end108:                                        ; preds = %if.end97
  %65 = ptrtoint ptr %guehdr.4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load109 = load i8, ptr %guehdr.4, align 4
  %bf.clear110 = and i8 %bf.load109, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear110)
  %tobool112.not = icmp eq i8 %bf.clear110, 0
  br i1 %tobool112.not, label %if.end108.cleanup129_crit_edge, label %land.lhs.true

if.end108.cleanup129_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

land.lhs.true:                                    ; preds = %if.end108
  %arrayidx114 = getelementptr %struct.guehdr, ptr %add.ptr99, i32 1
  %66 = shl nuw nsw i8 %bf.clear110, 2
  %shl118 = zext i8 %66 to i32
  %bcmp = tail call i32 @bcmp(ptr %arrayidx113, ptr %arrayidx114, i32 %shl118) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool120.not = icmp eq i32 %bcmp, 0
  br i1 %tobool120.not, label %land.lhs.true.cleanup129_crit_edge, label %land.lhs.true.cleanup129.sink.split_crit_edge

land.lhs.true.cleanup129.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129.sink.split

land.lhs.true.cleanup129_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup129

cleanup129.sink.split:                            ; preds = %land.lhs.true.cleanup129.sink.split_crit_edge, %if.end97.cleanup129.sink.split_crit_edge
  %bf.clear126 = and i16 %bf.load93, 32767
  %67 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %bf.clear126, ptr %same_flow, align 2
  br label %cleanup129

cleanup129:                                       ; preds = %cleanup129.sink.split, %land.lhs.true.cleanup129_crit_edge, %if.end108.cleanup129_crit_edge, %for.body.cleanup129_crit_edge
  %68 = ptrtoint ptr %p.0362 to i32
  call void @__asan_load4_noabort(i32 %68)
  %p.0 = load ptr, ptr %p.0362, align 4
  %cmp89.not = icmp eq ptr %p.0, %head
  br i1 %cmp89.not, label %cleanup129.for.end_crit_edge, label %cleanup129.for.body_crit_edge

cleanup129.for.body_crit_edge:                    ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup129.for.end_crit_edge:                     ; preds = %cleanup129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup129.for.end_crit_edge, %if.end87.for.end_crit_edge
  %proto_ctype = getelementptr inbounds %struct.anon.159, ptr %guehdr.4, i32 0, i32 1
  %69 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %proto_ctype, align 1
  %phi.cast = zext i8 %70 to i32
  br label %next_proto

next_proto:                                       ; preds = %for.end, %sw.bb15, %sw.bb.next_proto_crit_edge
  %proto.0 = phi i32 [ 41, %sw.bb15 ], [ %phi.cast, %for.end ], [ %conv13, %sw.bb.next_proto_crit_edge ]
  %encap_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %71 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load138 = load i16, ptr %encap_mark, align 2
  %bf.clear144 = and i16 %bf.load138, -16449
  %bf.set145 = or i16 %bf.clear144, 64
  store i16 %bf.set145, ptr %encap_mark, align 2
  %72 = and i16 %bf.load138, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool153.not = icmp eq i16 %72, 0
  %cond = select i1 %tobool153.not, ptr @inet_offloads, ptr @inet6_offloads
  %arrayidx155 = getelementptr ptr, ptr %cond, i32 %proto.0
  %73 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %arrayidx155, align 4
  %call157 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %land.lhs.true159, label %next_proto.do.end167_crit_edge

next_proto.do.end167_crit_edge:                   ; preds = %next_proto
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end167

land.lhs.true159:                                 ; preds = %next_proto
  %call160 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %land.lhs.true159.do.end167_crit_edge, label %land.lhs.true162

land.lhs.true159.do.end167_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end167

land.lhs.true162:                                 ; preds = %land.lhs.true159
  %.b306 = load i1, ptr @gue_gro_receive.__warned, align 1
  br i1 %.b306, label %land.lhs.true162.do.end167_crit_edge, label %if.then164

land.lhs.true162.do.end167_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end167

if.then164:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_gro_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 437, ptr noundef nonnull @.str.1) #12
  br label %do.end167

do.end167:                                        ; preds = %if.then164, %land.lhs.true162.do.end167_crit_edge, %land.lhs.true159.do.end167_crit_edge, %next_proto.do.end167_crit_edge
  %tobool169.not = icmp eq ptr %74, null
  br i1 %tobool169.not, label %do.end167.land.rhs_crit_edge, label %lor.rhs

do.end167.land.rhs_crit_edge:                     ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

lor.rhs:                                          ; preds = %do.end167
  %gro_receive = getelementptr inbounds %struct.offload_callbacks, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gro_receive, align 4
  %tobool170.not = icmp eq ptr %76, null
  br i1 %tobool170.not, label %lor.rhs.land.rhs_crit_edge, label %if.end224.critedge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %do.end167.land.rhs_crit_edge
  %.b304305 = load i1, ptr @gue_gro_receive.__already_done, align 1
  br i1 %.b304305, label %land.rhs.if.then.i341_crit_edge, label %if.then188, !prof !85

land.rhs.if.then.i341_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

if.then188:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_gro_receive.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef null) #12
  br label %if.then.i341

if.end224.critedge:                               ; preds = %lor.rhs
  %77 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i.i = load i16, ptr %encap_mark, align 2
  %78 = trunc i16 %bf.load.i.i to i8
  %79 = lshr i8 %78, 1
  %inc.i.i = add nuw i8 %79, 1
  %80 = and i8 %inc.i.i, 15
  %81 = shl nuw nsw i8 %80, 1
  %bf.shl.i.i = zext i8 %81 to i16
  %bf.clear2.i.i = and i16 %bf.load.i.i, -31
  %bf.set.i.i = or i16 %bf.clear2.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %encap_mark, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %80)
  %cmp.i.not.i = icmp eq i8 %80, 15
  br i1 %cmp.i.not.i, label %if.then.i338, label %out, !prof !83

if.then.i338:                                     ; preds = %if.end224.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %82 = ptrtoint ptr %flush.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flush.i, align 4
  %84 = or i16 %83, 1
  store i16 %84, ptr %flush.i, align 4
  br label %if.then.i341

out:                                              ; preds = %if.end224.critedge
  %call5.i = tail call ptr %76(ptr noundef %head, ptr noundef %skb) #12
  %cmp.not.i = icmp eq ptr %call5.i, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.skb_gro_flush_final_remcsum.exit_crit_edge, label %out.if.then.i341_crit_edge

out.if.then.i341_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i341

out.skb_gro_flush_final_remcsum.exit_crit_edge:   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_flush_final_remcsum.exit

if.then.i341:                                     ; preds = %out.if.then.i341_crit_edge, %if.then.i338, %if.then188, %land.rhs.if.then.i341_crit_edge, %if.then67.if.then.i341_crit_edge, %if.then8.i.if.then.i341_crit_edge, %if.end.i332.if.then.i341_crit_edge, %lor.lhs.false51.if.then.i341_crit_edge, %if.end36.if.then.i341_crit_edge, %skb_gro_header_slow.exit329.if.then.i341_crit_edge, %pskb_may_pull.exit.i322.if.then.i341_crit_edge, %if.end.i.i318.if.then.i341_crit_edge, %sw.bb.if.then.i341_crit_edge, %if.end10.if.then.i341_crit_edge, %skb_gro_header_slow.exit.if.then.i341_crit_edge, %pskb_may_pull.exit.i.if.then.i341_crit_edge, %if.end.i.i.if.then.i341_crit_edge
  %pp.0358 = phi ptr [ %call5.i, %out.if.then.i341_crit_edge ], [ null, %skb_gro_header_slow.exit.if.then.i341_crit_edge ], [ null, %if.end10.if.then.i341_crit_edge ], [ null, %sw.bb.if.then.i341_crit_edge ], [ null, %skb_gro_header_slow.exit329.if.then.i341_crit_edge ], [ null, %if.end36.if.then.i341_crit_edge ], [ null, %if.then188 ], [ null, %land.rhs.if.then.i341_crit_edge ], [ null, %if.then67.if.then.i341_crit_edge ], [ null, %if.then.i338 ], [ null, %pskb_may_pull.exit.i.if.then.i341_crit_edge ], [ null, %if.end.i.i.if.then.i341_crit_edge ], [ null, %pskb_may_pull.exit.i322.if.then.i341_crit_edge ], [ null, %if.end.i.i318.if.then.i341_crit_edge ], [ null, %lor.lhs.false51.if.then.i341_crit_edge ], [ null, %if.end.i332.if.then.i341_crit_edge ], [ null, %if.then8.i.if.then.i341_crit_edge ]
  %flush.0357 = phi i16 [ 0, %out.if.then.i341_crit_edge ], [ 1, %skb_gro_header_slow.exit.if.then.i341_crit_edge ], [ 1, %if.end10.if.then.i341_crit_edge ], [ 1, %sw.bb.if.then.i341_crit_edge ], [ 1, %skb_gro_header_slow.exit329.if.then.i341_crit_edge ], [ 1, %if.end36.if.then.i341_crit_edge ], [ 1, %if.then188 ], [ 1, %land.rhs.if.then.i341_crit_edge ], [ 1, %if.then67.if.then.i341_crit_edge ], [ 0, %if.then.i338 ], [ 1, %pskb_may_pull.exit.i.if.then.i341_crit_edge ], [ 1, %if.end.i.i.if.then.i341_crit_edge ], [ 1, %pskb_may_pull.exit.i322.if.then.i341_crit_edge ], [ 1, %if.end.i.i318.if.then.i341_crit_edge ], [ 1, %lor.lhs.false51.if.then.i341_crit_edge ], [ 1, %if.end.i332.if.then.i341_crit_edge ], [ 1, %if.then8.i.if.then.i341_crit_edge ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %85 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %86, %flush.0357
  store i16 %conv2.i, ptr %flush1.i, align 4
  %87 = ptrtoint ptr %grc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %grc, align 4
  %add.i.i = add i32 %88, 2
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i, label %if.then.i341.skb_gro_remcsum_cleanup.exit.i_crit_edge, label %if.end.i.i342

if.then.i341.skb_gro_remcsum_cleanup.exit.i_crit_edge: ; preds = %if.then.i341
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_cleanup.exit.i

if.end.i.i342:                                    ; preds = %if.then.i341
  %91 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cb.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %92, i32 %88
  %93 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %frag0_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add.i.i)
  %cmp.i.not.i.i = icmp ult i32 %94, %add.i.i
  br i1 %cmp.i.not.i.i, label %if.then6.i.i, label %if.end.i.i342.if.end12.i.i_crit_edge

if.end.i.i342.if.end12.i.i_crit_edge:             ; preds = %if.end.i.i342
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i342
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %95 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %97 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %96, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then6.i.i.skb_gro_header_slow.exit.i.i_crit_edge, !prof !83

if.then6.i.i.skb_gro_header_slow.exit.i.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add.i.i)
  %cmp3.i.i.i.i = icmp ult i32 %96, %add.i.i
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.i, !prof !83

if.end.i.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_cleanup.exit.i

pskb_may_pull.exit.i.i.i:                         ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i.i
  %call13.i.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i.i) #12
  %cmp14.i.not.i.i.i = icmp eq ptr %call13.i.i.i.i, null
  br i1 %cmp14.i.not.i.i.i, label %pskb_may_pull.exit.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.i.skb_gro_header_slow.exit.i.i_crit_edge

pskb_may_pull.exit.i.i.i.skb_gro_header_slow.exit.i.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit.i.i

pskb_may_pull.exit.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_cleanup.exit.i

skb_gro_header_slow.exit.i.i:                     ; preds = %pskb_may_pull.exit.i.i.i.skb_gro_header_slow.exit.i.i_crit_edge, %if.then6.i.i.skb_gro_header_slow.exit.i.i_crit_edge
  %99 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %cb.i, align 8
  %100 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %frag0_len.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %101 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %102, i32 %88
  %tobool9.not.i.i = icmp eq ptr %add.ptr.i24.i.i, null
  br i1 %tobool9.not.i.i, label %skb_gro_header_slow.exit.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, label %skb_gro_header_slow.exit.i.i.if.end12.i.i_crit_edge

skb_gro_header_slow.exit.i.i.if.end12.i.i_crit_edge: ; preds = %skb_gro_header_slow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

skb_gro_header_slow.exit.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge: ; preds = %skb_gro_header_slow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_cleanup.exit.i

if.end12.i.i:                                     ; preds = %skb_gro_header_slow.exit.i.i.if.end12.i.i_crit_edge, %if.end.i.i342.if.end12.i.i_crit_edge
  %ptr.0.i.i = phi ptr [ %add.ptr.i24.i.i, %skb_gro_header_slow.exit.i.i.if.end12.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i342.if.end12.i.i_crit_edge ]
  %103 = ptrtoint ptr %ptr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ptr.0.i.i, align 2
  %conv.i.i.i = zext i16 %104 to i32
  %neg.i.i.i.i = xor i32 %conv.i.i.i, -1
  %add.i.i.i.i.i = add i32 %90, %neg.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %neg.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %neg.i.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %105 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i.i) #19, !srcloc !88
  %neg.i3.i.i.i = xor i32 %105, -1
  %shr.i.i.i.i = lshr i32 %neg.i3.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %106 = ptrtoint ptr %ptr.0.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i.i.i, ptr %ptr.0.i.i, align 2
  br label %skb_gro_remcsum_cleanup.exit.i

skb_gro_remcsum_cleanup.exit.i:                   ; preds = %if.end12.i.i, %skb_gro_header_slow.exit.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, %pskb_may_pull.exit.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, %if.end.i.i.i.i.skb_gro_remcsum_cleanup.exit.i_crit_edge, %if.then.i341.skb_gro_remcsum_cleanup.exit.i_crit_edge
  %remcsum_offload.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %107 = ptrtoint ptr %remcsum_offload.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %bf.load.i343 = load i32, ptr %remcsum_offload.i, align 2
  %bf.clear.i = and i32 %bf.load.i343, -2097153
  store i32 %bf.clear.i, ptr %remcsum_offload.i, align 2
  br label %skb_gro_flush_final_remcsum.exit

skb_gro_flush_final_remcsum.exit:                 ; preds = %skb_gro_remcsum_cleanup.exit.i, %out.skb_gro_flush_final_remcsum.exit_crit_edge
  %pp.0359 = phi ptr [ inttoptr (i32 -115 to ptr), %out.skb_gro_flush_final_remcsum.exit_crit_edge ], [ %pp.0358, %skb_gro_remcsum_cleanup.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %grc) #12
  ret ptr %pp.0359
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gue_gro_complete(ptr nocapture noundef readnone %sk, ptr noundef %skb, i32 noundef %nhoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %nhoff
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %proto_ctype = getelementptr inbounds %struct.anon.159, ptr %add.ptr, i32 0, i32 1
  %4 = ptrtoint ptr %proto_ctype to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto_ctype, align 1
  %bf.clear = shl i8 %bf.load, 2
  %6 = and i8 %bf.clear, 124
  %narrow = add nuw i8 %6, 4
  %add = zext i8 %narrow to i32
  %phi.cast = zext i8 %5 to i32
  br label %sw.epilog10

sw.bb3:                                           ; preds = %entry
  %bf.lshr5 = lshr i8 %bf.load, 4
  %conv6 = zext i8 %bf.lshr5 to i32
  %7 = zext i32 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %conv6, label %sw.bb3.cleanup_crit_edge [
    i32 4, label %sw.bb3.sw.epilog10_crit_edge
    i32 6, label %sw.bb8
  ]

sw.bb3.sw.epilog10_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb8, %sw.bb3.sw.epilog10_crit_edge, %sw.bb
  %guehlen.0 = phi i32 [ 0, %sw.bb8 ], [ %add, %sw.bb ], [ 0, %sw.bb3.sw.epilog10_crit_edge ]
  %proto.0 = phi i32 [ 41, %sw.bb8 ], [ %phi.cast, %sw.bb ], [ %conv6, %sw.bb3.sw.epilog10_crit_edge ]
  %is_ipv6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %8 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load11 = load i16, ptr %is_ipv6, align 2
  %9 = and i16 %bf.load11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %cond = select i1 %tobool.not, ptr @inet_offloads, ptr @inet6_offloads
  %arrayidx = getelementptr ptr, ptr %cond, i32 %proto.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %land.lhs.true, label %sw.epilog10.do.end22_crit_edge

sw.epilog10.do.end22_crit_edge:                   ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true:                                    ; preds = %sw.epilog10
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true19

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @gue_gro_complete.__warned, align 1
  br i1 %.b79, label %land.lhs.true19.do.end22_crit_edge, label %if.then

land.lhs.true19.do.end22_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

if.then:                                          ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gue_gro_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 481, ptr noundef nonnull @.str.1) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then, %land.lhs.true19.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %sw.epilog10.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %do.end22.do.end38_crit_edge, label %lor.rhs

do.end22.do.end38_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

lor.rhs:                                          ; preds = %do.end22
  %gro_complete = getelementptr inbounds %struct.offload_callbacks, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gro_complete, align 4
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %lor.rhs.do.end38_crit_edge, label %if.end54.critedge, !prof !83

lor.rhs.do.end38_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end38:                                         ; preds = %lor.rhs.do.end38_crit_edge, %do.end22.do.end38_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 482, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end54.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %add57 = add i32 %guehlen.0, %nhoff
  %call58 = tail call i32 %13(ptr noundef %skb, i32 noundef %add57) #12
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %18 = trunc i32 %add57 to i16
  %conv1.i = add i16 %conv.i.i, %18
  %19 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i, ptr %inner_mac_header.i.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end54.critedge, %do.end38, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %sw.bb3.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %call58, %if.end54.critedge ], [ -2, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_udp_tunnel_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_tunnel_sock_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sock_create6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fou_recv_pull(ptr noundef %skb, ptr nocapture noundef readonly %fou) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.fou, ptr %fou, i32 0, i32 4
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tot_len, align 2
  %sub = add i16 %7, -8
  store i16 %sub, ptr %tot_len, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %payload_len, align 4
  %sub8 = add i16 %9, -8
  store i16 %sub8, ptr %payload_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %11, -8
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !83

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !86
  unreachable

__skb_pull.exit:                                  ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %head.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i13, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %19 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.26)
  switch i2 %trunc.i, label %__skb_pull.exit.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

__skb_pull.exit.skb_postpull_rcsum.exit_crit_edge: ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i14 = zext i16 %21 to i32
  %add.ptr.i.i15 = getelementptr i8, ptr %17, i32 %conv.i.i14
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %sub.i.i = sub i32 0, %24
  %call2.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i15, i32 noundef 8, i32 noundef %sub.i.i) #12
  %sub.i25.i = sub i32 0, %call2.i
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i25.i, ptr %22, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %__skb_pull.exit
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 8
  %conv.i.i16 = zext i16 %28 to i32
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i26.i = add i32 %sub.ptr.sub.i.neg.i.i, %conv.i.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %29 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %__skb_pull.exit.skb_postpull_rcsum.exit_crit_edge
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %32 = ptrtoint ptr %head.i.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i13, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %34 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %transport_header.i.i, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i.not.i = icmp eq i16 %38, 0
  br i1 %tobool.i.not.i, label %skb_postpull_rcsum.exit.if.end7.i_crit_edge, label %if.then.i18

skb_postpull_rcsum.exit.if.end7.i_crit_edge:      ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i18:                                      ; preds = %skb_postpull_rcsum.exit
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %39 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i18.cleanup.thread.i_crit_edge, label %skb_cloned.exit.i.i

if.then.i18.cleanup.thread.i_crit_edge:           ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

skb_cloned.exit.i.i:                              ; preds = %if.then.i18
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #12
  %40 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i

skb_cloned.exit.i.i.cleanup.thread.i_crit_edge:   ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

skb_unclone.exit.i:                               ; preds = %skb_cloned.exit.i.i
  %call7.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i, label %skb_unclone.exit.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge, !prof !85

skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge: ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iptunnel_pull_offloads.exit

skb_unclone.exit.i.cleanup.thread.i_crit_edge:    ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_unclone.exit.i.cleanup.thread.i_crit_edge, %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, %if.then.i18.cleanup.thread.i_crit_edge
  %42 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gso_type.i, align 8
  %46 = and i32 %45, -4033
  store i32 %46, ptr %gso_type.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %cleanup.thread.i, %skb_postpull_rcsum.exit.if.end7.i_crit_edge
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i19 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i19, -5
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  br label %iptunnel_pull_offloads.exit

iptunnel_pull_offloads.exit:                      ; preds = %if.end7.i, %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end7.i ], [ %call7.i.i, %skb_unclone.exit.i.iptunnel_pull_offloads.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_postpull_rcsum(ptr nocapture noundef %skb, ptr noundef %start, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27)
  switch i2 %trunc, label %entry.if.end19_crit_edge [
    i2 -2, label %if.then
    i2 -1, label %land.lhs.true
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %sub.i = sub i32 0, %4
  %call2 = tail call i32 @csum_partial(ptr noundef %start, i32 noundef %len, i32 noundef %sub.i) #12
  %sub.i25 = sub i32 0, %call2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i25, ptr %2, align 8
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %conv.i = zext i16 %8 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i26 = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26)
  %cmp13 = icmp slt i32 %sub.i26, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18 = and i16 %bf.load, -1537
  %13 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %bf.clear18, ptr %ip_summed, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.then, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iptunnel_pull_offloads(ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.cleanup.thread_crit_edge, label %skb_cloned.exit.i

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

skb_cloned.exit.i:                                ; preds = %if.then
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.cleanup.thread_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.cleanup.thread_crit_edge:       ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %skb_unclone.exit.cleanup.thread_crit_edge, label %skb_unclone.exit.return_crit_edge, !prof !85

skb_unclone.exit.return_crit_edge:                ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

skb_unclone.exit.cleanup.thread_crit_edge:        ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_unclone.exit.cleanup.thread_crit_edge, %skb_cloned.exit.i.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gso_type, align 8
  %11 = and i32 %10, -4033
  store i32 %11, ptr %gso_type, align 8
  br label %if.end7

if.end7:                                          ; preds = %cleanup.thread, %entry.if.end7_crit_edge
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %encapsulation, align 8
  %bf.clear = and i16 %bf.load, -5
  store i16 %bf.clear, ptr %encapsulation, align 8
  br label %return

return:                                           ; preds = %if.end7, %skb_unclone.exit.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call7.i, %skb_unclone.exit.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gue_remcsum(ptr noundef %skb, ptr noundef readnone %guehdr, ptr nocapture noundef readonly %data, i32 noundef %hdrlen, i1 noundef zeroext %nopartial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %conv = zext i16 %1 to i32
  %arrayidx1 = getelementptr i16, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %3 to i32
  %remcsum_offload = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %remcsum_offload to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %remcsum_offload, align 2
  %5 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add nuw nsw i32 %conv2, 2
  %6 = tail call i32 @llvm.umax.i32(i32 %add3, i32 %conv)
  %add = add i32 %hdrlen, 8
  %add5 = add i32 %add, %6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add5, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end7_crit_edge, !prof !83

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add5)
  %cmp3.i = icmp ult i32 %8, %add5
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !83

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add5, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end7_crit_edge

pskb_may_pull.exit.if.end7_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %pskb_may_pull.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %arrayidx9 = getelementptr %struct.udphdr, ptr %add.ptr.i.i, i32 1
  %add.ptr = getelementptr i8, ptr %arrayidx9, i32 %hdrlen
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  br i1 %nopartial, label %if.end.i5, label %if.then.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i.i = or i16 %bf.load.i, 1536
  %16 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.set.i.i, ptr %ip_summed.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %add.ptr, i32 %conv
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i24.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv1.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i.i, ptr %17, align 8
  %sub.i.i3 = sub i16 %3, %1
  %csum_offset.i.i = getelementptr inbounds %struct.anon.144, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %sub.i.i3, ptr %csum_offset.i.i, align 2
  br label %cleanup

if.end.i5:                                        ; preds = %if.end7
  %20 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %20)
  %cmp.not.i4 = icmp eq i16 %20, 1024
  br i1 %cmp.not.i4, label %if.end.i5.if.end8.i_crit_edge, label %if.then6.i, !prof !85

if.end.i5.if.end8.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i5
  %call.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %23 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i9 = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i9, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %24 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.28)
  switch i2 %trunc.i, label %if.then6.i.if.end8.i_crit_edge [
    i2 -2, label %if.then.i11
    i2 -1, label %land.lhs.true.i
  ]

if.then6.i.if.end8.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i11:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %sub.i.i10 = sub i32 0, %27
  %call2.i = tail call i32 @csum_partial(ptr noundef %22, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.i.i10) #12
  %sub.i25.i = sub i32 0, %call2.i
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i25.i, ptr %25, align 8
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.then6.i
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 8
  %conv.i.i12 = zext i16 %31 to i32
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i12, %sub.ptr.rhs.cast.i
  %sub.i26.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear18.i = and i16 %bf.load.i9, -1537
  %34 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then15.i, %land.lhs.true.i.if.end8.i_crit_edge, %if.then.i11, %if.then6.i.if.end8.i_crit_edge, %if.end.i5.if.end8.i_crit_edge
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %add.ptr.i.i6 = getelementptr i8, ptr %add.ptr, i32 %conv2
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr, i32 noundef %conv, i32 noundef 0) #12
  %neg.i.i.i = xor i32 %call.i.i, -1
  %add.i.i.i.i = add i32 %37, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %38 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #19, !srcloc !88
  %neg.i15.i.i = xor i32 %38, -1
  %shr.i.i.i = lshr i32 %neg.i15.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %39 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i.i6, align 2
  %conv3.i.i = zext i16 %40 to i32
  %neg.i10.i.i = xor i32 %conv3.i.i, -1
  %add.i.i11.i.i = add nsw i32 %shr.i.i.i, %neg.i10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i11.i.i, i32 %neg.i10.i.i)
  %cmp.i.i12.i.i = icmp ult i32 %add.i.i11.i.i, %neg.i10.i.i
  %conv.i.i13.i.i = zext i1 %cmp.i.i12.i.i to i32
  %add1.i.i14.i.i = add nsw i32 %add.i.i11.i.i, %conv.i.i13.i.i
  %41 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %add.ptr.i.i6, align 2
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %35, align 8
  %add.i.i = add i32 %add1.i.i14.i.i, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add1.i.i14.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %add1.i.i14.i.i
  %conv.i.i7 = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i7
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add1.i.i, ptr %35, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then.i, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %guehdr, %entry.cleanup_crit_edge ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ %arrayidx9, %if.then.i ], [ %arrayidx9, %if.end8.i ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gue_gro_remcsum(ptr noundef %skb, i32 noundef %off, ptr noundef readnone %guehdr, ptr nocapture noundef readonly %data, i32 noundef %hdrlen, ptr nocapture noundef writeonly %grc, i1 noundef zeroext %nopartial) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %conv = zext i16 %1 to i32
  %arrayidx1 = getelementptr i16, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %3 to i32
  %remcsum_offload = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %remcsum_offload to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load = load i32, ptr %remcsum_offload, align 2
  %5 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load3 = load i16, ptr %csum_valid, align 2
  %7 = and i16 %bf.load3, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp eq i16 %7, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.end10.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end10.i:                                       ; preds = %if.end
  br i1 %nopartial, label %if.end17.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %add13.i = add i32 %hdrlen, %off
  %8 = trunc i32 %add13.i to i16
  %conv.i = add i16 %1, %8
  %gro_remcsum_start.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %9 = ptrtoint ptr %gro_remcsum_start.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %gro_remcsum_start.i, align 2
  br label %skb_gro_remcsum_process.exit

if.end17.i:                                       ; preds = %do.end10.i
  %add.i = add nuw nsw i32 %conv2, 2
  %10 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %conv) #12
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb.i.i, align 8
  %add.ptr.i71.i = getelementptr i8, ptr %12, i32 %off
  %add1.i = add i32 %hdrlen, %off
  %add18.i = add i32 %10, %add1.i
  %frag0_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frag0_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add18.i)
  %cmp.i72.not.i = icmp ult i32 %14, %add18.i
  br i1 %cmp.i72.not.i, label %if.then21.i, label %if.end17.i.if.end27.i_crit_edge

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end17.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add18.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then21.i.skb_gro_header_slow.exit.i_crit_edge, !prof !83

if.then21.i.skb_gro_header_slow.exit.i_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit.i

if.end.i.i.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add18.i)
  %cmp3.i.i.i = icmp ult i32 %16, %add18.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.skb_gro_remcsum_process.exit_crit_edge, label %pskb_may_pull.exit.i.i, !prof !83

if.end.i.i.i.skb_gro_remcsum_process.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_process.exit

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add18.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #12
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.skb_gro_remcsum_process.exit_crit_edge, label %pskb_may_pull.exit.i.i.skb_gro_header_slow.exit.i_crit_edge

pskb_may_pull.exit.i.i.skb_gro_header_slow.exit.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_header_slow.exit.i

pskb_may_pull.exit.i.i.skb_gro_remcsum_process.exit_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_process.exit

skb_gro_header_slow.exit.i:                       ; preds = %pskb_may_pull.exit.i.i.skb_gro_header_slow.exit.i_crit_edge, %if.then21.i.skb_gro_header_slow.exit.i_crit_edge
  %19 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cb.i.i, align 8
  %20 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %frag0_len.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %22, i32 %off
  %tobool24.not.i = icmp eq ptr %add.ptr.i74.i, null
  br i1 %tobool24.not.i, label %skb_gro_header_slow.exit.i.skb_gro_remcsum_process.exit_crit_edge, label %skb_gro_header_slow.exit.i.if.end27.i_crit_edge

skb_gro_header_slow.exit.i.if.end27.i_crit_edge:  ; preds = %skb_gro_header_slow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

skb_gro_header_slow.exit.i.skb_gro_remcsum_process.exit_crit_edge: ; preds = %skb_gro_header_slow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_gro_remcsum_process.exit

if.end27.i:                                       ; preds = %skb_gro_header_slow.exit.i.if.end27.i_crit_edge, %if.end17.i.if.end27.i_crit_edge
  %ptr.addr.0.i = phi ptr [ %add.ptr.i74.i, %skb_gro_header_slow.exit.i.if.end27.i_crit_edge ], [ %add.ptr.i71.i, %if.end17.i.if.end27.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ptr.addr.0.i, i32 %hdrlen
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %csum.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv2
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 0) #12
  %neg.i.i.i = xor i32 %call.i.i, -1
  %add.i.i.i.i = add i32 %24, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %25 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i.i) #19, !srcloc !88
  %neg.i15.i.i = xor i32 %25, -1
  %shr.i.i.i = lshr i32 %neg.i15.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i, align 2
  %conv3.i.i = zext i16 %27 to i32
  %neg.i10.i.i = xor i32 %conv3.i.i, -1
  %add.i.i11.i.i = add nsw i32 %shr.i.i.i, %neg.i10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i11.i.i, i32 %neg.i10.i.i)
  %cmp.i.i12.i.i = icmp ult i32 %add.i.i11.i.i, %neg.i10.i.i
  %conv.i.i13.i.i = zext i1 %cmp.i.i12.i.i to i32
  %add1.i.i14.i.i = add nsw i32 %add.i.i11.i.i, %conv.i.i13.i.i
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i, ptr %add.ptr.i.i, align 2
  %29 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %csum.i, align 4
  %add.i.i = add i32 %add1.i.i14.i.i, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add1.i.i14.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %add1.i.i14.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %31 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add1.i.i, ptr %csum.i, align 4
  %add39.i = add i32 %add1.i, %conv2
  %32 = ptrtoint ptr %grc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add39.i, ptr %grc, align 4
  %delta41.i = getelementptr inbounds %struct.gro_remcsum, ptr %grc, i32 0, i32 1
  %33 = ptrtoint ptr %delta41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add1.i.i14.i.i, ptr %delta41.i, align 4
  br label %skb_gro_remcsum_process.exit

skb_gro_remcsum_process.exit:                     ; preds = %if.end27.i, %skb_gro_header_slow.exit.i.skb_gro_remcsum_process.exit_crit_edge, %pskb_may_pull.exit.i.i.skb_gro_remcsum_process.exit_crit_edge, %if.end.i.i.i.skb_gro_remcsum_process.exit_crit_edge, %if.then12.i
  %retval.0.i = phi ptr [ %ptr.addr.0.i, %if.end27.i ], [ %guehdr, %if.then12.i ], [ null, %skb_gro_header_slow.exit.i.skb_gro_remcsum_process.exit_crit_edge ], [ null, %pskb_may_pull.exit.i.i.skb_gro_remcsum_process.exit_crit_edge ], [ null, %if.end.i.i.i.skb_gro_remcsum_process.exit_crit_edge ]
  %34 = ptrtoint ptr %remcsum_offload to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load12 = load i32, ptr %remcsum_offload, align 2
  %bf.set = or i32 %bf.load12, 2097152
  store i32 %bf.set, ptr %remcsum_offload, align 2
  br label %cleanup

cleanup:                                          ; preds = %skb_gro_remcsum_process.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %skb_gro_remcsum_process.exit ], [ %guehdr, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %8 = tail call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fou_dump_info(ptr nocapture noundef readonly %fou, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %skb, i8 noundef zeroext %cmd) unnamed_addr #3 align 64 {
entry:
  %tmp.i.i89.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i86.i = alloca i32, align 4
  %tmp.i84.i = alloca i8, align 1
  %tmp.i82.i = alloca i8, align 1
  %tmp.i80.i = alloca i16, align 2
  %tmp.i78.i = alloca i16, align 2
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @fou_nl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fou to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fou, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1.i, align 16
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family.i, align 8
  %conv.i = trunc i16 %5 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %6 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %port.i = getelementptr inbounds %struct.fou, ptr %fou, i32 0, i32 3
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i78.i) #12
  %9 = ptrtoint ptr %tmp.i78.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i78.i, align 2
  %call.i79.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i78.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i78.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool5.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %10 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i80.i) #12
  %13 = ptrtoint ptr %tmp.i80.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tmp.i80.i, align 2
  %call.i81.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i80.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i80.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %tobool9.not.i = icmp eq i32 %call.i81.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false6.i.if.then.i_crit_edge

lor.lhs.false6.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false6.i
  %protocol.i = getelementptr inbounds %struct.fou, ptr %fou, i32 0, i32 1
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82.i) #12
  %16 = ptrtoint ptr %tmp.i82.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i82.i, align 1
  %call.i83.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i82.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool12.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.if.then.i_crit_edge

lor.lhs.false10.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  %type.i = getelementptr inbounds %struct.fou, ptr %fou, i32 0, i32 5
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 2
  %conv14.i = trunc i16 %18 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i84.i) #12
  %19 = ptrtoint ptr %tmp.i84.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14.i, ptr %tmp.i84.i, align 1
  %call.i85.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i84.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i84.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool16.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false13.i.if.then.i_crit_edge

lor.lhs.false13.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false13.i
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i86.i) #12
  %22 = ptrtoint ptr %tmp.i86.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i86.i, align 4
  %call.i87.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i86.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i86.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool20.not.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool20.not.i, label %if.end.i, label %lor.lhs.false17.i.if.then.i_crit_edge

lor.lhs.false17.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end.i:                                         ; preds = %lor.lhs.false17.i
  %flags.i = getelementptr inbounds %struct.fou, ptr %fou, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not.i = icmp eq i8 %25, 0
  br i1 %tobool22.not.i, label %if.end.i.if.end28.i_crit_edge, label %if.then23.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end.i
  %call.i88.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88.i)
  %tobool25.not.i = icmp eq i32 %call.i88.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.if.end28.i_crit_edge, label %if.then23.i.if.then.i_crit_edge

if.then23.i.if.then.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then23.i.if.end28.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i.if.end28.i_crit_edge, %if.end.i.if.end28.i_crit_edge
  %26 = ptrtoint ptr %fou to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fou, align 4
  %sk30.i = getelementptr inbounds %struct.socket, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %sk30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk30.i, align 16
  %skc_family32.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %skc_family32.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %skc_family32.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %cmp.i = icmp eq i16 %31, 2
  br i1 %cmp.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end28.i
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.109, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %skc_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %skc_rcv_saddr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #12
  %34 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool38.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.then35.i.if.then.i_crit_edge

if.then35.i.if.then.i_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end40.i:                                       ; preds = %if.then35.i
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i89.i) #12
  %37 = ptrtoint ptr %tmp.i.i89.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i.i89.i, align 4
  %call.i.i90.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i89.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i89.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %tobool43.not.i = icmp eq i32 %call.i.i90.i, 0
  br i1 %tobool43.not.i, label %if.end40.i.if.end3_crit_edge, label %if.end40.i.if.then.i_crit_edge

if.end40.i.if.then.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end40.i.if.end3_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.else.i:                                        ; preds = %if.end28.i
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 11
  %call.i91.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 16, ptr noundef %skc_v6_rcv_saddr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool48.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.else.i.if.then.i_crit_edge

if.else.i.if.then.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end50.i:                                       ; preds = %if.else.i
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 10
  %call.i92.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 16, ptr noundef %skc_v6_daddr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool53.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end3_crit_edge, label %if.end50.i.if.then.i_crit_edge

if.end50.i.if.then.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end50.i.if.end3_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.end50.i.if.end3_crit_edge, %if.end40.i.if.end3_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end50.i.if.then.i_crit_edge, %if.else.i.if.then.i_crit_edge, %if.end40.i.if.then.i_crit_edge, %if.then35.i.if.then.i_crit_edge, %if.then23.i.if.then.i_crit_edge, %lor.lhs.false17.i.if.then.i_crit_edge, %lor.lhs.false13.i.if.then.i_crit_edge, %lor.lhs.false10.i.if.then.i_crit_edge, %lor.lhs.false6.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i10 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %42, %add.ptr1.i10
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !83

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i10 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fou_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fou_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  %fou_lock = getelementptr inbounds %struct.fou_net, ptr %call, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %fou_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @fou_init_net.__key) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fou_exit_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fou_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %fou_lock = getelementptr inbounds %struct.fou_net, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fou_lock, i32 noundef 0) #12
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %cmp.not21 = icmp eq ptr %2, %call
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %fou_release.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in22 = phi ptr [ %.pn, %fou_release.exit.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %fou.0 = getelementptr i8, ptr %.pn.in22, i32 -12
  %3 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in22, align 4
  %4 = ptrtoint ptr %fou.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fou.0, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %.pn.in22, i32 4
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in22, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in22, i32 4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @udp_tunnel_sock_release(ptr noundef %5) #12
  %tobool.not.i = icmp eq ptr %fou.0, null
  br i1 %tobool.not.i, label %list_del.exit.i.fou_release.exit_crit_edge, label %do.end.i

list_del.exit.i.fou_release.exit_crit_edge:       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fou_release.exit

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr i8, ptr %.pn.in22, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 20 to ptr)) #12
  br label %fou_release.exit

fou_release.exit:                                 ; preds = %do.end.i, %list_del.exit.i.fou_release.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %fou_release.exit.for.end_crit_edge, label %fou_release.exit.for.body_crit_edge

fou_release.exit.for.body_crit_edge:              ; preds = %fou_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

fou_release.exit.for.end_crit_edge:               ; preds = %fou_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %fou_release.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %fou_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !66, !67, !68, !69, !71, !72}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__ksymtab_fou_encap_hlen, !1, !"__ksymtab_fou_encap_hlen", i1 false, i1 false}
!1 = !{!"../net/ipv4/fou.c", i32 941, i32 1}
!2 = !{ptr @__ksymtab_gue_encap_hlen, !3, !"__ksymtab_gue_encap_hlen", i1 false, i1 false}
!3 = !{!"../net/ipv4/fou.c", i32 959, i32 1}
!4 = !{ptr @__ksymtab___fou_build_header, !5, !"__ksymtab___fou_build_header", i1 false, i1 false}
!5 = !{!"../net/ipv4/fou.c", i32 975, i32 1}
!6 = !{ptr @__ksymtab___gue_build_header, !7, !"__ksymtab___gue_build_header", i1 false, i1 false}
!7 = !{!"../net/ipv4/fou.c", i32 1048, i32 1}
!8 = !{ptr @__initcall__kmod_fou__591_1293_fou_init6, !9, !"__initcall__kmod_fou__591_1293_fou_init6", i1 false, i1 false}
!9 = !{!"../net/ipv4/fou.c", i32 1293, i32 1}
!10 = !{ptr @__exitcall_fou_fini, !11, !"__exitcall_fou_fini", i1 false, i1 false}
!11 = !{!"../net/ipv4/fou.c", i32 1294, i32 1}
!12 = !{ptr @__UNIQUE_ID_author592, !13, !"__UNIQUE_ID_author592", i1 false, i1 false}
!13 = !{!"../net/ipv4/fou.c", i32 1295, i32 1}
!14 = !{ptr @__UNIQUE_ID_file593, !15, !"__UNIQUE_ID_file593", i1 false, i1 false}
!15 = !{!"../net/ipv4/fou.c", i32 1296, i32 1}
!16 = !{ptr @__UNIQUE_ID_license594, !15, !"__UNIQUE_ID_license594", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description595, !18, !"__UNIQUE_ID_description595", i1 false, i1 false}
!18 = !{!"../net/ipv4/fou.c", i32 1297, i32 1}
!19 = !{ptr @fou_iptun_ops, !20, !"fou_iptun_ops", i1 false, i1 false}
!20 = !{!"../net/ipv4/fou.c", i32 1184, i32 41}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv4/fou.c", i32 1107, i32 38}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gue_iptun_ops, !26, !"gue_iptun_ops", i1 false, i1 false}
!26 = !{!"../net/ipv4/fou.c", i32 1190, i32 41}
!27 = !{ptr @fou_nl_family, !28, !"fou_nl_family", i1 false, i1 false}
!28 = !{!"../net/ipv4/fou.c", i32 925, i32 27}
!29 = !{ptr @fou_nl_policy, !30, !"fou_nl_policy", i1 false, i1 false}
!30 = !{!"../net/ipv4/fou.c", i32 647, i32 32}
!31 = !{ptr @fou_nl_ops, !32, !"fou_nl_ops", i1 false, i1 false}
!32 = !{!"../net/ipv4/fou.c", i32 904, i32 36}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/ipv4/fou.c", i32 251, i32 8}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv4/fou.c", i32 270, i32 8}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/ipv4/fou.c", i32 437, i32 8}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../net/ipv4/fou.c", i32 438, i32 6}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/ipv4/fou.c", i32 481, i32 8}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fou_net_id, !56, !"fou_net_id", i1 false, i1 false}
!56 = !{!"../net/ipv4/fou.c", i32 43, i32 21}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/netlink.h", i32 991, i32 3}
!59 = !{ptr @fou_net_ops, !60, !"fou_net_ops", i1 false, i1 false}
!60 = !{!"../net/ipv4/fou.c", i32 1256, i32 33}
!61 = !{ptr @fou_init_net.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/ipv4/fou.c", i32 1240, i32 2}
!63 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ipv4/fou.c", i32 1202, i32 3}
!66 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ip_tunnel_encap_add_fou_ops._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ip_tunnel_encap_add_fou_ops._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv4/fou.c", i32 1208, i32 3}
!71 = !{ptr @ip_tunnel_encap_add_fou_ops._entry.11, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ip_tunnel_encap_add_fou_ops._entry_ptr.13, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2154591097, i64 2154591585, i64 2154591134, i64 2154591190, i64 2154591224, i64 2154591248, i64 2154591289, i64 2154591310, i64 2154591338, i64 2154591372}
!87 = !{!"branch_weights", i32 2000, i32 2002}
!88 = !{i64 6598347}
!89 = !{i64 2149382851}
!90 = !{i64 2149383117}
