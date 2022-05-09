; ModuleID = '/llk/IR_all_yes/net/ipv4/arp.c_pt.bc'
source_filename = "../net/ipv4/arp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+arp_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_arp_tbl\09\09\09\09"
module asm "\09.long\09__crc_arp_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_arp_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arp_send\22, \22a\22\09"
module asm "\09.weak\09__crc_arp_send\09\09\09\09"
module asm "\09.long\09__crc_arp_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_send\22\09\09\09\09\09"
module asm "__kstrtabns_arp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arp_create\22, \22a\22\09"
module asm "\09.weak\09__crc_arp_create\09\09\09\09"
module asm "\09.long\09__crc_arp_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_create:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_create\22\09\09\09\09\09"
module asm "__kstrtabns_arp_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arp_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_arp_xmit\09\09\09\09"
module asm "\09.long\09__crc_arp_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arp_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22arp_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_arp_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.193 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.arpreq = type { %struct.sockaddr, %struct.sockaddr, i32, %struct.sockaddr, [16 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.59, i32, %struct.list_head, ptr }
%union.anon.59 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.neigh_seq_state = type { %struct.seq_net_private, ptr, ptr, ptr, i32, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.pneigh_entry = type { ptr, %struct.possible_net_t, ptr, ptr, i32, i8, [0 x i8] }
%struct.netdev_notifier_change_info = type { %struct.netdev_notifier_info, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arp_cache\00", [22 x i8] zeroinitializer }, align 32
@arp_tbl = dso_local global { %struct.neigh_table, [128 x i8] } { %struct.neigh_table { i32 2, i32 0, i32 4, i16 2048, ptr @arp_hash, ptr @arp_key_eq, ptr @arp_constructor, ptr null, ptr null, ptr @parp_redo, ptr @arp_is_multicast, ptr null, ptr @.str, %struct.neigh_parms { %struct.possible_net_t zeroinitializer, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr @arp_tbl, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.callback_head zeroinitializer, i32 3000, [13 x i32] [i32 3, i32 3, i32 0, i32 0, i32 100, i32 3000, i32 500, i32 6000, i32 196608, i32 64, i32 100, i32 80, i32 100], [1 x i32] zeroinitializer }, %struct.list_head zeroinitializer, i32 3000, i32 128, i32 512, i32 1024, i32 0, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.timer_list zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.rwlock_t zeroinitializer, i32 0, ptr null, ptr null, ptr null }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_arp_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_tbl to i32), ptr @__kstrtab_arp_tbl, ptr @__kstrtabns_arp_tbl }, section "___ksymtab+arp_tbl", align 4
@__kstrtab_arp_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_send = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_send to i32), ptr @__kstrtab_arp_send, ptr @__kstrtabns_arp_send }, section "___ksymtab+arp_send", align 4
@__kstrtab_arp_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_create = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_create to i32), ptr @__kstrtab_arp_create, ptr @__kstrtabns_arp_create }, section "___ksymtab+arp_create", align 4
@__kstrtab_arp_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_arp_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_arp_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arp_xmit to i32), ptr @__kstrtab_arp_xmit, ptr @__kstrtabns_arp_xmit }, section "___ksymtab+arp_xmit", align 4
@arp_packet_type = internal global %struct.packet_type { i16 2054, i8 0, ptr null, ptr null, ptr @arp_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@arp_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @arp_net_init, ptr null, ptr @arp_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@arp_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @arp_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@arp_direct_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 2, ptr null, ptr null, ptr @neigh_direct_output, ptr @neigh_direct_output }, [44 x i8] zeroinitializer }, align 32
@arp_hh_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 2, ptr @arp_solicit, ptr @arp_error_report, ptr @neigh_resolve_output, ptr @neigh_resolve_output }, [44 x i8] zeroinitializer }, align 32
@arp_generic_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 2, ptr @arp_solicit, ptr @arp_error_report, ptr @neigh_resolve_output, ptr @neigh_connected_output }, [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@arp_solicit.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arp\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arp_solicit\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv4/arp.c\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"trying to ucast probe in NUD_INVALID\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"arp: trying to ucast probe in NUD_INVALID\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@arp_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @arp_seq_start, ptr @neigh_seq_stop, ptr @neigh_seq_next, ptr @arp_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"IP address       HW type     Flags       HW address            Mask     Device\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%-16s 0x%-10x0x%-10x%s     *        %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"00:00:00:00:00:00\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%-16s 0x%-10x0x%-10x%-17s     *        %s\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 6, i64 32, i64 774, i64 778]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 3, i64 774]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 35155, i64 35156, i64 35157]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 35155, i64 35156, i64 35157]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 6, i64 774]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 3, i64 6, i64 774]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 3, i64 3, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 45]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 161, i32 9 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"arp_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 152, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"arp_net_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1434, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"arp_netdev_notifier\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1279, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"arp_direct_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 146, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"arp_hh_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 138, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"arp_generic_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 130, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 232, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 378, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1011, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 229, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 156, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 249, i32 9 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"arp_seq_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1412, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1388, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1379, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1380, i32 18 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1381, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1382, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [18 x i8] c"../net/ipv4/arp.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1367, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_arp_create, ptr @__ksymtab_arp_send, ptr @__ksymtab_arp_tbl, ptr @__ksymtab_arp_xmit, ptr @.str, ptr @arp_tbl, ptr @arp_net_ops, ptr @arp_netdev_notifier, ptr @arp_direct_ops, ptr @arp_hh_ops, ptr @arp_generic_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.22, ptr @.str.23, ptr @arp_seq_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_tbl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_direct_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_hh_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_generic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arp_hash(ptr nocapture noundef readonly %pkey, ptr noundef %dev, ptr nocapture noundef readonly %hash_rnd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkey, align 4
  %2 = ptrtoint ptr %dev to i32
  %xor.i = xor i32 %1, %2
  %3 = ptrtoint ptr %hash_rnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hash_rnd, align 4
  %mul.i = mul i32 %xor.i, %4
  ret i32 %mul.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @arp_key_eq(ptr nocapture noundef readonly %neigh, ptr nocapture noundef readonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %0 = ptrtoint ptr %primary_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %primary_key.i, align 4
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkey, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_constructor(ptr noundef %neigh) #1 align 64 {
entry:
  %inaddr_any = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inaddr_any)
  %2 = ptrtoint ptr %inaddr_any to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %inaddr_any, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %5 = load i32, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 2), align 4
  %6 = call ptr @memcpy(ptr %primary_key, ptr %inaddr_any, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %primary_key2 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %7 = ptrtoint ptr %primary_key2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %primary_key2, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %13 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i109 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true.i111:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i111.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i111.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i111
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i112

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

if.then.i112:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i112, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i111.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %__in_dev_get_rcu.exit
  %call.i113 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i113, label %if.then5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i116

if.then5.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i116:                               ; preds = %if.then5
  %call1.i114 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit_crit_edge, %if.then5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %15 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i120 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i121, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end6:                                          ; preds = %__in_dev_get_rcu.exit
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %call8 = tail call i32 @inet_addr_type_dev_table(ptr noundef %20, ptr noundef %1, i32 noundef %8) #14
  %conv = trunc i32 %call8 to i8
  %type = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 13
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %type, align 1
  %arp_parms = getelementptr inbounds %struct.in_device, ptr %14, i32 0, i32 20
  %22 = ptrtoint ptr %arp_parms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arp_parms, align 4
  %parms9 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 2
  %24 = ptrtoint ptr %parms9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parms9, align 8
  %refcnt.i = getelementptr inbounds %struct.neigh_parms, ptr %25, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end6.__neigh_parms_put.exit_crit_edge, !prof !101

if.end6.__neigh_parms_put.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %__neigh_parms_put.exit

if.then3.i.i.i:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #14
  br label %__neigh_parms_put.exit

__neigh_parms_put.exit:                           ; preds = %if.then3.i.i.i, %if.end6.__neigh_parms_put.exit_crit_edge
  %refcnt.i122 = getelementptr inbounds %struct.neigh_parms, ptr %23, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i122, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt.i122, i32 1, i32 3, i32 1) #14
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i122, ptr %refcnt.i122, i32 1, ptr elementtype(i32) %refcnt.i122) #14, !srcloc !102
  %asmresult.i.i.i.i.i.i123 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i123)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i123, 0
  br i1 %tobool1.not.i.i.i.i, label %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !101

__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %__neigh_parms_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__neigh_parms_put.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i123, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !103

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %neigh_parms_clone.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i122, i32 noundef %.sink.i.i.i.i) #14
  br label %neigh_parms_clone.exit

neigh_parms_clone.exit:                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge
  %29 = ptrtoint ptr %parms9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %parms9, align 8
  %call.i124 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i124, label %neigh_parms_clone.exit.rcu_read_unlock.exit134_crit_edge, label %land.lhs.true.i127

neigh_parms_clone.exit.rcu_read_unlock.exit134_crit_edge: ; preds = %neigh_parms_clone.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit134

land.lhs.true.i127:                               ; preds = %neigh_parms_clone.exit
  %call1.i125 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool.not.i126 = icmp eq i32 %call1.i125, 0
  br i1 %tobool.not.i126, label %land.lhs.true.i127.rcu_read_unlock.exit134_crit_edge, label %land.lhs.true2.i129

land.lhs.true.i127.rcu_read_unlock.exit134_crit_edge: ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit134

land.lhs.true2.i129:                              ; preds = %land.lhs.true.i127
  %.b4.i128 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i128, label %land.lhs.true2.i129.rcu_read_unlock.exit134_crit_edge, label %if.then.i130

land.lhs.true2.i129.rcu_read_unlock.exit134_crit_edge: ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit134

if.then.i130:                                     ; preds = %land.lhs.true2.i129
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit134

rcu_read_unlock.exit134:                          ; preds = %if.then.i130, %land.lhs.true2.i129.rcu_read_unlock.exit134_crit_edge, %land.lhs.true.i127.rcu_read_unlock.exit134_crit_edge, %neigh_parms_clone.exit.rcu_read_unlock.exit134_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %30 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i131 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i131 to ptr
  %preempt_count.i.i.i.i132 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i132, align 4
  %sub.i.i.i133 = add i32 %33, -1
  store volatile i32 %sub.i.i.i133, ptr %preempt_count.i.i.i.i132, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %header_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %34 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %header_ops, align 4
  %tobool12.not = icmp eq ptr %35, null
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %rcu_read_unlock.exit134
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %36 = ptrtoint ptr %nud_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 64, ptr %nud_state, align 8
  %ops = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @arp_direct_ops, ptr %ops, align 8
  %output = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %38 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @neigh_direct_output, ptr %output, align 4
  br label %cleanup

if.else:                                          ; preds = %rcu_read_unlock.exit134
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp = icmp eq i8 %40, 5
  br i1 %cmp, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state18 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %41 = ptrtoint ptr %nud_state18 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 64, ptr %nud_state18, align 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %call20 = tail call i32 @arp_mc_map(i32 noundef %8, ptr noundef %ha, ptr noundef %1, i32 noundef 1)
  br label %if.end47

if.else21:                                        ; preds = %if.else
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 8
  %and23 = and i32 %43, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else30, label %if.then25

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state26 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %44 = ptrtoint ptr %nud_state26 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %nud_state26, align 8
  %ha27 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %45 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %47 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %addr_len, align 1
  %conv29 = zext i8 %48 to i32
  %49 = call ptr @memcpy(ptr %ha27, ptr %46, i32 %conv29)
  br label %if.end47

if.else30:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp33 = icmp ne i8 %40, 3
  %and36 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond = select i1 %cmp33, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %if.else30.if.end47_crit_edge, label %if.then38

if.else30.if.end47_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then38:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state39 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %50 = ptrtoint ptr %nud_state39 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %nud_state39, align 8
  %ha40 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %addr_len43 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %51 = ptrtoint ptr %addr_len43 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %addr_len43, align 1
  %conv44 = zext i8 %52 to i32
  %53 = call ptr @memcpy(ptr %ha40, ptr %broadcast, i32 %conv44)
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.else30.if.end47_crit_edge, %if.then25, %if.then17
  %54 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %header_ops, align 4
  %cache = getelementptr inbounds %struct.header_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cache, align 4
  %tobool49.not = icmp eq ptr %57, null
  %spec.select = select i1 %tobool49.not, ptr @arp_generic_ops, ptr @arp_hh_ops
  %58 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %58, align 8
  %nud_state55 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %60 = ptrtoint ptr %nud_state55 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nud_state55, align 8
  %62 = and i8 %61, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool58.not = icmp eq i8 %62, 0
  br i1 %tobool58.not, label %if.else62, label %if.then59

if.then59:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %63 = select i1 %tobool49.not, ptr @neigh_connected_output, ptr @neigh_resolve_output
  %output61 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %64 = ptrtoint ptr %output61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %output61, align 4
  br label %cleanup

if.else62:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %output65 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %65 = ptrtoint ptr %output65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @neigh_resolve_output, ptr %output65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else62, %if.then59, %if.then13, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ 0, %if.then59 ], [ 0, %if.else62 ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inaddr_any)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parp_redo(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call i32 @arp_process(ptr noundef %4, ptr noundef null, ptr noundef %skb)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arp_is_multicast(ptr nocapture noundef readonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkey, align 4
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arp_mc_map(i32 noundef %addr, ptr nocapture noundef writeonly %haddr, ptr nocapture noundef readonly %dev, i32 noundef %dir) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %sw.default [
    i16 1, label %entry.sw.bb_crit_edge
    i16 774, label %entry.sw.bb_crit_edge23
    i16 6, label %entry.sw.bb_crit_edge24
    i16 32, label %sw.bb1
    i16 778, label %sw.bb2
  ]

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24
  %3 = ptrtoint ptr %haddr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %haddr, align 1
  %arrayidx1.i = getelementptr i8, ptr %haddr, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %haddr, i32 2
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 94, ptr %arrayidx2.i, align 1
  %conv.i = trunc i32 %addr to i8
  %arrayidx3.i = getelementptr i8, ptr %haddr, i32 5
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %addr, 8
  %conv5.i = trunc i32 %shr.i to i8
  %arrayidx6.i = getelementptr i8, ptr %haddr, i32 4
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5.i, ptr %arrayidx6.i, align 1
  %shr7.i = lshr i32 %addr, 16
  %8 = trunc i32 %shr7.i to i8
  %conv9.i = and i8 %8, 127
  %arrayidx10.i = getelementptr i8, ptr %haddr, i32 3
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = and i8 %11, 15
  %13 = ptrtoint ptr %haddr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %haddr, align 1
  %arrayidx3.i17 = getelementptr i8, ptr %haddr, i32 1
  %14 = or i8 %12, 16
  %arrayidx9.i = getelementptr i8, ptr %haddr, i32 5
  %15 = ptrtoint ptr %arrayidx3.i17 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 -1, ptr %arrayidx3.i17, align 1
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %arrayidx9.i, align 1
  %arrayidx10.i18 = getelementptr i8, ptr %haddr, i32 6
  %17 = ptrtoint ptr %arrayidx10.i18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %arrayidx10.i18, align 1
  %arrayidx11.i = getelementptr i8, ptr %haddr, i32 7
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 27, ptr %arrayidx11.i, align 1
  %arrayidx12.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 8
  %19 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %haddr, i32 8
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 9
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %haddr, i32 9
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx15.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %haddr, i32 10
  %conv23.i = trunc i32 %addr to i8
  %arrayidx24.i = getelementptr i8, ptr %haddr, i32 19
  %25 = call ptr @memset(ptr %arrayidx16.i, i32 0, i32 6)
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv23.i, ptr %arrayidx24.i, align 1
  %shr.i19 = lshr i32 %addr, 8
  %conv26.i = trunc i32 %shr.i19 to i8
  %arrayidx27.i = getelementptr i8, ptr %haddr, i32 18
  %27 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26.i, ptr %arrayidx27.i, align 1
  %shr28.i = lshr i32 %addr, 16
  %conv30.i = trunc i32 %shr28.i to i8
  %arrayidx31.i = getelementptr i8, ptr %haddr, i32 17
  %28 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv30.i, ptr %arrayidx31.i, align 1
  %shr32.i = lshr i32 %addr, 24
  %29 = trunc i32 %shr32.i to i8
  %conv34.i = and i8 %29, 15
  %arrayidx35.i = getelementptr i8, ptr %haddr, i32 16
  %30 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv34.i, ptr %arrayidx35.i, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  %broadcast3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %31 = ptrtoint ptr %broadcast3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %broadcast3, align 1
  %arrayidx1.i20 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 1
  %33 = ptrtoint ptr %arrayidx1.i20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx1.i20, align 1
  %or15.i = or i8 %34, %32
  %arrayidx3.i21 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 2
  %35 = ptrtoint ptr %arrayidx3.i21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx3.i21, align 1
  %or516.i = or i8 %or15.i, %36
  %arrayidx6.i22 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 3
  %37 = ptrtoint ptr %arrayidx6.i22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i22, align 1
  %or817.i = or i8 %or516.i, %38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or817.i)
  %cmp.not.i = icmp eq i8 %or817.i, 0
  br i1 %cmp.not.i, label %sw.bb2.ip_ipgre_mc_map.exit_crit_edge, label %if.then.i

sw.bb2.ip_ipgre_mc_map.exit_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip_ipgre_mc_map.exit

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %broadcast3 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %broadcast3, align 1
  br label %ip_ipgre_mc_map.exit

ip_ipgre_mc_map.exit:                             ; preds = %if.then.i, %sw.bb2.ip_ipgre_mc_map.exit_crit_edge
  %storemerge.i = phi i32 [ %40, %if.then.i ], [ %addr, %sw.bb2.ip_ipgre_mc_map.exit_crit_edge ]
  %41 = ptrtoint ptr %haddr to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %storemerge.i, ptr %haddr, align 1
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  br i1 %tobool.not, label %sw.default.return_crit_edge, label %if.then

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %broadcast5 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %42 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr_len, align 1
  %conv7 = zext i8 %43 to i32
  %44 = call ptr @memcpy(ptr %haddr, ptr %broadcast5, i32 %conv7)
  br label %return

return:                                           ; preds = %if.then, %sw.default.return_crit_edge, %ip_ipgre_mc_map.exit, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %ip_ipgre_mc_map.exit ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %sw.default.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arp_send(i32 noundef %type, i32 noundef %ptype, i32 noundef %dest_ip, ptr noundef %dev, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.arp_send_dst.exit_crit_edge

entry.arp_send_dst.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_send_dst.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @arp_create(i32 noundef %type, i32 noundef %ptype, i32 noundef %dest_ip, ptr noundef %dev, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw) #14
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.arp_send_dst.exit_crit_edge, label %if.end3.i

if.end.i.arp_send_dst.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_send_dst.exit

if.end3.i:                                        ; preds = %if.end.i
  %2 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %8, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef %6, ptr noundef nonnull @arp_xmit_finish) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end3.i.arp_send_dst.exit_crit_edge

if.end3.i.arp_send_dst.exit_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_send_dst.exit

if.then.i.i.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i4.i.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #14
  br label %arp_send_dst.exit

arp_send_dst.exit:                                ; preds = %if.then.i.i.i, %if.end3.i.arp_send_dst.exit_crit_edge, %if.end.i.arp_send_dst.exit_crit_edge, %entry.arp_send_dst.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arp_send_dst(i32 noundef %type, i32 noundef %ptype, i32 noundef %dest_ip, ptr noundef %dev, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw, ptr noundef %dst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @arp_create(i32 noundef %type, i32 noundef %ptype, i32 noundef %dest_ip, ptr noundef %dev, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef %target_hw)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %dst, null
  br i1 %tobool.not.i, label %if.end3.dst_clone.exit_crit_edge, label %if.then.i

if.end3.dst_clone.exit_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_clone.exit

if.then.i:                                        ; preds = %if.end3
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #14, !srcloc !105
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !106
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 231, i32 noundef 9, ptr noundef null) #14
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %if.end3.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 3
  %3 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %4 = ptrtoint ptr %dst to i32
  %5 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 8
  %7 = getelementptr inbounds %struct.anon.0, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i.i, align 4
  %call.i.i = tail call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %11, ptr noundef nonnull %call, ptr noundef null, ptr noundef %9, ptr noundef nonnull @arp_xmit_finish) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %dst_clone.exit.cleanup_crit_edge

dst_clone.exit.cleanup_crit_edge:                 ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i:                                      ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i4.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %dst_clone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @arp_create(i32 noundef %type, i32 noundef %ptype, i32 noundef %dest_ip, ptr noundef %dev, i32 noundef %src_ip, ptr noundef %dest_hw, ptr noundef %src_hw, ptr noundef readonly %target_hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %1 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %needed_headroom, align 8
  %conv1 = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %and = and i32 %add, 131056
  %add2 = add nuw nsw i32 %and, 16
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %4 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %needed_tailroom, align 2
  %conv3 = zext i16 %5 to i32
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %7)
  %cond.i = icmp ne i16 %7, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %9 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i = add nuw nsw i32 %conv3, 16
  %add4 = add nuw nsw i32 %retval.0.i, %add2
  %add5 = add nuw nsw i32 %add4, %retval.0.in.i
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %add2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %network_header.i, align 4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %18)
  %cond.i107 = icmp ne i16 %18, 24
  %19 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_len.i, align 1
  %conv1.i109 = zext i8 %20 to i32
  %add5.i110 = zext i1 %cond.i107 to i32
  %retval.0.in.i111 = shl nuw nsw i32 %conv1.i109, %add5.i110
  %retval.0.i112 = add nuw nsw i32 %retval.0.in.i111, 16
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %retval.0.i112) #14
  %21 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %21, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2054, ptr %protocol, align 8
  %tobool9.not = icmp eq ptr %src_hw, null
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %src_hw.addr.0 = phi ptr [ %src_hw, %if.end.if.end11_crit_edge ], [ %25, %if.then10 ]
  %tobool12.not = icmp eq ptr %dest_hw, null
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %spec.select = select i1 %tobool12.not, ptr %broadcast, ptr %dest_hw
  %conv15 = trunc i32 %ptype to i16
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %28 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end11.if.end19_crit_edge, label %lor.lhs.false.i

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

lor.lhs.false.i:                                  ; preds = %if.end11
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool2.not.i = icmp eq ptr %31, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end19_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.if.end19_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i113 = tail call i32 %31(ptr noundef nonnull %call.i, ptr noundef %dev, i16 noundef zeroext %conv15, ptr noundef %spec.select, ptr noundef %src_hw.addr.0, i32 noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp = icmp slt i32 %call.i113, 0
  br i1 %cmp, label %out, label %dev_hard_header.exit.if.end19_crit_edge

dev_hard_header.exit.if.end19_crit_edge:          ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end19:                                         ; preds = %dev_hard_header.exit.if.end19_crit_edge, %lor.lhs.false.i.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type.i, align 16
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %33, label %if.end19.sw.epilog_crit_edge [
    i16 3, label %sw.bb
    i16 0, label %sw.bb25
    i16 774, label %sw.bb28
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb25, %sw.bb, %if.end19.sw.epilog_crit_edge
  %.sink117 = phi i16 [ 1, %sw.bb28 ], [ %33, %sw.bb25 ], [ %33, %sw.bb ], [ %33, %if.end19.sw.epilog_crit_edge ]
  %.sink = phi i16 [ 2048, %sw.bb28 ], [ 204, %sw.bb25 ], [ 204, %sw.bb ], [ 2048, %if.end19.sw.epilog_crit_edge ]
  %35 = ptrtoint ptr %call8 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink117, ptr %call8, align 2
  %ar_pro30 = getelementptr inbounds %struct.arphdr, ptr %call8, i32 0, i32 1
  %36 = ptrtoint ptr %ar_pro30 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %.sink, ptr %ar_pro30, align 2
  %37 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %addr_len.i, align 1
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %call8, i32 0, i32 2
  %39 = ptrtoint ptr %ar_hln to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ar_hln, align 2
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %call8, i32 0, i32 3
  %40 = ptrtoint ptr %ar_pln to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %ar_pln, align 1
  %conv31 = trunc i32 %type to i16
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %call8, i32 0, i32 4
  %41 = ptrtoint ptr %ar_op to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv31, ptr %ar_op, align 2
  %add.ptr = getelementptr %struct.arphdr, ptr %call8, i32 1
  %42 = load i8, ptr %addr_len.i, align 1
  %conv33 = zext i8 %42 to i32
  %43 = call ptr @memcpy(ptr %add.ptr, ptr %src_hw.addr.0, i32 %conv33)
  %44 = load i8, ptr %addr_len.i, align 1
  %conv35 = zext i8 %44 to i32
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 %conv35
  %45 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %src_ip, ptr %add.ptr36, align 1
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 4
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %47)
  %cond = icmp eq i16 %47, 24
  br i1 %cond, label %sw.epilog.sw.epilog51_crit_edge, label %sw.default40

sw.epilog.sw.epilog51_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog51

sw.default40:                                     ; preds = %sw.epilog
  %tobool41.not = icmp eq ptr %target_hw, null
  %48 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %addr_len.i, align 1
  %conv46 = zext i8 %49 to i32
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %sw.default40
  call void @__sanitizer_cov_trace_pc() #16
  %50 = call ptr @memcpy(ptr %add.ptr37, ptr %target_hw, i32 %conv46)
  br label %if.end47

if.else:                                          ; preds = %sw.default40
  call void @__sanitizer_cov_trace_pc() #16
  %51 = call ptr @memset(ptr %add.ptr37, i32 0, i32 %conv46)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %52 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %addr_len.i, align 1
  %conv49 = zext i8 %53 to i32
  %add.ptr50 = getelementptr i8, ptr %add.ptr37, i32 %conv49
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %if.end47, %sw.epilog.sw.epilog51_crit_edge
  %arp_ptr.0 = phi ptr [ %add.ptr37, %sw.epilog.sw.epilog51_crit_edge ], [ %add.ptr50, %if.end47 ]
  %54 = ptrtoint ptr %arp_ptr.0 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %dest_ip, ptr %arp_ptr.0, align 1
  br label %cleanup

out:                                              ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.epilog51, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out ], [ %call.i, %sw.epilog51 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arp_xmit(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %4, ptr noundef %skb, ptr noundef null, ptr noundef %2, ptr noundef nonnull @arp_xmit_finish) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.NF_HOOK.exit_crit_edge

entry.NF_HOOK.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %NF_HOOK.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #14
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %if.then.i, %entry.NF_HOOK.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_xmit_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_queue_xmit(ptr noundef %skb) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arp_ioctl(ptr noundef %net, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  %r = alloca %struct.arpreq, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %r) #14
  %0 = call ptr @memset(ptr %r, i32 255, i32 68)
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35155, label %entry.sw.bb_crit_edge
    i32 35157, label %entry.sw.bb_crit_edge96
    i32 35156, label %entry.if.then.i_crit_edge
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

entry.sw.bb_crit_edge96:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge96
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #14
  br i1 %call, label %sw.bb.if.then.i_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 68, i32 -1226833920) #17
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !103

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %r, i32 noundef 68) #14
  %5 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !107
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !109
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %r, ptr noundef %arg, i32 noundef 68) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %sw.epilog, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !103

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 68, %if.then.i.if.then11.i.i_crit_edge ], [ 68, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 68, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %r, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp.not = icmp eq i16 %10, 2
  br i1 %cmp.not, label %if.end7, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %sw.epilog
  %arp_flags = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %arp_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arp_flags, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %and10 = and i32 %12, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = or i1 %tobool8.not, %tobool11.not
  br i1 %or.cond, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %and15 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %sin_addr = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 3, i32 1, i32 2
  %13 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %sin_addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  call void @rtnl_lock() #14
  %arp_dev = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 4
  %14 = ptrtoint ptr %arp_dev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arp_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call22 = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef %arp_dev) #14
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then20.out_crit_edge, label %if.end25

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end25:                                         ; preds = %if.then20
  %arp_ha = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1
  %16 = ptrtoint ptr %arp_ha to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arp_ha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool27.not = icmp eq i16 %17, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 32
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type, align 16
  %20 = ptrtoint ptr %arp_ha to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arp_ha, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %21 = ptrtoint ptr %arp_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arp_flags, align 4
  %and33 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end49_crit_edge, label %land.lhs.true35

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

land.lhs.true35:                                  ; preds = %if.end31
  %23 = ptrtoint ptr %arp_ha to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arp_ha, align 4
  %type39 = getelementptr inbounds %struct.net_device, ptr %call22, i32 0, i32 32
  %25 = ptrtoint ptr %type39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %type39, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp41.not = icmp eq i16 %24, %26
  br i1 %cmp41.not, label %land.lhs.true35.if.end49_crit_edge, label %land.lhs.true35.out_crit_edge

land.lhs.true35.out_crit_edge:                    ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true35.if.end49_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 35156, i32 %cmd)
  %cmp45 = icmp eq i32 %cmd, 35156
  br i1 %cmp45, label %if.else.out_crit_edge, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %land.lhs.true35.if.end49_crit_edge, %if.end31.if.end49_crit_edge
  %err.0 = phi i32 [ -22, %land.lhs.true35.if.end49_crit_edge ], [ -22, %if.end31.if.end49_crit_edge ], [ 0, %if.else.if.end49_crit_edge ]
  %dev.0 = phi ptr [ %call22, %land.lhs.true35.if.end49_crit_edge ], [ %call22, %if.end31.if.end49_crit_edge ], [ null, %if.else.if.end49_crit_edge ]
  %27 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %cmd, label %if.end49.out_crit_edge [
    i32 35155, label %sw.bb50
    i32 35157, label %sw.bb52
    i32 35156, label %sw.bb54
  ]

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb50:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call51 = call fastcc i32 @arp_req_delete(ptr noundef %net, ptr noundef nonnull %r, ptr noundef %dev.0)
  br label %out

sw.bb52:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call53 = call fastcc i32 @arp_req_set(ptr noundef %net, ptr noundef nonnull %r, ptr noundef %dev.0)
  br label %out

sw.bb54:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = call fastcc i32 @arp_req_get(ptr noundef nonnull %r, ptr noundef %dev.0)
  br label %out

out:                                              ; preds = %sw.bb54, %sw.bb52, %sw.bb50, %if.end49.out_crit_edge, %if.else.out_crit_edge, %land.lhs.true35.out_crit_edge, %if.then20.out_crit_edge
  %err.1 = phi i32 [ -22, %land.lhs.true35.out_crit_edge ], [ %err.0, %if.end49.out_crit_edge ], [ %call55, %sw.bb54 ], [ %call53, %sw.bb52 ], [ %call51, %sw.bb50 ], [ -19, %if.then20.out_crit_edge ], [ -19, %if.else.out_crit_edge ]
  call void @rtnl_unlock() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 35156, i32 %cmd)
  %cmp57 = icmp eq i32 %cmd, 35156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool60.not = icmp eq i32 %err.1, 0
  %or.cond82 = select i1 %cmp57, i1 %tobool60.not, i1 false
  br i1 %or.cond82, label %if.then.i86, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i86:                                      ; preds = %out
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #14
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i85, label %if.then.i86.cleanup_crit_edge, label %copy_to_user.exit

if.then.i86.cleanup_crit_edge:                    ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i90 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r, i32 noundef 68) #14
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %r, i32 noundef 68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool63.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool63.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i86.cleanup_crit_edge, %out.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then11.i.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -96, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %err.1, %out.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i86.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %r) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_delete(ptr noundef %net, ptr nocapture noundef readonly %r, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %ip.addr.i = alloca i32, align 4
  %fl4.i = alloca %struct.flowi4, align 8
  %ip.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arp_flags = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %arp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arp_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #14
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %r, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr.i, align 4
  %4 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ip.i, align 4
  %sin_addr1.i = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 3, i32 1, i32 2
  %5 = ptrtoint ptr %sin_addr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr1.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %6, label %if.then.arp_req_delete_public.exit_crit_edge [
    i32 -1, label %if.then.i
    i32 0, label %if.end4.i
  ]

if.then.arp_req_delete_public.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_req_delete_public.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = call i32 @pneigh_delete(ptr noundef nonnull @arp_tbl, ptr noundef %net, ptr noundef nonnull %ip.i, ptr noundef %dev) #14
  br label %arp_req_delete_public.exit

if.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = tail call fastcc i32 @arp_req_set_proxy(ptr noundef %net, ptr noundef %dev, i32 noundef 0) #14
  br label %arp_req_delete_public.exit

arp_req_delete_public.exit:                       ; preds = %if.end4.i, %if.then.i, %if.then.arp_req_delete_public.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.end4.i ], [ -22, %if.then.arp_req_delete_public.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #14
  br label %cleanup14

if.end:                                           ; preds = %entry
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %r, i32 0, i32 2
  %8 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin_addr, align 4
  %tobool1.not = icmp eq ptr %dev, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #14
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %10 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %11 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %flowic_tos.i, align 4
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %12 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %daddr2.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call.i.i to i32
  br label %cleanup14

cleanup:                                          ; preds = %if.then2
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i.i, align 4
  call void @dst_release(ptr noundef %call.i.i) #14
  %tobool9.not.not = icmp eq ptr %15, null
  br i1 %tobool9.not.not, label %cleanup.cleanup14_crit_edge, label %cleanup.if.end12_crit_edge

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup14

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %dev.addr.1 = phi ptr [ %dev, %if.end.if.end12_crit_edge ], [ %15, %cleanup.if.end12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.addr.i)
  %16 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %9, ptr %ip.addr.i, align 4
  %call.i27 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip.addr.i, ptr noundef nonnull %dev.addr.1) #14
  %tobool.not.i = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i, label %if.end12.arp_invalidate.exit_crit_edge, label %if.then.i28

if.end12.arp_invalidate.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_invalidate.exit

if.then.i28:                                      ; preds = %if.end12
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %call.i27, i32 0, i32 12
  %17 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nud_state.i, align 8
  %19 = and i8 %18, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i, label %if.then.i28.if.end.i_crit_edge, label %if.then2.i

if.then.i28.if.end.i_crit_edge:                   ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #16
  %call3.i = call i32 @neigh_update(ptr noundef nonnull %call.i27, ptr noundef null, i8 noundef zeroext 32, i32 noundef 129, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i28.if.end.i_crit_edge
  %err.0.i = phi i32 [ %call3.i, %if.then2.i ], [ -6, %if.then.i28.if.end.i_crit_edge ]
  call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #14
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i27, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #14
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !103

if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %neigh_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #14
  br label %neigh_release.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  call void @neigh_destroy(ptr noundef nonnull %call.i27) #14
  br label %neigh_release.exit.i

neigh_release.exit.i:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge
  %call4.i = call zeroext i1 @neigh_remove_one(ptr noundef nonnull %call.i27, ptr noundef nonnull @arp_tbl) #14
  call void @_raw_write_unlock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 28)) #14
  br label %arp_invalidate.exit

arp_invalidate.exit:                              ; preds = %neigh_release.exit.i, %if.end12.arp_invalidate.exit_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %neigh_release.exit.i ], [ -6, %if.end12.arp_invalidate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i)
  br label %cleanup14

cleanup14:                                        ; preds = %arp_invalidate.exit, %cleanup.cleanup14_crit_edge, %cleanup.thread, %arp_req_delete_public.exit
  %retval.1 = phi i32 [ %retval.0.i, %arp_req_delete_public.exit ], [ %err.1.i, %arp_invalidate.exit ], [ -22, %cleanup.cleanup14_crit_edge ], [ %13, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_set(ptr noundef %net, ptr noundef %r, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %ip.i = alloca i32, align 4
  %ip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #14
  %arp_flags = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %arp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arp_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #14
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %r, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr.i, align 4
  %4 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ip.i, align 4
  %sin_addr1.i = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 3, i32 1, i32 2
  %5 = ptrtoint ptr %sin_addr1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %6, label %if.then.arp_req_set_public.exit_crit_edge [
    i32 -1, label %if.then.if.end.i_crit_edge
    i32 0, label %if.then.if.end.i_crit_edge99
  ]

if.then.if.end.i_crit_edge99:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.arp_req_set_public.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_req_set_public.exit

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge99
  %tobool3.not.i = icmp eq ptr %dev, null
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end11.i_crit_edge, label %if.then6.i

land.lhs.true4.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  %arp_ha.i = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1
  %8 = ptrtoint ptr %arp_ha.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arp_ha.i, align 4
  %sa_data.i = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1, i32 1
  %call.i = tail call ptr @dev_getbyhwaddr_rcu(ptr noundef %net, i16 noundef zeroext %9, ptr noundef %sa_data.i) #14
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.then6.i.arp_req_set_public.exit_crit_edge, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then6.i.arp_req_set_public.exit_crit_edge:     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_req_set_public.exit

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %land.lhs.true4.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %dev.addr.0.i = phi ptr [ %dev, %if.end.i.if.end11.i_crit_edge ], [ %call.i, %if.then6.i.if.end11.i_crit_edge ], [ null, %land.lhs.true4.i.if.end11.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end18.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i = call ptr @pneigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %net, ptr noundef nonnull %ip.i, ptr noundef %dev.addr.0.i, i32 noundef 1) #14
  %tobool15.not.i = icmp eq ptr %call14.i, null
  %..i = select i1 %tobool15.not.i, i32 -105, i32 0
  br label %arp_req_set_public.exit

if.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %call19.i = tail call fastcc i32 @arp_req_set_proxy(ptr noundef %net, ptr noundef %dev.addr.0.i, i32 noundef 1) #14
  br label %arp_req_set_public.exit

arp_req_set_public.exit:                          ; preds = %if.end18.i, %if.then13.i, %if.then6.i.arp_req_set_public.exit_crit_edge, %if.then.arp_req_set_public.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %if.end18.i ], [ -22, %if.then.arp_req_set_public.exit_crit_edge ], [ -19, %if.then6.i.arp_req_set_public.exit_crit_edge ], [ %..i, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #14
  br label %cleanup59

if.end:                                           ; preds = %entry
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %r, i32 0, i32 2
  %10 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr, align 4
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ip, align 4
  %and2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %1, 2
  %13 = ptrtoint ptr %arp_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %arp_flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %dev, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end18_crit_edge

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #14
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %14 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %15 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %flowic_tos.i, align 4
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %16 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %daddr2.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %call.i.i to i32
  br label %cleanup59

cleanup:                                          ; preds = %if.then8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i.i, align 4
  call void @dst_release(ptr noundef %call.i.i) #14
  %tobool15.not.not = icmp eq ptr %19, null
  br i1 %tobool15.not.not, label %cleanup.cleanup59_crit_edge, label %cleanup.if.end18_crit_edge

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

cleanup.cleanup59_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %dev.addr.1 = phi ptr [ %dev, %if.end6.if.end18_crit_edge ], [ %19, %cleanup.if.end18_crit_edge ]
  %type = getelementptr inbounds %struct.net_device, ptr %dev.addr.1, i32 0, i32 32
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 774, i16 %21)
  %cond63 = icmp eq i16 %21, 774
  %arp_ha = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1
  %22 = ptrtoint ptr %arp_ha to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arp_ha, align 4
  br i1 %cond63, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end18
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %23, label %sw.bb.cleanup59_crit_edge [
    i16 774, label %sw.bb.sw.epilog_crit_edge
    i16 1, label %sw.bb.sw.epilog_crit_edge100
    i16 6, label %sw.bb.sw.epilog_crit_edge101
  ]

sw.bb.sw.epilog_crit_edge101:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge100:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup59_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %21)
  %cmp39.not = icmp eq i16 %23, %21
  br i1 %cmp39.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup59_crit_edge

sw.default.cleanup59_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge100, %sw.bb.sw.epilog_crit_edge101
  %call.i89 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip, ptr noundef nonnull %dev.addr.1) #14
  %tobool.not.i90 = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i90, label %if.end.i92, label %sw.epilog.__neigh_lookup_errno.exit_crit_edge

sw.epilog.__neigh_lookup_errno.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %__neigh_lookup_errno.exit

if.end.i92:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i91 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip, ptr noundef nonnull %dev.addr.1, i1 noundef zeroext true) #14
  br label %__neigh_lookup_errno.exit

__neigh_lookup_errno.exit:                        ; preds = %if.end.i92, %sw.epilog.__neigh_lookup_errno.exit_crit_edge
  %retval.0.i93 = phi ptr [ %call.i.i91, %if.end.i92 ], [ %call.i89, %sw.epilog.__neigh_lookup_errno.exit_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i93 to i32
  %cmp.i94 = icmp ugt ptr %retval.0.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %__neigh_lookup_errno.exit.cleanup59_crit_edge, label %if.then46

__neigh_lookup_errno.exit.cleanup59_crit_edge:    ; preds = %__neigh_lookup_errno.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.then46:                                        ; preds = %__neigh_lookup_errno.exit
  %26 = ptrtoint ptr %arp_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arp_flags, align 4
  %and48 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %and53 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %sa_data = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1, i32 1
  %spec.select = select i1 %tobool54.not, ptr null, ptr %sa_data
  %conv56 = select i1 %tobool49.not, i8 4, i8 -128
  %call57 = call i32 @neigh_update(ptr noundef %retval.0.i93, ptr noundef %spec.select, i8 noundef zeroext %conv56, i32 noundef 129, i32 noundef 0) #14
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i93, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup59_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end5.i.i.i.i.cleanup59_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup59

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup59

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  call void @neigh_destroy(ptr noundef %retval.0.i93) #14
  br label %cleanup59

cleanup59:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup59_crit_edge, %__neigh_lookup_errno.exit.cleanup59_crit_edge, %sw.default.cleanup59_crit_edge, %sw.bb.cleanup59_crit_edge, %cleanup.cleanup59_crit_edge, %cleanup.thread, %arp_req_set_public.exit
  %retval.1 = phi i32 [ %retval.0.i, %arp_req_set_public.exit ], [ -22, %cleanup.cleanup59_crit_edge ], [ -22, %sw.bb.cleanup59_crit_edge ], [ -22, %sw.default.cleanup59_crit_edge ], [ %25, %__neigh_lookup_errno.exit.cleanup59_crit_edge ], [ %17, %cleanup.thread ], [ %call57, %if.end5.i.i.i.i.cleanup59_crit_edge ], [ %call57, %if.then10.i.i.i.i ], [ %call57, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #14
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_get(ptr noundef %r, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %ip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #14
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin_addr, align 4
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ip, align 4
  %call = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %ip, ptr noundef %dev) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %entry
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nud_state, align 8
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.neighbour, ptr %call, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #14
  %arp_ha = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1
  %sa_data = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 1, i32 1
  %ha = getelementptr inbounds %struct.neighbour, ptr %call, i32 0, i32 18
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %6 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr_len, align 1
  %conv4 = zext i8 %7 to i32
  %8 = call ptr @memcpy(ptr %sa_data, ptr %ha, i32 %conv4)
  %9 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nud_state, align 8
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 0, i32 2
  %retval.0.i = select i1 %tobool.not.i, i32 %..i, i32 6
  %arp_flags = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 2
  %11 = ptrtoint ptr %arp_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %arp_flags, align 4
  call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 16
  %14 = ptrtoint ptr %arp_ha to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arp_ha, align 4
  %arp_dev = getelementptr inbounds %struct.arpreq, ptr %r, i32 0, i32 4
  %call10 = call i32 @strlcpy(ptr noundef %arp_dev, ptr noundef %dev, i32 noundef 16) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %err.0 = phi i32 [ -6, %if.then.if.end_crit_edge ], [ 0, %if.then2 ]
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end5.i.i.i.i.if.end11_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %if.end11

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  call void @neigh_destroy(ptr noundef nonnull %call) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  %err.1 = phi i32 [ -6, %entry.if.end11_crit_edge ], [ %err.0, %if.end5.i.i.i.i.if.end11_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #14
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arp_ifdown(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @neigh_ifdown(ptr noundef nonnull @arp_tbl, ptr noundef %dev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @arp_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @neigh_table_init(i32 noundef 0, ptr noundef nonnull @arp_tbl) #14
  tail call void @dev_add_pack(ptr noundef nonnull @arp_packet_type) #14
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @arp_net_ops) #14
  %call1 = tail call i32 @neigh_sysctl_register(ptr noundef null, ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 13), ptr noundef null) #14
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @arp_netdev_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_table_init(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_direct_output(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_solicit(ptr noundef %neigh, ptr noundef readonly %skb) #1 align 64 {
entry:
  %dst_ha = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dst_ha) #14
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = call ptr @memset(ptr %dst_ha, i32 255, i32 32)
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %3 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %primary_key, align 4
  %probes2 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %probes2, i32 noundef 4) #14
  %5 = ptrtoint ptr %probes2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %probes2, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 78
  %11 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i110 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %land.lhs.true.i112, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true.i112:                               ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i112.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i112.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i112
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i112
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i113

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

if.then.i113:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i113, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i112.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %__in_dev_get_rcu.exit
  %call.i114 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i114, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i117

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i117:                               ; preds = %if.then
  %call1.i115 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i119

land.lhs.true.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i119:                              ; preds = %land.lhs.true.i117
  %.b4.i118 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i118, label %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, label %if.then.i120

land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i120:                                     ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i120, %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i121 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i122, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i122, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

if.end:                                           ; preds = %__in_dev_get_rcu.exit
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 35, i32 6
  %21 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %22, i32 0, i32 1, i32 17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.in_device, ptr %12, i32 0, i32 21, i32 1, i32 17
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %24, i32 %26)
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %27, label %sw.bb [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %tobool7.not = icmp eq ptr %skb, null
  br i1 %tobool7.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %nd_net.i123 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %29 = ptrtoint ptr %nd_net.i123 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nd_net.i123, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i
  %saddr10 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %saddr10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saddr10, align 4
  %call11 = tail call i32 @inet_addr_type_dev_table(ptr noundef %30, ptr noundef %2, i32 noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 2
  br i1 %cmp12, label %if.then13, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i, align 8
  %39 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i126 = zext i16 %40 to i32
  %add.ptr.i.i127 = getelementptr i8, ptr %38, i32 %conv.i.i126
  %saddr15 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i127, i32 0, i32 8
  %41 = ptrtoint ptr %saddr15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saddr15, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %tobool18.not = icmp eq ptr %skb, null
  br i1 %tobool18.not, label %sw.bb17.sw.epilog_crit_edge, label %if.end20

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb17
  %head.i.i128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %43 = ptrtoint ptr %head.i.i128 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i128, align 8
  %network_header.i.i129 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %45 = ptrtoint ptr %network_header.i.i129 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %network_header.i.i129, align 4
  %conv.i.i130 = zext i16 %46 to i32
  %add.ptr.i.i131 = getelementptr i8, ptr %44, i32 %conv.i.i130
  %saddr22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131, i32 0, i32 8
  %47 = ptrtoint ptr %saddr22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %saddr22, align 4
  %nd_net.i132 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %49 = ptrtoint ptr %nd_net.i132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nd_net.i132, align 4
  %call24 = tail call i32 @inet_addr_type_dev_table(ptr noundef %50, ptr noundef %2, i32 noundef %48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 2
  br i1 %cmp25, label %if.then26, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then26:                                        ; preds = %if.end20
  %call27 = tail call i32 @inet_addr_onlink(ptr noundef nonnull %12, i32 noundef %4, i32 noundef %48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.sw.epilog_crit_edge

if.then26.sw.epilog_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end31, %if.then26.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.then13, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %saddr.0 = phi i32 [ %42, %if.then13 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %48, %if.then26.sw.epilog_crit_edge ], [ 0, %if.end31 ], [ 0, %sw.bb17.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ]
  %call.i133 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i133, label %sw.epilog.rcu_read_unlock.exit143_crit_edge, label %land.lhs.true.i136

sw.epilog.rcu_read_unlock.exit143_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit143

land.lhs.true.i136:                               ; preds = %sw.epilog
  %call1.i134 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134)
  %tobool.not.i135 = icmp eq i32 %call1.i134, 0
  br i1 %tobool.not.i135, label %land.lhs.true.i136.rcu_read_unlock.exit143_crit_edge, label %land.lhs.true2.i138

land.lhs.true.i136.rcu_read_unlock.exit143_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit143

land.lhs.true2.i138:                              ; preds = %land.lhs.true.i136
  %.b4.i137 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137, label %land.lhs.true2.i138.rcu_read_unlock.exit143_crit_edge, label %if.then.i139

land.lhs.true2.i138.rcu_read_unlock.exit143_crit_edge: ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit143

if.then.i139:                                     ; preds = %land.lhs.true2.i138
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit143

rcu_read_unlock.exit143:                          ; preds = %if.then.i139, %land.lhs.true2.i138.rcu_read_unlock.exit143_crit_edge, %land.lhs.true.i136.rcu_read_unlock.exit143_crit_edge, %sw.epilog.rcu_read_unlock.exit143_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %51 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i140 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i140 to ptr
  %preempt_count.i.i.i.i141 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i141, align 4
  %sub.i.i.i142 = add i32 %54, -1
  store volatile i32 %sub.i.i.i142, ptr %preempt_count.i.i.i.i141, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saddr.0)
  %tobool32.not = icmp eq i32 %saddr.0, 0
  br i1 %tobool32.not, label %if.then33, label %rcu_read_unlock.exit143.if.end35_crit_edge

rcu_read_unlock.exit143.if.end35_crit_edge:       ; preds = %rcu_read_unlock.exit143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then33:                                        ; preds = %rcu_read_unlock.exit143
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = tail call i32 @inet_select_addr(ptr noundef %2, i32 noundef %4, i32 noundef 253) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %rcu_read_unlock.exit143.if.end35_crit_edge
  %saddr.1 = phi i32 [ %saddr.0, %rcu_read_unlock.exit143.if.end35_crit_edge ], [ %call34, %if.then33 ]
  %parms = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 2
  %55 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parms, align 8
  %arrayidx37 = getelementptr %struct.neigh_parms, ptr %56, i32 0, i32 11, i32 1
  %57 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx37, align 4
  %sub = sub i32 %6, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp38 = icmp slt i32 %sub, 0
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end35
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %59 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %nud_state, align 8
  %61 = and i8 %60, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool40.not = icmp eq i8 %61, 0
  br i1 %tobool40.not, label %do.body, label %if.then39.if.end49_crit_edge

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.body:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arp_solicit.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arp_solicit, %if.then47)) #14
          to label %if.end49 [label %if.then47], !srcloc !111

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @arp_solicit.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.10) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %do.body, %if.then39.if.end49_crit_edge
  %ha_lock.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 17
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 17, i32 0, i32 0, i32 1
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 56
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %if.end49
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !112
  %and.i.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %63 = tail call ptr @llvm.returnaddress(i32 0) #14
  %64 = ptrtoint ptr %63 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %64) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %64) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = tail call ptr @llvm.returnaddress(i32 0) #14
  %66 = ptrtoint ptr %65 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %66) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %66) #14
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !113
  %and.i.i.i.i.i144 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i144)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i144, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !101

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #14, !srcloc !114
  %68 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %ha_lock.i, align 4
  %and18.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !116
  %70 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %ha_lock.i, align 4
  %and.i.i = and i32 %71, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %69, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %71, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !117
  %72 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %73 to i32
  %74 = call ptr @memcpy(ptr %dst_ha, ptr %ha.i, i32 %conv.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !118
  %75 = ptrtoint ptr %ha_lock.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %ha_lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %76, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %read_seqbegin.exit.i.if.end60_crit_edge, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

read_seqbegin.exit.i.if.end60_crit_edge:          ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.else:                                          ; preds = %if.end35
  %arrayidx54 = getelementptr %struct.neigh_parms, ptr %56, i32 0, i32 11, i32 2
  %77 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx54, align 4
  %sub55 = sub i32 %sub, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp slt i32 %sub55, 0
  br i1 %cmp56, label %if.then58, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_app_ns(ptr noundef %neigh) #14
  br label %cleanup

if.end60:                                         ; preds = %if.else.if.end60_crit_edge, %read_seqbegin.exit.i.if.end60_crit_edge
  %dst_hw.0 = phi ptr [ null, %if.else.if.end60_crit_edge ], [ %dst_ha, %read_seqbegin.exit.i.if.end60_crit_edge ]
  %tobool61.not = icmp eq ptr %skb, null
  br i1 %tobool61.not, label %if.end60.if.end67_crit_edge, label %land.lhs.true62

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

land.lhs.true62:                                  ; preds = %if.end60
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %79 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %priv_flags, align 16
  %and63 = and i64 %80, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63)
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true62.if.end67_crit_edge

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then65:                                        ; preds = %land.lhs.true62
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %and.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i145 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i145, label %if.then65.skb_dst.exit_crit_edge, label %land.lhs.true.i147

if.then65.skb_dst.exit_crit_edge:                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i147:                               ; preds = %if.then65
  %call.i146 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool1.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i147.skb_dst.exit_crit_edge

land.lhs.true.i147.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i147
  %call2.i148 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i148)
  %tobool3.not.i149 = icmp eq i32 %call2.i148, 0
  br i1 %tobool3.not.i149, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !101

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i147.skb_dst.exit_crit_edge, %if.then65.skb_dst.exit_crit_edge
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %81, align 8
  %and25.i = and i32 %85, -2
  %86 = inttoptr i32 %and25.i to ptr
  br label %if.end67

if.end67:                                         ; preds = %skb_dst.exit, %land.lhs.true62.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %dst.0 = phi ptr [ null, %land.lhs.true62.if.end67_crit_edge ], [ %86, %skb_dst.exit ], [ null, %if.end60.if.end67_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %87 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr, align 64
  call fastcc void @arp_send_dst(i32 noundef 1, i32 noundef 2054, i32 noundef %4, ptr noundef %2, i32 noundef %saddr.1, ptr noundef %dst_hw.0, ptr noundef %88, ptr noundef null, ptr noundef %dst.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then58, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dst_ha) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_error_report(ptr nocapture noundef readnone %neigh, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !101

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.dst_link_failure.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.dst_link_failure.exit_crit_edge:   ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_link_failure.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %5 = inttoptr i32 %and25.i.i to ptr
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.dst_link_failure.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.dst_link_failure.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_link_failure.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %link_failure.i = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %link_failure.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_failure.i, align 8
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true2.i.dst_link_failure.exit_crit_edge, label %if.then.i

land.lhs.true2.i.dst_link_failure.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_link_failure.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %9(ptr noundef %skb) #14
  br label %dst_link_failure.exit

dst_link_failure.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.dst_link_failure.exit_crit_edge, %land.lhs.true.i.dst_link_failure.exit_crit_edge, %skb_dst.exit.i.dst_link_failure.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_resolve_output(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_onlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_app_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_connected_output(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #6 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx88 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 5, i32 %hook
  %4 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx88, align 4
  %call90 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %rcu_read_lock.exit
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.sw.epilog_crit_edge, label %land.lhs.true95

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b1 = load i1, ptr @nf_hook.__warned.15, align 1
  br i1 %.b1, label %land.lhs.true95.sw.epilog_crit_edge, label %if.then97

land.lhs.true95.sw.epilog_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nf_hook.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 238, ptr noundef nonnull @.str.4) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then97, %land.lhs.true95.sw.epilog_crit_edge, %land.lhs.true92.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #14
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %pf2.i, align 1
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
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #14
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %13 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_process(ptr noundef %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #1 align 64 {
entry:
  %sip = alloca i32, align 4
  %tip = alloca i32, align 4
  %addr_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 78
  %3 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.__in_dev_get_rcu.exit_crit_edge

entry.__in_dev_get_rcu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %entry.__in_dev_get_rcu.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sip) #14
  %5 = ptrtoint ptr %sip to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sip, align 4, !annotation !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tip) #14
  %type = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type) #14
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %__in_dev_get_rcu.exit.out_free_skb_crit_edge, label %if.end

__in_dev_get_rcu.exit.out_free_skb_crit_edge:     ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

if.end:                                           ; preds = %__in_dev_get_rcu.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %12 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %7, label %sw.default [
    i16 1, label %if.end.sw.bb_crit_edge
    i16 774, label %if.end.sw.bb_crit_edge459
    i16 6, label %if.end.sw.bb_crit_edge460
    i16 3, label %sw.bb25
    i16 0, label %sw.bb37
  ]

if.end.sw.bb_crit_edge460:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge459:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.default:                                       ; preds = %if.end
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.not = icmp eq i16 %14, 2048
  br i1 %cmp.not, label %lor.lhs.false, label %sw.default.out_free_skb_crit_edge

sw.default.out_free_skb_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false:                                    ; preds = %sw.default
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %16)
  %cmp6.not = icmp eq i16 %7, %16
  br i1 %cmp6.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.out_free_skb_crit_edge

lor.lhs.false.out_free_skb_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge459, %if.end.sw.bb_crit_edge460
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %18, label %sw.bb.out_free_skb_crit_edge [
    i16 1, label %sw.bb.lor.lhs.false18_crit_edge
    i16 6, label %sw.bb.lor.lhs.false18_crit_edge461
  ]

sw.bb.lor.lhs.false18_crit_edge461:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false18

sw.bb.lor.lhs.false18_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false18

sw.bb.out_free_skb_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false18:                                  ; preds = %sw.bb.lor.lhs.false18_crit_edge, %sw.bb.lor.lhs.false18_crit_edge461
  %ar_pro19 = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ar_pro19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ar_pro19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp21.not = icmp eq i16 %21, 2048
  br i1 %cmp21.not, label %lor.lhs.false18.sw.epilog_crit_edge, label %lor.lhs.false18.out_free_skb_crit_edge

lor.lhs.false18.out_free_skb_crit_edge:           ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false18.sw.epilog_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %ar_pro26 = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %ar_pro26 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ar_pro26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 204, i16 %23)
  %cmp28.not = icmp eq i16 %23, 204
  br i1 %cmp28.not, label %lor.lhs.false30, label %sw.bb25.out_free_skb_crit_edge

sw.bb25.out_free_skb_crit_edge:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false30:                                  ; preds = %sw.bb25
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp33.not = icmp eq i16 %25, 3
  br i1 %cmp33.not, label %lor.lhs.false30.sw.epilog_crit_edge, label %lor.lhs.false30.out_free_skb_crit_edge

lor.lhs.false30.out_free_skb_crit_edge:           ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false30.sw.epilog_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %ar_pro38 = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ar_pro38 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ar_pro38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 204, i16 %27)
  %cmp40.not = icmp eq i16 %27, 204
  br i1 %cmp40.not, label %lor.lhs.false42, label %sw.bb37.out_free_skb_crit_edge

sw.bb37.out_free_skb_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false42:                                  ; preds = %sw.bb37
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp45.not = icmp eq i16 %29, 0
  br i1 %cmp45.not, label %lor.lhs.false42.sw.epilog_crit_edge, label %lor.lhs.false42.out_free_skb_crit_edge

lor.lhs.false42.out_free_skb_crit_edge:           ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false42.sw.epilog_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false42.sw.epilog_crit_edge, %lor.lhs.false30.sw.epilog_crit_edge, %lor.lhs.false18.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ar_op, align 2
  %.off = add i16 %31, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end58, label %sw.epilog.out_free_skb_crit_edge

sw.epilog.out_free_skb_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

if.end58:                                         ; preds = %sw.epilog
  %add.ptr = getelementptr %struct.arphdr, ptr %add.ptr.i.i, i32 1
  %addr_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 56
  %32 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr_len, align 1
  %conv59 = zext i8 %33 to i32
  %add.ptr60 = getelementptr i8, ptr %add.ptr, i32 %conv59
  %34 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr60, align 1
  %36 = ptrtoint ptr %sip to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sip, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %7)
  %cond301 = icmp eq i16 %7, 24
  %spec.select456.idx = select i1 %cond301, i32 0, i32 %conv59
  %spec.select456 = getelementptr i8, ptr %add.ptr61, i32 %spec.select456.idx
  %spec.select457 = select i1 %cond301, ptr null, ptr %add.ptr61
  %37 = ptrtoint ptr %spec.select456 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %spec.select456, align 1
  %39 = ptrtoint ptr %tip to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tip, align 4
  %and.i = and i32 %38, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.end58.out_free_skb_crit_edge, label %lor.lhs.false70

if.end58.out_free_skb_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false70:                                  ; preds = %if.end58
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %4, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 127
  %42 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %43, i32 0, i32 35, i32 6
  %44 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 25
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool73.not = icmp eq i32 %47, 0
  br i1 %tobool73.not, label %lor.lhs.false74, label %lor.lhs.false70.if.end81_crit_edge

lor.lhs.false70.if.end81_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %arrayidx.i = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 25
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool76.not = icmp eq i32 %49, 0
  %and.i413 = and i32 %38, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i413)
  %cmp.i414 = icmp eq i32 %and.i413, 2130706432
  %or.cond = select i1 %tobool76.not, i1 %cmp.i414, i1 false
  br i1 %or.cond, label %lor.lhs.false74.out_free_skb_crit_edge, label %lor.lhs.false74.if.end81_crit_edge

lor.lhs.false74.if.end81_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81

lor.lhs.false74.out_free_skb_crit_edge:           ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

if.end81:                                         ; preds = %lor.lhs.false74.if.end81_crit_edge, %lor.lhs.false70.if.end81_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %38)
  %cmp82 = icmp eq i32 %35, %38
  br i1 %cmp82, label %land.lhs.true84, label %if.end81.if.end96_crit_edge

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

land.lhs.true84:                                  ; preds = %if.end81
  %arrayidx90 = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 30
  %50 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool91.not = icmp eq i32 %51, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %land.lhs.true84.out_free_skb_crit_edge

land.lhs.true84.out_free_skb_crit_edge:           ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false92:                                  ; preds = %land.lhs.true84
  %arrayidx.i416 = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 30
  %52 = ptrtoint ptr %arrayidx.i416 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i416, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool94.not = icmp eq i32 %53, 0
  br i1 %tobool94.not, label %lor.lhs.false92.if.end96_crit_edge, label %lor.lhs.false92.out_free_skb_crit_edge

lor.lhs.false92.out_free_skb_crit_edge:           ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_skb

lor.lhs.false92.if.end96_crit_edge:               ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.end96:                                         ; preds = %lor.lhs.false92.if.end96_crit_edge, %if.end81.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %7)
  %cmp98 = icmp eq i16 %7, 15
  %broadcast = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 99
  %spec.select = select i1 %cmp98, ptr %broadcast, ptr %add.ptr
  %54 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp104 = icmp eq i16 %55, 1
  br i1 %cmp104, label %land.lhs.true106, label %if.end96.if.end112_crit_edge

if.end96.if.end112_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

land.lhs.true106:                                 ; preds = %if.end96
  %call107 = tail call fastcc ptr @skb_metadata_dst(ptr noundef %skb)
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %land.lhs.true106.if.end112_crit_edge, label %if.then109

land.lhs.true106.if.end112_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then109:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  %call110 = tail call fastcc ptr @skb_metadata_dst(ptr noundef %skb)
  %call111 = tail call ptr @iptunnel_metadata_reply(ptr noundef %call110, i32 noundef 2592) #14
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %land.lhs.true106.if.end112_crit_edge, %if.end96.if.end112_crit_edge
  %reply_dst.0 = phi ptr [ %call111, %if.then109 ], [ null, %land.lhs.true106.if.end112_crit_edge ], [ null, %if.end96.if.end112_crit_edge ]
  %56 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp113 = icmp eq i32 %57, 0
  %58 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp118 = icmp eq i16 %59, 1
  br i1 %cmp113, label %if.then115, label %if.end129

if.then115:                                       ; preds = %if.end112
  br i1 %cmp118, label %land.lhs.true120, label %if.then115.out_consume_skb_crit_edge

if.then115.out_consume_skb_crit_edge:             ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true120:                                 ; preds = %if.then115
  %60 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tip, align 4
  %call121 = tail call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef %2, i32 noundef %61) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call121)
  %cmp122 = icmp eq i32 %call121, 2
  br i1 %cmp122, label %land.lhs.true124, label %land.lhs.true120.out_consume_skb_crit_edge

land.lhs.true120.out_consume_skb_crit_edge:       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true124:                                 ; preds = %land.lhs.true120
  %62 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sip, align 4
  %64 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tip, align 4
  %call125 = tail call fastcc i32 @arp_ignore(ptr noundef nonnull %4, i32 noundef %63, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then127, label %land.lhs.true124.out_consume_skb_crit_edge

land.lhs.true124.out_consume_skb_crit_edge:       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

if.then127:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sip, align 4
  %68 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tip, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %70 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef %67, ptr noundef %2, i32 noundef %69, ptr noundef %spec.select, ptr noundef %71, ptr noundef %spec.select, ptr noundef %reply_dst.0)
  br label %out_consume_skb

if.end129:                                        ; preds = %if.end112
  br i1 %cmp118, label %land.lhs.true134, label %if.end129.if.end210_crit_edge

if.end129.if.end210_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

land.lhs.true134:                                 ; preds = %if.end129
  %72 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tip, align 4
  %call135 = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %73, i32 noundef %57, i8 noundef zeroext 0, ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then138, label %land.lhs.true134.if.end210_crit_edge

land.lhs.true134.if.end210_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.then138:                                       ; preds = %land.lhs.true134
  %call139 = tail call fastcc ptr @skb_rtable(ptr noundef %skb)
  %rt_type = getelementptr inbounds %struct.rtable, ptr %call139, i32 0, i32 3
  %74 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %75)
  %cmp141 = icmp eq i16 %75, 2
  br i1 %cmp141, label %if.then143, label %if.else

if.then143:                                       ; preds = %if.then138
  %76 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sip, align 4
  %78 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tip, align 4
  %call144 = tail call fastcc i32 @arp_ignore(ptr noundef nonnull %4, i32 noundef %77, i32 noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true146, label %if.then143.out_consume_skb_crit_edge

if.then143.out_consume_skb_crit_edge:             ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true146:                                 ; preds = %if.then143
  %80 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %4, align 4
  %nd_net.i417 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 127
  %82 = ptrtoint ptr %nd_net.i417 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nd_net.i417, align 4
  %devconf_all150 = getelementptr inbounds %struct.net, ptr %83, i32 0, i32 35, i32 6
  %84 = ptrtoint ptr %devconf_all150 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %devconf_all150, align 4
  %arrayidx152 = getelementptr %struct.ipv4_devconf, ptr %85, i32 0, i32 1, i32 12
  %86 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool153.not = icmp eq i32 %87, 0
  br i1 %tobool153.not, label %lor.lhs.false154, label %land.lhs.true146.if.then157_crit_edge

land.lhs.true146.if.then157_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then157

lor.lhs.false154:                                 ; preds = %land.lhs.true146
  %arrayidx.i418 = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 12
  %88 = ptrtoint ptr %arrayidx.i418 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool156.not = icmp eq i32 %89, 0
  br i1 %tobool156.not, label %lor.lhs.false154.if.then161_crit_edge, label %lor.lhs.false154.if.then157_crit_edge

lor.lhs.false154.if.then157_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then157

lor.lhs.false154.if.then161_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

if.then157:                                       ; preds = %lor.lhs.false154.if.then157_crit_edge, %land.lhs.true146.if.then157_crit_edge
  %90 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sip, align 4
  %92 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tip, align 4
  %call158 = tail call fastcc i32 @arp_filter(i32 noundef %91, i32 noundef %93, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %phi.cmp = icmp eq i32 %call158, 0
  br i1 %phi.cmp, label %if.then157.if.then161_crit_edge, label %if.then157.out_consume_skb_crit_edge

if.then157.out_consume_skb_crit_edge:             ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

if.then157.if.then161_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

if.then161:                                       ; preds = %if.then157.if.then161_crit_edge, %lor.lhs.false154.if.then161_crit_edge
  %call162 = call ptr @neigh_event_ns(ptr noundef nonnull @arp_tbl, ptr noundef %spec.select, ptr noundef nonnull %sip, ptr noundef %2) #14
  %tobool163.not = icmp eq ptr %call162, null
  br i1 %tobool163.not, label %if.then161.out_consume_skb_crit_edge, label %if.then164

if.then161.out_consume_skb_crit_edge:             ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

if.then164:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sip, align 4
  %96 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tip, align 4
  %dev_addr165 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %98 = ptrtoint ptr %dev_addr165 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_addr165, align 64
  call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef %95, ptr noundef %2, i32 noundef %97, ptr noundef %spec.select, ptr noundef %99, ptr noundef %spec.select, ptr noundef %reply_dst.0)
  call fastcc void @neigh_release(ptr noundef nonnull %call162)
  br label %out_consume_skb

if.else:                                          ; preds = %if.then138
  %arrayidx.i419 = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 0
  %100 = ptrtoint ptr %arrayidx.i419 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i419, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool169.not = icmp ne i32 %101, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %75)
  %cmp171 = icmp eq i16 %75, 1
  %or.cond458 = select i1 %tobool169.not, i1 %cmp171, i1 false
  br i1 %or.cond458, label %land.lhs.true173, label %if.else.if.end210_crit_edge

if.else.if.end210_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

land.lhs.true173:                                 ; preds = %if.else
  %call174 = tail call fastcc i32 @arp_fwd_proxy(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %call139)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %lor.lhs.false176, label %land.lhs.true173.if.then186_crit_edge

land.lhs.true173.if.then186_crit_edge:            ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

lor.lhs.false176:                                 ; preds = %land.lhs.true173
  %102 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sip, align 4
  %104 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tip, align 4
  %106 = ptrtoint ptr %call139 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call139, align 4
  %cmp.not.i = icmp ne ptr %107, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp2.i = icmp eq i32 %103, %105
  %or.cond.i = or i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false176.lor.lhs.false179_crit_edge, label %if.end4.i

lor.lhs.false176.lor.lhs.false179_crit_edge:      ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false179

if.end4.i:                                        ; preds = %lor.lhs.false176
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %4, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 127
  %110 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %111, i32 0, i32 35, i32 6
  %112 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i420 = getelementptr %struct.ipv4_devconf, ptr %113, i32 0, i32 1, i32 24
  %114 = ptrtoint ptr %arrayidx.i420 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i421 = icmp eq i32 %115, 0
  br i1 %tobool.not.i421, label %arp_fwd_pvlan.exit, label %if.end4.i.if.then186_crit_edge

if.end4.i.if.then186_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

arp_fwd_pvlan.exit:                               ; preds = %if.end4.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 24
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool7.not.i.not = icmp eq i32 %117, 0
  br i1 %tobool7.not.i.not, label %arp_fwd_pvlan.exit.lor.lhs.false179_crit_edge, label %arp_fwd_pvlan.exit.if.then186_crit_edge

arp_fwd_pvlan.exit.if.then186_crit_edge:          ; preds = %arp_fwd_pvlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

arp_fwd_pvlan.exit.lor.lhs.false179_crit_edge:    ; preds = %arp_fwd_pvlan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %arp_fwd_pvlan.exit.lor.lhs.false179_crit_edge, %lor.lhs.false176.lor.lhs.false179_crit_edge
  %cmp181.not = icmp eq ptr %107, %2
  br i1 %cmp181.not, label %lor.lhs.false179.if.end210_crit_edge, label %land.lhs.true183

lor.lhs.false179.if.end210_crit_edge:             ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

land.lhs.true183:                                 ; preds = %lor.lhs.false179
  %call184 = call ptr @pneigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %net, ptr noundef nonnull %tip, ptr noundef %2, i32 noundef 0) #14
  %tobool185.not = icmp eq ptr %call184, null
  br i1 %tobool185.not, label %land.lhs.true183.if.end210_crit_edge, label %land.lhs.true183.if.then186_crit_edge

land.lhs.true183.if.then186_crit_edge:            ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then186

land.lhs.true183.if.end210_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210

if.then186:                                       ; preds = %land.lhs.true183.if.then186_crit_edge, %arp_fwd_pvlan.exit.if.then186_crit_edge, %if.end4.i.if.then186_crit_edge, %land.lhs.true173.if.then186_crit_edge
  %call187 = call ptr @neigh_event_ns(ptr noundef nonnull @arp_tbl, ptr noundef %spec.select, ptr noundef nonnull %sip, ptr noundef %2) #14
  %tobool188.not = icmp eq ptr %call187, null
  br i1 %tobool188.not, label %if.then186.if.end190_crit_edge, label %if.then189

if.then186.if.end190_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end190

if.then189:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @neigh_release(ptr noundef nonnull %call187)
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.then186.if.end190_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 4
  %and = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool192.not = icmp eq i32 %and, 0
  br i1 %tobool192.not, label %lor.lhs.false193, label %if.end190.if.then202_crit_edge

if.end190.if.then202_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then202

lor.lhs.false193:                                 ; preds = %if.end190
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %120 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp195 = icmp ult i16 %bf.load, 8192
  br i1 %cmp195, label %lor.lhs.false193.if.then202_crit_edge, label %lor.lhs.false197

lor.lhs.false193.if.then202_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then202

lor.lhs.false197:                                 ; preds = %lor.lhs.false193
  %arp_parms = getelementptr inbounds %struct.in_device, ptr %4, i32 0, i32 20
  %121 = ptrtoint ptr %arp_parms to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arp_parms, align 4
  %arrayidx199 = getelementptr %struct.neigh_parms, ptr %122, i32 0, i32 11, i32 11
  %123 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp200 = icmp eq i32 %124, 0
  br i1 %cmp200, label %lor.lhs.false197.if.then202_crit_edge, label %if.else204

lor.lhs.false197.if.then202_crit_edge:            ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then202

if.then202:                                       ; preds = %lor.lhs.false197.if.then202_crit_edge, %lor.lhs.false193.if.then202_crit_edge, %if.end190.if.then202_crit_edge
  %125 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sip, align 4
  %127 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tip, align 4
  %dev_addr203 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %129 = ptrtoint ptr %dev_addr203 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_addr203, align 64
  call fastcc void @arp_send_dst(i32 noundef 2, i32 noundef 2054, i32 noundef %126, ptr noundef %2, i32 noundef %128, ptr noundef %spec.select, ptr noundef %130, ptr noundef %spec.select, ptr noundef %reply_dst.0)
  br label %out_consume_skb

if.else204:                                       ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #16
  call void @pneigh_enqueue(ptr noundef nonnull @arp_tbl, ptr noundef %122, ptr noundef %skb) #14
  br label %out_free_dst

if.end210:                                        ; preds = %land.lhs.true183.if.end210_crit_edge, %lor.lhs.false179.if.end210_crit_edge, %if.else.if.end210_crit_edge, %land.lhs.true134.if.end210_crit_edge, %if.end129.if.end210_crit_edge
  %call.i422 = call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %sip, ptr noundef %2) #14
  %131 = ptrtoint ptr %addr_type to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %addr_type, align 4
  %tobool212.not = icmp eq ptr %call.i422, null
  br i1 %tobool212.not, label %lor.lhs.false213, label %if.end210.if.end227_crit_edge

if.end210.if.end227_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

lor.lhs.false213:                                 ; preds = %if.end210
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %4, align 4
  %nd_net.i425 = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 127
  %134 = ptrtoint ptr %nd_net.i425 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %nd_net.i425, align 4
  %devconf_all217 = getelementptr inbounds %struct.net, ptr %135, i32 0, i32 35, i32 6
  %136 = ptrtoint ptr %devconf_all217 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %devconf_all217, align 4
  %arrayidx219 = getelementptr %struct.ipv4_devconf, ptr %137, i32 0, i32 1, i32 20
  %138 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool220.not = icmp eq i32 %139, 0
  br i1 %tobool220.not, label %lor.lhs.false221, label %lor.lhs.false213.if.end227_crit_edge

lor.lhs.false213.if.end227_crit_edge:             ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

lor.lhs.false221:                                 ; preds = %lor.lhs.false213
  %arrayidx.i426 = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 20
  %140 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i426, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool223.not = icmp eq i32 %141, 0
  br i1 %tobool223.not, label %if.end227.thread, label %lor.lhs.false221.if.end227_crit_edge

lor.lhs.false221.if.end227_crit_edge:             ; preds = %lor.lhs.false221
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end227

if.end227:                                        ; preds = %lor.lhs.false221.if.end227_crit_edge, %lor.lhs.false213.if.end227_crit_edge, %if.end210.if.end227_crit_edge
  %142 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %ar_op, align 2
  %144 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sip, align 4
  %146 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tip, align 4
  %call226 = call fastcc zeroext i1 @arp_is_garp(ptr noundef %net, ptr noundef %2, ptr noundef nonnull %addr_type, i16 noundef zeroext %143, i32 noundef %145, i32 noundef %147, ptr noundef %spec.select, ptr noundef %spec.select457)
  %148 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %4, align 4
  %nd_net.i427 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 127
  %150 = ptrtoint ptr %nd_net.i427 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %nd_net.i427, align 4
  %devconf_all231 = getelementptr inbounds %struct.net, ptr %151, i32 0, i32 35, i32 6
  %152 = ptrtoint ptr %devconf_all231 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %devconf_all231, align 4
  %arrayidx233 = getelementptr %struct.ipv4_devconf, ptr %153, i32 0, i32 1, i32 20
  %154 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool234.not = icmp eq i32 %155, 0
  br i1 %tobool234.not, label %if.end227.lor.lhs.false235_crit_edge, label %if.then238

if.end227.lor.lhs.false235_crit_edge:             ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false235

if.end227.thread:                                 ; preds = %lor.lhs.false221
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %4, align 4
  %nd_net.i427435 = getelementptr inbounds %struct.net_device, ptr %157, i32 0, i32 127
  %158 = ptrtoint ptr %nd_net.i427435 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %nd_net.i427435, align 4
  %devconf_all231436 = getelementptr inbounds %struct.net, ptr %159, i32 0, i32 35, i32 6
  %160 = ptrtoint ptr %devconf_all231436 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %devconf_all231436, align 4
  %arrayidx233437 = getelementptr %struct.ipv4_devconf, ptr %161, i32 0, i32 1, i32 20
  %162 = ptrtoint ptr %arrayidx233437 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx233437, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool234.not438 = icmp eq i32 %163, 0
  br i1 %tobool234.not438, label %if.end227.thread.lor.lhs.false235_crit_edge, label %if.end227.thread.lor.lhs.false243_crit_edge

if.end227.thread.lor.lhs.false243_crit_edge:      ; preds = %if.end227.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false243

if.end227.thread.lor.lhs.false235_crit_edge:      ; preds = %if.end227.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %if.end227.thread.lor.lhs.false235_crit_edge, %if.end227.lor.lhs.false235_crit_edge
  %is_garp.0.off0441 = phi i1 [ false, %if.end227.thread.lor.lhs.false235_crit_edge ], [ %call226, %if.end227.lor.lhs.false235_crit_edge ]
  %arrayidx.i428 = getelementptr %struct.in_device, ptr %4, i32 0, i32 21, i32 1, i32 20
  %164 = ptrtoint ptr %arrayidx.i428 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool237.not = icmp eq i32 %165, 0
  %tobool212.not.not = xor i1 %tobool212.not, true
  %brmerge = select i1 %tobool237.not, i1 true, i1 %tobool212.not.not
  br i1 %brmerge, label %lor.lhs.false235.if.end261_crit_edge, label %lor.lhs.false235.land.lhs.true240_crit_edge

lor.lhs.false235.land.lhs.true240_crit_edge:      ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true240

lor.lhs.false235.if.end261_crit_edge:             ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end261

if.then238:                                       ; preds = %if.end227
  br i1 %tobool212.not, label %if.then238.land.lhs.true240_crit_edge, label %if.then238.if.then263_crit_edge

if.then238.if.then263_crit_edge:                  ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then263

if.then238.land.lhs.true240_crit_edge:            ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true240

land.lhs.true240:                                 ; preds = %if.then238.land.lhs.true240_crit_edge, %lor.lhs.false235.land.lhs.true240_crit_edge
  %is_garp.0.off0439 = phi i1 [ %is_garp.0.off0441, %lor.lhs.false235.land.lhs.true240_crit_edge ], [ %call226, %if.then238.land.lhs.true240_crit_edge ]
  br i1 %is_garp.0.off0439, label %land.lhs.true240.if.then258_crit_edge, label %land.lhs.true240.lor.lhs.false243_crit_edge

land.lhs.true240.lor.lhs.false243_crit_edge:      ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false243

land.lhs.true240.if.then258_crit_edge:            ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258

lor.lhs.false243:                                 ; preds = %land.lhs.true240.lor.lhs.false243_crit_edge, %if.end227.thread.lor.lhs.false243_crit_edge
  %166 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %167)
  %cmp246 = icmp eq i16 %167, 2
  br i1 %cmp246, label %land.lhs.true248, label %lor.lhs.false243.out_consume_skb_crit_edge

lor.lhs.false243.out_consume_skb_crit_edge:       ; preds = %lor.lhs.false243
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true248:                                 ; preds = %lor.lhs.false243
  %168 = ptrtoint ptr %addr_type to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %addr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %169)
  %cmp249 = icmp eq i32 %169, 1
  br i1 %cmp249, label %land.lhs.true248.if.then258_crit_edge, label %lor.lhs.false251

land.lhs.true248.if.then258_crit_edge:            ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258

lor.lhs.false251:                                 ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp252 = icmp slt i32 %169, 0
  br i1 %cmp252, label %land.lhs.true254, label %lor.lhs.false251.out_consume_skb_crit_edge

lor.lhs.false251.out_consume_skb_crit_edge:       ; preds = %lor.lhs.false251
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true254:                                 ; preds = %lor.lhs.false251
  %170 = ptrtoint ptr %sip to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sip, align 4
  %call255 = call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef %2, i32 noundef %171) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call255)
  %cmp256 = icmp eq i32 %call255, 1
  br i1 %cmp256, label %land.lhs.true254.if.then258_crit_edge, label %land.lhs.true254.out_consume_skb_crit_edge

land.lhs.true254.out_consume_skb_crit_edge:       ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

land.lhs.true254.if.then258_crit_edge:            ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then258

if.then258:                                       ; preds = %land.lhs.true254.if.then258_crit_edge, %land.lhs.true248.if.then258_crit_edge, %land.lhs.true240.if.then258_crit_edge
  %is_garp.0.off0439446 = phi i1 [ false, %land.lhs.true254.if.then258_crit_edge ], [ false, %land.lhs.true248.if.then258_crit_edge ], [ true, %land.lhs.true240.if.then258_crit_edge ]
  %call259 = call fastcc ptr @__neigh_lookup(ptr noundef nonnull %sip, ptr noundef %2, i32 noundef 1)
  br label %if.end261

if.end261:                                        ; preds = %if.then258, %lor.lhs.false235.if.end261_crit_edge
  %is_garp.0.off0442 = phi i1 [ %is_garp.0.off0439446, %if.then258 ], [ %is_garp.0.off0441, %lor.lhs.false235.if.end261_crit_edge ]
  %n.0 = phi ptr [ %call259, %if.then258 ], [ %call.i422, %lor.lhs.false235.if.end261_crit_edge ]
  %tobool262.not = icmp eq ptr %n.0, null
  br i1 %tobool262.not, label %if.end261.out_consume_skb_crit_edge, label %if.end261.if.then263_crit_edge

if.end261.if.then263_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then263

if.end261.out_consume_skb_crit_edge:              ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_consume_skb

if.then263:                                       ; preds = %if.end261.if.then263_crit_edge, %if.then238.if.then263_crit_edge
  %n.0455 = phi ptr [ %n.0, %if.end261.if.then263_crit_edge ], [ %call.i422, %if.then238.if.then263_crit_edge ]
  %is_garp.0.off0442454 = phi i1 [ %is_garp.0.off0442, %if.end261.if.then263_crit_edge ], [ %call226, %if.then238.if.then263_crit_edge ]
  %updated = getelementptr inbounds %struct.neighbour, ptr %n.0455, i32 0, i32 4
  %172 = ptrtoint ptr %updated to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %updated, align 8
  %parms = getelementptr inbounds %struct.neighbour, ptr %n.0455, i32 0, i32 2
  %174 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %parms, align 8
  %arrayidx265 = getelementptr %struct.neigh_parms, ptr %175, i32 0, i32 11, i32 12
  %176 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx265, align 4
  %add = add i32 %177, %173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp266 = icmp slt i32 %sub, 0
  %spec.select412 = select i1 %cmp266, i1 true, i1 %is_garp.0.off0442454
  %179 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %ar_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %180)
  %cmp272.not = icmp eq i16 %180, 2
  br i1 %cmp272.not, label %lor.lhs.false274, label %if.then263.if.then282_crit_edge

if.then263.if.then282_crit_edge:                  ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then282

lor.lhs.false274:                                 ; preds = %if.then263
  %pkt_type275 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %181 = ptrtoint ptr %pkt_type275 to i32
  call void @__asan_load2_noabort(i32 %181)
  %bf.load276 = load i16, ptr %pkt_type275, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load276)
  %cmp280.not = icmp ult i16 %bf.load276, 8192
  br i1 %cmp280.not, label %lor.lhs.false274.if.end283_crit_edge, label %lor.lhs.false274.if.then282_crit_edge

lor.lhs.false274.if.then282_crit_edge:            ; preds = %lor.lhs.false274
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then282

lor.lhs.false274.if.end283_crit_edge:             ; preds = %lor.lhs.false274
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end283

if.then282:                                       ; preds = %lor.lhs.false274.if.then282_crit_edge, %if.then263.if.then282_crit_edge
  br label %if.end283

if.end283:                                        ; preds = %if.then282, %lor.lhs.false274.if.end283_crit_edge
  %state.0 = phi i8 [ 4, %if.then282 ], [ 2, %lor.lhs.false274.if.end283_crit_edge ]
  %cond = zext i1 %spec.select412 to i32
  %call286 = call i32 @neigh_update(ptr noundef nonnull %n.0455, ptr noundef %spec.select, i8 noundef zeroext %state.0, i32 noundef %cond, i32 noundef 0) #14
  call fastcc void @neigh_release(ptr noundef nonnull %n.0455)
  br label %out_consume_skb

out_consume_skb:                                  ; preds = %if.end283, %if.end261.out_consume_skb_crit_edge, %land.lhs.true254.out_consume_skb_crit_edge, %lor.lhs.false251.out_consume_skb_crit_edge, %lor.lhs.false243.out_consume_skb_crit_edge, %if.then202, %if.then164, %if.then161.out_consume_skb_crit_edge, %if.then157.out_consume_skb_crit_edge, %if.then143.out_consume_skb_crit_edge, %if.then127, %land.lhs.true124.out_consume_skb_crit_edge, %land.lhs.true120.out_consume_skb_crit_edge, %if.then115.out_consume_skb_crit_edge
  call void @consume_skb(ptr noundef %skb) #14
  br label %out_free_dst

out_free_dst:                                     ; preds = %out_consume_skb, %if.else204
  call void @dst_release(ptr noundef %reply_dst.0) #14
  br label %cleanup

out_free_skb:                                     ; preds = %lor.lhs.false92.out_free_skb_crit_edge, %land.lhs.true84.out_free_skb_crit_edge, %lor.lhs.false74.out_free_skb_crit_edge, %if.end58.out_free_skb_crit_edge, %sw.epilog.out_free_skb_crit_edge, %lor.lhs.false42.out_free_skb_crit_edge, %sw.bb37.out_free_skb_crit_edge, %lor.lhs.false30.out_free_skb_crit_edge, %sw.bb25.out_free_skb_crit_edge, %lor.lhs.false18.out_free_skb_crit_edge, %sw.bb.out_free_skb_crit_edge, %lor.lhs.false.out_free_skb_crit_edge, %sw.default.out_free_skb_crit_edge, %__in_dev_get_rcu.exit.out_free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_skb, %out_free_dst
  %retval.0 = phi i32 [ 1, %out_free_skb ], [ 0, %out_free_dst ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tip) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sip) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_metadata_dst(ptr nocapture noundef readonly %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !101

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end_crit_edge, label %land.lhs.true

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %skb_dst.exit
  %5 = inttoptr i32 %and25.i to ptr
  %flags = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not = icmp eq i16 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end ], [ %5, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iptunnel_metadata_reply(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_ignore(ptr noundef %in_dev, i32 noundef %sip, i32 noundef %tip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 6
  %4 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %5, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx.i = getelementptr %struct.in_device, ptr %in_dev, i32 0, i32 21, i32 1, i32 18
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 %9)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb8
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %entry.sw.epilog_crit_edge
  %sip.addr.0 = phi i32 [ 0, %sw.bb6 ], [ %sip, %sw.bb5 ], [ 0, %entry.sw.epilog_crit_edge ]
  %in_dev.addr.0 = phi ptr [ null, %sw.bb6 ], [ %in_dev, %sw.bb5 ], [ %in_dev, %entry.sw.epilog_crit_edge ]
  %scope.0 = phi i32 [ 253, %sw.bb6 ], [ 254, %sw.bb5 ], [ 254, %entry.sw.epilog_crit_edge ]
  %call9 = tail call i32 @inet_confirm_addr(ptr noundef %3, ptr noundef %in_dev.addr.0, i32 noundef %sip.addr.0, i32 noundef %tip, i32 noundef %scope.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb8 ], [ %lnot.ext, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_rtable(ptr nocapture noundef readonly %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !101

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_filter(i32 noundef %sip, i32 noundef %tip, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %dev) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #14
  %2 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %3 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %fl4.i, align 8
  %saddr1.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %4 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tip, ptr %saddr1.i, align 8
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %5 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sip, ptr %daddr2.i, align 4
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %1, ptr noundef nonnull %fl4.i, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i.i, align 4
  %cmp.not = icmp eq ptr %7, %dev
  br i1 %cmp.not, label %if.end.if.end20_crit_edge, label %if.then5

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %net_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 3
  %8 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %arrayidx to i32
  %11 = call i32 @llvm.read_register.i32(metadata !87) #14
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add15 = add i32 %19, 1
  store i32 %add15, ptr %17, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then5, %if.end.if.end20_crit_edge
  %flag.0 = phi i32 [ 1, %if.then5 ], [ 0, %if.end.if.end20_crit_edge ]
  call void @dst_release(ptr noundef %call.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %flag.0, %if.end20 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_event_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %neigh) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !99
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !103

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !110
  tail call void @neigh_destroy(ptr noundef %neigh) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_fwd_proxy(ptr nocapture noundef readonly %in_dev, ptr noundef readnone %dev, ptr nocapture noundef readonly %rt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %in_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 6
  %6 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %7, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i = getelementptr %struct.in_device, ptr %in_dev, i32 0, i32 21, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %arrayidx.i32 = getelementptr %struct.in_device, ptr %in_dev, i32 0, i32 21, i32 1, i32 13
  %12 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i32, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %13, label %if.end13 [
    i32 0, label %if.end6.cleanup_crit_edge
    i32 -1, label %if.then12
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %15 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end13.__in_dev_get_rcu.exit_crit_edge

if.end13.__in_dev_get_rcu.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 232, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.end13.__in_dev_get_rcu.exit_crit_edge
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %__in_dev_get_rcu.exit.if.end20_crit_edge, label %if.then18

__in_dev_get_rcu.exit.if.end20_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i33 = getelementptr %struct.in_device, ptr %16, i32 0, i32 21, i32 1, i32 13
  %17 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i33, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %__in_dev_get_rcu.exit.if.end20_crit_edge
  %omi.0 = phi i32 [ %18, %if.then18 ], [ -1, %__in_dev_get_rcu.exit.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %omi.0, i32 %13)
  %cmp21.not = icmp ne i32 %omi.0, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %omi.0)
  %cmp22 = icmp ne i32 %omi.0, -1
  %narrow = and i1 %cmp21.not, %cmp22
  %19 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then12, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %19, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pneigh_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__neigh_lookup(ptr noundef %pkey, ptr noundef %dev, i32 noundef %creat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %pkey, ptr noundef %dev) #14
  %tobool.not = icmp ne ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %creat)
  %tobool1.not = icmp eq i32 %creat, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef %pkey, ptr noundef %dev, i1 noundef zeroext true) #14
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @arp_is_garp(ptr noundef %net, ptr noundef %dev, ptr nocapture noundef writeonly %addr_type, i16 noundef zeroext %ar_op, i32 noundef %sip, i32 noundef %tip, ptr nocapture noundef readonly %sha, ptr noundef readonly %tha) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %tip, i32 %sip)
  %cmp = icmp eq i32 %tip, %sip
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %ar_op)
  %cmp1 = icmp eq i16 %ar_op, 2
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %tha, null
  br i1 %tobool3.not, label %if.then.if.end14_crit_edge, label %land.rhs

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.rhs:                                         ; preds = %if.then
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  %conv4 = zext i8 %1 to i32
  %bcmp = tail call i32 @bcmp(ptr nonnull %tha, ptr %sha, i32 %conv4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %land.rhs.if.then8_crit_edge, label %land.rhs.if.end14_crit_edge

land.rhs.if.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.rhs.if.then8_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end.if.then8_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %land.rhs.if.then8_crit_edge
  %call9 = tail call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef %dev, i32 noundef %sip) #14
  %2 = ptrtoint ptr %addr_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call9, ptr %addr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 1
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge, %land.rhs.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %is_garp.1.shrunk = phi i1 [ false, %if.end.if.end14_crit_edge ], [ %cmp10.not, %if.then8 ], [ false, %land.rhs.if.end14_crit_edge ], [ false, %if.then.if.end14_crit_edge ]
  ret i1 %is_garp.1.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_update(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_confirm_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pneigh_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arp_req_set_proxy(ptr nocapture noundef readonly %net, ptr noundef readonly %dev, i32 noundef %on) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %devconf_all = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 6
  %0 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %1, i32 0, i32 1, i32 2
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %if.end.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.__in_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.23) #14
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %2 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip_ptr.i, align 32
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %__in_dev_get_rtnl.exit.return_crit_edge, label %if.then2

__in_dev_get_rtnl.exit.return_crit_edge:          ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then2:                                         ; preds = %__in_dev_get_rtnl.exit
  %call.i8 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i8, label %if.then2.__in_dev_get_rtnl.exit16_crit_edge, label %land.lhs.true.i11

if.then2.__in_dev_get_rtnl.exit16_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit16

land.lhs.true.i11:                                ; preds = %if.then2
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.__in_dev_get_rtnl.exit16_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.__in_dev_get_rtnl.exit16_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit16

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.__in_dev_get_rtnl.exit16_crit_edge, label %if.then.i14

land.lhs.true2.i13.__in_dev_get_rtnl.exit16_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit16

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.23) #14
  br label %__in_dev_get_rtnl.exit16

__in_dev_get_rtnl.exit16:                         ; preds = %if.then.i14, %land.lhs.true2.i13.__in_dev_get_rtnl.exit16_crit_edge, %land.lhs.true.i11.__in_dev_get_rtnl.exit16_crit_edge, %if.then2.__in_dev_get_rtnl.exit16_crit_edge
  %4 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip_ptr.i, align 32
  %state.i = getelementptr inbounds %struct.in_device, ptr %5, i32 0, i32 21, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #14
  %arrayidx.i = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 2
  br label %return.sink.split

return.sink.split:                                ; preds = %__in_dev_get_rtnl.exit16, %if.then
  %arrayidx.i.sink = phi ptr [ %arrayidx.i, %__in_dev_get_rtnl.exit16 ], [ %arrayidx, %if.then ]
  %6 = ptrtoint ptr %arrayidx.i.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %on, ptr %arrayidx.i.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %__in_dev_get_rtnl.exit.return_crit_edge
  %retval.0 = phi i32 [ -6, %__in_dev_get_rtnl.exit.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @neigh_remove_one(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_getbyhwaddr_rcu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.consumeskb_crit_edge

entry.consumeskb_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %consumeskb

lor.lhs.false:                                    ; preds = %entry
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  %trunc = trunc i16 %bf.lshr to i3
  %3 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.41)
  switch i3 %trunc, label %if.end [
    i3 3, label %lor.lhs.false.consumeskb_crit_edge
    i3 -3, label %lor.lhs.false.consumeskb_crit_edge56
  ]

lor.lhs.false.consumeskb_crit_edge56:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %consumeskb

lor.lhs.false.consumeskb_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %consumeskb

if.end:                                           ; preds = %lor.lhs.false
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread49, !prof !101

skb_share_check.exit.thread49:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %if.end12

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end
  %tobool10.not = icmp eq ptr %skb, null
  br i1 %tobool10.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end12_crit_edge

skb_share_check.exit.if.end12_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %skb_share_check.exit.if.end12_crit_edge, %skb_share_check.exit.thread49
  %skb.addr.0.i52 = phi ptr [ %call7.i, %skb_share_check.exit.thread49 ], [ %skb, %skb_share_check.exit.if.end12_crit_edge ]
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %7)
  %cond.i = icmp ne i16 %7, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %9 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i = add nuw nsw i32 %retval.0.in.i, 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %retval.0.i, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.if.end16_crit_edge, !prof !101

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i)
  %cmp3.i = icmp ult i32 %11, %retval.0.i
  br i1 %cmp3.i, label %if.end.i.freeskb_crit_edge, label %pskb_may_pull.exit, !prof !101

if.end.i.freeskb_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %freeskb

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %retval.0.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i52, i32 noundef %sub.i) #14
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.freeskb_crit_edge, label %pskb_may_pull.exit.if.end16_crit_edge

pskb_may_pull.exit.if.end16_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

pskb_may_pull.exit.freeskb_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %freeskb

if.end16:                                         ; preds = %pskb_may_pull.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ar_hln, align 2
  %20 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr_len.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp20.not = icmp eq i8 %19, %21
  br i1 %cmp20.not, label %lor.lhs.false22, label %if.end16.freeskb_crit_edge

if.end16.freeskb_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %freeskb

lor.lhs.false22:                                  ; preds = %if.end16
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp24.not = icmp eq i8 %23, 4
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false22.freeskb_crit_edge

lor.lhs.false22.freeskb_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #16
  br label %freeskb

if.end27:                                         ; preds = %lor.lhs.false22
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i52, i32 0, i32 3
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %cb, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 0, ptr noundef %26, ptr noundef nonnull %skb.addr.0.i52, ptr noundef %dev, ptr noundef null, ptr noundef nonnull @arp_process) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @arp_process(ptr noundef %26, ptr noundef null, ptr noundef nonnull %skb.addr.0.i52) #14, !callees !120
  br label %cleanup

consumeskb:                                       ; preds = %lor.lhs.false.consumeskb_crit_edge, %lor.lhs.false.consumeskb_crit_edge56, %entry.consumeskb_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #14
  br label %cleanup

freeskb:                                          ; preds = %lor.lhs.false22.freeskb_crit_edge, %if.end16.freeskb_crit_edge, %pskb_may_pull.exit.freeskb_crit_edge, %if.end.i.freeskb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i52, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %freeskb, %consumeskb, %if.then.i, %if.end27.cleanup_crit_edge, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ 0, %consumeskb ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %freeskb ], [ 1, %skb_share_check.exit.thread ], [ %call1.i, %if.then.i ], [ %call.i, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_net_init(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @arp_seq_ops, i32 noundef 28, ptr noundef null) #14
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_net_exit(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arp_seq_start(ptr noundef %seq, ptr noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @neigh_seq_start(ptr noundef %seq, ptr noundef %pos, ptr noundef nonnull @arp_tbl, i32 noundef 4) #14
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_seq_stop(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_next(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %hbuffer.i = alloca [30 x i8], align 1
  %tbuf.i9 = alloca [16 x i8], align 1
  %tbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.24) #14
  br label %if.end3

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.neigh_seq_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else2, label %if.then1

if.then1:                                         ; preds = %if.else
  %dev1.i = getelementptr inbounds %struct.pneigh_entry, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then1.arp_format_pneigh_entry.exit_crit_edge, label %cond.true.i

if.then1.arp_format_pneigh_entry.exit_crit_edge:  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_format_pneigh_entry.exit

cond.true.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %type.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 16
  %conv.i = zext i16 %7 to i32
  br label %arp_format_pneigh_entry.exit

arp_format_pneigh_entry.exit:                     ; preds = %cond.true.i, %if.then1.arp_format_pneigh_entry.exit_crit_edge
  %spec.select.i = phi ptr [ @.str.28, %if.then1.arp_format_pneigh_entry.exit_crit_edge ], [ %5, %cond.true.i ]
  %cond.i = phi i32 [ 0, %if.then1.arp_format_pneigh_entry.exit_crit_edge ], [ %conv.i, %cond.true.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf.i) #14
  %key.i = getelementptr inbounds %struct.pneigh_entry, ptr %v, i32 0, i32 6
  %8 = call ptr @memset(ptr %tbuf.i, i32 255, i32 16)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tbuf.i, ptr noundef nonnull @.str.25, ptr noundef %key.i) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, ptr noundef nonnull %tbuf.i, i32 noundef %cond.i, i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef nonnull %spec.select.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf.i) #14
  br label %if.end3

if.else2:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %hbuffer.i) #14
  %9 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 1
  %10 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 2
  %11 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 3
  %12 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 4
  %13 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 5
  %14 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 6
  %15 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 7
  %16 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 8
  %17 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 9
  %18 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 10
  %19 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 11
  %20 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 12
  %21 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 13
  %22 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 14
  %23 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 15
  %24 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 16
  %25 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 17
  %26 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 18
  %27 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 19
  %28 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 20
  %29 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 21
  %30 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 22
  %31 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 23
  %32 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 24
  %33 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 25
  %34 = getelementptr inbounds [30 x i8], ptr %hbuffer.i, i32 0, i32 26
  %35 = call ptr @memset(ptr %hbuffer.i, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf.i9) #14
  %dev1.i10 = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 25
  %36 = call ptr @memset(ptr %tbuf.i9, i32 255, i32 16)
  %37 = ptrtoint ptr %dev1.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i10, align 4
  %type.i11 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %type.i11 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %type.i11, align 16
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %lock.i) #14
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %40, label %for.cond.preheader.i [
    i16 3, label %if.else2.if.then.i_crit_edge
    i16 0, label %if.else2.if.then.i_crit_edge15
  ]

if.else2.if.then.i_crit_edge15:                   ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.else2.if.then.i_crit_edge:                     ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.cond.preheader.i:                             ; preds = %if.else2
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 56
  %42 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp9.not.i = icmp eq i8 %43, 0
  br i1 %cmp9.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then.i:                                        ; preds = %if.else2.if.then.i_crit_edge, %if.else2.if.then.i_crit_edge15
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 18
  %44 = ptrtoint ptr %ha.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ha.i, align 1
  %46 = lshr i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %46)
  %cmp3.not.i.i = icmp eq i8 %46, 32
  br i1 %cmp3.not.i.i, label %if.then.i.for.inc.i.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %hbuffer.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %hbuffer.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %if.then.i.for.inc.i.i_crit_edge
  %s.1.i.i = phi ptr [ %9, %if.then.i.i ], [ %hbuffer.i, %if.then.i.for.inc.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.1.i.i, align 1
  %50 = lshr i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %50)
  %cmp3.not.1.i.i = icmp eq i8 %50, 32
  br i1 %cmp3.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.1.i.i = getelementptr i8, ptr %s.1.i.i, i32 1
  %51 = ptrtoint ptr %s.1.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %s.1.i.i, align 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %s.1.1.i.i = phi ptr [ %incdec.ptr.1.i.i, %if.then.1.i.i ], [ %s.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 2
  %52 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.2.i.i, align 1
  %54 = lshr i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %54)
  %cmp3.not.2.i.i = icmp eq i8 %54, 32
  br i1 %cmp3.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.2.i.i = getelementptr i8, ptr %s.1.1.i.i, i32 1
  %55 = ptrtoint ptr %s.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %s.1.1.i.i, align 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %s.1.2.i.i = phi ptr [ %incdec.ptr.2.i.i, %if.then.2.i.i ], [ %s.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %arrayidx.3.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 3
  %56 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.3.i.i, align 1
  %58 = lshr i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %58)
  %cmp3.not.3.i.i = icmp eq i8 %58, 32
  br i1 %cmp3.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.3.i.i = getelementptr i8, ptr %s.1.2.i.i, i32 1
  %59 = ptrtoint ptr %s.1.2.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %s.1.2.i.i, align 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %s.1.3.i.i = phi ptr [ %incdec.ptr.3.i.i, %if.then.3.i.i ], [ %s.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %arrayidx.4.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 4
  %60 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.4.i.i, align 1
  %62 = lshr i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %62)
  %cmp3.not.4.i.i = icmp eq i8 %62, 32
  br i1 %cmp3.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.then.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4.i.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.4.i.i = getelementptr i8, ptr %s.1.3.i.i, i32 1
  %63 = ptrtoint ptr %s.1.3.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %s.1.3.i.i, align 1
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %s.1.4.i.i = phi ptr [ %incdec.ptr.4.i.i, %if.then.4.i.i ], [ %s.1.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %arrayidx.5.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 5
  %64 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.5.i.i, align 1
  %66 = lshr i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %66)
  %cmp3.not.5.i.i = icmp eq i8 %66, 32
  br i1 %cmp3.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.then.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5.i.i

if.then.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.5.i.i = getelementptr i8, ptr %s.1.4.i.i, i32 1
  %67 = ptrtoint ptr %s.1.4.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %s.1.4.i.i, align 1
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %s.1.5.i.i = phi ptr [ %incdec.ptr.5.i.i, %if.then.5.i.i ], [ %s.1.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %incdec.ptr5.i.i = getelementptr i8, ptr %s.1.5.i.i, i32 1
  %68 = ptrtoint ptr %s.1.5.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 45, ptr %s.1.5.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 6
  %69 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx7.i.i, align 1
  %71 = lshr i8 %70, 1
  %72 = and i8 %71, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %72)
  %cmp11.i.i = icmp ugt i8 %72, 9
  br i1 %cmp11.i.i, label %if.then13.i.i, label %for.inc.5.i.i.if.end15.i.i_crit_edge

for.inc.5.i.i.if.end15.i.i_crit_edge:             ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr14.i.i = getelementptr i8, ptr %s.1.5.i.i, i32 2
  %73 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 49, ptr %incdec.ptr5.i.i, align 1
  %sub.i.i = add nsw i8 %72, -10
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %for.inc.5.i.i.if.end15.i.i_crit_edge
  %s.2.i.i = phi ptr [ %incdec.ptr14.i.i, %if.then13.i.i ], [ %incdec.ptr5.i.i, %for.inc.5.i.i.if.end15.i.i_crit_edge ]
  %n.1.i.i = phi i8 [ %sub.i.i, %if.then13.i.i ], [ %72, %for.inc.5.i.i.if.end15.i.i_crit_edge ]
  %add.i.i = add nuw nsw i8 %n.1.i.i, 48
  %incdec.ptr17.i.i = getelementptr i8, ptr %s.2.i.i, i32 1
  %74 = ptrtoint ptr %s.2.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %add.i.i, ptr %s.2.i.i, align 1
  %75 = ptrtoint ptr %incdec.ptr17.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %incdec.ptr17.i.i, align 1
  %76 = ptrtoint ptr %hbuffer.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hbuffer.i, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %77, label %if.end15.i.i.arp_format_neigh_entry.exit_crit_edge [
    i8 0, label %if.end15.i.i.if.then25.i.i_crit_edge
    i8 45, label %if.end15.i.i.if.then25.i.i_crit_edge16
  ]

if.end15.i.i.if.then25.i.i_crit_edge16:           ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

if.end15.i.i.if.then25.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25.i.i

if.end15.i.i.arp_format_neigh_entry.exit_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arp_format_neigh_entry.exit

if.then25.i.i:                                    ; preds = %if.end15.i.i.if.then25.i.i_crit_edge, %if.end15.i.i.if.then25.i.i_crit_edge16
  %79 = ptrtoint ptr %hbuffer.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 42, ptr %hbuffer.i, align 1
  br label %if.end29.sink.split.i

for.body.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 0
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i, align 1
  %82 = lshr i8 %81, 4
  %83 = zext i8 %82 to i32
  %arrayidx13.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx13.i, align 1
  %86 = ptrtoint ptr %hbuffer.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %hbuffer.i, align 1
  %87 = and i8 %81, 15
  %and18.i = zext i8 %87 to i32
  %arrayidx19.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.i
  %88 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx19.i, align 1
  %90 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %9, align 1
  %91 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 58, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp9.1.i.not = icmp eq i8 %43, 1
  br i1 %cmp9.1.i.not, label %for.body.i.for.end.i_crit_edge, label %for.body.1.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.1.i:                                     ; preds = %for.body.i
  %arrayidx.1.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 1
  %92 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.1.i, align 1
  %94 = lshr i8 %93, 4
  %95 = zext i8 %94 to i32
  %arrayidx13.1.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx13.1.i, align 1
  %98 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %11, align 1
  %99 = and i8 %93, 15
  %and18.1.i = zext i8 %99 to i32
  %arrayidx19.1.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.1.i
  %100 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx19.1.i, align 1
  %102 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %12, align 1
  %103 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 58, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp9.2.i = icmp ugt i8 %43, 2
  br i1 %cmp9.2.i, label %for.body.2.i, label %for.body.1.i.for.end.i_crit_edge

for.body.1.i.for.end.i_crit_edge:                 ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.2.i:                                     ; preds = %for.body.1.i
  %arrayidx.2.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 2
  %104 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.2.i, align 1
  %106 = lshr i8 %105, 4
  %107 = zext i8 %106 to i32
  %arrayidx13.2.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx13.2.i, align 1
  %110 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %14, align 1
  %111 = and i8 %105, 15
  %and18.2.i = zext i8 %111 to i32
  %arrayidx19.2.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.2.i
  %112 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx19.2.i, align 1
  %114 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %15, align 1
  %115 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 58, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp9.3.i.not = icmp eq i8 %43, 3
  br i1 %cmp9.3.i.not, label %for.body.2.i.for.end.i_crit_edge, label %for.body.3.i

for.body.2.i.for.end.i_crit_edge:                 ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.3.i:                                     ; preds = %for.body.2.i
  %arrayidx.3.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 3
  %116 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.3.i, align 1
  %118 = lshr i8 %117, 4
  %119 = zext i8 %118 to i32
  %arrayidx13.3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx13.3.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx13.3.i, align 1
  %122 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %17, align 1
  %123 = and i8 %117, 15
  %and18.3.i = zext i8 %123 to i32
  %arrayidx19.3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.3.i
  %124 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx19.3.i, align 1
  %126 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %18, align 1
  %127 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 58, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp9.4.i = icmp ugt i8 %43, 4
  br i1 %cmp9.4.i, label %for.body.4.i, label %for.body.3.i.for.end.i_crit_edge

for.body.3.i.for.end.i_crit_edge:                 ; preds = %for.body.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.4.i:                                     ; preds = %for.body.3.i
  %arrayidx.4.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 4
  %128 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.4.i, align 1
  %130 = lshr i8 %129, 4
  %131 = zext i8 %130 to i32
  %arrayidx13.4.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx13.4.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx13.4.i, align 1
  %134 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %20, align 1
  %135 = and i8 %129, 15
  %and18.4.i = zext i8 %135 to i32
  %arrayidx19.4.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.4.i
  %136 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx19.4.i, align 1
  %138 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %21, align 1
  %139 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 58, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %43)
  %cmp9.5.i.not = icmp eq i8 %43, 5
  br i1 %cmp9.5.i.not, label %for.body.4.i.for.end.i_crit_edge, label %for.body.5.i

for.body.4.i.for.end.i_crit_edge:                 ; preds = %for.body.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.5.i:                                     ; preds = %for.body.4.i
  %arrayidx.5.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 5
  %140 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.5.i, align 1
  %142 = lshr i8 %141, 4
  %143 = zext i8 %142 to i32
  %arrayidx13.5.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx13.5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx13.5.i, align 1
  %146 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %23, align 1
  %147 = and i8 %141, 15
  %and18.5.i = zext i8 %147 to i32
  %arrayidx19.5.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.5.i
  %148 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx19.5.i, align 1
  %150 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %24, align 1
  %151 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 58, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %43)
  %cmp9.6.i = icmp ugt i8 %43, 6
  br i1 %cmp9.6.i, label %for.body.6.i, label %for.body.5.i.for.end.i_crit_edge

for.body.5.i.for.end.i_crit_edge:                 ; preds = %for.body.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.6.i:                                     ; preds = %for.body.5.i
  %arrayidx.6.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 6
  %152 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.6.i, align 1
  %154 = lshr i8 %153, 4
  %155 = zext i8 %154 to i32
  %arrayidx13.6.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx13.6.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx13.6.i, align 1
  %158 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %26, align 1
  %159 = and i8 %153, 15
  %and18.6.i = zext i8 %159 to i32
  %arrayidx19.6.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.6.i
  %160 = ptrtoint ptr %arrayidx19.6.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx19.6.i, align 1
  %162 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %27, align 1
  %163 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 58, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %43)
  %cmp9.7.i.not = icmp eq i8 %43, 7
  br i1 %cmp9.7.i.not, label %for.body.6.i.for.end.i_crit_edge, label %for.body.7.i

for.body.6.i.for.end.i_crit_edge:                 ; preds = %for.body.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.7.i:                                     ; preds = %for.body.6.i
  %arrayidx.7.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 7
  %164 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.7.i, align 1
  %166 = lshr i8 %165, 4
  %167 = zext i8 %166 to i32
  %arrayidx13.7.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %167
  %168 = ptrtoint ptr %arrayidx13.7.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx13.7.i, align 1
  %170 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %29, align 1
  %171 = and i8 %165, 15
  %and18.7.i = zext i8 %171 to i32
  %arrayidx19.7.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.7.i
  %172 = ptrtoint ptr %arrayidx19.7.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx19.7.i, align 1
  %174 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %30, align 1
  %175 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 58, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %43)
  %cmp9.8.i = icmp ugt i8 %43, 8
  br i1 %cmp9.8.i, label %for.body.8.i, label %for.body.7.i.for.end.i_crit_edge

for.body.7.i.for.end.i_crit_edge:                 ; preds = %for.body.7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.8.i:                                     ; preds = %for.body.7.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.8.i = getelementptr %struct.neighbour, ptr %v, i32 0, i32 18, i32 8
  %176 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.8.i, align 1
  %178 = lshr i8 %177, 4
  %179 = zext i8 %178 to i32
  %arrayidx13.8.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %179
  %180 = ptrtoint ptr %arrayidx13.8.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx13.8.i, align 1
  %182 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %32, align 1
  %183 = and i8 %177, 15
  %and18.8.i = zext i8 %183 to i32
  %arrayidx19.8.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and18.8.i
  %184 = ptrtoint ptr %arrayidx19.8.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx19.8.i, align 1
  %186 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %33, align 1
  %187 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 58, ptr %34, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.8.i, %for.body.7.i.for.end.i_crit_edge, %for.body.6.i.for.end.i_crit_edge, %for.body.5.i.for.end.i_crit_edge, %for.body.4.i.for.end.i_crit_edge, %for.body.3.i.for.end.i_crit_edge, %for.body.2.i.for.end.i_crit_edge, %for.body.1.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %spec.select.i12 = phi i32 [ 26, %for.body.8.i ], [ 23, %for.body.7.i.for.end.i_crit_edge ], [ 20, %for.body.6.i.for.end.i_crit_edge ], [ 17, %for.body.5.i.for.end.i_crit_edge ], [ 14, %for.body.4.i.for.end.i_crit_edge ], [ 11, %for.body.3.i.for.end.i_crit_edge ], [ 8, %for.body.2.i.for.end.i_crit_edge ], [ 5, %for.body.1.i.for.end.i_crit_edge ], [ 2, %for.body.i.for.end.i_crit_edge ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ]
  %arrayidx28.i = getelementptr [30 x i8], ptr %hbuffer.i, i32 0, i32 %spec.select.i12
  br label %if.end29.sink.split.i

if.end29.sink.split.i:                            ; preds = %for.end.i, %if.then25.i.i
  %.sink.i = phi ptr [ %9, %if.then25.i.i ], [ %arrayidx28.i, %for.end.i ]
  %188 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %.sink.i, align 1
  br label %arp_format_neigh_entry.exit

arp_format_neigh_entry.exit:                      ; preds = %if.end29.sink.split.i, %if.end15.i.i.arp_format_neigh_entry.exit_crit_edge
  %conv.i13 = zext i16 %40 to i32
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 27
  %call.i14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tbuf.i9, ptr noundef nonnull @.str.25, ptr noundef %primary_key.i) #14
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %v, i32 0, i32 12
  %189 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %nud_state.i.i, align 8
  %conv.i.i = zext i8 %190 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %conv.i.i, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %..i.i = select i1 %tobool4.not.i.i, i32 0, i32 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %..i.i, i32 6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, ptr noundef nonnull %tbuf.i9, i32 noundef %conv.i13, i32 noundef %retval.0.i.i, ptr noundef nonnull %hbuffer.i, ptr noundef %38) #14
  call void @_raw_read_unlock(ptr noundef %lock.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf.i9) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %hbuffer.i) #14
  br label %if.end3

if.end3:                                          ; preds = %arp_format_neigh_entry.exit, %arp_format_pneigh_entry.exit, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_seq_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_changeaddr(ptr noundef nonnull @arp_tbl, ptr noundef %1) #14
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  tail call void @rt_cache_flush(ptr noundef %4) #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags_changed = getelementptr inbounds %struct.netdev_notifier_change_info, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %flags_changed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags_changed, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb2.if.end_crit_edge, label %if.then

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_changeaddr(ptr noundef nonnull @arp_tbl, ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2.if.end_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %if.end.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.__in_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.23) #14
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %7 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip_ptr.i, align 32
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %__in_dev_get_rtnl.exit.land.lhs.true_crit_edge, label %if.else

__in_dev_get_rtnl.exit.land.lhs.true_crit_edge:   ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.else:                                          ; preds = %__in_dev_get_rtnl.exit
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %nd_net.i25 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i25, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 35, i32 6
  %13 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %14, i32 0, i32 1, i32 32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %if.else.sw.epilog_crit_edge, label %land.rhs

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.rhs:                                         ; preds = %if.else
  %arrayidx.i = getelementptr %struct.in_device, ptr %8, i32 0, i32 21, i32 1, i32 32
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %land.rhs.sw.epilog_crit_edge, label %land.rhs.land.lhs.true_crit_edge

land.rhs.land.lhs.true_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

land.rhs.sw.epilog_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %land.rhs.land.lhs.true_crit_edge, %__in_dev_get_rtnl.exit.land.lhs.true_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i26 = icmp eq i32 %21, 0
  br i1 %tobool.not.i26, label %land.lhs.true.sw.epilog_crit_edge, label %if.then14

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 @neigh_carrier_down(ptr noundef nonnull @arp_tbl, ptr noundef %1) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %land.lhs.true.sw.epilog_crit_edge, %land.rhs.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_changeaddr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_carrier_down(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/arp.c", i32 161, i32 9}
!2 = !{ptr @arp_tbl, !3, !"arp_tbl", i1 false, i1 false}
!3 = !{!"../net/ipv4/arp.c", i32 152, i32 20}
!4 = !{ptr @__ksymtab_arp_tbl, !5, !"__ksymtab_arp_tbl", i1 false, i1 false}
!5 = !{!"../net/ipv4/arp.c", i32 184, i32 1}
!6 = !{ptr @__ksymtab_arp_send, !7, !"__ksymtab_arp_send", i1 false, i1 false}
!7 = !{!"../net/ipv4/arp.c", i32 330, i32 1}
!8 = !{ptr @__ksymtab_arp_create, !9, !"__ksymtab_arp_create", i1 false, i1 false}
!9 = !{!"../net/ipv4/arp.c", i32 628, i32 1}
!10 = !{ptr @__ksymtab_arp_xmit, !11, !"__ksymtab_arp_xmit", i1 false, i1 false}
!11 = !{!"../net/ipv4/arp.c", i32 645, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @arp_direct_ops, !24, !"arp_direct_ops", i1 false, i1 false}
!24 = !{!"../net/ipv4/arp.c", i32 146, i32 31}
!25 = !{ptr @arp_hh_ops, !26, !"arp_hh_ops", i1 false, i1 false}
!26 = !{!"../net/ipv4/arp.c", i32 138, i32 31}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ipv4/arp.c", i32 378, i32 4}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @arp_solicit.__UNIQUE_ID_ddebug688, !28, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!33 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!36 = !{ptr @arp_generic_ops, !37, !"arp_generic_ops", i1 false, i1 false}
!37 = !{!"../net/ipv4/arp.c", i32 130, i32 31}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/dst.h", i32 231, i32 2}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/ipv4/arp.c", i32 442, i32 3}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!59 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @arp_packet_type, !68, !"arp_packet_type", i1 false, i1 false}
!68 = !{!"../net/ipv4/arp.c", i32 1297, i32 27}
!69 = !{ptr @arp_net_ops, !70, !"arp_net_ops", i1 false, i1 false}
!70 = !{!"../net/ipv4/arp.c", i32 1434, i32 33}
!71 = !{ptr @arp_seq_ops, !72, !"arp_seq_ops", i1 false, i1 false}
!72 = !{!"../net/ipv4/arp.c", i32 1412, i32 36}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/ipv4/arp.c", i32 1388, i32 17}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/ipv4/arp.c", i32 1379, i32 16}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/ipv4/arp.c", i32 1380, i32 18}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/ipv4/arp.c", i32 1381, i32 41}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ipv4/arp.c", i32 1382, i32 24}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ipv4/arp.c", i32 1367, i32 18}
!85 = !{ptr @arp_netdev_notifier, !86, !"arp_netdev_notifier", i1 false, i1 false}
!86 = !{!"../net/ipv4/arp.c", i32 1279, i32 30}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2149390838}
!98 = !{i64 2149391104}
!99 = !{i64 2148464234}
!100 = !{i64 2148378674, i64 2148378706, i64 2148378735, i64 2148378769, i64 2148378800, i64 2148378823}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2148376209, i64 2148376241, i64 2148376270, i64 2148376304, i64 2148376335, i64 2148376358}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2148374098}
!105 = !{i64 859718, i64 859743, i64 859765, i64 859781, i64 859793, i64 859813, i64 859837, i64 859853, i64 859865}
!106 = !{i64 2148374286}
!107 = !{i64 5563444}
!108 = !{i64 5563641}
!109 = !{i64 2153048874}
!110 = !{i64 2149340348}
!111 = !{i64 2148988056, i64 2148988061, i64 2148988074, i64 2148988118, i64 2148988152, i64 2148988173}
!112 = !{i64 778379, i64 778440}
!113 = !{i64 781111}
!114 = !{i64 781396}
!115 = !{i64 2150021258}
!116 = !{i64 2150021100}
!117 = !{i64 2150021428}
!118 = !{i64 2150006505}
!119 = !{!"auto-init"}
!120 = !{ptr @arp_process, ptr @arp_xmit_finish}
