; ModuleID = '/llk/IR_all_yes/net/ipv6/xfrm6_input.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xfrm6_rcv_spi\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_rcv_spi\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_rcv_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm6_rcv_tnl\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_rcv_tnl\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_rcv_tnl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv_tnl:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv_tnl\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv_tnl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm6_rcv\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_rcv\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_rcv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm6_input_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_input_addr\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_input_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_input_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_input_addr\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_input_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.173, %union.anon.174, [48 x i8], %union.anon.175, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.177, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.179, i32, i32, i32, i16, i16, %union.anon.181, i32, %union.anon.182, %union.anon.183, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.179 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.196, i32, i32, i8, i8 }
%struct.anon.196 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.172, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.172 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.152, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.153, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.154, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.140, %union.anon.142, %union.anon.143, i16, i8, i8, i32, %union.anon.145, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.148, [0 x i32], %union.anon.149, i16, i16, %union.anon.150, %struct.refcount_struct, [0 x i32], %union.anon.151 }
%union.anon.140 = type { i64 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.145 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.152 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.166, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.167, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.166 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.167 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_xfrm6_rcv_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv_spi to i32), ptr @__kstrtab_xfrm6_rcv_spi, ptr @__kstrtabns_xfrm6_rcv_spi }, section "___ksymtab+xfrm6_rcv_spi", align 4
@__kstrtab_xfrm6_rcv_tnl = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv_tnl = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv_tnl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv_tnl to i32), ptr @__kstrtab_xfrm6_rcv_tnl, ptr @__kstrtabns_xfrm6_rcv_tnl }, section "___ksymtab+xfrm6_rcv_tnl", align 4
@__kstrtab_xfrm6_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_rcv to i32), ptr @__kstrtab_xfrm6_rcv, ptr @__kstrtabns_xfrm6_rcv }, section "___ksymtab+xfrm6_rcv", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@__kstrtab_xfrm6_input_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_input_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_input_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_input_addr to i32), ptr @__kstrtab_xfrm6_input_addr, ptr @__kstrtabns_xfrm6_input_addr }, section "___ksymtab+xfrm6_input_addr", align 4
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_ = private constant [26 x i8] c"../net/ipv6/xfrm6_input.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 229, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 695, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_xfrm6_input_addr, ptr @__ksymtab_xfrm6_rcv, ptr @__ksymtab_xfrm6_rcv_spi, ptr @__ksymtab_xfrm6_rcv_tnl, ptr @.str, ptr @.str.1, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv_spi(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %t, ptr %tunnel, align 8
  %family = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %1 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %family, align 8
  %daddroff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %daddroff to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 24, ptr %daddroff, align 4
  %call = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %spi, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_transport_finish(ptr noundef %skb, i32 noundef %async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i.i, label %entry.xfrm_offload.exit_crit_edge, label %skb_sec_path.exit.i

entry.xfrm_offload.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfrm_offload.exit

skb_sec_path.exit.i:                              ; preds = %entry
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %6 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %shl.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false.i

skb_sec_path.exit.i.xfrm_offload.exit_crit_edge:  ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfrm_offload.exit

lor.lhs.false.i:                                  ; preds = %skb_sec_path.exit.i
  %olen.i = getelementptr inbounds %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %olen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %olen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.xfrm_offload.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.xfrm_offload.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfrm_offload.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false2.i.xfrm_offload.exit_crit_edge

lor.lhs.false2.i.xfrm_offload.exit_crit_edge:     ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xfrm_offload.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %8, -1
  %arrayidx.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 3, i32 %sub.i
  br label %xfrm_offload.exit

xfrm_offload.exit:                                ; preds = %if.end.i, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge, %lor.lhs.false.i.xfrm_offload.exit_crit_edge, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge, %entry.xfrm_offload.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end.i ], [ null, %lor.lhs.false2.i.xfrm_offload.exit_crit_edge ], [ null, %lor.lhs.false.i.xfrm_offload.exit_crit_edge ], [ null, %skb_sec_path.exit.i.xfrm_offload.exit_crit_edge ], [ null, %entry.xfrm_offload.exit_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 1
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %19 = ptrtoint ptr %nhoff to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %nhoff, align 2
  %idxprom = zext i16 %20 to i32
  %arrayidx4 = getelementptr i8, ptr %add.ptr.i, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %arrayidx4, align 1
  %22 = load ptr, ptr %data, align 4
  %idx.neg.i = sub i32 0, %sub.ptr.sub
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 %idx.neg.i
  store ptr %add.ptr.i33, ptr %data, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %24, %sub.ptr.sub
  store i32 %add.i, ptr %len1.i, align 4
  %25 = trunc i32 %add.i to i16
  %conv = add i16 %25, -40
  %26 = load ptr, ptr %head.i, align 8
  %27 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %payload_len, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %29 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %30 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %30)
  %cmp.i.i = icmp eq i16 %30, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %xfrm_offload.exit.skb_postpush_rcsum.exit_crit_edge

xfrm_offload.exit.skb_postpush_rcsum.exit_crit_edge: ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_postpush_rcsum.exit

if.then.i.i:                                      ; preds = %xfrm_offload.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i, align 8
  %33 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i, align 4
  %conv.i36 = zext i16 %34 to i32
  %add.ptr.i37 = getelementptr i8, ptr %32, i32 %conv.i36
  %35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i37, i32 noundef %sub.ptr.sub, i32 noundef 0) #6
  %add.i.i.i.i = add i32 %call.i.i, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add1.i.i.i.i, ptr %35, align 8
  br label %skb_postpush_rcsum.exit

skb_postpush_rcsum.exit:                          ; preds = %if.then.i.i, %xfrm_offload.exit.skb_postpush_rcsum.exit_crit_edge
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %skb_postpush_rcsum.exit.if.end_crit_edge, label %land.lhs.true

skb_postpush_rcsum.exit.if.end_crit_edge:         ; preds = %skb_postpush_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %skb_postpush_rcsum.exit
  %flags = getelementptr inbounds %struct.xfrm_offload, ptr %retval.0.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %41 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %42)
  %cmp.i.not.i = icmp eq i16 %42, -1
  br i1 %cmp.i.not.i, label %if.then.skb_mac_header_rebuild.exit_crit_edge, label %if.then.i

if.then.skb_mac_header_rebuild.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_mac_header_rebuild.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i, align 8
  %conv.i.i39 = zext i16 %42 to i32
  %add.ptr.i.i40 = getelementptr i8, ptr %44, i32 %conv.i.i39
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %45 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mac_len.i, align 4
  %conv.i41 = zext i16 %46 to i32
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i42 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv1.i11.i = sub i16 %conv.i.i.i42, %46
  %49 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i11.i, ptr %mac_header.i.i, align 2
  %conv.i14.i = zext i16 %conv1.i11.i to i32
  %add.ptr.i15.i = getelementptr i8, ptr %44, i32 %conv.i14.i
  %50 = call ptr @memmove(ptr %add.ptr.i15.i, ptr %add.ptr.i.i40, i32 %conv.i41)
  br label %skb_mac_header_rebuild.exit

skb_mac_header_rebuild.exit:                      ; preds = %if.then.i, %if.then.skb_mac_header_rebuild.exit_crit_edge
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i46 = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %55 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i46, ptr %transport_header.i, align 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %skb_postpush_rcsum.exit.if.end_crit_edge
  %56 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 127
  %59 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc i32 @nf_hook(ptr noundef %60, ptr noundef %skb, ptr noundef %58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i48, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i48:                                      ; preds = %if.end
  %call.i.i47 = tail call i32 @xfrm_trans_queue(ptr noundef %skb, ptr noundef nonnull @ip6_rcv_finish) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool.not.i.i = icmp eq i32 %call.i.i47, 0
  br i1 %tobool.not.i.i, label %if.then.i48.cleanup_crit_edge, label %if.then.i.i49

if.then.i48.cleanup_crit_edge:                    ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i49:                                    ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i49, %if.then.i48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_mac_header_rebuild.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_transport_finish2(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfrm_trans_queue(ptr noundef %skb, ptr noundef nonnull @ip6_rcv_finish) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_udp_encap_rcv(ptr nocapture noundef readonly %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_type1 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %encap_type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %encap_type1, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %sub = add i32 %3, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp = icmp slt i32 %sub, 8
  %. = select i1 %cmp, i32 %3, i32 16
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %., %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end6_crit_edge, !prof !43

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.)
  %cmp3.i = icmp ult i32 %3, %.
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !43

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %., %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
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
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %conv8 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cond74 = icmp eq i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26 = icmp eq i32 %sub, 1
  br i1 %cond74, label %sw.bb25, label %sw.bb

sw.bb:                                            ; preds = %if.end6
  br i1 %cmp26, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp12 = icmp eq i8 %11, -1
  br i1 %cmp12, label %land.lhs.true.drop_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp15 = icmp ugt i32 %sub, 8
  br i1 %cmp15, label %land.lhs.true17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.else
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.not = icmp eq i32 %13, 0
  br i1 %cmp19.not, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.sw.epilog_crit_edge

land.lhs.true17.sw.epilog_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb25:                                          ; preds = %if.end6
  br i1 %cmp26, label %land.lhs.true28, label %if.else34

land.lhs.true28:                                  ; preds = %sw.bb25
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp31 = icmp eq i8 %15, -1
  br i1 %cmp31, label %land.lhs.true28.drop_crit_edge, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true28.drop_crit_edge:                   ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.else34:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp35 = icmp ugt i32 %sub, 16
  br i1 %cmp35, label %land.lhs.true37, label %if.else34.cleanup_crit_edge

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.else34
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp39 = icmp eq i32 %17, 0
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %arrayidx42 = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp43 = icmp eq i32 %19, 0
  br i1 %cmp43, label %land.lhs.true41.sw.epilog_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true41.sw.epilog_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true41.sw.epilog_crit_edge, %land.lhs.true17.sw.epilog_crit_edge
  %len.0 = phi i32 [ 8, %land.lhs.true17.sw.epilog_crit_edge ], [ 16, %land.lhs.true41.sw.epilog_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %sw.epilog.if.end52_crit_edge, label %skb_cloned.exit.i

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

skb_cloned.exit.i:                                ; preds = %sw.epilog
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #6
  %23 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end52_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.if.end52_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool50.not = icmp eq i32 %call7.i, 0
  br i1 %tobool50.not, label %skb_unclone.exit.if.end52_crit_edge, label %skb_unclone.exit.drop_crit_edge

skb_unclone.exit.drop_crit_edge:                  ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

skb_unclone.exit.if.end52_crit_edge:              ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end52:                                         ; preds = %skb_unclone.exit.if.end52_crit_edge, %skb_cloned.exit.i.if.end52_crit_edge, %sw.epilog.if.end52_crit_edge
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i102 = zext i16 %28 to i32
  %add.ptr.i.i103 = getelementptr i8, ptr %26, i32 %conv.i.i102
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i103, i32 0, i32 2
  %29 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %payload_len, align 4
  %31 = trunc i32 %len.0 to i16
  %conv56 = sub i16 %30, %31
  store i16 %conv56, ptr %payload_len, align 4
  %32 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len2, align 4
  %add59 = add nuw nsw i32 %len.0, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add59)
  %cmp60 = icmp ult i32 %33, %add59
  br i1 %cmp60, label %if.end52.drop_crit_edge, label %if.end63

if.end52.drop_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %drop

if.end63:                                         ; preds = %if.end52
  %sub.i104 = sub i32 %33, %len.0
  %34 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i104, ptr %len2, align 4
  %35 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i104, i32 %36)
  %cmp.i = icmp ult i32 %sub.i104, %36
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !43

do.body4.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !44
  unreachable

__skb_pull.exit:                                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %len.0
  store ptr %add.ptr.i, ptr %data.i, align 4
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %transport_header.i.i, align 2
  %call66 = tail call i32 @xfrm6_rcv_encap(ptr noundef %skb, i32 noundef 50, i32 noundef 0, i32 noundef %conv8) #6
  br label %cleanup

drop:                                             ; preds = %if.end52.drop_crit_edge, %skb_unclone.exit.drop_crit_edge, %land.lhs.true28.drop_crit_edge, %land.lhs.true.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %drop, %__skb_pull.exit, %land.lhs.true41.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %if.else34.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drop ], [ %call66, %__skb_pull.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %land.lhs.true17.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %land.lhs.true41.cleanup_crit_edge ], [ 1, %land.lhs.true37.cleanup_crit_edge ], [ 1, %if.else34.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_encap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv_tnl(ptr noundef %skb, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %nhoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nhoff, align 2
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %tunnel.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %t, ptr %tunnel.i, align 8
  %family.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %9 = ptrtoint ptr %family.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %family.i, align 8
  %daddroff.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %10 = ptrtoint ptr %daddroff.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %daddroff.i, align 4
  %call.i = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef %conv, i32 noundef 0, i32 noundef 0) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %nhoff.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nhoff.i, align 2
  %idxprom.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %tunnel.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %8 = ptrtoint ptr %tunnel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tunnel.i.i, align 8
  %family.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %family.i.i, align 8
  %daddroff.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %10 = ptrtoint ptr %daddroff.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %daddroff.i.i, align 4
  %call.i.i = tail call i32 @xfrm_input(ptr noundef %skb, i32 noundef %conv.i, i32 noundef 0, i32 noundef 0) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_input_addr(ptr noundef %skb, ptr noundef %daddr, ptr noundef %saddr, i8 noundef zeroext %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call ptr @secpath_set(ptr noundef %skb) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body2, label %if.end41

do.body2:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !45
  %xfrm_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 6
  %6 = ptrtoint ptr %xfrm_statistics to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfrm_statistics, align 4
  %arrayidx = getelementptr [29 x i32], ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add17 = add i32 %17, 1
  store i32 %add17, ptr %15, align 4
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !46
  %and.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool28.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool28.not, label %if.then32, label %do.body2.do.end34_crit_edge, !prof !43

do.body2.do.end34_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.then32:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end34

do.end34:                                         ; preds = %if.then32, %do.body2.do.end34_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #6, !srcloc !47
  br label %cleanup216

if.end41:                                         ; preds = %entry
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp43 = icmp eq i32 %20, 5
  br i1 %cmp43, label %do.body47, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end41
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  br label %for.body

do.body47:                                        ; preds = %if.end41
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !45
  %xfrm_statistics70 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 6
  %23 = ptrtoint ptr %xfrm_statistics70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xfrm_statistics70, align 4
  %arrayidx72 = getelementptr [29 x i32], ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i250 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i250 to ptr
  %cpu75 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu75, align 4
  %arrayidx76 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx76, align 4
  %add77 = add i32 %31, %25
  %32 = inttoptr i32 %add77 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add78 = add i32 %34, 1
  store i32 %add78, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !46
  %and.i.i251 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i251)
  %tobool89.not = icmp eq i32 %and.i.i251, 0
  br i1 %tobool89.not, label %if.then98, label %do.body47.do.end101_crit_edge, !prof !43

do.body47.do.end101_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end101

if.then98:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body47.do.end101_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #6, !srcloc !47
  br label %cleanup216

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0261 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %36 = zext i32 %i.0261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0261, label %sw.default [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb111
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb111, %for.body.sw.epilog_crit_edge
  %dst.0 = phi ptr [ @in6addr_any, %sw.default ], [ %daddr, %sw.bb111 ], [ %daddr, %for.body.sw.epilog_crit_edge ]
  %src.0 = phi ptr [ @in6addr_any, %sw.default ], [ @in6addr_any, %sw.bb111 ], [ %saddr, %for.body.sw.epilog_crit_edge ]
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %21, align 4
  %call112 = tail call ptr @xfrm_state_lookup_byaddr(ptr noundef %4, i32 noundef %38, ptr noundef %dst.0, ptr noundef %src.0, i8 noundef zeroext %proto, i16 noundef zeroext 10) #6
  %tobool113.not = icmp eq ptr %call112, null
  br i1 %tobool113.not, label %sw.epilog.for.inc_crit_edge, label %if.end115

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end115:                                        ; preds = %sw.epilog
  %lock = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0261)
  %tobool116.not = icmp eq i32 %i.0261, 0
  br i1 %tobool116.not, label %if.end115.land.lhs.true_crit_edge, label %lor.lhs.false

if.end115.land.lhs.true_crit_edge:                ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end115
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 14, i32 6
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = and i8 %40, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool118.not = icmp eq i8 %41, 0
  br i1 %tobool118.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end115.land.lhs.true_crit_edge
  %state = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 13, i32 1
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp120 = icmp eq i8 %43, 2
  br i1 %cmp120, label %land.lhs.true128, label %land.lhs.true.if.else_crit_edge, !prof !48

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true128:                                 ; preds = %land.lhs.true
  %call129 = tail call i32 @xfrm_state_check_expire(ptr noundef nonnull %call112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %land.lhs.true128.if.else_crit_edge

land.lhs.true128.if.else_crit_edge:               ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then131:                                       ; preds = %land.lhs.true128
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %type = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 45
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %type, align 8
  %input = getelementptr inbounds %struct.xfrm_type, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input, align 4
  %call133 = tail call i32 %47(ptr noundef nonnull %call112, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp sgt i32 %call133, 0
  br i1 %cmp134, label %if.end205, label %if.then131.if.end139_crit_edge

if.then131.if.end139_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.else:                                          ; preds = %land.lhs.true128.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end139

if.end139:                                        ; preds = %if.else, %if.then131.if.end139_crit_edge
  %refcnt.i = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #6
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #6, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !48

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #6
  br label %for.inc

if.then.i:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @__xfrm_state_destroy(ptr noundef nonnull %call112, i1 noundef zeroext false) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body144, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body144:                                       ; preds = %for.inc
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !45
  %xfrm_statistics167 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 6
  %50 = ptrtoint ptr %xfrm_statistics167 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfrm_statistics167, align 4
  %arrayidx169 = getelementptr [29 x i32], ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx169 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i252 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i252 to ptr
  %cpu172 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu172 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu172, align 4
  %arrayidx173 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx173, align 4
  %add174 = add i32 %58, %52
  %59 = inttoptr i32 %add174 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add175 = add i32 %61, 1
  store i32 %add175, ptr %59, align 4
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !46
  %and.i.i253 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i253)
  %tobool186.not = icmp eq i32 %and.i.i253, 0
  br i1 %tobool186.not, label %if.then195, label %do.body144.do.end198_crit_edge, !prof !43

do.body144.do.end198_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end198

if.then195:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end198

do.end198:                                        ; preds = %if.then195, %do.body144.do.end198_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #6, !srcloc !47
  br label %cleanup216

if.end205:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call1, align 4
  %inc207 = add i32 %64, 1
  store i32 %inc207, ptr %call1, align 4
  %arrayidx208 = getelementptr %struct.sec_path, ptr %call1, i32 0, i32 2, i32 %64
  %65 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call112, ptr %arrayidx208, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %len210 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %66 = ptrtoint ptr %len210 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len210, align 4
  %conv211 = zext i32 %67 to i64
  %curlft = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 39
  %68 = ptrtoint ptr %curlft to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %curlft, align 8
  %add212 = add i64 %69, %conv211
  store i64 %add212, ptr %curlft, align 8
  %packets = getelementptr inbounds %struct.xfrm_state, ptr %call112, i32 0, i32 39, i32 1
  %70 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %packets, align 8
  %inc214 = add i64 %71, 1
  store i64 %inc214, ptr %packets, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup216

cleanup216:                                       ; preds = %if.end205, %do.end198, %do.end101, %do.end34
  %retval.0 = phi i32 [ 1, %if.end205 ], [ -1, %do.end198 ], [ -1, %do.end101 ], [ -1, %do.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @secpath_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_state_lookup_byaddr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_check_expire(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %indev) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10), ptr blockaddress(@nf_hook, %if.end)) #6
          to label %cleanup [label %if.end], !srcloc !52

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hooks_ipv6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 4
  %4 = ptrtoint ptr %hooks_ipv6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hooks_ipv6, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.2, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_hook.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 232, ptr noundef nonnull @.str.1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 0, ptr %state, align 4
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
  store ptr null, ptr %out.i, align 4
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
  store ptr @xfrm6_transport_finish2, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #6
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %13 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_trans_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_rcv_finish(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfrm_state_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_xfrm6_rcv_spi, !1, !"__ksymtab_xfrm6_rcv_spi", i1 false, i1 false}
!1 = !{!"../net/ipv6/xfrm6_input.c", i32 28, i32 1}
!2 = !{ptr @__ksymtab_xfrm6_rcv_tnl, !3, !"__ksymtab_xfrm6_rcv_tnl", i1 false, i1 false}
!3 = !{!"../net/ipv6/xfrm6_input.c", i32 168, i32 1}
!4 = !{ptr @__ksymtab_xfrm6_rcv, !5, !"__ksymtab_xfrm6_rcv", i1 false, i1 false}
!5 = !{!"../net/ipv6/xfrm6_input.c", i32 174, i32 1}
!6 = !{ptr @__ksymtab_xfrm6_input_addr, !7, !"__ksymtab_xfrm6_input_addr", i1 false, i1 false}
!7 = !{!"../net/ipv6/xfrm6_input.c", i32 255, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2154582457, i64 2154582945, i64 2154582494, i64 2154582550, i64 2154582584, i64 2154582608, i64 2154582649, i64 2154582670, i64 2154582698, i64 2154582732}
!45 = !{i64 747943, i64 748004}
!46 = !{i64 750675}
!47 = !{i64 750960}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2148433798}
!50 = !{i64 2148348238, i64 2148348270, i64 2148348299, i64 2148348333, i64 2148348364, i64 2148348387}
!51 = !{i64 2149309912}
!52 = !{i64 2148957620, i64 2148957625, i64 2148957638, i64 2148957682, i64 2148957716, i64 2148957737}
!53 = !{i64 2149360402}
!54 = !{i64 2149360668}
