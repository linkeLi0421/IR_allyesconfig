; ModuleID = '/llk/IR_all_yes/net/ipv6/ndisc.c_pt.bc'
source_filename = "../net/ipv6/ndisc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nd_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_nd_tbl\09\09\09\09"
module asm "\09.long\09__crc_nd_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nd_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22nd_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_nd_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__ndisc_fill_addr_option\22, \22a\22\09"
module asm "\09.weak\09__crc___ndisc_fill_addr_option\09\09\09\09"
module asm "\09.long\09__crc___ndisc_fill_addr_option\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ndisc_fill_addr_option:\09\09\09\09\09"
module asm "\09.asciz \09\22__ndisc_fill_addr_option\22\09\09\09\09\09"
module asm "__kstrtabns___ndisc_fill_addr_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndisc_mc_map\22, \22a\22\09"
module asm "\09.weak\09__crc_ndisc_mc_map\09\09\09\09"
module asm "\09.long\09__crc_ndisc_mc_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndisc_mc_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ndisc_mc_map\22\09\09\09\09\09"
module asm "__kstrtabns_ndisc_mc_map:\09\09\09\09\09"
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
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.191 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pneigh_entry = type { ptr, %struct.possible_net_t, ptr, ptr, i32, i8, [0 x i8] }
%struct.ndisc_options = type { [15 x ptr], ptr, ptr, ptr, ptr, [3 x ptr] }
%struct.nd_opt_hdr = type { i8, i8 }
%struct.ndisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
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
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.148, [0 x i32], %union.anon.149, i16, i16, %union.anon.150, %struct.refcount_struct, [0 x i32], %union.anon.151 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { %struct.hlist_node }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.152, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.153, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.154, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.152 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.44 }
%union.anon.44 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.198, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.198 = type { %struct.anon.199 }
%struct.anon.199 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, i32, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.197 }
%union.anon.197 = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.inetpeer_addr = type { %union.anon.201, i16 }
%union.anon.201 = type { %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.neigh_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rs_msg = type { %struct.icmp6hdr, [0 x i8] }
%struct.ra_msg = type { %struct.icmp6hdr, i32, i32 }
%struct.icmpv6_nd_ra = type { i8, i8, i16 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.55, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.55 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.58, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.58 = type { %struct.in6_addr }
%struct.route_info = type { i8, i8, i8, i8, i32, [0 x i8] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.118, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.118 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_notifier_change_info = type { %struct.netdev_notifier_info, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ndisc_cache\00", [20 x i8] zeroinitializer }, align 32
@nd_tbl = dso_local global { %struct.neigh_table, [128 x i8] } { %struct.neigh_table { i32 10, i32 0, i32 16, i16 -31011, ptr @ndisc_hash, ptr @ndisc_key_eq, ptr @ndisc_constructor, ptr @pndisc_constructor, ptr @pndisc_destructor, ptr @pndisc_redo, ptr @ndisc_is_multicast, ptr @ndisc_allow_add, ptr @.str, %struct.neigh_parms { %struct.possible_net_t zeroinitializer, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr @nd_tbl, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.callback_head zeroinitializer, i32 3000, [13 x i32] [i32 3, i32 3, i32 0, i32 0, i32 100, i32 3000, i32 500, i32 6000, i32 196608, i32 64, i32 100, i32 80, i32 0], [1 x i32] zeroinitializer }, %struct.list_head zeroinitializer, i32 3000, i32 128, i32 512, i32 1024, i32 0, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.timer_list zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.rwlock_t zeroinitializer, i32 0, ptr null, ptr null, ptr null }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_nd_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nd_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_nd_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nd_tbl to i32), ptr @__kstrtab_nd_tbl, ptr @__kstrtabns_nd_tbl }, section "___ksymtab_gpl+nd_tbl", align 4
@__kstrtab___ndisc_fill_addr_option = external dso_local constant [0 x i8], align 1
@__kstrtabns___ndisc_fill_addr_option = external dso_local constant [0 x i8], align 1
@__ksymtab___ndisc_fill_addr_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ndisc_fill_addr_option to i32), ptr @__kstrtab___ndisc_fill_addr_option, ptr @__kstrtabns___ndisc_fill_addr_option }, section "___ksymtab_gpl+__ndisc_fill_addr_option", align 4
@__kstrtab_ndisc_mc_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndisc_mc_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ndisc_mc_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndisc_mc_map to i32), ptr @__kstrtab_ndisc_mc_map, ptr @__kstrtabns_ndisc_mc_map }, section "___ksymtab+ndisc_mc_map", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"retrans_time\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"base_reachable_time\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"syscall\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"retrans_time_ms\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"base_reachable_time_ms\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ndisc_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ndisc_net_init, ptr null, ptr @ndisc_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ndisc_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ndisc_netdev_event, ptr null, i32 -5 }, [20 x i8] zeroinitializer }, align 32
@ndisc_direct_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 10, ptr null, ptr null, ptr @neigh_direct_output, ptr @neigh_direct_output }, [44 x i8] zeroinitializer }, align 32
@ndisc_hh_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 10, ptr @ndisc_solicit, ptr @ndisc_error_report, ptr @neigh_resolve_output, ptr @neigh_resolve_output }, [44 x i8] zeroinitializer }, align 32
@ndisc_generic_ops = internal constant { %struct.neigh_ops, [44 x i8] } { %struct.neigh_ops { i32 10, ptr @ndisc_solicit, ptr @ndisc_error_report, ptr @neigh_resolve_output, ptr @neigh_connected_output }, [44 x i8] zeroinitializer }, align 32
@ndisc_solicit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ndisc_solicit\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/ipv6/ndisc.c\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: trying to ucast probe in NUD_INVALID: %pI6\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ICMPv6: %s: trying to ucast probe in NUD_INVALID: %pI6\0A\00", [40 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ndisc_allow_add.__msg = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IPv6 is disabled on this device\00", [32 x i8] zeroinitializer }, align 32
@ndisc_alloc_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ICMPv6: ndisc: %s failed to allocate an skb\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ndisc_alloc_skb\00", [16 x i8] zeroinitializer }, align 32
@ndisc_alloc_skb._entry_ptr = internal global ptr @ndisc_alloc_skb._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ndisc_suppress_frag_ndisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.9, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014ICMPv6: Received fragmented ndisc packet. Carefully consider disabling suppress_frag_ndisc.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ndisc_suppress_frag_ndisc\00", [38 x i8] zeroinitializer }, align 32
@ndisc_suppress_frag_ndisc._entry_ptr = internal global ptr @ndisc_suppress_frag_ndisc._entry, section ".printk_index", align 4
@in6addr_linklocal_allnodes = external dso_local constant %struct.in6_addr, align 4
@ndisc_recv_na._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ICMPv6: NA: %pM advertised our address %pI6c on %s!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ndisc_recv_na\00", [18 x i8] zeroinitializer }, align 32
@ndisc_recv_na._entry_ptr = internal global ptr @ndisc_recv_na._entry, section ".printk_index", align 4
@ndisc_recv_rs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.9, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ICMPv6: RS: can't find in6 device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ndisc_recv_rs\00", [18 x i8] zeroinitializer }, align 32
@ndisc_recv_rs._entry_ptr = internal global ptr @ndisc_recv_rs._entry, section ".printk_index", align 4
@ndisc_router_discovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.9, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ICMPv6: RA: can't find inet6 device for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ndisc_router_discovery\00", [41 x i8] zeroinitializer }, align 32
@ndisc_router_discovery._entry_ptr = internal global ptr @ndisc_router_discovery._entry, section ".printk_index", align 4
@ndisc_router_discovery._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.9, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013ICMPv6: RA: %s got default router without neighbour\0A\00", [41 x i8] zeroinitializer }, align 32
@ndisc_router_discovery._entry_ptr.36 = internal global ptr @ndisc_router_discovery._entry.34, section ".printk_index", align 4
@ndisc_router_discovery._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.9, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ICMPv6: RA: %s failed to add default route\0A\00", [50 x i8] zeroinitializer }, align 32
@ndisc_router_discovery._entry_ptr.39 = internal global ptr @ndisc_router_discovery._entry.37, section ".printk_index", align 4
@ndisc_router_discovery._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.9, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ndisc_router_discovery._entry_ptr.41 = internal global ptr @ndisc_router_discovery._entry.40, section ".printk_index", align 4
@ndisc_warn_deprecated_sysctl.warncomm = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@ndisc_warn_deprecated_sysctl.warned = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ndisc_warn_deprecated_sysctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.9, i32 1859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\014ICMPv6: process `%s' is using deprecated sysctl (%s) net.ipv6.neigh.%s.%s - use net.ipv6.neigh.%s.%s_ms instead\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ndisc_warn_deprecated_sysctl\00", [35 x i8] zeroinitializer }, align 32
@ndisc_warn_deprecated_sysctl._entry_ptr = internal global ptr @ndisc_warn_deprecated_sysctl._entry, section ".printk_index", align 4
@in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ndisc_net_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.9, i32 1914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ICMPv6: NDISC: Failed to initialize the control socket (err %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ndisc_net_init\00", [17 x i8] zeroinitializer }, align 32
@ndisc_net_init._entry_ptr = internal global ptr @ndisc_net_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 14, i64 24, i64 25, i64 31, i64 37, i64 38]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 6, i64 7, i64 32, i64 774, i64 778]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 8, i64 133, i64 134, i64 135, i64 136, i64 137]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 8, i64 25, i64 31, i64 37, i64 38]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 8, i64 25, i64 31, i64 37, i64 38]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 19]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 121, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"nd_tbl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 109, i32 20 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1871, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1872, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1873, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1873, i32 66 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1882, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1883, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"ndisc_net_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1933, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"ndisc_netdev_notifier\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1843, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ndisc_direct_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 103, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"ndisc_hh_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 94, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"ndisc_generic_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 86, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 733, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 313, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 405, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 422, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 229, i32 15 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 723, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1011, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1733, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1021, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1083, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1215, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1300, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1323, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1333, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"warncomm\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1852, i32 14 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"warned\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1853, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1856, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [20 x i8] c"../net/ipv6/ndisc.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1912, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab___ndisc_fill_addr_option, ptr @__ksymtab_nd_tbl, ptr @__ksymtab_ndisc_mc_map, ptr @ndisc_alloc_skb._entry, ptr @ndisc_alloc_skb._entry_ptr, ptr @ndisc_net_init._entry, ptr @ndisc_net_init._entry_ptr, ptr @ndisc_recv_na._entry, ptr @ndisc_recv_na._entry_ptr, ptr @ndisc_recv_rs._entry, ptr @ndisc_recv_rs._entry_ptr, ptr @ndisc_router_discovery._entry, ptr @ndisc_router_discovery._entry.34, ptr @ndisc_router_discovery._entry.37, ptr @ndisc_router_discovery._entry.40, ptr @ndisc_router_discovery._entry_ptr, ptr @ndisc_router_discovery._entry_ptr.36, ptr @ndisc_router_discovery._entry_ptr.39, ptr @ndisc_router_discovery._entry_ptr.41, ptr @ndisc_suppress_frag_ndisc._entry, ptr @ndisc_suppress_frag_ndisc._entry_ptr, ptr @ndisc_warn_deprecated_sysctl._entry, ptr @ndisc_warn_deprecated_sysctl._entry_ptr, ptr @.str, ptr @nd_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ndisc_net_ops, ptr @ndisc_netdev_notifier, ptr @ndisc_direct_ops, ptr @ndisc_hh_ops, ptr @ndisc_generic_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ndisc_allow_add.__msg, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @ndisc_warn_deprecated_sysctl.warncomm, ptr @ndisc_warn_deprecated_sysctl.warned, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nd_tbl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_direct_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_hh_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_generic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_allow_add.__msg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_alloc_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_suppress_frag_ndisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_recv_na._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_recv_rs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_router_discovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_router_discovery._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_router_discovery._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_router_discovery._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_warn_deprecated_sysctl.warncomm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_warn_deprecated_sysctl.warned to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_warn_deprecated_sysctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndisc_net_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndisc_hash(ptr nocapture noundef readonly %pkey, ptr noundef %dev, ptr nocapture noundef readonly %hash_rnd) #0 align 64 {
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
  %arrayidx2.i = getelementptr i32, ptr %pkey, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %hash_rnd, i32 1
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.i, align 4
  %mul4.i = mul i32 %8, %6
  %add.i = add i32 %mul4.i, %mul.i
  %arrayidx5.i = getelementptr i32, ptr %pkey, i32 2
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %hash_rnd, i32 2
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %mul7.i = mul i32 %12, %10
  %add8.i = add i32 %add.i, %mul7.i
  %arrayidx9.i = getelementptr i32, ptr %pkey, i32 3
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %hash_rnd, i32 3
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.i, align 4
  %mul11.i = mul i32 %16, %14
  %add12.i = add i32 %add8.i, %mul11.i
  ret i32 %add12.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ndisc_key_eq(ptr nocapture noundef readonly %n, ptr nocapture noundef readonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 27
  %0 = ptrtoint ptr %primary_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %primary_key.i, align 4
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkey, align 4
  %xor.i = xor i32 %3, %1
  %arrayidx2.i = getelementptr %struct.neighbour, ptr %n, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %pkey, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %xor4.i = xor i32 %7, %5
  %or.i = or i32 %xor4.i, %xor.i
  %arrayidx5.i = getelementptr %struct.neighbour, ptr %n, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %pkey, i32 2
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %11, %9
  %or8.i = or i32 %or.i, %xor7.i
  %arrayidx9.i = getelementptr %struct.neighbour, ptr %n, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %pkey, i32 3
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10.i, align 4
  %xor11.i = xor i32 %15, %13
  %or12.i = or i32 %or8.i, %xor11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i)
  %cmp.i = icmp eq i32 %or12.i, 0
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ndisc_constructor(ptr nocapture noundef %neigh) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %primary_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %3)
  %cmp.i = icmp ugt i32 %3, -16777217
  %call2 = tail call fastcc ptr @in6_dev_get(ptr noundef %1)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_parms = getelementptr inbounds %struct.inet6_dev, ptr %call2, i32 0, i32 31
  %4 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_parms, align 4
  %parms3 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 2
  %6 = ptrtoint ptr %parms3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parms3, align 8
  %refcnt.i = getelementptr inbounds %struct.neigh_parms, ptr %7, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.__neigh_parms_put.exit_crit_edge, !prof !133

if.end.__neigh_parms_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__neigh_parms_put.exit

if.then3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #14
  br label %__neigh_parms_put.exit

__neigh_parms_put.exit:                           ; preds = %if.then3.i.i.i, %if.end.__neigh_parms_put.exit_crit_edge
  %refcnt.i99 = getelementptr inbounds %struct.neigh_parms, ptr %5, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i99, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt.i99, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i99, ptr %refcnt.i99, i32 1, ptr elementtype(i32) %refcnt.i99) #14, !srcloc !134
  %asmresult.i.i.i.i.i.i100 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i100)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i100, 0
  br i1 %tobool1.not.i.i.i.i, label %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !133

__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %__neigh_parms_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__neigh_parms_put.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i100, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %neigh_parms_clone.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %__neigh_parms_put.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i99, i32 noundef %.sink.i.i.i.i) #14
  br label %neigh_parms_clone.exit

neigh_parms_clone.exit:                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.neigh_parms_clone.exit_crit_edge
  %11 = ptrtoint ptr %parms3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %parms3, align 8
  %conv = select i1 %cmp.i, i8 5, i8 1
  %type = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 13
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %type, align 1
  %header_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  %13 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %header_ops, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %neigh_parms_clone.exit
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %15 = ptrtoint ptr %nud_state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %nud_state, align 8
  %ops = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ndisc_direct_ops, ptr %ops, align 8
  br label %if.end59

if.else:                                          ; preds = %neigh_parms_clone.exit
  br i1 %cmp.i, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state11 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %17 = ptrtoint ptr %nud_state11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %nud_state11, align 8
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %call12 = tail call i32 @ndisc_mc_map(ptr noundef %primary_key, ptr noundef %ha, ptr noundef %1, i32 noundef 1)
  br label %if.end39

if.else13:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else26, label %if.then15

if.then15:                                        ; preds = %if.else13
  %nud_state16 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %20 = ptrtoint ptr %nud_state16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %nud_state16, align 8
  %ha17 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %23 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr_len, align 1
  %conv19 = zext i8 %24 to i32
  %25 = call ptr @memcpy(ptr %ha17, ptr %22, i32 %conv19)
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 8
  %and21 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then15.if.end39_crit_edge, label %if.then23

if.then15.if.end39_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %type, align 1
  br label %if.end39

if.else26:                                        ; preds = %if.else13
  %and28 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else26.if.end39_crit_edge, label %if.then30

if.else26.if.end39_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  %nud_state31 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %29 = ptrtoint ptr %nud_state31 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 64, ptr %nud_state31, align 8
  %ha32 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %addr_len35 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %30 = ptrtoint ptr %addr_len35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_len35, align 1
  %conv36 = zext i8 %31 to i32
  %32 = call ptr @memcpy(ptr %ha32, ptr %broadcast, i32 %conv36)
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.else26.if.end39_crit_edge, %if.then23, %if.then15.if.end39_crit_edge, %if.then10
  %33 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header_ops, align 4
  %cache = getelementptr inbounds %struct.header_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache, align 4
  %tobool41.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool41.not, ptr @ndisc_generic_ops, ptr @ndisc_hh_ops
  %37 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 21
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select, ptr %37, align 8
  %nud_state47 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %39 = ptrtoint ptr %nud_state47 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nud_state47, align 8
  %41 = and i8 %40, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool50.not = icmp eq i8 %41, 0
  %42 = select i1 %tobool41.not, ptr @neigh_connected_output, ptr @neigh_resolve_output
  %spec.select106 = select i1 %tobool50.not, ptr @neigh_resolve_output, ptr %42
  br label %if.end59

if.end59:                                         ; preds = %if.end39, %if.then8
  %.sink = phi ptr [ @neigh_direct_output, %if.then8 ], [ %spec.select106, %if.end39 ]
  %output53 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 20
  %43 = ptrtoint ptr %output53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.sink, ptr %output53, align 4
  %refcnt.i101 = getelementptr inbounds %struct.inet6_dev, ptr %call2, i32 0, i32 25
  %call.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i101, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i101, i32 1, i32 3, i32 1) #14
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i101, ptr %refcnt.i101, i32 1, ptr elementtype(i32) %refcnt.i101) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i103 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i103, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i101, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pndisc_constructor(ptr nocapture noundef readonly %n) #1 align 64 {
entry:
  %maddr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.pneigh_entry, ptr %n, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %maddr) #14
  %0 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.pneigh_entry, ptr %n, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 80
  %5 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %lor.lhs.false.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

lor.lhs.false.__in6_dev_get.exit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.__in6_dev_get.exit_crit_edge
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %__in6_dev_get.exit.cleanup_crit_edge, label %if.end

__in6_dev_get.exit.cleanup_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [4 x i32], ptr %key, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %8, -16777216
  %9 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -16646144, ptr %maddr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %2, align 4
  %call3 = call i32 @ipv6_dev_mc_inc(ptr noundef nonnull %4, ptr noundef nonnull %maddr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__in6_dev_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %__in6_dev_get.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %maddr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pndisc_destructor(ptr nocapture noundef readonly %n) #1 align 64 {
entry:
  %maddr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.pneigh_entry, ptr %n, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %maddr) #14
  %0 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %maddr, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.pneigh_entry, ptr %n, i32 0, i32 2
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 80
  %5 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %lor.lhs.false.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

lor.lhs.false.__in6_dev_get.exit_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.__in6_dev_get.exit_crit_edge
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %__in6_dev_get.exit.cleanup_crit_edge, label %if.end

__in6_dev_get.exit.cleanup_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr [4 x i32], ptr %key, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %8, -16777216
  %9 = ptrtoint ptr %maddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -16646144, ptr %maddr, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %2, align 4
  %call3 = call i32 @ipv6_dev_mc_dec(ptr noundef nonnull %4, ptr noundef nonnull %maddr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__in6_dev_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %maddr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pndisc_redo(ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ndisc_recv_ns(ptr noundef %skb)
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ndisc_is_multicast(ptr nocapture noundef readonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1)
  %cmp.i = icmp ugt i32 %1, -16777217
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ndisc_allow_add(ptr noundef %dev, ptr noundef writeonly %extack) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %0 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__in6_dev_get.exit.do.body_crit_edge, label %lor.lhs.false

__in6_dev_get.exit.do.body_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %__in6_dev_get.exit
  %disable_ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 35
  %2 = ptrtoint ptr %disable_ipv6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable_ipv6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %__in6_dev_get.exit.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ndisc_allow_add.__msg) #14
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ndisc_allow_add.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then3 ], [ false, %do.body.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ndisc_fill_addr_option(ptr noundef %skb, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %data_len, i32 noundef %pad) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = and i32 %data_len, 255
  %add.i = add i32 %pad, 9
  %add2.i = add i32 %add.i, %conv.i
  %and.i = and i32 %add2.i, -8
  %call1 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %and.i) #14
  %conv2 = trunc i32 %type to i8
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2, ptr %call1, align 1
  %1 = lshr i32 %add2.i, 3
  %conv3 = trunc i32 %1 to i8
  %arrayidx4 = getelementptr i8, ptr %call1, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %arrayidx4, align 1
  %add.ptr = getelementptr i8, ptr %call1, i32 2
  %3 = call ptr @memset(ptr %add.ptr, i32 0, i32 %pad)
  %add.ptr5 = getelementptr i8, ptr %call1, i32 %pad
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 2
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr %data, i32 %data_len)
  %5 = add i32 %data_len, %pad
  %.neg = sub i32 -2, %5
  %sub8 = add i32 %.neg, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp = icmp sgt i32 %sub8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %data_len, 2
  %add.ptr7 = getelementptr i8, ptr %add.ptr5, i32 %add
  %6 = call ptr @memset(ptr %add.ptr7, i32 0, i32 %sub8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ndisc_parse_options(ptr noundef %dev, ptr noundef %opt, i32 noundef %opt_len, ptr noundef %ndopts) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opt_len)
  %cmp = icmp slt i32 %opt_len, 0
  %or.cond = or i1 %tobool.not, %cmp
  %tobool2.not = icmp eq ptr %ndopts, null
  %or.cond96 = or i1 %or.cond, %tobool2.not
  br i1 %or.cond96, label %entry.cleanup57_crit_edge, label %if.end

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %ndopts, i32 0, i32 88)
  %ndisc_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %nd_opts_ri_end = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 2
  %nd_opts_ri = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 1
  %nd_useropts_end = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 4
  %nd_useropts = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end
  %opt_len.addr.0 = phi i32 [ %opt_len, %if.end ], [ %sub, %cleanup ]
  %nd_opt.0 = phi ptr [ %opt, %if.end ], [ %add.ptr, %cleanup ]
  %1 = zext i32 %opt_len.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opt_len.addr.0, label %if.end6 [
    i32 0, label %cleanup57.loopexit
    i32 1, label %while.cond.cleanup57_crit_edge
  ]

while.cond.cleanup57_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end6:                                          ; preds = %while.cond
  %nd_opt_len = getelementptr inbounds %struct.nd_opt_hdr, ptr %nd_opt.0, i32 0, i32 1
  %2 = ptrtoint ptr %nd_opt_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nd_opt_len, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %opt_len.addr.0, i32 %shl)
  %cmp7 = icmp slt i32 %opt_len.addr.0, %shl
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp10 = icmp eq i8 %3, 0
  %or.cond97 = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond97, label %if.end6.cleanup57_crit_edge, label %if.end13

if.end6.cleanup57_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

if.end13:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %ndisc_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndisc_ops.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end13.if.end16_crit_edge, label %land.lhs.true.i

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.end13
  %parse_options.i = getelementptr inbounds %struct.ndisc_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parse_options.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parse_options.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end16_crit_edge, label %ndisc_ops_parse_options.exit

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

ndisc_ops_parse_options.exit:                     ; preds = %land.lhs.true.i
  %call.i = tail call i32 %7(ptr noundef %dev, ptr noundef %nd_opt.0, ptr noundef %ndopts) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %ndisc_ops_parse_options.exit.if.end16_crit_edge, label %ndisc_ops_parse_options.exit.cleanup_crit_edge

ndisc_ops_parse_options.exit.cleanup_crit_edge:   ; preds = %ndisc_ops_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ndisc_ops_parse_options.exit.if.end16_crit_edge:  ; preds = %ndisc_ops_parse_options.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end16:                                         ; preds = %ndisc_ops_parse_options.exit.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %if.end13.if.end16_crit_edge
  %8 = ptrtoint ptr %nd_opt.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nd_opt.0, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %9, label %lor.rhs.i [
    i8 1, label %if.end16.sw.bb_crit_edge
    i8 2, label %if.end16.sw.bb_crit_edge109
    i8 5, label %if.end16.sw.bb_crit_edge110
    i8 14, label %if.end16.sw.bb_crit_edge111
    i8 4, label %if.end16.sw.bb_crit_edge112
    i8 3, label %sw.bb26
    i8 24, label %sw.bb40
    i8 25, label %if.end16.if.then47_crit_edge
    i8 31, label %if.end16.if.then47_crit_edge113
    i8 37, label %if.end16.if.then47_crit_edge114
    i8 38, label %if.end16.if.then47_crit_edge115
  ]

if.end16.if.then47_crit_edge115:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end16.if.then47_crit_edge114:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end16.if.then47_crit_edge113:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end16.if.then47_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

if.end16.sw.bb_crit_edge112:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end16.sw.bb_crit_edge111:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end16.sw.bb_crit_edge110:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end16.sw.bb_crit_edge109:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge109, %if.end16.sw.bb_crit_edge110, %if.end16.sw.bb_crit_edge111, %if.end16.sw.bb_crit_edge112
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [15 x ptr], ptr %ndopts, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb26:                                          ; preds = %if.end16
  %13 = ptrtoint ptr %ndopts to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %nd_opt.0, ptr %ndopts, align 4
  %14 = ptrtoint ptr %nd_opt.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nd_opt.0, align 1
  %idxprom31 = zext i8 %15 to i32
  %arrayidx32 = getelementptr [15 x ptr], ptr %ndopts, i32 0, i32 %idxprom31
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %sw.bb26.cleanup.sink.split_crit_edge, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb26.cleanup.sink.split_crit_edge:             ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

sw.bb40:                                          ; preds = %if.end16
  %18 = ptrtoint ptr %nd_opts_ri_end to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %nd_opt.0, ptr %nd_opts_ri_end, align 4
  %19 = ptrtoint ptr %nd_opts_ri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_opts_ri, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %sw.bb40.cleanup.sink.split_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb40.cleanup.sink.split_crit_edge:             ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.rhs.i:                                        ; preds = %if.end16
  %21 = ptrtoint ptr %ndisc_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndisc_ops.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.cleanup_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool2.not.i.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %ndisc_is_useropt.exit

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ndisc_is_useropt.exit:                            ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %24(i8 noundef zeroext %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i.not = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i.not, label %ndisc_is_useropt.exit.cleanup_crit_edge, label %ndisc_is_useropt.exit.if.then47_crit_edge

ndisc_is_useropt.exit.if.then47_crit_edge:        ; preds = %ndisc_is_useropt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

ndisc_is_useropt.exit.cleanup_crit_edge:          ; preds = %ndisc_is_useropt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then47:                                        ; preds = %ndisc_is_useropt.exit.if.then47_crit_edge, %if.end16.if.then47_crit_edge, %if.end16.if.then47_crit_edge113, %if.end16.if.then47_crit_edge114, %if.end16.if.then47_crit_edge115
  %25 = ptrtoint ptr %nd_useropts_end to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %nd_opt.0, ptr %nd_useropts_end, align 4
  %26 = ptrtoint ptr %nd_useropts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_useropts, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %if.then47.cleanup.sink.split_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then47.cleanup.sink.split_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then47.cleanup.sink.split_crit_edge, %sw.bb40.cleanup.sink.split_crit_edge, %sw.bb26.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %nd_useropts.sink = phi ptr [ %arrayidx, %sw.bb.cleanup.sink.split_crit_edge ], [ %arrayidx32, %sw.bb26.cleanup.sink.split_crit_edge ], [ %nd_opts_ri, %sw.bb40.cleanup.sink.split_crit_edge ], [ %nd_useropts, %if.then47.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %nd_useropts.sink to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %nd_opt.0, ptr %nd_useropts.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then47.cleanup_crit_edge, %ndisc_is_useropt.exit.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %ndisc_ops_parse_options.exit.cleanup_crit_edge
  %sub = sub i32 %opt_len.addr.0, %shl
  %add.ptr = getelementptr i8, ptr %nd_opt.0, i32 %shl
  br label %while.cond

cleanup57.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.loopexit, %if.end6.cleanup57_crit_edge, %while.cond.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup57_crit_edge ], [ %ndopts, %cleanup57.loopexit ], [ null, %while.cond.cleanup57_crit_edge ], [ null, %if.end6.cleanup57_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ndisc_mc_map(ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %buf, ptr nocapture noundef readonly %dev, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %1, label %sw.default [
    i16 1, label %entry.sw.bb_crit_edge
    i16 6, label %entry.sw.bb_crit_edge25
    i16 774, label %entry.sw.bb_crit_edge26
    i16 7, label %sw.bb1
    i16 32, label %sw.bb2
    i16 778, label %sw.bb3
  ]

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 51, ptr %buf, align 1
  %arrayidx1.i = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 51, ptr %arrayidx1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %buf, i32 2
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr.i, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = and i8 %10, 15
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buf, align 1
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 1
  %13 = or i8 %11, 16
  %arrayidx9.i = getelementptr i8, ptr %buf, i32 5
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 -1, ptr %arrayidx3.i, align 1
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %arrayidx9.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 6
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 96, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 7
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 27, ptr %arrayidx11.i, align 1
  %arrayidx12.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 8
  %18 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %buf, i32 8
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 9
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %buf, i32 9
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx15.i, align 1
  %add.ptr.i20 = getelementptr i8, ptr %buf, i32 10
  %add.ptr16.i = getelementptr i8, ptr %addr, i32 6
  %24 = call ptr @memcpy(ptr %add.ptr.i20, ptr %add.ptr16.i, i32 10)
  br label %return

sw.bb3:                                           ; preds = %entry
  %broadcast4 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %25 = ptrtoint ptr %broadcast4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %broadcast4, align 1
  %arrayidx1.i21 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 1
  %27 = ptrtoint ptr %arrayidx1.i21 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i21, align 1
  %or31.i = or i8 %28, %26
  %arrayidx3.i22 = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 2
  %29 = ptrtoint ptr %arrayidx3.i22 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i22, align 1
  %or532.i = or i8 %or31.i, %30
  %arrayidx6.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 3
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx6.i, align 1
  %or833.i = or i8 %or532.i, %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or833.i)
  %cmp.not.i = icmp eq i8 %or833.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %sw.bb3.if.end22.i_crit_edge

sw.bb3.if.end22.i_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.else.i:                                        ; preds = %sw.bb3
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %arrayidx12.i23 = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx12.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx12.i23, align 4
  %or13.i = or i32 %36, %34
  %arrayidx15.i24 = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx15.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx15.i24, align 4
  %xor.i = xor i32 %38, 65535
  %or16.i = or i32 %or13.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16.i)
  %cmp17.not.i = icmp eq i32 %or16.i, 0
  br i1 %cmp17.not.i, label %if.end.i, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx21.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i, %sw.bb3.if.end22.i_crit_edge
  %storemerge.in.i = phi ptr [ %arrayidx21.i, %if.end.i ], [ %broadcast4, %sw.bb3.if.end22.i_crit_edge ]
  %39 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 1
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %storemerge.i, ptr %buf, align 1
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
  %broadcast6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %41 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr_len, align 1
  %conv8 = zext i8 %42 to i32
  %43 = call ptr @memcpy(ptr %buf, ptr %broadcast6, i32 %conv8)
  br label %return

return:                                           ; preds = %if.then, %sw.default.return_crit_edge, %if.end22.i, %if.else.i.return_crit_edge, %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %sw.default.return_crit_edge ], [ 0, %if.end22.i ], [ -22, %if.else.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_send_na(ptr noundef %dev, ptr noundef %daddr, ptr noundef %solicited_addr, i1 noundef zeroext %router, i1 noundef zeroext %solicited, i1 noundef zeroext %override, i1 noundef zeroext %inc_opt) local_unnamed_addr #1 align 64 {
entry:
  %tmpaddr = alloca %struct.in6_addr, align 4
  %.compoundliteral.sroa.12 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmpaddr) #14
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = call ptr @memset(ptr %tmpaddr, i32 255, i32 16)
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %call4 = tail call ptr @ipv6_get_ifaddr(ptr noundef %2, ptr noundef %solicited_addr, ptr noundef %dev, i32 noundef 1) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.inet6_ifaddr, ptr %call4, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %spec.select = and i1 %tobool5.not, %override
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %call4, i32 0, i32 16
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idev, align 4
  %force_tllao = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 38
  %7 = ptrtoint ptr %force_tllao to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %force_tllao, align 4
  %conv = zext i1 %inc_opt to i32
  %or = or i32 %8, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool8 = icmp ne i32 %or, 0
  %refcnt.i = getelementptr inbounds %struct.inet6_ifaddr, ptr %call4, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end18_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end18_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %if.end18

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %call4) #14
  br label %if.end18

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 36, i32 26
  %12 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndisc_sk, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.inet6_sk.exit_crit_edge, label %cond.true.i

if.else.inet6_sk.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.else.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %17, %cond.true.i ], [ null, %if.else.inet6_sk.exit_crit_edge ]
  %srcprefs = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %18 = ptrtoint ptr %srcprefs to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %srcprefs, align 2
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 7
  %conv13 = zext i16 %bf.clear to i32
  %call14 = call i32 @ipv6_dev_get_saddr(ptr noundef %11, ptr noundef %dev, ptr noundef %daddr, i32 noundef %conv13, ptr noundef nonnull %tmpaddr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %inet6_sk.exit.if.end18_crit_edge, label %inet6_sk.exit.cleanup_crit_edge

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

inet6_sk.exit.if.end18_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.end18:                                         ; preds = %inet6_sk.exit.if.end18_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end18_crit_edge
  %src_addr.0 = phi ptr [ %tmpaddr, %inet6_sk.exit.if.end18_crit_edge ], [ %solicited_addr, %if.end5.i.i.i.i.if.end18_crit_edge ], [ %solicited_addr, %if.then10.i.i.i.i ], [ %solicited_addr, %if.then.i ]
  %inc_opt.addr.0.in = phi i1 [ %inc_opt, %inet6_sk.exit.if.end18_crit_edge ], [ %tobool8, %if.end5.i.i.i.i.if.end18_crit_edge ], [ %tobool8, %if.then10.i.i.i.i ], [ %tobool8, %if.then.i ]
  %override.addr.1.off0 = phi i1 [ %override, %inet6_sk.exit.if.end18_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.if.end18_crit_edge ], [ %spec.select, %if.then10.i.i.i.i ], [ %spec.select, %if.then.i ]
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %19 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp ne i8 %20, 0
  %spec.select82 = select i1 %tobool19.not, i1 %inc_opt.addr.0.in, i1 false
  br i1 %spec.select82, label %if.then23, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type.i, align 16
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %23 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then23.ndisc_opt_addr_space.exit_crit_edge, label %land.lhs.true.i.i

if.then23.ndisc_opt_addr_space.exit_crit_edge:    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

land.lhs.true.i.i:                                ; preds = %if.then23
  %opt_addr_space.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %opt_addr_space.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %opt_addr_space.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 %26(ptr noundef %dev, i8 noundef zeroext -120, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %ndisc_opt_addr_space.exit

ndisc_opt_addr_space.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, %if.then23.ndisc_opt_addr_space.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge ], [ 0, %if.then23.ndisc_opt_addr_space.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %22)
  %cond.i.i = icmp eq i16 %22, 32
  %add.i.i = select i1 %cond.i.i, i32 11, i32 9
  %conv.i.i85 = zext i8 %20 to i32
  %add2.i.i = add nuw nsw i32 %add.i.i, %conv.i.i85
  %and.i.i86 = and i32 %add2.i.i, 504
  %add.i = add nuw nsw i32 %and.i.i86, 24
  %phi.bo = add i32 %add.i, %retval.0.i.i
  br label %if.end25

if.end25:                                         ; preds = %ndisc_opt_addr_space.exit, %if.end18.if.end25_crit_edge
  %optlen.0 = phi i32 [ %phi.bo, %ndisc_opt_addr_space.exit ], [ 24, %if.end18.if.end25_crit_edge ]
  %call27 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %dev, i32 noundef %optlen.0)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @skb_put(ptr noundef nonnull %call27, i32 noundef 24) #14
  %bf.shl = select i1 %router, i32 -2147483648, i32 0
  %bf.shl40 = select i1 %solicited, i32 1073741824, i32 0
  %bf.set42 = or i32 %bf.shl40, %bf.shl
  %bf.shl47 = select i1 %override.addr.1.off0, i32 536870912, i32 0
  %bf.set49 = or i32 %bf.set42, %bf.shl47
  %27 = call ptr @memcpy(ptr %.compoundliteral.sroa.12, ptr %solicited_addr, i32 16)
  %28 = ptrtoint ptr %call31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -120, ptr %call31, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call31, i32 1
  %29 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call31, i32 2
  %30 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call31, i32 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.set49, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %call31, i32 8
  %32 = call ptr @memcpy(ptr %.compoundliteral.sroa.12.0..sroa_idx, ptr %.compoundliteral.sroa.12, i32 16)
  br i1 %spec.select82, label %if.then54, label %if.end30.if.end55_crit_edge

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %if.end30
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %33 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_addr, align 64
  %35 = getelementptr inbounds %struct.anon.0, ptr %call27, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %addr_len.i87 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 56
  %38 = ptrtoint ptr %addr_len.i87 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr_len.i87, align 1
  %conv.i = zext i8 %39 to i32
  %type1.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 32
  %40 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %type1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %41)
  %cond.i.i88 = icmp eq i16 %41, 32
  %..i.neg7.i = select i1 %cond.i.i88, i32 -2, i32 0
  %..i.i = select i1 %cond.i.i88, i32 2, i32 0
  %add.i.i.i = or i32 %..i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %conv.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  %call1.i.i = call ptr @skb_put(ptr noundef nonnull %call27, i32 noundef %and.i.i.i) #14
  %42 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %call1.i.i, align 1
  %43 = lshr i32 %add2.i.i.i, 3
  %conv3.i.i = trunc i32 %43 to i8
  %arrayidx4.i.i = getelementptr i8, ptr %call1.i.i, i32 1
  %44 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 2
  %45 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %..i.i)
  %add.ptr5.i.i = getelementptr i8, ptr %call1.i.i, i32 %..i.i
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  %46 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %34, i32 %conv.i)
  %.neg.i = sub nuw nsw i32 -2, %conv.i
  %.neg.i.i = add nsw i32 %.neg.i, %..i.neg7.i
  %sub8.i.i = add nsw i32 %.neg.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i90, label %if.then54.__ndisc_fill_addr_option.exit.i_crit_edge

if.then54.__ndisc_fill_addr_option.exit.i_crit_edge: ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ndisc_fill_addr_option.exit.i

if.then.i.i90:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i89 = add nuw nsw i32 %conv.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %add.i.i89
  %47 = call ptr @memset(ptr %add.ptr7.i.i, i32 0, i32 %sub8.i.i)
  br label %__ndisc_fill_addr_option.exit.i

__ndisc_fill_addr_option.exit.i:                  ; preds = %if.then.i.i90, %if.then54.__ndisc_fill_addr_option.exit.i_crit_edge
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %35, align 8
  %ndisc_ops.i.i91 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 46
  %50 = ptrtoint ptr %ndisc_ops.i.i91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndisc_ops.i.i91, align 8
  %tobool.not.i.i92 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i92, label %__ndisc_fill_addr_option.exit.i.if.end55_crit_edge, label %land.lhs.true.i.i94

__ndisc_fill_addr_option.exit.i.if.end55_crit_edge: ; preds = %__ndisc_fill_addr_option.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

land.lhs.true.i.i94:                              ; preds = %__ndisc_fill_addr_option.exit.i
  %fill_addr_option.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %fill_addr_option.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fill_addr_option.i.i, align 4
  %tobool2.not.i.i93 = icmp eq ptr %53, null
  br i1 %tobool2.not.i.i93, label %land.lhs.true.i.i94.if.end55_crit_edge, label %if.then.i6.i

land.lhs.true.i.i94.if.end55_crit_edge:           ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #16
  call void %53(ptr noundef %49, ptr noundef nonnull %call27, i8 noundef zeroext -120, ptr noundef null) #14
  br label %if.end55

if.end55:                                         ; preds = %if.then.i6.i, %land.lhs.true.i.i94.if.end55_crit_edge, %__ndisc_fill_addr_option.exit.i.if.end55_crit_edge, %if.end30.if.end55_crit_edge
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %call27, ptr noundef %daddr, ptr noundef %src_addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end25.cleanup_crit_edge, %inet6_sk.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpaddr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_get_ifaddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ndisc_alloc_skb(ptr noundef %dev, i32 noundef %len) unnamed_addr #1 align 64 {
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
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %4 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %needed_tailroom, align 2
  %conv3 = zext i16 %5 to i32
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 36, i32 26
  %8 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndisc_sk, align 4
  %add4 = add nuw nsw i32 %and, 56
  %add5 = add i32 %conv3, %len
  %add6 = add i32 %add5, %add4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add6, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body8, label %if.end18

do.body8:                                         ; preds = %entry
  %call9 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body8.cleanup_crit_edge, label %do.end

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #17
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -31011, ptr %protocol, align 8
  %11 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %11, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %16, i32 %add4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %transport_header.i, align 2
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %do.body8.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_send_skb(ptr noundef %skb, ptr noundef %daddr, ptr noundef %saddr) unnamed_addr #1 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i412 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i412, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i414

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i414:                               ; preds = %entry
  %call.i413 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i413)
  %tobool1.not.i = icmp eq i32 %call.i413, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i414.skb_dst.exit_crit_edge

land.lhs.true.i414.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i414
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i414
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !133

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i414.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 26
  %11 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndisc_sk, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %if.then, label %skb_dst.exit.if.end7_crit_edge

skb_dst.exit.if.end7_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %skb_dst.exit
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #14
  %19 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex, align 4
  call void @icmpv6_flow_init(ptr noundef %12, ptr noundef nonnull %fl6, i8 noundef zeroext %18, ptr noundef %saddr, ptr noundef %daddr, i32 noundef %21) #14
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 8
  %call3 = call ptr @icmp6_dst_alloc(ptr noundef %23, ptr noundef nonnull %fl6) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #14
  br label %cleanup358

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not.i415 = icmp eq ptr %call3, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %24 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i415, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %25 = ptrtoint ptr %call3 to i32
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end, %skb_dst.exit.if.end7_crit_edge
  %dst.0 = phi ptr [ %5, %skb_dst.exit.if.end7_crit_edge ], [ %call3, %if.end ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %call9 = call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef %28, i32 noundef 0) #14
  %call.i416 = call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %28, i32 noundef 58, i32 noundef %call9) #14
  %29 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i416) #18, !srcloc !137
  %neg.i.i = xor i32 %29, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i417 = trunc i32 %shr.i.i to i16
  %icmp6_cksum = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %icmp6_cksum to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i417, ptr %icmp6_cksum, align 2
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i418 = zext i8 %32 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i418
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end7.inet6_sk.exit_crit_edge, label %cond.true.i

if.end7.inet6_sk.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %12, i32 0, i32 1
  %33 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end7.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %34, %cond.true.i ], [ null, %if.end7.inet6_sk.exit_crit_edge ]
  %hop_limit = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %35 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load = load i32, ptr %hop_limit, align 4
  %36 = lshr i32 %bf.load, 23
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i419 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i419, label %inet6_sk.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

inet6_sk.exit.rcu_read_lock.exit.i_crit_edge:     ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %inet6_sk.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %inet6_sk.exit.rcu_read_lock.exit.i_crit_edge
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %6, align 8
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 80
  %45 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i16.i = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i16.i, label %rcu_read_lock.exit.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.__in6_dev_get.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i
  %call2.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i17.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true.i18.i:                              ; preds = %lor.lhs.false.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i18.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i18.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i18.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i19.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

if.then.i19.i:                                    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i19.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i18.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %rcu_read_lock.exit.i.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i420 = icmp eq ptr %46, null
  br i1 %tobool.not.i420, label %__in6_dev_get.exit.i.cond.end.i_crit_edge, label %cond.true.i421

__in6_dev_get.exit.i.cond.end.i_crit_edge:        ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i421:                                   ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %ndisc_tclass.i = getelementptr inbounds %struct.inet6_dev, ptr %46, i32 0, i32 32, i32 51
  %47 = ptrtoint ptr %ndisc_tclass.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ndisc_tclass.i, align 4
  %phi.bo.i = shl i32 %48, 20
  %phi.bo29.i = or i32 %phi.bo.i, 1610612736
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i421, %__in6_dev_get.exit.i.cond.end.i_crit_edge
  %cond.i422 = phi i32 [ %phi.bo29.i, %cond.true.i421 ], [ 1610612736, %__in6_dev_get.exit.i.cond.end.i_crit_edge ]
  %call.i20.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i20.i, label %cond.end.i.ip6_nd_hdr.exit_crit_edge, label %land.lhs.true.i23.i

cond.end.i.ip6_nd_hdr.exit_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_nd_hdr.exit

land.lhs.true.i23.i:                              ; preds = %cond.end.i
  %call1.i21.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.ip6_nd_hdr.exit_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.ip6_nd_hdr.exit_crit_edge:    ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_nd_hdr.exit

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.ip6_nd_hdr.exit_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.ip6_nd_hdr.exit_crit_edge:   ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_nd_hdr.exit

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %ip6_nd_hdr.exit

ip6_nd_hdr.exit:                                  ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.ip6_nd_hdr.exit_crit_edge, %land.lhs.true.i23.i.ip6_nd_hdr.exit_crit_edge, %cond.end.i.ip6_nd_hdr.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %49 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i27.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i28.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call1.i423 = call ptr @skb_push(ptr noundef %skb, i32 noundef 40) #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %55 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i425 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %57 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i.i425, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %conv.i.i.i
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond.i422, ptr %add.ptr.i.i.i, align 4
  %conv.i = trunc i32 %38 to i16
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i, ptr %payload_len.i, align 4
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 58, ptr %nexthdr.i, align 2
  %conv3.i = trunc i32 %36 to i8
  %hop_limit4.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %hop_limit4.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv3.i, ptr %hop_limit4.i, align 1
  %saddr5.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %62 = call ptr @memcpy(ptr %saddr5.i, ptr %saddr, i32 16)
  %daddr6.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %63 = call ptr @memcpy(ptr %daddr6.i, ptr %daddr, i32 16)
  %64 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %ip6_nd_hdr.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

ip6_nd_hdr.exit.rcu_read_lock.exit_crit_edge:     ; preds = %ip6_nd_hdr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %ip6_nd_hdr.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %ip6_nd_hdr.exit.rcu_read_lock.exit_crit_edge
  %68 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst.0, align 4
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 80
  %70 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i426 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i426, label %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.__in6_dev_get.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call2.i427 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i427)
  %tobool.not.i428 = icmp eq i32 %call2.i427, 0
  br i1 %tobool.not.i428, label %land.lhs.true.i429, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i429:                               ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i429.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i429.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i429
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i429
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i430

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i430:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i430, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i429.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %71, null
  br i1 %cmp.not, label %__in6_dev_get.exit.do.body131_crit_edge, label %do.body, !prof !133

__in6_dev_get.exit.do.body131_crit_edge:          ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body131

do.body:                                          ; preds = %__in6_dev_get.exit
  %ipv618 = getelementptr inbounds %struct.inet6_dev, ptr %71, i32 0, i32 33, i32 1
  %72 = ptrtoint ptr %ipv618 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ipv618, align 4
  %74 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !140
  %arrayidx = getelementptr i64, ptr %73, i32 5
  %75 = ptrtoint ptr %arrayidx to i32
  %76 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i431 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i431 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx36, align 4
  %add = add i32 %81, %75
  %82 = inttoptr i32 %add to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %82, align 8
  %add37 = add i64 %84, 1
  store i64 %add37, ptr %82, align 8
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i432 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i432)
  %tobool48.not = icmp eq i32 %and.i.i432, 0
  br i1 %tobool48.not, label %if.then57, label %do.body.do.end60_crit_edge, !prof !133

do.body.do.end60_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end60

if.then57:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body.do.end60_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #14, !srcloc !142
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !140
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  %conv85 = zext i32 %88 to i64
  %arrayidx92 = getelementptr i64, ptr %73, i32 6
  %89 = ptrtoint ptr %arrayidx92 to i32
  %90 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cpu, align 4
  %arrayidx96 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %93, %89
  %94 = inttoptr i32 %add97 to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %94, align 8
  %add98 = add i64 %96, %conv85
  store i64 %add98, ptr %94, align 8
  %97 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i433 = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i433)
  %tobool109.not = icmp eq i32 %and.i.i433, 0
  br i1 %tobool109.not, label %if.then118, label %do.end60.do.end121_crit_edge, !prof !133

do.end60.do.end121_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end121

if.then118:                                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.end60.do.end121_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #14, !srcloc !142
  br label %do.body131

do.body131:                                       ; preds = %do.end121, %__in6_dev_get.exit.do.body131_crit_edge
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 30, i32 1
  %98 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ipv6_statistics, align 4
  %100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !140
  %arrayidx158 = getelementptr i64, ptr %99, i32 5
  %101 = ptrtoint ptr %arrayidx158 to i32
  %102 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i434 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i434 to ptr
  %cpu161 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %cpu161 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu161, align 4
  %arrayidx162 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx162, align 4
  %add163 = add i32 %107, %101
  %108 = inttoptr i32 %add163 to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %108, align 8
  %add164 = add i64 %110, 1
  store i64 %add164, ptr %108, align 8
  %111 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i435 = and i32 %111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i435)
  %tobool175.not = icmp eq i32 %and.i.i435, 0
  br i1 %tobool175.not, label %if.then184, label %do.body131.do.end187_crit_edge, !prof !133

do.body131.do.end187_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end187

if.then184:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end187

do.end187:                                        ; preds = %if.then184, %do.body131.do.end187_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #14, !srcloc !142
  %112 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !140
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len, align 4
  %conv212 = zext i32 %114 to i64
  %arrayidx219 = getelementptr i64, ptr %99, i32 6
  %115 = ptrtoint ptr %arrayidx219 to i32
  %116 = ptrtoint ptr %cpu161 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu161, align 4
  %arrayidx223 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx223, align 4
  %add224 = add i32 %119, %115
  %120 = inttoptr i32 %add224 to ptr
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %120, align 8
  %add225 = add i64 %122, %conv212
  store i64 %add225, ptr %120, align 8
  %123 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i436 = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i436)
  %tobool236.not = icmp eq i32 %and.i.i436, 0
  br i1 %tobool236.not, label %if.then245, label %do.end187.do.end248_crit_edge, !prof !133

do.end187.do.end248_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end248

if.then245:                                       ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end248

do.end248:                                        ; preds = %if.then245, %do.end187.do.end248_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #14, !srcloc !142
  %124 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dst.0, align 4
  %call.i437 = call fastcc i32 @nf_hook(ptr noundef %10, ptr noundef %12, ptr noundef %skb, ptr noundef %125) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i437)
  %cmp.i438 = icmp eq i32 %call.i437, 1
  br i1 %cmp.i438, label %if.then.i439, label %do.end248.NF_HOOK.exit_crit_edge

do.end248.NF_HOOK.exit_crit_edge:                 ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #16
  br label %NF_HOOK.exit

if.then.i439:                                     ; preds = %do.end248
  %126 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i439.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i439.dst_output.exit.i_crit_edge:         ; preds = %if.then.i439
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i439
  %call.i.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !133

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i439.dst_output.exit.i_crit_edge
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %129, -2
  %130 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %130, i32 0, i32 6
  %131 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %output.i.i, align 4
  %call1.i.i440 = call i32 %132(ptr noundef %10, ptr noundef %12, ptr noundef %skb) #14
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %dst_output.exit.i, %do.end248.NF_HOOK.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i.i440, %dst_output.exit.i ], [ %call.i437, %do.end248.NF_HOOK.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool259.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool259.not, label %if.then260, label %NF_HOOK.exit.if.end357_crit_edge

NF_HOOK.exit.if.end357_crit_edge:                 ; preds = %NF_HOOK.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.then260:                                       ; preds = %NF_HOOK.exit
  br i1 %cmp.not, label %do.body297.critedge, label %if.then270, !prof !133

if.then270:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  %icmpv6msgdev = getelementptr inbounds %struct.inet6_dev, ptr %71, i32 0, i32 33, i32 3
  %133 = ptrtoint ptr %icmpv6msgdev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %icmpv6msgdev, align 4
  %conv273 = zext i8 %18 to i32
  %add274 = or i32 %conv273, 256
  %arrayidx275 = getelementptr [512 x %struct.atomic_t], ptr %134, i32 0, i32 %add274
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx275, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx275, i32 1, i32 3, i32 1) #14
  %135 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx275, ptr %arrayidx275, i32 1, ptr elementtype(i32) %arrayidx275) #14, !srcloc !143
  %icmpv6msg_statistics.c = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 30, i32 14
  %136 = ptrtoint ptr %icmpv6msg_statistics.c to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %icmpv6msg_statistics.c, align 4
  %arrayidx281.c = getelementptr [512 x %struct.atomic_t], ptr %137, i32 0, i32 %add274
  %call.i.i409 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx281.c, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx281.c, i32 1, i32 3, i32 1) #14
  %138 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx281.c, ptr %arrayidx281.c, i32 1, ptr elementtype(i32) %arrayidx281.c) #14, !srcloc !143
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %71, i32 0, i32 33, i32 2
  %139 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx294 = getelementptr [6 x %struct.atomic_t], ptr %140, i32 0, i32 3
  %call.i.i410 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx294, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx294, i32 1, i32 3, i32 1) #14
  %141 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx294, ptr %arrayidx294, i32 1, ptr elementtype(i32) %arrayidx294) #14, !srcloc !143
  br label %do.body297

do.body297.critedge:                              ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  %icmpv6msg_statistics.c405 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 30, i32 14
  %142 = ptrtoint ptr %icmpv6msg_statistics.c405 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %icmpv6msg_statistics.c405, align 4
  %conv279.c406 = zext i8 %18 to i32
  %add280.c407 = or i32 %conv279.c406, 256
  %arrayidx281.c408 = getelementptr [512 x %struct.atomic_t], ptr %143, i32 0, i32 %add280.c407
  %call.i.i411 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx281.c408, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %arrayidx281.c408, i32 1, i32 3, i32 1) #14
  %144 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx281.c408, ptr %arrayidx281.c408, i32 1, ptr elementtype(i32) %arrayidx281.c408) #14, !srcloc !143
  br label %do.body297

do.body297:                                       ; preds = %do.body297.critedge, %if.then270
  %145 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !140
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 30, i32 13
  %146 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx321 = getelementptr [6 x i32], ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %arrayidx321 to i32
  %149 = ptrtoint ptr %cpu161 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cpu161, align 4
  %arrayidx325 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx325, align 4
  %add326 = add i32 %152, %148
  %153 = inttoptr i32 %add326 to ptr
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add327 = add i32 %155, 1
  store i32 %add327, ptr %153, align 4
  %156 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i441 = and i32 %156, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i441)
  %tobool338.not = icmp eq i32 %and.i.i441, 0
  br i1 %tobool338.not, label %if.then347, label %do.body297.do.end350_crit_edge, !prof !133

do.body297.do.end350_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end350

if.then347:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end350

do.end350:                                        ; preds = %if.then347, %do.body297.do.end350_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %145) #14, !srcloc !142
  br label %if.end357

if.end357:                                        ; preds = %do.end350, %NF_HOOK.exit.if.end357_crit_edge
  %call.i442 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i442, label %if.end357.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i445

if.end357.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i445:                               ; preds = %if.end357
  %call1.i443 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i443)
  %tobool.not.i444 = icmp eq i32 %call1.i443, 0
  br i1 %tobool.not.i444, label %land.lhs.true.i445.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i447

land.lhs.true.i445.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i445
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i447:                              ; preds = %land.lhs.true.i445
  %.b4.i446 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i446, label %land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge, label %if.then.i448

land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i447
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i448:                                     ; preds = %land.lhs.true2.i447
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i448, %land.lhs.true2.i447.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i445.rcu_read_unlock.exit_crit_edge, %if.end357.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %157 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i449 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i449 to ptr
  %preempt_count.i.i.i.i450 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i.i.i450 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i.i.i450, align 4
  %sub.i.i.i = add i32 %160, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i450, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup358

cleanup358:                                       ; preds = %rcu_read_unlock.exit, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_send_ns(ptr noundef %dev, ptr nocapture noundef readonly %solicit, ptr noundef %daddr, ptr noundef %saddr, i64 noundef %nonce) local_unnamed_addr #1 align 64 {
entry:
  %addr_buf = alloca %struct.in6_addr, align 4
  %.compoundliteral.sroa.5 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr_buf) #14
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = call ptr @memset(ptr %addr_buf, i32 255, i32 16)
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_len, align 1
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = call i32 @ipv6_get_lladdr(ptr noundef %dev, ptr noundef nonnull %addr_buf, i32 noundef 68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %saddr.addr.0 = phi ptr [ %saddr, %entry.if.end3_crit_edge ], [ %addr_buf, %if.then.if.end3_crit_edge ]
  %3 = ptrtoint ptr %saddr.addr.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %saddr.addr.0, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr.addr.0, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %6, %4
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr.addr.0, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %8
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr.addr.0, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not60 = icmp eq i8 %2, 0
  %tobool7.not = select i1 %cmp.i, i1 true, i1 %tobool7.not60
  br i1 %tobool7.not, label %if.end3.if.end10_crit_edge, label %if.then8

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end3
  %11 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_len, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %type.i, align 16
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %15 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then8.ndisc_opt_addr_space.exit_crit_edge, label %land.lhs.true.i.i

if.then8.ndisc_opt_addr_space.exit_crit_edge:     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

land.lhs.true.i.i:                                ; preds = %if.then8
  %opt_addr_space.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %opt_addr_space.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %opt_addr_space.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = call i32 %18(ptr noundef %dev, i8 noundef zeroext -121, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %ndisc_opt_addr_space.exit

ndisc_opt_addr_space.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, %if.then8.ndisc_opt_addr_space.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge ], [ 0, %if.then8.ndisc_opt_addr_space.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %14)
  %cond.i.i = icmp eq i16 %14, 32
  %add.i.i = select i1 %cond.i.i, i32 11, i32 9
  %conv.i.i = zext i8 %12 to i32
  %add2.i.i = add nuw nsw i32 %add.i.i, %conv.i.i
  %and.i.i = and i32 %add2.i.i, 504
  %add.i = add i32 %retval.0.i.i, %and.i.i
  br label %if.end10

if.end10:                                         ; preds = %ndisc_opt_addr_space.exit, %if.end3.if.end10_crit_edge
  %optlen.0 = phi i32 [ %add.i, %ndisc_opt_addr_space.exit ], [ 0, %if.end3.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nonce)
  %cmp.not = icmp eq i64 %nonce, 0
  %add13 = add i32 %optlen.0, 8
  %spec.select51 = select i1 %cmp.not, i32 %optlen.0, i32 %add13
  %add15 = add i32 %spec.select51, 24
  %call16 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %dev, i32 noundef %add15)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call20 = call ptr @skb_put(ptr noundef nonnull %call16, i32 noundef 24) #14
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.5, ptr %solicit, i32 16)
  %20 = ptrtoint ptr %call20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -121, ptr %call20, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call20, i32 1
  %21 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call20, i32 2
  %22 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call20, i32 4
  %23 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call20, i32 8
  %24 = call ptr @memcpy(ptr %.compoundliteral.sroa.5.0..sroa_idx, ptr %.compoundliteral.sroa.5, i32 16)
  br i1 %tobool7.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %25 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_addr, align 64
  %27 = getelementptr inbounds %struct.anon.0, ptr %call16, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %addr_len.i52 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 56
  %30 = ptrtoint ptr %addr_len.i52 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_len.i52, align 1
  %conv.i = zext i8 %31 to i32
  %type1.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 32
  %32 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %33)
  %cond.i.i53 = icmp eq i16 %33, 32
  %..i.neg7.i = select i1 %cond.i.i53, i32 -2, i32 0
  %..i.i = select i1 %cond.i.i53, i32 2, i32 0
  %add.i.i.i = or i32 %..i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %conv.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  %call1.i.i = call ptr @skb_put(ptr noundef nonnull %call16, i32 noundef %and.i.i.i) #14
  %34 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %call1.i.i, align 1
  %35 = lshr i32 %add2.i.i.i, 3
  %conv3.i.i = trunc i32 %35 to i8
  %arrayidx4.i.i = getelementptr i8, ptr %call1.i.i, i32 1
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 2
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %..i.i)
  %add.ptr5.i.i = getelementptr i8, ptr %call1.i.i, i32 %..i.i
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  %38 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %26, i32 %conv.i)
  %.neg.i = sub nuw nsw i32 -2, %conv.i
  %.neg.i.i = add nsw i32 %.neg.i, %..i.neg7.i
  %sub8.i.i = add nsw i32 %.neg.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i55, label %if.then22.__ndisc_fill_addr_option.exit.i_crit_edge

if.then22.__ndisc_fill_addr_option.exit.i_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ndisc_fill_addr_option.exit.i

if.then.i.i55:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i54 = add nuw nsw i32 %conv.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %add.i.i54
  %39 = call ptr @memset(ptr %add.ptr7.i.i, i32 0, i32 %sub8.i.i)
  br label %__ndisc_fill_addr_option.exit.i

__ndisc_fill_addr_option.exit.i:                  ; preds = %if.then.i.i55, %if.then22.__ndisc_fill_addr_option.exit.i_crit_edge
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %27, align 8
  %ndisc_ops.i.i56 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %ndisc_ops.i.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndisc_ops.i.i56, align 8
  %tobool.not.i.i57 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i57, label %__ndisc_fill_addr_option.exit.i.if.end23_crit_edge, label %land.lhs.true.i.i59

__ndisc_fill_addr_option.exit.i.if.end23_crit_edge: ; preds = %__ndisc_fill_addr_option.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true.i.i59:                              ; preds = %__ndisc_fill_addr_option.exit.i
  %fill_addr_option.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %fill_addr_option.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fill_addr_option.i.i, align 4
  %tobool2.not.i.i58 = icmp eq ptr %45, null
  br i1 %tobool2.not.i.i58, label %land.lhs.true.i.i59.if.end23_crit_edge, label %if.then.i6.i

land.lhs.true.i.i59.if.end23_crit_edge:           ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  call void %45(ptr noundef %41, ptr noundef nonnull %call16, i8 noundef zeroext -121, ptr noundef null) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then.i6.i, %land.lhs.true.i.i59.if.end23_crit_edge, %__ndisc_fill_addr_option.exit.i.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  br i1 %cmp.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = call ptr @skb_put(ptr noundef nonnull %call16, i32 noundef 8) #14
  %46 = ptrtoint ptr %call27 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 14, ptr %call27, align 1
  %arrayidx28 = getelementptr i8, ptr %call27, i32 1
  %47 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx28, align 1
  %add.ptr = getelementptr i8, ptr %call27, i32 2
  %nonce.addr.0.extract.shift = lshr i64 %nonce, 16
  %nonce.addr.0.extract.trunc = trunc i64 %nonce.addr.0.extract.shift to i48
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %48, i32 6)
  store i48 %nonce.addr.0.extract.trunc, ptr %add.ptr, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %call16, ptr noundef %daddr, ptr noundef nonnull %saddr.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr_buf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_get_lladdr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_send_rs(ptr noundef %dev, ptr noundef %saddr, ptr noundef %daddr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then:                                          ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call ptr @ipv6_get_ifaddr(ptr noundef %3, ptr noundef %saddr, ptr noundef %dev, i32 noundef 1) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end11_crit_edge, label %if.then3

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then3:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.inet6_ifaddr, ptr %call1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not.not = icmp eq i32 %and, 0
  %refcnt.i = getelementptr inbounds %struct.inet6_ifaddr, ptr %call1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %if.end7

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %call1) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge
  br i1 %tobool4.not.not, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type.i, align 16
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %11 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then9.ndisc_opt_addr_space.exit_crit_edge, label %land.lhs.true.i.i

if.then9.ndisc_opt_addr_space.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

land.lhs.true.i.i:                                ; preds = %if.then9
  %opt_addr_space.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %opt_addr_space.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opt_addr_space.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_opt_addr_space.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call i32 %14(ptr noundef %dev, i8 noundef zeroext -123, ptr noundef null, ptr noundef null, ptr noundef null) #14
  br label %ndisc_opt_addr_space.exit

ndisc_opt_addr_space.exit:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge, %if.then9.ndisc_opt_addr_space.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.ndisc_opt_addr_space.exit_crit_edge ], [ 0, %if.then9.ndisc_opt_addr_space.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %10)
  %cond.i.i = icmp eq i16 %10, 32
  %add.i.i = select i1 %cond.i.i, i32 11, i32 9
  %conv.i.i = zext i8 %8 to i32
  %add2.i.i = add nuw nsw i32 %add.i.i, %conv.i.i
  %and.i.i = and i32 %add2.i.i, 504
  %add.i = add nuw nsw i32 %and.i.i, 8
  %phi.bo = add i32 %add.i, %retval.0.i.i
  br label %if.end11

if.end11:                                         ; preds = %ndisc_opt_addr_space.exit, %if.end7.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %tobool8.not48 = phi i1 [ false, %ndisc_opt_addr_space.exit ], [ true, %if.end7.if.end11_crit_edge ], [ true, %entry.if.end11_crit_edge ], [ true, %if.then.if.end11_crit_edge ]
  %optlen.0 = phi i32 [ %phi.bo, %ndisc_opt_addr_space.exit ], [ 8, %if.end7.if.end11_crit_edge ], [ 8, %entry.if.end11_crit_edge ], [ 8, %if.then.if.end11_crit_edge ]
  %call13 = tail call fastcc ptr @ndisc_alloc_skb(ptr noundef %dev, i32 noundef %optlen.0)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call13, i32 noundef 8) #14
  %15 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -123, ptr %call17, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 2
  %17 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 4
  %18 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  br i1 %tobool8.not48, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %21 = getelementptr inbounds %struct.anon.0, ptr %call13, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %addr_len.i38 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 56
  %24 = ptrtoint ptr %addr_len.i38 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr_len.i38, align 1
  %conv.i = zext i8 %25 to i32
  %type1.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 32
  %26 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %27)
  %cond.i.i39 = icmp eq i16 %27, 32
  %..i.neg7.i = select i1 %cond.i.i39, i32 -2, i32 0
  %..i.i = select i1 %cond.i.i39, i32 2, i32 0
  %add.i.i.i = or i32 %..i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %conv.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  %call1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call13, i32 noundef %and.i.i.i) #14
  %28 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %call1.i.i, align 1
  %29 = lshr i32 %add2.i.i.i, 3
  %conv3.i.i = trunc i32 %29 to i8
  %arrayidx4.i.i = getelementptr i8, ptr %call1.i.i, i32 1
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 2
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %..i.i)
  %add.ptr5.i.i = getelementptr i8, ptr %call1.i.i, i32 %..i.i
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  %32 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %20, i32 %conv.i)
  %.neg.i = sub nuw nsw i32 -2, %conv.i
  %.neg.i.i = add nsw i32 %.neg.i, %..i.neg7.i
  %sub8.i.i = add nsw i32 %.neg.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i41, label %if.then19.__ndisc_fill_addr_option.exit.i_crit_edge

if.then19.__ndisc_fill_addr_option.exit.i_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ndisc_fill_addr_option.exit.i

if.then.i.i41:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i40 = add nuw nsw i32 %conv.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %add.i.i40
  %33 = call ptr @memset(ptr %add.ptr7.i.i, i32 0, i32 %sub8.i.i)
  br label %__ndisc_fill_addr_option.exit.i

__ndisc_fill_addr_option.exit.i:                  ; preds = %if.then.i.i41, %if.then19.__ndisc_fill_addr_option.exit.i_crit_edge
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %21, align 8
  %ndisc_ops.i.i42 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %ndisc_ops.i.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndisc_ops.i.i42, align 8
  %tobool.not.i.i43 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i43, label %__ndisc_fill_addr_option.exit.i.if.end20_crit_edge, label %land.lhs.true.i.i45

__ndisc_fill_addr_option.exit.i.if.end20_crit_edge: ; preds = %__ndisc_fill_addr_option.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true.i.i45:                              ; preds = %__ndisc_fill_addr_option.exit.i
  %fill_addr_option.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %fill_addr_option.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fill_addr_option.i.i, align 4
  %tobool2.not.i.i44 = icmp eq ptr %39, null
  br i1 %tobool2.not.i.i44, label %land.lhs.true.i.i45.if.end20_crit_edge, label %if.then.i6.i

land.lhs.true.i.i45.if.end20_crit_edge:           ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then.i6.i:                                     ; preds = %land.lhs.true.i.i45
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %39(ptr noundef %35, ptr noundef nonnull %call13, i8 noundef zeroext -123, ptr noundef null) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then.i6.i, %land.lhs.true.i.i45.if.end20_crit_edge, %__ndisc_fill_addr_option.exit.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  tail call fastcc void @ndisc_send_skb(ptr noundef nonnull %call13, ptr noundef %daddr, ptr noundef %saddr)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end11.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_update(ptr noundef %dev, ptr noundef %neigh, ptr noundef %lladdr, i8 noundef zeroext %new, i32 noundef %flags, i8 noundef zeroext %icmp6_type, ptr noundef %ndopts) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @neigh_update(ptr noundef %neigh, ptr noundef %lladdr, i8 noundef zeroext %new, i32 noundef %flags, i32 noundef 0) #14
  %ndisc_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %0 = ptrtoint ptr %ndisc_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndisc_ops.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ndisc_ops_update.exit_crit_edge, label %land.lhs.true.i

entry.ndisc_ops_update.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_update.exit

land.lhs.true.i:                                  ; preds = %entry
  %update.i = getelementptr inbounds %struct.ndisc_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.ndisc_ops_update.exit_crit_edge, label %if.then.i

land.lhs.true.i.ndisc_ops_update.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_update.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %dev, ptr noundef %neigh, i32 noundef %flags, i8 noundef zeroext %icmp6_type, ptr noundef %ndopts) #14
  br label %ndisc_ops_update.exit

ndisc_ops_update.exit:                            ; preds = %if.then.i, %land.lhs.true.i.ndisc_ops_update.exit_crit_edge, %entry.ndisc_ops_update.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_update(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_send_redirect(ptr noundef %skb, ptr noundef %target) local_unnamed_addr #1 align 64 {
entry:
  %daddr.i = alloca %struct.inetpeer_addr, align 4
  %saddr_buf = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %ha_buf = alloca [32 x i8], align 1
  %ops_data_buf = alloca [2 x i8], align 1
  %ops_data = alloca ptr, align 4
  %.compoundliteral.sroa.5 = alloca [4 x i32], align 4
  %.compoundliteral.sroa.6 = alloca [4 x i32], align 4
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
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 26
  %5 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndisc_sk, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr_buf) #14
  %7 = call ptr @memset(ptr %saddr_buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #14
  %8 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ha_buf) #14
  %9 = call ptr @memset(ptr %ha_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ops_data_buf) #14
  %10 = ptrtoint ptr %ops_data_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ops_data_buf, align 1, !annotation !144
  %11 = getelementptr inbounds [2 x i8], ptr %ops_data_buf, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ops_data) #14
  %13 = ptrtoint ptr %ops_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %ops_data, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %14 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cb, align 8
  %call3 = tail call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %17) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then.cleanup92_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then.cleanup92_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dev.0 = phi ptr [ %call3, %if.then.if.end5_crit_edge ], [ %2, %entry.if.end5_crit_edge ]
  %call6 = call i32 @ipv6_get_lladdr(ptr noundef %dev.0, ptr noundef nonnull %saddr_buf, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup92_crit_edge

if.end5.cleanup92_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

if.end9:                                          ; preds = %if.end5
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %daddr, align 4
  %24 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target, align 4
  %xor.i = xor i32 %25, %23
  %arrayidx4.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %target, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %29, %27
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %target, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %33, %31
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %target, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %37, %35
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %target) #14
  %and.i166 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and.i166)
  %cmp.not = icmp eq i32 %and.i166, 33
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup92_crit_edge

land.lhs.true.cleanup92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i169 = zext i16 %41 to i32
  %add.ptr.i.i170 = getelementptr i8, ptr %39, i32 %conv.i.i169
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i170, i32 0, i32 5
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 17
  %42 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ifindex, align 4
  call void @icmpv6_flow_init(ptr noundef %6, ptr noundef nonnull %fl6, i8 noundef zeroext -119, ptr noundef nonnull %saddr_buf, ptr noundef %saddr, i32 noundef %43) #14
  %call.i171 = call ptr @ip6_route_output_flags(ptr noundef %4, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #14
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i171, i32 0, i32 15
  %44 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool20.not = icmp eq i16 %45, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  call void @dst_release(ptr noundef %call.i171) #14
  br label %cleanup92

if.end22:                                         ; preds = %if.end17
  %call24 = call ptr @xfrm_lookup(ptr noundef %4, ptr noundef %call.i171, ptr noundef nonnull %fl6, ptr noundef null, i32 noundef 0) #14
  %cmp.i172 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.end22.cleanup92_crit_edge, label %if.end27

if.end22.cleanup92_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup92

if.end27:                                         ; preds = %if.end22
  %rt6i_flags = getelementptr inbounds %struct.rt6_info, ptr %call24, i32 0, i32 7
  %46 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rt6i_flags, align 4
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end33, label %if.end27.release_crit_edge

if.end27.release_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %release

if.end33:                                         ; preds = %if.end27
  %peers = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 4
  %48 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peers, align 8
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i175 = zext i16 %53 to i32
  %add.ptr.i.i176 = getelementptr i8, ptr %51, i32 %conv.i.i175
  %saddr36 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i176, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i) #14
  %54 = getelementptr inbounds i8, ptr %daddr.i, i32 16
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 720895, ptr %54, align 4
  %56 = call ptr @memcpy(ptr %daddr.i, ptr %saddr36, i32 16)
  %call.i177 = call ptr @inet_getpeer(ptr noundef %49, ptr noundef nonnull %daddr.i, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #14
  %call38 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %call.i177, i32 noundef 100) #14
  %tobool39.not = icmp eq ptr %call.i177, null
  br i1 %tobool39.not, label %if.end33.if.end41_crit_edge, label %if.then40

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  call void @inet_putpeer(ptr noundef nonnull %call.i177) #14
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end33.if.end41_crit_edge
  br i1 %call38, label %if.end44, label %if.end41.release_crit_edge

if.end41.release_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %release

if.end44:                                         ; preds = %if.end41
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 56
  %57 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool45.not = icmp eq i8 %58, 0
  br i1 %tobool45.not, label %if.end44.if.end69_crit_edge, label %if.then46

if.end44.if.end69_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then46:                                        ; preds = %if.end44
  %call47 = call fastcc ptr @skb_dst(ptr noundef %skb)
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call47, i32 0, i32 1
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i178 = call ptr %62(ptr noundef %call47, ptr noundef null, ptr noundef %target) #14
  %cmp.i.i = icmp ugt ptr %call.i178, inttoptr (i32 -4096 to ptr)
  %tobool49.not191 = icmp eq ptr %call.i178, null
  %tobool49.not = or i1 %cmp.i.i, %tobool49.not191
  br i1 %tobool49.not, label %if.then46.release_crit_edge, label %if.end54

if.then46.release_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %release

if.end54:                                         ; preds = %if.then46
  %lock = getelementptr inbounds %struct.neighbour, ptr %call.i178, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %lock) #14
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call.i178, i32 0, i32 12
  %63 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nud_state, align 8
  %65 = and i8 %64, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool56.not = icmp eq i8 %65, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %ha59 = getelementptr inbounds %struct.neighbour, ptr %call.i178, i32 0, i32 18
  %66 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %addr_len, align 1
  %conv62 = zext i8 %67 to i32
  %68 = call ptr @memcpy(ptr %ha_buf, ptr %ha59, i32 %conv62)
  call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  %call66 = call fastcc i32 @ndisc_redirect_opt_addr_space(ptr noundef %dev.0, ptr noundef nonnull %call.i178, ptr noundef nonnull %ops_data_buf, ptr noundef nonnull %ops_data)
  br label %cleanup.thread

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then57
  %ha.0 = phi ptr [ %ha_buf, %if.then57 ], [ null, %if.else ]
  %optlen.0 = phi i32 [ %call66, %if.then57 ], [ 0, %if.else ]
  call fastcc void @neigh_release(ptr noundef nonnull %call.i178)
  br label %if.end69

if.end69:                                         ; preds = %cleanup.thread, %if.end44.if.end69_crit_edge
  %ha.2 = phi ptr [ null, %if.end44.if.end69_crit_edge ], [ %ha.0, %cleanup.thread ]
  %optlen.2 = phi i32 [ 0, %if.end44.if.end69_crit_edge ], [ %optlen.0, %cleanup.thread ]
  %sub = sub i32 1200, %optlen.2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  %add70 = add i32 %70, 8
  %71 = call i32 @llvm.umin.i32(i32 %sub, i32 %add70)
  %and73 = and i32 %71, -8
  %add74 = add i32 %optlen.2, 40
  %add75 = add i32 %add74, %and73
  %call76 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %dev.0, i32 noundef %add75)
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %if.end69.release_crit_edge, label %if.end79

if.end69.release_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %release

if.end79:                                         ; preds = %if.end69
  %call80 = call ptr @skb_put(ptr noundef nonnull %call76, i32 noundef 40) #14
  %72 = call ptr @memcpy(ptr %.compoundliteral.sroa.5, ptr %target, i32 16)
  %73 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i.i, align 8
  %75 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i181 = zext i16 %76 to i32
  %add.ptr.i.i182 = getelementptr i8, ptr %74, i32 %conv.i.i181
  %daddr83 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i182, i32 0, i32 6
  %77 = call ptr @memcpy(ptr %.compoundliteral.sroa.6, ptr %daddr83, i32 16)
  %78 = ptrtoint ptr %call80 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -119, ptr %call80, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call80, i32 1
  %79 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call80, i32 2
  %80 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call80, i32 4
  %81 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call80, i32 8
  %82 = call ptr @memcpy(ptr %.compoundliteral.sroa.5.0..sroa_idx, ptr %.compoundliteral.sroa.5, i32 16)
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call80, i32 24
  %83 = call ptr @memcpy(ptr %.compoundliteral.sroa.6.0..sroa_idx, ptr %.compoundliteral.sroa.6, i32 16)
  %tobool84.not = icmp eq ptr %ha.2, null
  br i1 %tobool84.not, label %if.end79.if.end86_crit_edge, label %if.then85

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %ops_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops_data, align 4
  call fastcc void @ndisc_fill_redirect_addr_option(ptr noundef nonnull %call76, ptr noundef nonnull %ha.2, ptr noundef %85)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end79.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool87.not = icmp eq i32 %and73, 0
  br i1 %tobool87.not, label %if.end86.if.end89_crit_edge, label %if.then88

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ndisc_fill_redirect_hdr_option(ptr noundef nonnull %call76, ptr noundef %skb, i32 noundef %and73)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86.if.end89_crit_edge
  %tobool.not.i = icmp eq ptr %call24, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call76, i32 0, i32 15, i32 0, i32 3
  %86 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %87 = ptrtoint ptr %call24 to i32
  %88 = getelementptr inbounds %struct.sk_buff, ptr %call76, i32 0, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %88, align 8
  %90 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i, align 8
  %92 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i185 = zext i16 %93 to i32
  %add.ptr.i.i186 = getelementptr i8, ptr %91, i32 %conv.i.i185
  %saddr91 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i186, i32 0, i32 5
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %call76, ptr noundef %saddr91, ptr noundef nonnull %saddr_buf)
  br label %cleanup92

release:                                          ; preds = %if.end69.release_crit_edge, %if.then46.release_crit_edge, %if.end41.release_crit_edge, %if.end27.release_crit_edge
  call void @dst_release(ptr noundef %call24) #14
  br label %cleanup92

cleanup92:                                        ; preds = %release, %if.end89, %if.end22.cleanup92_crit_edge, %if.then21, %land.lhs.true.cleanup92_crit_edge, %if.end5.cleanup92_crit_edge, %if.then.cleanup92_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ops_data) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ops_data_buf) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ha_buf) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr_buf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_flow_init(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_dst(ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !133

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25 = and i32 %4, -2
  %5 = inttoptr i32 %and25 to ptr
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ndisc_redirect_opt_addr_space(ptr noundef %dev, ptr noundef %neigh, ptr noundef %ops_data_buf, ptr noundef %ops_data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %ndisc_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 46
  %4 = ptrtoint ptr %ndisc_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndisc_ops.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.ndisc_ops_redirect_opt_addr_space.exit_crit_edge, label %land.lhs.true.i

entry.ndisc_ops_redirect_opt_addr_space.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_redirect_opt_addr_space.exit

land.lhs.true.i:                                  ; preds = %entry
  %opt_addr_space.i = getelementptr inbounds %struct.ndisc_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %opt_addr_space.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opt_addr_space.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.ndisc_ops_redirect_opt_addr_space.exit_crit_edge, label %if.then.i

land.lhs.true.i.ndisc_ops_redirect_opt_addr_space.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_redirect_opt_addr_space.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 %7(ptr noundef %dev, i8 noundef zeroext -119, ptr noundef %neigh, ptr noundef %ops_data_buf, ptr noundef %ops_data) #14
  br label %ndisc_ops_redirect_opt_addr_space.exit

ndisc_ops_redirect_opt_addr_space.exit:           ; preds = %if.then.i, %land.lhs.true.i.ndisc_ops_redirect_opt_addr_space.exit_crit_edge, %entry.ndisc_ops_redirect_opt_addr_space.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %land.lhs.true.i.ndisc_ops_redirect_opt_addr_space.exit_crit_edge ], [ 0, %entry.ndisc_ops_redirect_opt_addr_space.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %cond.i = icmp eq i16 %3, 32
  %add.i = select i1 %cond.i, i32 11, i32 9
  %conv.i = zext i8 %1 to i32
  %add2.i = add nuw nsw i32 %add.i, %conv.i
  %and.i = and i32 %add2.i, 504
  %add = add i32 %retval.0.i, %and.i
  ret i32 %add
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %neigh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !135

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @neigh_destroy(ptr noundef %neigh) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_fill_redirect_addr_option(ptr noundef %skb, ptr nocapture noundef readonly %ha, ptr noundef %ops_data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %4 to i32
  %type1.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %5 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %6)
  %cond.i.i = icmp eq i16 %6, 32
  %..i.neg7.i = select i1 %cond.i.i, i32 -2, i32 0
  %..i.i = select i1 %cond.i.i, i32 2, i32 0
  %add.i.i.i = or i32 %..i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %conv.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  %call1.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %and.i.i.i) #14
  %7 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %call1.i.i, align 1
  %8 = lshr i32 %add2.i.i.i, 3
  %conv3.i.i = trunc i32 %8 to i8
  %arrayidx4.i.i = getelementptr i8, ptr %call1.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.i.i, ptr %arrayidx4.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 2
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %..i.i)
  %add.ptr5.i.i = getelementptr i8, ptr %call1.i.i, i32 %..i.i
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  %11 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %ha, i32 %conv.i)
  %.neg.i = sub nuw nsw i32 -2, %conv.i
  %.neg.i.i = add nsw i32 %.neg.i, %..i.neg7.i
  %sub8.i.i = add nsw i32 %.neg.i.i, %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %cmp.i.i = icmp sgt i32 %sub8.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.__ndisc_fill_addr_option.exit.i_crit_edge

entry.__ndisc_fill_addr_option.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ndisc_fill_addr_option.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.i.i = add nuw nsw i32 %conv.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %add.i.i
  %12 = call ptr @memset(ptr %add.ptr7.i.i, i32 0, i32 %sub8.i.i)
  br label %__ndisc_fill_addr_option.exit.i

__ndisc_fill_addr_option.exit.i:                  ; preds = %if.then.i.i, %entry.__ndisc_fill_addr_option.exit.i_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 8
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %__ndisc_fill_addr_option.exit.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge, label %land.lhs.true.i

__ndisc_fill_addr_option.exit.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge: ; preds = %__ndisc_fill_addr_option.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_fill_redirect_addr_option.exit

land.lhs.true.i:                                  ; preds = %__ndisc_fill_addr_option.exit.i
  %fill_addr_option.i = getelementptr inbounds %struct.ndisc_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %fill_addr_option.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fill_addr_option.i, align 4
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge, label %if.then.i

land.lhs.true.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_ops_fill_redirect_addr_option.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %18(ptr noundef %14, ptr noundef %skb, i8 noundef zeroext -119, ptr noundef %ops_data) #14
  br label %ndisc_ops_fill_redirect_addr_option.exit

ndisc_ops_fill_redirect_addr_option.exit:         ; preds = %if.then.i, %land.lhs.true.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge, %__ndisc_fill_addr_option.exit.i.ndisc_ops_fill_redirect_addr_option.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_fill_redirect_hdr_option(ptr noundef %skb, ptr noundef %orig_skb, i32 noundef %rd_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %rd_len) #14
  %0 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 288230376151711744, ptr %call, align 1
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %1 = lshr i32 %rd_len, 3
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %incdec.ptr, align 1
  %add.ptr = getelementptr i8, ptr %call, i32 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %orig_skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub = add i32 %rd_len, -8
  %call3 = tail call i32 @skb_copy_bits(ptr noundef %orig_skb, i32 noundef %sub.ptr.sub.i, ptr noundef %add.ptr, i32 noundef %sub) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndisc_rcv(ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 80
  %3 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i.i, label %entry.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

entry.__in6_dev_get.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %entry.__in6_dev_get.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %__in6_dev_get.exit.i.cleanup_crit_edge, label %if.end.i

__in6_dev_get.exit.i.cleanup_crit_edge:           ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %__in6_dev_get.exit.i
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 8
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not.i = icmp eq i16 %7, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %suppress_frag_ndisc.i = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 40
  %8 = ptrtoint ptr %suppress_frag_ndisc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suppress_frag_ndisc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %do.body.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %if.end.if.end3_crit_edge, label %cond.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

cond.true.i:                                      ; preds = %if.end
  %call.i.i38 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %11) #14
  %tobool.not.i.i39 = icmp eq ptr %call.i.i38, null
  br i1 %tobool.not.i.i39, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end3_crit_edge

cond.true.i.if.end3_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %cond.true.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %idx.neg.i = sub i32 0, %sub.ptr.sub
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 %idx.neg.i
  store ptr %add.ptr.i44, ptr %data, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %sub.ptr.sub, %19
  store i32 %add.i, ptr %len1.i, align 4
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.not = icmp eq i8 %23, -1
  br i1 %cmp.not, label %if.end10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i, i32 0, i32 1
  %24 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icmp6_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp12.not = icmp eq i8 %25, 0
  br i1 %cmp12.not, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %27, label %if.end18.cleanup_crit_edge [
    i8 -121, label %sw.bb
    i8 -120, label %sw.bb21
    i8 -123, label %sw.bb22
    i8 -122, label %sw.bb23
    i8 -119, label %sw.bb24
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %29 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %cb, align 8
  tail call fastcc void @ndisc_recv_ns(ptr noundef %skb)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ndisc_recv_na(ptr noundef %skb)
  br label %cleanup

sw.bb22:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ndisc_recv_rs(ptr noundef %skb)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ndisc_router_discovery(ptr noundef %skb)
  br label %cleanup

sw.bb24:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ndisc_redirect_rcv(ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %__in6_dev_get.exit.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_ns(ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %ndopts = alloca %struct.ndisc_options, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %saddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 24
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ndopts) #14
  %8 = call ptr @memset(ptr %ndopts, i32 255, i32 88)
  %9 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %saddr2, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %15, %13
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %17
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp = icmp ult i32 %21, 24
  br i1 %cmp, label %entry.cleanup307_crit_edge, label %if.end

entry.cleanup307_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.nd_msg, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %23)
  %cmp.i410 = icmp ugt i32 %23, -16777217
  br i1 %cmp.i410, label %if.end.cleanup307_crit_edge, label %if.end14

if.end.cleanup307_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.end14:                                         ; preds = %if.end
  br i1 %cmp.i, label %land.lhs.true, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %24 = ptrtoint ptr %daddr4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daddr4, align 4
  %xor.i = xor i32 %25, -16646144
  %arrayidx2.i411 = getelementptr [4 x i32], ptr %daddr4, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx2.i411 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i411, align 4
  %or.i412 = or i32 %xor.i, %27
  %arrayidx4.i413 = getelementptr [4 x i32], ptr %daddr4, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx4.i413 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i413, align 4
  %xor5.i = xor i32 %29, 1
  %or6.i = or i32 %or.i412, %xor5.i
  %arrayidx8.i = getelementptr [16 x i8], ptr %daddr4, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx8.i, align 4
  %32 = xor i8 %31, -1
  %xor9.i = zext i8 %32 to i32
  %or10.i = or i32 %or6.i, %xor9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10.i)
  %cmp.i414 = icmp eq i32 %or10.i, 0
  br i1 %cmp.i414, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup307_crit_edge

land.lhs.true.cleanup307_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %call21 = call ptr @ndisc_parse_options(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ndopts)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup307_crit_edge, label %if.end27

if.end20.cleanup307_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.end27:                                         ; preds = %if.end20
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool28.not = icmp eq ptr %34, null
  br i1 %tobool28.not, label %if.end27.if.end45_crit_edge, label %if.then29

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then29:                                        ; preds = %if.end27
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 56
  %35 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 32
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %38)
  %cond.i.i = icmp eq i16 %38, 32
  %..i.i = select i1 %cond.i.i, i32 2, i32 0
  %nd_opt_len.i.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %nd_opt_len.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nd_opt_len.i.i, align 1
  %conv.i.i415 = zext i8 %40 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i415, 3
  %conv.i.i.i = zext i8 %36 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %..i.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %and.i.i.i)
  %cmp.not.i.i = icmp ne i32 %shl.i.i, %and.i.i.i
  %add.ptr.i.i416 = getelementptr %struct.nd_opt_hdr, ptr %34, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i416, i32 %..i.i
  %tobool33.not465 = icmp eq ptr %add.ptr2.i.i, null
  %tobool33.not = select i1 %cmp.not.i.i, i1 true, i1 %tobool33.not465
  %brmerge398 = select i1 %tobool33.not, i1 true, i1 %cmp.i
  br i1 %brmerge398, label %if.then29.cleanup307_crit_edge, label %if.then29.if.end45_crit_edge

if.then29.if.end45_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then29.cleanup307_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.end45:                                         ; preds = %if.then29.if.end45_crit_edge, %if.end27.if.end45_crit_edge
  %lladdr.0 = phi ptr [ null, %if.end27.if.end45_crit_edge ], [ %add.ptr2.i.i, %if.then29.if.end45_crit_edge ]
  %arrayidx47 = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 14
  %41 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %42, null
  br i1 %tobool48.not, label %if.end45.if.end59_crit_edge, label %land.lhs.true49

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

land.lhs.true49:                                  ; preds = %if.end45
  %nd_opt_len = getelementptr inbounds %struct.nd_opt_hdr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %nd_opt_len to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nd_opt_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp53 = icmp eq i8 %44, 1
  br i1 %cmp53, label %if.then55, label %land.lhs.true49.if.end59_crit_edge

land.lhs.true49.if.end59_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then55:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr58 = getelementptr %struct.nd_opt_hdr, ptr %42, i32 1
  %45 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 6)
  %nonce.0.copyload = load i48, ptr %add.ptr58, align 1
  %nonce.0.insert.ext = zext i48 %nonce.0.copyload to i64
  %nonce.0.insert.shift = shl nuw i64 %nonce.0.insert.ext, 16
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %land.lhs.true49.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  %nonce.0 = phi i64 [ %nonce.0.insert.shift, %if.then55 ], [ 0, %land.lhs.true49.if.end59_crit_edge ], [ 0, %if.end45.if.end59_crit_edge ]
  %46 = ptrtoint ptr %daddr4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %daddr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %47)
  %cmp.i417 = icmp ugt i32 %47, -16777217
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %48 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nd_net.i, align 4
  %call63 = call ptr @ipv6_get_ifaddr(ptr noundef %49, ptr noundef %target, ptr noundef %11, i32 noundef 1) #14
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.else88, label %if.end59.have_ifp_crit_edge

if.end59.have_ifp_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %have_ifp

have_ifp:                                         ; preds = %if.then94.have_ifp_crit_edge, %if.end59.have_ifp_crit_edge
  %ifp.0 = phi ptr [ %call63, %if.end59.have_ifp_crit_edge ], [ %call96, %if.then94.have_ifp_crit_edge ]
  %flags = getelementptr inbounds %struct.inet6_ifaddr, ptr %ifp.0, i32 0, i32 8
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and = and i32 %51, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %have_ifp.if.end150.thread_crit_edge, label %if.then67

have_ifp.if.end150.thread_crit_edge:              ; preds = %have_ifp
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150.thread

if.then67:                                        ; preds = %have_ifp
  br i1 %cmp.i, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nonce.0)
  %cmp70.not = icmp eq i64 %nonce.0, 0
  br i1 %cmp70.not, label %if.then69.if.end79_crit_edge, label %land.lhs.true72

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true72:                                  ; preds = %if.then69
  %dad_nonce = getelementptr inbounds %struct.inet6_ifaddr, ptr %ifp.0, i32 0, i32 12
  %52 = ptrtoint ptr %dad_nonce to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %dad_nonce, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %nonce.0)
  %cmp73 = icmp eq i64 %53, %nonce.0
  br i1 %cmp73, label %land.lhs.true72.if.then304_crit_edge, label %land.lhs.true72.if.end79_crit_edge

land.lhs.true72.if.end79_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

land.lhs.true72.if.then304_crit_edge:             ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then304

if.end79:                                         ; preds = %land.lhs.true72.if.end79_crit_edge, %if.then69.if.end79_crit_edge
  call void @addrconf_dad_failure(ptr noundef %skb, ptr noundef nonnull %ifp.0) #14
  br label %cleanup307

if.else:                                          ; preds = %if.then67
  %and81 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else.if.then304_crit_edge, label %if.else.if.end150.thread_crit_edge

if.else.if.end150.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150.thread

if.else.if.then304_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then304

if.end150.thread:                                 ; preds = %if.else.if.end150.thread_crit_edge, %have_ifp.if.end150.thread_crit_edge
  %idev87 = getelementptr inbounds %struct.inet6_ifaddr, ptr %ifp.0, i32 0, i32 16
  %54 = ptrtoint ptr %idev87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %idev87, align 4
  br label %if.then153

if.else88:                                        ; preds = %if.end59
  %56 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nd_net.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %58 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %59, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else88.if.end101_crit_edge, label %if.then91

if.else88.if.end101_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then91:                                        ; preds = %if.else88
  %call92 = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %11) #14
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %if.then91.if.end101_crit_edge, label %if.then94

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then94:                                        ; preds = %if.then91
  %call96 = call ptr @ipv6_get_ifaddr(ptr noundef %57, ptr noundef %target, ptr noundef nonnull %call92, i32 noundef 1) #14
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %if.then94.if.end101_crit_edge, label %if.then94.have_ifp_crit_edge

if.then94.have_ifp_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %have_ifp

if.then94.if.end101_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.end101:                                        ; preds = %if.then94.if.end101_crit_edge, %if.then91.if.end101_crit_edge, %if.else88.if.end101_crit_edge
  %call102 = call fastcc ptr @in6_dev_get(ptr noundef %11)
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.end101.cleanup307_crit_edge, label %if.end105

if.end101.cleanup307_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.end105:                                        ; preds = %if.end101
  %call107 = call zeroext i1 @ipv6_chk_acast_addr(ptr noundef %57, ptr noundef %11, ptr noundef %target) #14
  br i1 %call107, label %if.end105.if.then121_crit_edge, label %lor.lhs.false

if.end105.if.then121_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then121

lor.lhs.false:                                    ; preds = %if.end105
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %call102, i32 0, i32 32
  %60 = ptrtoint ptr %cnf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cnf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool109.not = icmp eq i32 %61, 0
  br i1 %tobool109.not, label %lor.lhs.false.if.else305_crit_edge, label %land.lhs.true110

lor.lhs.false.if.else305_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else305

land.lhs.true110:                                 ; preds = %lor.lhs.false
  %devconf_all = getelementptr inbounds %struct.net, ptr %57, i32 0, i32 36, i32 2
  %62 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %devconf_all, align 32
  %proxy_ndp = getelementptr inbounds %struct.ipv6_devconf, ptr %63, i32 0, i32 29
  %64 = ptrtoint ptr %proxy_ndp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %proxy_ndp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool111.not = icmp eq i32 %65, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %land.lhs.true110.land.lhs.true116_crit_edge

land.lhs.true110.land.lhs.true116_crit_edge:      ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true116

lor.lhs.false112:                                 ; preds = %land.lhs.true110
  %proxy_ndp114 = getelementptr inbounds %struct.inet6_dev, ptr %call102, i32 0, i32 32, i32 29
  %66 = ptrtoint ptr %proxy_ndp114 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %proxy_ndp114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool115.not = icmp eq i32 %67, 0
  br i1 %tobool115.not, label %lor.lhs.false112.if.else305_crit_edge, label %lor.lhs.false112.land.lhs.true116_crit_edge

lor.lhs.false112.land.lhs.true116_crit_edge:      ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true116

lor.lhs.false112.if.else305_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else305

land.lhs.true116:                                 ; preds = %lor.lhs.false112.land.lhs.true116_crit_edge, %land.lhs.true110.land.lhs.true116_crit_edge
  %call118 = call fastcc i32 @pndisc_is_router(ptr noundef %target, ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call118)
  %cmp119 = icmp sgt i32 %call118, -1
  br i1 %cmp119, label %land.lhs.true116.if.then121_crit_edge, label %land.lhs.true116.if.else305_crit_edge

land.lhs.true116.if.else305_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else305

land.lhs.true116.if.then121_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then121

if.then121:                                       ; preds = %land.lhs.true116.if.then121_crit_edge, %if.end105.if.then121_crit_edge
  %is_router.1 = phi i32 [ -1, %if.end105.if.then121_crit_edge ], [ %call118, %land.lhs.true116.if.then121_crit_edge ]
  %flags123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %68 = ptrtoint ptr %flags123 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags123, align 4
  %and124 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %land.lhs.true126, label %if.then121.if.end150_crit_edge

if.then121.if.end150_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

land.lhs.true126:                                 ; preds = %if.then121
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %70 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp128.not = icmp ult i16 %bf.load, 8192
  %call60.not = xor i1 %cmp.i417, true
  %brmerge = select i1 %cmp128.not, i1 true, i1 %call60.not
  br i1 %brmerge, label %land.lhs.true126.if.end150_crit_edge, label %land.lhs.true133

land.lhs.true126.if.end150_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

land.lhs.true133:                                 ; preds = %land.lhs.true126
  %nd_parms = getelementptr inbounds %struct.inet6_dev, ptr %call102, i32 0, i32 31
  %71 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nd_parms, align 4
  %arrayidx134 = getelementptr %struct.neigh_parms, ptr %72, i32 0, i32 11, i32 11
  %73 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp135.not = icmp eq i32 %74, 0
  br i1 %cmp135.not, label %land.lhs.true133.if.end150_crit_edge, label %if.then137

land.lhs.true133.if.end150_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

if.then137:                                       ; preds = %land.lhs.true133
  %call138 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %if.then137.if.else305_crit_edge, label %if.then140

if.then137.if.else305_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else305

if.then140:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nd_parms, align 4
  call void @pneigh_enqueue(ptr noundef nonnull @nd_tbl, ptr noundef %76, ptr noundef nonnull %call138) #14
  br label %if.else305

if.end150:                                        ; preds = %land.lhs.true133.if.end150_crit_edge, %land.lhs.true126.if.end150_crit_edge, %if.then121.if.end150_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_router.1)
  %cmp151 = icmp slt i32 %is_router.1, 0
  br i1 %cmp151, label %if.end150.if.then153_crit_edge, label %if.end150.if.end156_crit_edge

if.end150.if.end156_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

if.end150.if.then153_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then153

if.then153:                                       ; preds = %if.end150.if.then153_crit_edge, %if.end150.thread
  %ifp.5455 = phi ptr [ %ifp.0, %if.end150.thread ], [ null, %if.end150.if.then153_crit_edge ]
  %idev.2452 = phi ptr [ %55, %if.end150.thread ], [ %call102, %if.end150.if.then153_crit_edge ]
  %cnf154 = getelementptr inbounds %struct.inet6_dev, ptr %idev.2452, i32 0, i32 32
  %77 = ptrtoint ptr %cnf154 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cnf154, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then153, %if.end150.if.end156_crit_edge
  %ifp.5454 = phi ptr [ %ifp.5455, %if.then153 ], [ null, %if.end150.if.end156_crit_edge ]
  %idev.2453 = phi ptr [ %idev.2452, %if.then153 ], [ %call102, %if.end150.if.end156_crit_edge ]
  %is_router.5 = phi i32 [ %78, %if.then153 ], [ %is_router.1, %if.end150.if.end156_crit_edge ]
  br i1 %cmp.i, label %if.then158, label %if.end164

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_router.5)
  %tobool160 = icmp ne i32 %is_router.5, 0
  %cmp162 = icmp ne ptr %ifp.5454, null
  call void @ndisc_send_na(ptr noundef %11, ptr noundef nonnull @in6addr_linklocal_allnodes, ptr noundef %target, i1 noundef zeroext %tobool160, i1 noundef zeroext false, i1 noundef zeroext %cmp162, i1 noundef zeroext true)
  br label %out

if.end164:                                        ; preds = %if.end156
  %79 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14
  %80 = load ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 30), align 4
  br i1 %cmp.i417, label %do.body168, label %do.body215

do.body168:                                       ; preds = %if.end164
  %rcv_probes_mcast = getelementptr inbounds %struct.neigh_statistics, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %rcv_probes_mcast to i32
  %82 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i419 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i419 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu, align 4
  %arrayidx186 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx186, align 4
  %add = add i32 %87, %81
  %88 = inttoptr i32 %add to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add187 = add i32 %90, 1
  store i32 %add187, ptr %88, align 4
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool198.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool198.not, label %if.then203, label %do.body168.do.end206_crit_edge, !prof !133

do.body168.do.end206_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end206

if.then203:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end206

do.end206:                                        ; preds = %if.then203, %do.body168.do.end206_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #14, !srcloc !142
  %tobool275.not = icmp eq ptr %lladdr.0, null
  br i1 %tobool275.not, label %lor.rhs, label %do.end206.lor.end_crit_edge

do.end206.lor.end_crit_edge:                      ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

do.body215:                                       ; preds = %if.end164
  %rcv_probes_ucast = getelementptr inbounds %struct.neigh_statistics, ptr %80, i32 0, i32 7
  %92 = ptrtoint ptr %rcv_probes_ucast to i32
  %93 = call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i420 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i420 to ptr
  %cpu239 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu239 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu239, align 4
  %arrayidx240 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx240, align 4
  %add241 = add i32 %98, %92
  %99 = inttoptr i32 %add241 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add242 = add i32 %101, 1
  store i32 %add242, ptr %99, align 4
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !141
  %and.i.i421 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i421)
  %tobool253.not = icmp eq i32 %and.i.i421, 0
  br i1 %tobool253.not, label %if.then262, label %do.body215.do.end265_crit_edge, !prof !133

do.body215.do.end265_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end265

if.then262:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %do.end265

do.end265:                                        ; preds = %if.then262, %do.body215.do.end265_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #14, !srcloc !142
  br label %lor.end

lor.rhs:                                          ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 56
  %103 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool276.not = icmp eq i8 %104, 0
  %phi.cast = zext i1 %tobool276.not to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end265, %do.end206.lor.end_crit_edge
  %105 = phi i32 [ 1, %do.end206.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %do.end265 ]
  %call279 = call fastcc ptr @__neigh_lookup(ptr noundef %saddr2, ptr noundef %11, i32 noundef %105)
  %tobool280.not = icmp eq ptr %call279, null
  br i1 %tobool280.not, label %lor.lhs.false284.critedge, label %if.then281

if.then281:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @ndisc_update(ptr noundef %11, ptr noundef nonnull %call279, ptr noundef %lladdr.0, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext -121, ptr noundef nonnull %ndopts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_router.5)
  %tobool288.c = icmp ne i32 %is_router.5, 0
  %cmp293.not.c = icmp ne ptr %ifp.5454, null
  %spec.select.c = select i1 %cmp293.not.c, i1 %cmp.i417, i1 false
  call void @ndisc_send_na(ptr noundef %11, ptr noundef %saddr2, ptr noundef %target, i1 noundef zeroext %tobool288.c, i1 noundef zeroext true, i1 noundef zeroext %spec.select.c, i1 noundef zeroext %cmp.i417)
  call fastcc void @neigh_release(ptr noundef nonnull %call279)
  br label %out

lor.lhs.false284.critedge:                        ; preds = %lor.end
  %header_ops = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 49
  %106 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %header_ops, align 4
  %tobool285.not = icmp eq ptr %107, null
  br i1 %tobool285.not, label %out.critedge, label %lor.lhs.false284.critedge.out_crit_edge

lor.lhs.false284.critedge.out_crit_edge:          ; preds = %lor.lhs.false284.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out.critedge:                                     ; preds = %lor.lhs.false284.critedge
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_router.5)
  %tobool288.c399 = icmp ne i32 %is_router.5, 0
  %cmp293.not.c400 = icmp ne ptr %ifp.5454, null
  %spec.select.c401 = select i1 %cmp293.not.c400, i1 %cmp.i417, i1 false
  call void @ndisc_send_na(ptr noundef %11, ptr noundef %saddr2, ptr noundef %target, i1 noundef zeroext %tobool288.c399, i1 noundef zeroext true, i1 noundef zeroext %spec.select.c401, i1 noundef zeroext %cmp.i417)
  br label %out

out:                                              ; preds = %out.critedge, %lor.lhs.false284.critedge.out_crit_edge, %if.then281, %if.then158
  %tobool303.not = icmp eq ptr %ifp.5454, null
  br i1 %tobool303.not, label %out.if.else305_crit_edge, label %out.if.then304_crit_edge

out.if.then304_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then304

out.if.else305_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else305

if.then304:                                       ; preds = %out.if.then304_crit_edge, %if.else.if.then304_crit_edge, %land.lhs.true72.if.then304_crit_edge
  %ifp.6459 = phi ptr [ %ifp.5454, %out.if.then304_crit_edge ], [ %ifp.0, %if.else.if.then304_crit_edge ], [ %ifp.0, %land.lhs.true72.if.then304_crit_edge ]
  %refcnt.i = getelementptr inbounds %struct.inet6_ifaddr, ptr %ifp.6459, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup307_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup307_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup307

if.then.i:                                        ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %ifp.6459) #14
  br label %cleanup307

if.else305:                                       ; preds = %out.if.else305_crit_edge, %if.then140, %if.then137.if.else305_crit_edge, %land.lhs.true116.if.else305_crit_edge, %lor.lhs.false112.if.else305_crit_edge, %lor.lhs.false.if.else305_crit_edge
  %idev.3464 = phi ptr [ %idev.2453, %out.if.else305_crit_edge ], [ %call102, %lor.lhs.false.if.else305_crit_edge ], [ %call102, %lor.lhs.false112.if.else305_crit_edge ], [ %call102, %land.lhs.true116.if.else305_crit_edge ], [ %call102, %if.then137.if.else305_crit_edge ], [ %call102, %if.then140 ]
  %refcnt.i422 = getelementptr inbounds %struct.inet6_dev, ptr %idev.3464, i32 0, i32 25
  %call.i.i.i.i.i.i423 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i422, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcnt.i422, i32 1, i32 3, i32 1) #14
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i422, ptr %refcnt.i422, i32 1, ptr elementtype(i32) %refcnt.i422) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i424 = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i424)
  %cmp.i.i.i.i425 = icmp eq i32 %asmresult.i.i.i.i.i.i.i424, 1
  br i1 %cmp.i.i.i.i425, label %if.then.i429, label %if.end5.i.i.i.i427

if.end5.i.i.i.i427:                               ; preds = %if.else305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i424)
  %.not.i.i.i.i426 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i424, 0
  br i1 %.not.i.i.i.i426, label %if.end5.i.i.i.i427.cleanup307_crit_edge, label %if.then10.i.i.i.i428, !prof !135

if.end5.i.i.i.i427.cleanup307_crit_edge:          ; preds = %if.end5.i.i.i.i427
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup307

if.then10.i.i.i.i428:                             ; preds = %if.end5.i.i.i.i427
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i422, i32 noundef 3) #14
  br label %cleanup307

if.then.i429:                                     ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @in6_dev_finish_destroy(ptr noundef %idev.3464) #14
  br label %cleanup307

cleanup307:                                       ; preds = %if.then.i429, %if.then10.i.i.i.i428, %if.end5.i.i.i.i427.cleanup307_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup307_crit_edge, %if.end101.cleanup307_crit_edge, %if.end79, %if.then29.cleanup307_crit_edge, %if.end20.cleanup307_crit_edge, %land.lhs.true.cleanup307_crit_edge, %if.end.cleanup307_crit_edge, %entry.cleanup307_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ndopts) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_na(ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %ndopts = alloca %struct.ndisc_options, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %saddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 24
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ndopts) #14
  %8 = call ptr @memset(ptr %ndopts, i32 255, i32 88)
  %9 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 80
  %12 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %15)
  %cmp = icmp ult i32 %15, 24
  br i1 %cmp, label %__in6_dev_get.exit.cleanup_crit_edge, label %if.end

__in6_dev_get.exit.cleanup_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %__in6_dev_get.exit
  %target = getelementptr inbounds %struct.nd_msg, ptr %add.ptr.i, i32 0, i32 1
  %16 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %17)
  %cmp.i = icmp ugt i32 %17, -16777217
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %18 = ptrtoint ptr %daddr4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %daddr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %19)
  %cmp.i216 = icmp ugt i32 %19, -16777217
  br i1 %cmp.i216, label %land.lhs.true, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end13
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i, i32 0, i32 3
  %20 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %icmp6_dataun, align 4
  %21 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %icmp6_dataun21 = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %icmp6_dataun21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load22 = load i32, ptr %icmp6_dataun21, align 4
  %23 = and i32 %bf.load22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp ne i32 %23, 0
  %tobool27.not = icmp eq ptr %13, null
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end19.if.end31_crit_edge, label %land.lhs.true28

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true28:                                  ; preds = %if.end19
  %drop_unsolicited_na = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 32, i32 42
  %24 = ptrtoint ptr %drop_unsolicited_na to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %drop_unsolicited_na, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  br i1 %tobool29.not, label %land.lhs.true28.if.end31_crit_edge, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true28.if.end31_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true28.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %call32 = call ptr @ndisc_parse_options(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ndopts)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %if.end38.if.end50_crit_edge, label %if.then40

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then40:                                        ; preds = %if.end38
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 56
  %28 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 32
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %31)
  %cond.i.i = icmp eq i16 %31, 32
  %..i.i = select i1 %cond.i.i, i32 2, i32 0
  %nd_opt_len.i.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %nd_opt_len.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nd_opt_len.i.i, align 1
  %conv.i.i217 = zext i8 %33 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i217, 3
  %conv.i.i.i = zext i8 %29 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %..i.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %and.i.i.i)
  %cmp.not.i.i = icmp ne i32 %shl.i.i, %and.i.i.i
  %add.ptr.i.i218 = getelementptr %struct.nd_opt_hdr, ptr %27, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i218, i32 %..i.i
  %tobool44.not225 = icmp eq ptr %add.ptr2.i.i, null
  %tobool44.not = select i1 %cmp.not.i.i, i1 true, i1 %tobool44.not225
  br i1 %tobool44.not, label %if.then40.cleanup_crit_edge, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.then40.if.end50_crit_edge, %if.end38.if.end50_crit_edge
  %lladdr.0 = phi ptr [ %add.ptr2.i.i, %if.then40.if.end50_crit_edge ], [ null, %if.end38.if.end50_crit_edge ]
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %34 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nd_net.i, align 4
  %call53 = call ptr @ipv6_get_ifaddr(ptr noundef %35, ptr noundef %target, ptr noundef %11, i32 noundef 1) #14
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end92, label %if.then55

if.then55:                                        ; preds = %if.end50
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %36 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load56 = load i16, ptr %pkt_type, align 8
  %bf.lshr57.mask = and i16 %bf.load56, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr57.mask)
  %cmp58.not = icmp eq i16 %bf.lshr57.mask, -24576
  br i1 %cmp58.not, label %if.then55.if.end91_crit_edge, label %land.lhs.true60

if.then55.if.end91_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

land.lhs.true60:                                  ; preds = %if.then55
  %flags = getelementptr inbounds %struct.inet6_ifaddr, ptr %call53, i32 0, i32 8
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %do.body73, label %if.then62

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #16
  call void @addrconf_dad_failure(ptr noundef %skb, ptr noundef nonnull %call53) #14
  br label %cleanup

do.body73:                                        ; preds = %land.lhs.true60
  %call74 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.body73.if.end91_crit_edge, label %do.end79

do.body73.if.end91_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %41 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i220 = zext i16 %42 to i32
  %add.ptr.i.i221 = getelementptr i8, ptr %40, i32 %conv.i.i220
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i221, i32 0, i32 1
  %idev82 = getelementptr inbounds %struct.inet6_ifaddr, ptr %call53, i32 0, i32 16
  %43 = ptrtoint ptr %idev82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idev82, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %h_source, ptr noundef nonnull %call53, ptr noundef %46) #17
  br label %if.end91

if.end91:                                         ; preds = %do.end79, %do.body73.if.end91_crit_edge, %if.then55.if.end91_crit_edge
  %refcnt.i = getelementptr inbounds %struct.inet6_ifaddr, ptr %call53, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i222, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup

if.then.i222:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %call53) #14
  br label %cleanup

if.end92:                                         ; preds = %if.end50
  %call94 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %target, ptr noundef %11) #14
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %if.then96

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then96:                                        ; preds = %if.end92
  %flags97 = getelementptr inbounds %struct.neighbour, ptr %call94, i32 0, i32 16
  %48 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags97, align 4
  %50 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nd_net.i, align 4
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call94, i32 0, i32 12
  %52 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nud_state, align 8
  %54 = and i8 %53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool102.not = icmp eq i8 %54, 0
  br i1 %tobool102.not, label %if.end104, label %if.then96.out_crit_edge

if.then96.out_crit_edge:                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end104:                                        ; preds = %if.then96
  %tobool105.not = icmp eq ptr %lladdr.0, null
  br i1 %tobool105.not, label %if.end104.if.end121_crit_edge, label %land.lhs.true106

if.end104.if.end121_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

land.lhs.true106:                                 ; preds = %if.end104
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %55 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 56
  %57 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr_len, align 1
  %conv107 = zext i8 %58 to i32
  %bcmp = call i32 @bcmp(ptr nonnull %lladdr.0, ptr %56, i32 %conv107) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool109.not = icmp eq i32 %bcmp, 0
  br i1 %tobool109.not, label %land.lhs.true110, label %land.lhs.true106.if.end121_crit_edge

land.lhs.true106.if.end121_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

land.lhs.true110:                                 ; preds = %land.lhs.true106
  %devconf_all = getelementptr inbounds %struct.net, ptr %51, i32 0, i32 36, i32 2
  %59 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devconf_all, align 32
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool111.not = icmp eq i32 %62, 0
  br i1 %tobool111.not, label %land.lhs.true110.if.end121_crit_edge, label %land.lhs.true112

land.lhs.true110.if.end121_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

land.lhs.true112:                                 ; preds = %land.lhs.true110
  %proxy_ndp = getelementptr inbounds %struct.ipv6_devconf, ptr %60, i32 0, i32 29
  %63 = ptrtoint ptr %proxy_ndp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %proxy_ndp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool115.not = icmp eq i32 %64, 0
  br i1 %tobool115.not, label %land.lhs.true112.if.end121_crit_edge, label %land.lhs.true116

land.lhs.true112.if.end121_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %call118 = call ptr @pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %51, ptr noundef %target, ptr noundef %11, i32 noundef 0) #14
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %land.lhs.true116.if.end121_crit_edge, label %land.lhs.true116.out_crit_edge

land.lhs.true116.out_crit_edge:                   ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true116.if.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.end121:                                        ; preds = %land.lhs.true116.if.end121_crit_edge, %land.lhs.true112.if.end121_crit_edge, %land.lhs.true110.if.end121_crit_edge, %land.lhs.true106.if.end121_crit_edge, %if.end104.if.end121_crit_edge
  %65 = ptrtoint ptr %icmp6_dataun21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load124 = load i32, ptr %icmp6_dataun21, align 4
  %66 = and i32 %bf.load124, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool127.not = icmp eq i32 %66, 0
  %conv128 = select i1 %tobool127.not, i8 4, i8 2
  %67 = lshr i32 %bf.load124, 29
  %68 = lshr i32 %bf.load124, 25
  %69 = and i32 %68, 64
  %or136 = or i32 %67, %69
  %or143 = or i32 %or136, 6
  call void @ndisc_update(ptr noundef %11, ptr noundef nonnull %call94, ptr noundef %lladdr.0, i8 noundef zeroext %conv128, i32 noundef %or143, i8 noundef zeroext -120, ptr noundef nonnull %ndopts)
  %70 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags97, align 4
  %neg = xor i32 %71, -1
  %and146 = and i32 %49, 128
  %and147 = and i32 %and146, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end121.out_crit_edge, label %if.then149

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then149:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nd_net.i, align 4
  call void @rt6_clean_tohost(ptr noundef %73, ptr noundef %saddr2) #14
  br label %out

out:                                              ; preds = %if.then149, %if.end121.out_crit_edge, %land.lhs.true116.out_crit_edge, %if.then96.out_crit_edge
  call fastcc void @neigh_release(ptr noundef nonnull %call94)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end92.cleanup_crit_edge, %if.then.i222, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then62, %if.then40.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %__in6_dev_get.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ndopts) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_rs(ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  %ndopts = alloca %struct.ndisc_options, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = add i32 %5, -8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %saddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ndopts) #14
  %8 = call ptr @memset(ptr %ndopts, i32 255, i32 88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp = icmp ult i32 %5, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 80
  %12 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %if.end.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end.__in6_dev_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end.__in6_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body6, label %if.end17

do.body6:                                         ; preds = %__in6_dev_get.exit
  %call7 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %do.end

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #17
  br label %cleanup

if.end17:                                         ; preds = %__in6_dev_get.exit
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %cnf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr2, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %19, %17
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %21
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr2, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 8
  %opt = getelementptr inbounds %struct.rs_msg, ptr %add.ptr.i, i32 0, i32 1
  %call24 = call ptr @ndisc_parse_options(ptr noundef %25, ptr noundef %opt, i32 noundef %sub, ptr noundef nonnull %ndopts)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tobool31.not = icmp eq ptr %27, null
  br i1 %tobool31.not, label %if.end30.if.end39_crit_edge, label %if.then32

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then32:                                        ; preds = %if.end30
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 56
  %30 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 32
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %33)
  %cond.i.i = icmp eq i16 %33, 32
  %..i.i = select i1 %cond.i.i, i32 2, i32 0
  %nd_opt_len.i.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %27, i32 0, i32 1
  %34 = ptrtoint ptr %nd_opt_len.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nd_opt_len.i.i, align 1
  %conv.i.i63 = zext i8 %35 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i63, 3
  %conv.i.i.i = zext i8 %31 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %..i.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %and.i.i.i)
  %cmp.not.i.i = icmp ne i32 %shl.i.i, %and.i.i.i
  %add.ptr.i.i64 = getelementptr %struct.nd_opt_hdr, ptr %27, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i64, i32 %..i.i
  %tobool36.not77 = icmp eq ptr %add.ptr2.i.i, null
  %tobool36.not = select i1 %cmp.not.i.i, i1 true, i1 %tobool36.not77
  br i1 %tobool36.not, label %if.then32.cleanup_crit_edge, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %if.then32.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %lladdr.0 = phi ptr [ %add.ptr2.i.i, %if.then32.if.end39_crit_edge ], [ null, %if.end30.if.end39_crit_edge ]
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 8
  %call.i65 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %saddr2, ptr noundef %37) #14
  %tobool.not.i66.not = icmp eq ptr %call.i65, null
  br i1 %tobool.not.i66.not, label %if.end.i, label %if.end39.if.then42_crit_edge

if.end39.if.then42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.end.i:                                         ; preds = %if.end39
  %call.i.i = call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %saddr2, ptr noundef %37, i1 noundef zeroext true) #14
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool41.not = icmp eq ptr %call.i.i, null
  %or.cond = or i1 %cmp.i.i, %tobool41.not
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then42_crit_edge

if.end.i.if.then42_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then42

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end.i.if.then42_crit_edge, %if.end39.if.then42_crit_edge
  %retval.0.i76 = phi ptr [ %call.i65, %if.end39.if.then42_crit_edge ], [ %call.i.i, %if.end.i.if.then42_crit_edge ]
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %9, align 8
  %call.i67 = call i32 @neigh_update(ptr noundef nonnull %retval.0.i76, ptr noundef %lladdr.0, i8 noundef zeroext 4, i32 noundef 7, i32 noundef 0) #14
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.then42.ndisc_update.exit_crit_edge, label %land.lhs.true.i.i

if.then42.ndisc_update.exit_crit_edge:            ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_update.exit

land.lhs.true.i.i:                                ; preds = %if.then42
  %update.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %update.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ndisc_update.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.ndisc_update.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_update.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void %43(ptr noundef %39, ptr noundef nonnull %retval.0.i76, i32 noundef 7, i8 noundef zeroext -123, ptr noundef nonnull %ndopts) #14
  br label %ndisc_update.exit

ndisc_update.exit:                                ; preds = %if.then.i.i, %land.lhs.true.i.i.ndisc_update.exit_crit_edge, %if.then42.ndisc_update.exit_crit_edge
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %retval.0.i76, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %44 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i68, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ndisc_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup

if.then.i68:                                      ; preds = %ndisc_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @neigh_destroy(ptr noundef nonnull %retval.0.i76) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i68, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ndopts) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_router_discovery(ptr noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  %ndopts = alloca %struct.ndisc_options, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ndopts) #14
  %4 = call ptr @memset(ptr %ndopts, i32 255, i32 88)
  %add.ptr = getelementptr %struct.ra_msg, ptr %add.ptr.i, i32 1
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, -16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr) #14
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %or.cond698 = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond698, label %entry.cleanup518_crit_edge, label %if.end12

entry.cleanup518_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

if.end12:                                         ; preds = %entry
  %ndisc_nodetype = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %ndisc_nodetype to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load = load i32, ptr %ndisc_nodetype, align 2
  %10 = and i32 %bf.load, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp13 = icmp eq i32 %10, 16777216
  br i1 %cmp13, label %if.end12.cleanup518_crit_edge, label %if.end19

if.end12.cleanup518_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

if.end19:                                         ; preds = %if.end12
  %11 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 80
  %14 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i703 = tail call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i703, label %if.end19.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end19.__in6_dev_get.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end19
  %call2.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 313, ptr noundef nonnull @.str.13) #14
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end19.__in6_dev_get.exit_crit_edge
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %do.body24, label %if.end37

do.body24:                                        ; preds = %__in6_dev_get.exit
  %call25 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body24.cleanup518_crit_edge, label %do.end30

do.body24.cleanup518_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %17) #17
  br label %cleanup518

if.end37:                                         ; preds = %__in6_dev_get.exit
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call38 = call ptr @ndisc_parse_options(ptr noundef %19, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %ndopts)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup518_crit_edge, label %if.end44

if.end37.cleanup518_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

if.end44:                                         ; preds = %if.end37
  %cnf.i = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32
  %20 = ptrtoint ptr %cnf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i704 = icmp eq i32 %21, 0
  %accept_ra3.i = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 3
  %22 = ptrtoint ptr %accept_ra3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %accept_ra3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool47.i = icmp ne i32 %23, 0
  %tobool4.i = select i1 %tobool.not.i704, i1 %tobool47.i, i1 %cmp.i
  br i1 %tobool4.i, label %if.end50, label %if.end44.if.then315_crit_edge

if.end44.if.then315_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then315

if.end50:                                         ; preds = %if.end44
  %24 = ptrtoint ptr %ndisc_nodetype to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load52 = load i32, ptr %ndisc_nodetype, align 2
  %25 = and i32 %bf.load52, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %25)
  %cmp57 = icmp eq i32 %25, 33554432
  br i1 %cmp57, label %if.end50.if.then315_crit_edge, label %if.end63

if.end50.if.then315_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then315

if.end63:                                         ; preds = %if.end50
  %if_flags = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 26
  %26 = ptrtoint ptr %if_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %if_flags, align 4
  %and64 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %27, 32
  %28 = ptrtoint ptr %if_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %if_flags, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  %29 = ptrtoint ptr %if_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %if_flags, align 4
  %and71 = and i32 %30, -193
  %icmp6_dataun = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i, i32 0, i32 3
  %managed = getelementptr inbounds %struct.icmpv6_nd_ra, ptr %icmp6_dataun, i32 0, i32 1
  %31 = ptrtoint ptr %managed to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load72 = load i8, ptr %managed, align 1
  %32 = lshr i8 %bf.load72, 1
  %33 = and i8 %32, 64
  %34 = zext i8 %33 to i32
  %or76 = or i32 %and71, %34
  %35 = shl i8 %bf.load72, 1
  %36 = and i8 %35, -128
  %37 = zext i8 %36 to i32
  %or85 = or i32 %or76, %37
  store i32 %or85, ptr %if_flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %or85)
  %cmp88 = icmp ne i32 %30, %or85
  %spec.select = zext i1 %cmp88 to i8
  %accept_ra_defrtr = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 20
  %38 = ptrtoint ptr %accept_ra_defrtr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %accept_ra_defrtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool92.not = icmp eq i32 %39, 0
  br i1 %tobool92.not, label %if.end68.skip_defrtr_crit_edge, label %if.end97

if.end68.skip_defrtr_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_defrtr

if.end97:                                         ; preds = %if.end68
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %15, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 127
  %42 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nd_net.i, align 4
  %accept_ra_from_local = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 31
  %44 = ptrtoint ptr %accept_ra_from_local to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %accept_ra_from_local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool100.not = icmp eq i32 %45, 0
  br i1 %tobool100.not, label %land.lhs.true, label %if.end97.if.end110_crit_edge

if.end97.if.end110_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end97
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i, align 8
  %48 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i707 = zext i16 %49 to i32
  %add.ptr.i.i708 = getelementptr i8, ptr %47, i32 %conv.i.i707
  %saddr102 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i708, i32 0, i32 5
  %call104 = call i32 @ipv6_chk_addr(ptr noundef %43, ptr noundef %saddr102, ptr noundef %41, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true.if.end110_crit_edge, label %land.lhs.true.skip_defrtr_crit_edge

land.lhs.true.skip_defrtr_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_defrtr

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true.if.end110_crit_edge, %if.end97.if.end110_crit_edge
  %rt_lifetime = getelementptr inbounds %struct.icmpv6_nd_ra, ptr %icmp6_dataun, i32 0, i32 2
  %50 = ptrtoint ptr %rt_lifetime to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rt_lifetime, align 2
  %conv113 = zext i16 %51 to i32
  %52 = ptrtoint ptr %managed to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load116 = load i8, ptr %managed, align 1
  %bf.lshr117 = lshr i8 %bf.load116, 3
  %bf.clear118 = and i8 %bf.lshr117, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.clear118)
  %cmp120 = icmp eq i8 %bf.clear118, 2
  br i1 %cmp120, label %if.end110.if.then124_crit_edge, label %lor.lhs.false

if.end110.if.then124_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then124

lor.lhs.false:                                    ; preds = %if.end110
  %conv119 = zext i8 %bf.clear118 to i32
  %accept_ra_rtr_pref = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 25
  %53 = ptrtoint ptr %accept_ra_rtr_pref to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %accept_ra_rtr_pref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool123.not = icmp eq i32 %54, 0
  br i1 %tobool123.not, label %lor.lhs.false.if.then124_crit_edge, label %lor.lhs.false.if.end125_crit_edge

lor.lhs.false.if.end125_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end125

lor.lhs.false.if.then124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then124

if.then124:                                       ; preds = %lor.lhs.false.if.then124_crit_edge, %if.end110.if.then124_crit_edge
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %lor.lhs.false.if.end125_crit_edge
  %pref.0 = phi i32 [ 0, %if.then124 ], [ %conv119, %lor.lhs.false.if.end125_crit_edge ]
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i, align 8
  %57 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i711 = zext i16 %58 to i32
  %add.ptr.i.i712 = getelementptr i8, ptr %56, i32 %conv.i.i711
  %saddr127 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i712, i32 0, i32 5
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %11, align 8
  %call128 = call ptr @rt6_get_dflt_router(ptr noundef %43, ptr noundef %saddr127, ptr noundef %60) #14
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.end156.thread, label %if.then130

if.end156.thread:                                 ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  %ra_defrtr_metric819 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 21
  %61 = ptrtoint ptr %ra_defrtr_metric819 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ra_defrtr_metric819, align 4
  br label %do.end170

if.then130:                                       ; preds = %if.end125
  %fib6_nh = getelementptr inbounds %struct.fib6_info, ptr %call128, i32 0, i32 21
  %nhc_gw = getelementptr inbounds %struct.fib6_info, ptr %call128, i32 1, i32 4
  %63 = ptrtoint ptr %fib6_nh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fib6_nh, align 4
  %65 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i, align 8
  %67 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i715 = zext i16 %68 to i32
  %add.ptr.i.i716 = getelementptr i8, ptr %66, i32 %conv.i.i715
  %saddr136 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i716, i32 0, i32 5
  %call137 = call ptr @ip6_neigh_lookup(ptr noundef %nhc_gw, ptr noundef %64, ptr noundef null, ptr noundef %saddr136) #14
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %do.body141, label %land.lhs.true159

do.body141:                                       ; preds = %if.then130
  %call142 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %do.body141.do.end154_crit_edge, label %do.end147

do.body141.do.end154_crit_edge:                   ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end154

do.end147:                                        ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #16
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #17
  br label %do.end154

do.end154:                                        ; preds = %do.end147, %do.body141.do.end154_crit_edge
  call fastcc void @fib6_info_release(ptr noundef nonnull %call128)
  br label %cleanup518

land.lhs.true159:                                 ; preds = %if.then130
  %ra_defrtr_metric = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 21
  %69 = ptrtoint ptr %ra_defrtr_metric to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ra_defrtr_metric, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp160 = icmp eq i16 %51, 0
  br i1 %cmp160, label %land.lhs.true159.if.then165_crit_edge, label %lor.lhs.false162

land.lhs.true159.if.then165_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then165

lor.lhs.false162:                                 ; preds = %land.lhs.true159
  %fib6_metric = getelementptr inbounds %struct.fib6_info, ptr %call128, i32 0, i32 12
  %71 = ptrtoint ptr %fib6_metric to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fib6_metric, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %70)
  %cmp163.not = icmp eq i32 %72, %70
  br i1 %cmp163.not, label %if.end235, label %lor.lhs.false162.if.then165_crit_edge

lor.lhs.false162.if.then165_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then165

if.then165:                                       ; preds = %lor.lhs.false162.if.then165_crit_edge, %land.lhs.true159.if.then165_crit_edge
  %call166 = call i32 @ip6_del_rt(ptr noundef %43, ptr noundef nonnull %call128, i1 noundef zeroext false) #14
  br label %do.end170

do.end170:                                        ; preds = %if.then165, %if.end156.thread
  %73 = phi i32 [ %70, %if.then165 ], [ %62, %if.end156.thread ]
  %neigh.0820 = phi ptr [ %call137, %if.then165 ], [ null, %if.end156.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool173.not = icmp eq i16 %51, 0
  br i1 %tobool173.not, label %do.end170.if.end238_crit_edge, label %do.end177

do.end170.if.end238_crit_edge:                    ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end238

do.end177:                                        ; preds = %do.end170
  %74 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i, align 8
  %76 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i719 = zext i16 %77 to i32
  %add.ptr.i.i720 = getelementptr i8, ptr %75, i32 %conv.i.i719
  %saddr179 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i720, i32 0, i32 5
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %11, align 8
  %call180 = call ptr @rt6_add_dflt_router(ptr noundef %43, ptr noundef %saddr179, ptr noundef %79, i32 noundef %pref.0, i32 noundef %73) #14
  %tobool181.not = icmp eq ptr %call180, null
  br i1 %tobool181.not, label %do.body184, label %if.end198

do.body184:                                       ; preds = %do.end177
  %call185 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %do.body184.cleanup518_crit_edge, label %do.end190

do.body184.cleanup518_crit_edge:                  ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #16
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #17
  br label %cleanup518

if.end198:                                        ; preds = %do.end177
  %fib6_nh199 = getelementptr inbounds %struct.fib6_info, ptr %call180, i32 0, i32 21
  %nhc_gw202 = getelementptr inbounds %struct.fib6_info, ptr %call180, i32 1, i32 4
  %80 = ptrtoint ptr %fib6_nh199 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fib6_nh199, align 4
  %82 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i, align 8
  %84 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i723 = zext i16 %85 to i32
  %add.ptr.i.i724 = getelementptr i8, ptr %83, i32 %conv.i.i723
  %saddr208 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i724, i32 0, i32 5
  %call209 = call ptr @ip6_neigh_lookup(ptr noundef %nhc_gw202, ptr noundef %81, ptr noundef null, ptr noundef %saddr208) #14
  %tobool210.not = icmp eq ptr %call209, null
  br i1 %tobool210.not, label %do.body213, label %if.end235.thread837

do.body213:                                       ; preds = %if.end198
  %call214 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %do.body213.do.end226_crit_edge, label %do.end219

do.body213.do.end226_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end226

do.end219:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #16
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #17
  br label %do.end226

do.end226:                                        ; preds = %do.end219, %do.body213.do.end226_crit_edge
  call fastcc void @fib6_info_release(ptr noundef nonnull %call180)
  br label %cleanup518

if.end235.thread837:                              ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.neighbour, ptr %call209, i32 0, i32 16
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  %or228 = or i32 %87, 128
  store i32 %or228, ptr %flags, align 4
  br label %if.then237

if.end235:                                        ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #16
  %fib6_flags = getelementptr inbounds %struct.fib6_info, ptr %call128, i32 0, i32 9
  %88 = ptrtoint ptr %fib6_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fib6_flags, align 4
  %and231 = and i32 %89, -402653185
  %shl = shl nuw nsw i32 %pref.0, 27
  %or232 = or i32 %and231, %shl
  store i32 %or232, ptr %fib6_flags, align 4
  br label %if.then237

if.then237:                                       ; preds = %if.end235, %if.end235.thread837
  %neigh.1842 = phi ptr [ %call209, %if.end235.thread837 ], [ %call137, %if.end235 ]
  %rt.1841 = phi ptr [ %call180, %if.end235.thread837 ], [ %call128, %if.end235 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %mul = mul nuw nsw i32 %conv113, 100
  %add = add i32 %90, %mul
  %expires1.i = getelementptr inbounds %struct.fib6_info, ptr %rt.1841, i32 0, i32 6
  %91 = ptrtoint ptr %expires1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add, ptr %expires1.i, align 4
  %fib6_flags.i = getelementptr inbounds %struct.fib6_info, ptr %rt.1841, i32 0, i32 9
  %92 = ptrtoint ptr %fib6_flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fib6_flags.i, align 4
  %or.i = or i32 %93, 4194304
  store i32 %or.i, ptr %fib6_flags.i, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %do.end170.if.end238_crit_edge
  %neigh.1836 = phi ptr [ %neigh.1842, %if.then237 ], [ %neigh.0820, %do.end170.if.end238_crit_edge ]
  %rt.1835 = phi ptr [ %rt.1841, %if.then237 ], [ null, %do.end170.if.end238_crit_edge ]
  %accept_ra_min_hop_limit = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 22
  %94 = ptrtoint ptr %accept_ra_min_hop_limit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %accept_ra_min_hop_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %95)
  %cmp240 = icmp slt i32 %95, 256
  br i1 %cmp240, label %land.lhs.true242, label %if.end238.skip_defrtr_crit_edge

if.end238.skip_defrtr_crit_edge:                  ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_defrtr

land.lhs.true242:                                 ; preds = %if.end238
  %96 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %icmp6_dataun, align 4
  %conv245 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool246.not = icmp eq i8 %97, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %conv245)
  %cmp254.not = icmp sgt i32 %95, %conv245
  %or.cond697 = select i1 %tobool246.not, i1 true, i1 %cmp254.not
  br i1 %or.cond697, label %land.lhs.true242.skip_defrtr_crit_edge, label %if.then256

land.lhs.true242.skip_defrtr_crit_edge:           ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_defrtr

if.then256:                                       ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #16
  %hop_limit262 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 1
  %98 = ptrtoint ptr %hop_limit262 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv245, ptr %hop_limit262, align 4
  %99 = ptrtoint ptr %icmp6_dataun to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %icmp6_dataun, align 4
  %conv266 = zext i8 %100 to i32
  call void @fib6_metric_set(ptr noundef %rt.1835, i32 noundef 10, i32 noundef %conv266) #14
  br label %skip_defrtr

skip_defrtr:                                      ; preds = %if.then256, %land.lhs.true242.skip_defrtr_crit_edge, %if.end238.skip_defrtr_crit_edge, %land.lhs.true.skip_defrtr_crit_edge, %if.end68.skip_defrtr_crit_edge
  %rt.2 = phi ptr [ %rt.1835, %if.then256 ], [ %rt.1835, %land.lhs.true242.skip_defrtr_crit_edge ], [ %rt.1835, %if.end238.skip_defrtr_crit_edge ], [ null, %land.lhs.true.skip_defrtr_crit_edge ], [ null, %if.end68.skip_defrtr_crit_edge ]
  %neigh.2 = phi ptr [ %neigh.1836, %if.then256 ], [ %neigh.1836, %land.lhs.true242.skip_defrtr_crit_edge ], [ %neigh.1836, %if.end238.skip_defrtr_crit_edge ], [ null, %land.lhs.true.skip_defrtr_crit_edge ], [ null, %if.end68.skip_defrtr_crit_edge ]
  %nd_parms = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 31
  %101 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %nd_parms, align 4
  %tobool273.not = icmp eq ptr %102, null
  br i1 %tobool273.not, label %skip_defrtr.skip_linkparms_crit_edge, label %if.then274

skip_defrtr.skip_linkparms_crit_edge:             ; preds = %skip_defrtr
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_linkparms

if.then274:                                       ; preds = %skip_defrtr
  %retrans_timer = getelementptr inbounds %struct.ra_msg, ptr %add.ptr.i, i32 0, i32 2
  %103 = ptrtoint ptr %retrans_timer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %retrans_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool275.not = icmp eq i32 %104, 0
  br i1 %tobool275.not, label %if.then274.if.end287_crit_edge, label %if.then279

if.then274.if.end287_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end287

if.then279:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #16
  %mul280 = mul i32 %104, 100
  %div281 = udiv i32 %mul280, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul280)
  %105 = icmp ult i32 %mul280, 1000
  %spec.store.select = select i1 %105, i32 1, i32 %div281
  %data_state.i = getelementptr inbounds %struct.neigh_parms, ptr %102, i32 0, i32 12
  call void @_set_bit(i32 noundef 4, ptr noundef %data_state.i) #14
  %arrayidx.i = getelementptr %struct.neigh_parms, ptr %102, i32 0, i32 11, i32 4
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %spec.store.select, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %tstamp = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 37
  %108 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tstamp, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then279, %if.then274.if.end287_crit_edge
  %send_ifinfo_notify.1 = phi i8 [ 1, %if.then279 ], [ %spec.select, %if.then274.if.end287_crit_edge ]
  %reachable_time = getelementptr inbounds %struct.ra_msg, ptr %add.ptr.i, i32 0, i32 1
  %109 = ptrtoint ptr %reachable_time to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reachable_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool288.not = icmp eq i32 %110, 0
  br i1 %tobool288.not, label %if.end287.if.end312_crit_edge, label %if.then293

if.end287.if.end312_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

if.then293:                                       ; preds = %if.end287
  %mul294 = mul i32 %110, 100
  %div295 = udiv i32 %mul294, 1000
  %111 = call i32 @llvm.umax.i32(i32 %div295, i32 10)
  %112 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nd_parms, align 4
  %arrayidx = getelementptr %struct.neigh_parms, ptr %113, i32 0, i32 11, i32 5
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %115)
  %cmp301.not = icmp eq i32 %111, %115
  br i1 %cmp301.not, label %if.then293.if.end312_crit_edge, label %if.then303

if.then293.if.end312_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

if.then303:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #16
  %data_state.i725 = getelementptr inbounds %struct.neigh_parms, ptr %113, i32 0, i32 12
  call void @_set_bit(i32 noundef 5, ptr noundef %data_state.i725) #14
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %111, ptr %arrayidx, align 4
  %117 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %nd_parms, align 4
  %mul306 = mul nuw nsw i32 %111, 3
  %data_state.i727 = getelementptr inbounds %struct.neigh_parms, ptr %118, i32 0, i32 12
  call void @_set_bit(i32 noundef 7, ptr noundef %data_state.i727) #14
  %arrayidx.i728 = getelementptr %struct.neigh_parms, ptr %118, i32 0, i32 11, i32 7
  %119 = ptrtoint ptr %arrayidx.i728 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %mul306, ptr %arrayidx.i728, align 4
  %call307 = call i32 @neigh_rand_reach_time(i32 noundef %111) #14
  %120 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nd_parms, align 4
  %reachable_time309 = getelementptr inbounds %struct.neigh_parms, ptr %121, i32 0, i32 10
  %122 = ptrtoint ptr %reachable_time309 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call307, ptr %reachable_time309, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %tstamp310 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 37
  %124 = ptrtoint ptr %tstamp310 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %tstamp310, align 4
  br label %if.end312

if.end312:                                        ; preds = %if.then303, %if.then293.if.end312_crit_edge, %if.end287.if.end312_crit_edge
  %send_ifinfo_notify.2 = phi i8 [ 1, %if.then303 ], [ %send_ifinfo_notify.1, %if.then293.if.end312_crit_edge ], [ %send_ifinfo_notify.1, %if.end287.if.end312_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %send_ifinfo_notify.2)
  %extract.t691 = icmp ne i8 %send_ifinfo_notify.2, 0
  br label %skip_linkparms

skip_linkparms:                                   ; preds = %if.end312, %skip_defrtr.skip_linkparms_crit_edge
  %send_ifinfo_notify.3.off0 = phi i1 [ %extract.t691, %if.end312 ], [ %cmp88, %skip_defrtr.skip_linkparms_crit_edge ]
  %tobool314.not = icmp eq ptr %neigh.2, null
  br i1 %tobool314.not, label %skip_linkparms.if.then315_crit_edge, label %skip_linkparms.if.then321_crit_edge

skip_linkparms.if.then321_crit_edge:              ; preds = %skip_linkparms
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then321

skip_linkparms.if.then315_crit_edge:              ; preds = %skip_linkparms
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then315

if.then315:                                       ; preds = %skip_linkparms.if.then315_crit_edge, %if.end50.if.then315_crit_edge, %if.end44.if.then315_crit_edge
  %rt.3859 = phi ptr [ %rt.2, %skip_linkparms.if.then315_crit_edge ], [ null, %if.end50.if.then315_crit_edge ], [ null, %if.end44.if.then315_crit_edge ]
  %send_ifinfo_notify.3.off0856 = phi i1 [ %send_ifinfo_notify.3.off0, %skip_linkparms.if.then315_crit_edge ], [ false, %if.end50.if.then315_crit_edge ], [ false, %if.end44.if.then315_crit_edge ]
  %125 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %head.i, align 8
  %127 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i731 = zext i16 %128 to i32
  %add.ptr.i.i732 = getelementptr i8, ptr %126, i32 %conv.i.i731
  %saddr317 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i732, i32 0, i32 5
  %129 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %11, align 8
  %call.i733 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %saddr317, ptr noundef %130) #14
  %tobool.not.i734.not = icmp eq ptr %call.i733, null
  br i1 %tobool.not.i734.not, label %if.end.i, label %if.then315.if.then321_crit_edge

if.then315.if.then321_crit_edge:                  ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then321

if.end.i:                                         ; preds = %if.then315
  %call.i.i = call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %saddr317, ptr noundef %130, i1 noundef zeroext true) #14
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool320.not = icmp eq ptr %call.i.i, null
  %or.cond884 = or i1 %cmp.i.i, %tobool320.not
  br i1 %or.cond884, label %if.end.i.if.end335_crit_edge, label %if.end.i.if.then321_crit_edge

if.end.i.if.then321_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then321

if.end.i.if.end335_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end335

if.then321:                                       ; preds = %if.end.i.if.then321_crit_edge, %if.then315.if.then321_crit_edge, %skip_linkparms.if.then321_crit_edge
  %neigh.4869 = phi ptr [ %call.i733, %if.then315.if.then321_crit_edge ], [ %neigh.2, %skip_linkparms.if.then321_crit_edge ], [ %call.i.i, %if.end.i.if.then321_crit_edge ]
  %send_ifinfo_notify.3.off0855868 = phi i1 [ %send_ifinfo_notify.3.off0856, %if.then315.if.then321_crit_edge ], [ %send_ifinfo_notify.3.off0, %skip_linkparms.if.then321_crit_edge ], [ %send_ifinfo_notify.3.off0856, %if.end.i.if.then321_crit_edge ]
  %rt.3858866 = phi ptr [ %rt.3859, %if.then315.if.then321_crit_edge ], [ %rt.2, %skip_linkparms.if.then321_crit_edge ], [ %rt.3859, %if.end.i.if.then321_crit_edge ]
  %arrayidx322 = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 1
  %131 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx322, align 4
  %tobool323.not = icmp eq ptr %132, null
  br i1 %tobool323.not, label %if.then321.if.end334_crit_edge, label %if.then324

if.then321.if.end334_crit_edge:                   ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end334

if.then324:                                       ; preds = %if.then321
  %133 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %11, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 56
  %135 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 32
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %138)
  %cond.i.i = icmp eq i16 %138, 32
  %..i.i = select i1 %cond.i.i, i32 2, i32 0
  %nd_opt_len.i.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %132, i32 0, i32 1
  %139 = ptrtoint ptr %nd_opt_len.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %nd_opt_len.i.i, align 1
  %conv.i.i735 = zext i8 %140 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i735, 3
  %conv.i.i.i = zext i8 %136 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 9
  %add2.i.i.i = add nuw nsw i32 %add.i.i.i, %..i.i
  %and.i.i.i = and i32 %add2.i.i.i, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %and.i.i.i)
  %cmp.not.i.i = icmp ne i32 %shl.i.i, %and.i.i.i
  %add.ptr.i.i736 = getelementptr %struct.nd_opt_hdr, ptr %132, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i736, i32 %..i.i
  %tobool328.not885 = icmp eq ptr %add.ptr2.i.i, null
  %tobool328.not = select i1 %cmp.not.i.i, i1 true, i1 %tobool328.not885
  br i1 %tobool328.not, label %if.then324.out_crit_edge, label %if.then324.if.end334_crit_edge

if.then324.if.end334_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end334

if.then324.out_crit_edge:                         ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end334:                                        ; preds = %if.then324.if.end334_crit_edge, %if.then321.if.end334_crit_edge
  %lladdr.0 = phi ptr [ %add.ptr2.i.i, %if.then324.if.end334_crit_edge ], [ null, %if.then321.if.end334_crit_edge ]
  %141 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %11, align 8
  %call.i737 = call i32 @neigh_update(ptr noundef nonnull %neigh.4869, ptr noundef %lladdr.0, i8 noundef zeroext 4, i32 noundef 71, i32 noundef 0) #14
  %ndisc_ops.i.i = getelementptr inbounds %struct.net_device, ptr %142, i32 0, i32 46
  %143 = ptrtoint ptr %ndisc_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ndisc_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i, label %if.end334.if.end335_crit_edge, label %land.lhs.true.i.i

if.end334.if.end335_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end335

land.lhs.true.i.i:                                ; preds = %if.end334
  %update.i.i = getelementptr inbounds %struct.ndisc_ops, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %update.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %update.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %146, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end335_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end335_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end335

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void %146(ptr noundef %142, ptr noundef nonnull %neigh.4869, i32 noundef 71, i8 noundef zeroext -122, ptr noundef nonnull %ndopts) #14
  br label %if.end335

if.end335:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end335_crit_edge, %if.end334.if.end335_crit_edge, %if.end.i.if.end335_crit_edge
  %tobool320.not876 = phi i1 [ true, %if.end.i.if.end335_crit_edge ], [ false, %if.end334.if.end335_crit_edge ], [ false, %land.lhs.true.i.i.if.end335_crit_edge ], [ false, %if.then.i.i ]
  %neigh.4871 = phi ptr [ null, %if.end.i.if.end335_crit_edge ], [ %neigh.4869, %if.end334.if.end335_crit_edge ], [ %neigh.4869, %land.lhs.true.i.i.if.end335_crit_edge ], [ %neigh.4869, %if.then.i.i ]
  %rt.3858867 = phi ptr [ %rt.3859, %if.end.i.if.end335_crit_edge ], [ %rt.3858866, %if.end334.if.end335_crit_edge ], [ %rt.3858866, %land.lhs.true.i.i.if.end335_crit_edge ], [ %rt.3858866, %if.then.i.i ]
  %send_ifinfo_notify.3.off0857 = phi i1 [ %send_ifinfo_notify.3.off0856, %if.end.i.if.end335_crit_edge ], [ %send_ifinfo_notify.3.off0855868, %if.end334.if.end335_crit_edge ], [ %send_ifinfo_notify.3.off0855868, %land.lhs.true.i.i.if.end335_crit_edge ], [ %send_ifinfo_notify.3.off0855868, %if.then.i.i ]
  %147 = ptrtoint ptr %cnf.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cnf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i739 = icmp eq i32 %148, 0
  %149 = ptrtoint ptr %accept_ra3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %accept_ra3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp.i741 = icmp eq i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool47.i742 = icmp ne i32 %150, 0
  %tobool4.i743 = select i1 %tobool.not.i739, i1 %tobool47.i742, i1 %cmp.i741
  br i1 %tobool4.i743, label %if.end341, label %if.end335.out_crit_edge

if.end335.out_crit_edge:                          ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end341:                                        ; preds = %if.end335
  %accept_ra_from_local343 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 31
  %151 = ptrtoint ptr %accept_ra_from_local343 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %accept_ra_from_local343, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool344.not = icmp eq i32 %152, 0
  br i1 %tobool344.not, label %land.lhs.true345, label %if.end341.if.end357_crit_edge

if.end341.if.end357_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

land.lhs.true345:                                 ; preds = %if.end341
  %153 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %15, align 4
  %nd_net.i744 = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 127
  %155 = ptrtoint ptr %nd_net.i744 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %nd_net.i744, align 4
  %157 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %head.i, align 8
  %159 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i747 = zext i16 %160 to i32
  %add.ptr.i.i748 = getelementptr i8, ptr %158, i32 %conv.i.i747
  %saddr349 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i748, i32 0, i32 5
  %call351 = call i32 @ipv6_chk_addr(ptr noundef %156, ptr noundef %saddr349, ptr noundef %154, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %land.lhs.true345.if.end357_crit_edge, label %land.lhs.true345.skip_routeinfo_crit_edge

land.lhs.true345.skip_routeinfo_crit_edge:        ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

land.lhs.true345.if.end357_crit_edge:             ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.end357:                                        ; preds = %land.lhs.true345.if.end357_crit_edge, %if.end341.if.end357_crit_edge
  %accept_ra_rtr_pref359 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 25
  %161 = ptrtoint ptr %accept_ra_rtr_pref359 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %accept_ra_rtr_pref359, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool360.not = icmp eq i32 %162, 0
  br i1 %tobool360.not, label %if.end357.skip_routeinfo_crit_edge, label %land.lhs.true361

if.end357.skip_routeinfo_crit_edge:               ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

land.lhs.true361:                                 ; preds = %if.end357
  %nd_opts_ri = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 1
  %163 = ptrtoint ptr %nd_opts_ri to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %nd_opts_ri, align 4
  %tobool362.not = icmp eq ptr %164, null
  br i1 %tobool362.not, label %land.lhs.true361.skip_routeinfo_crit_edge, label %for.body.lr.ph

land.lhs.true361.skip_routeinfo_crit_edge:        ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

for.body.lr.ph:                                   ; preds = %land.lhs.true361
  %accept_ra_defrtr386 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 20
  %accept_ra_rt_info_min_plen = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 27
  %accept_ra_rt_info_max_plen = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 28
  %nd_opts_ri_end = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %land.lhs.true.i757.for.body_crit_edge, %for.body.lr.ph
  %p.0887 = phi ptr [ %164, %for.body.lr.ph ], [ %add.ptr.i755, %land.lhs.true.i757.for.body_crit_edge ]
  %165 = ptrtoint ptr %ndisc_nodetype to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %bf.load367 = load i32, ptr %ndisc_nodetype, align 2
  %166 = and i32 %bf.load367, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %166)
  %cmp372 = icmp eq i32 %166, 33554432
  br i1 %cmp372, label %land.lhs.true374, label %for.body.if.end379_crit_edge

for.body.if.end379_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end379

land.lhs.true374:                                 ; preds = %for.body
  %prefix_len = getelementptr inbounds %struct.route_info, ptr %p.0887, i32 0, i32 2
  %167 = ptrtoint ptr %prefix_len to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %prefix_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp376 = icmp eq i8 %168, 0
  br i1 %cmp376, label %land.lhs.true374.cleanup409_crit_edge, label %land.lhs.true374.if.end379_crit_edge

land.lhs.true374.if.end379_crit_edge:             ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end379

land.lhs.true374.cleanup409_crit_edge:            ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup409

if.end379:                                        ; preds = %land.lhs.true374.if.end379_crit_edge, %for.body.if.end379_crit_edge
  %prefix_len380 = getelementptr inbounds %struct.route_info, ptr %p.0887, i32 0, i32 2
  %169 = ptrtoint ptr %prefix_len380 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %prefix_len380, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp382 = icmp eq i8 %170, 0
  br i1 %cmp382, label %land.lhs.true384, label %if.end379.if.end389_crit_edge

if.end379.if.end389_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end389

land.lhs.true384:                                 ; preds = %if.end379
  %171 = ptrtoint ptr %accept_ra_defrtr386 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %accept_ra_defrtr386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool387.not = icmp eq i32 %172, 0
  br i1 %tobool387.not, label %land.lhs.true384.cleanup409_crit_edge, label %land.lhs.true384.if.end389_crit_edge

land.lhs.true384.if.end389_crit_edge:             ; preds = %land.lhs.true384
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end389

land.lhs.true384.cleanup409_crit_edge:            ; preds = %land.lhs.true384
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup409

if.end389:                                        ; preds = %land.lhs.true384.if.end389_crit_edge, %if.end379.if.end389_crit_edge
  %conv391 = zext i8 %170 to i32
  %173 = ptrtoint ptr %accept_ra_rt_info_min_plen to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %accept_ra_rt_info_min_plen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %conv391)
  %cmp393 = icmp sgt i32 %174, %conv391
  br i1 %cmp393, label %if.end389.cleanup409_crit_edge, label %if.end396

if.end389.cleanup409_crit_edge:                   ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup409

if.end396:                                        ; preds = %if.end389
  %175 = ptrtoint ptr %accept_ra_rt_info_max_plen to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %accept_ra_rt_info_max_plen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %conv391)
  %cmp400 = icmp slt i32 %176, %conv391
  br i1 %cmp400, label %if.end396.cleanup409_crit_edge, label %if.end403

if.end396.cleanup409_crit_edge:                   ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup409

if.end403:                                        ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #16
  %177 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %11, align 8
  %nd_opt_len = getelementptr inbounds %struct.nd_opt_hdr, ptr %p.0887, i32 0, i32 1
  %179 = ptrtoint ptr %nd_opt_len to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %nd_opt_len, align 1
  %conv404 = zext i8 %180 to i32
  %shl405 = shl nuw nsw i32 %conv404, 3
  %181 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %head.i, align 8
  %183 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i751 = zext i16 %184 to i32
  %add.ptr.i.i752 = getelementptr i8, ptr %182, i32 %conv.i.i751
  %saddr407 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i752, i32 0, i32 5
  %call408 = call i32 @rt6_route_rcv(ptr noundef %178, ptr noundef nonnull %p.0887, i32 noundef %shl405, ptr noundef %saddr407) #14
  br label %cleanup409

cleanup409:                                       ; preds = %if.end403, %if.end396.cleanup409_crit_edge, %if.end389.cleanup409_crit_edge, %land.lhs.true384.cleanup409_crit_edge, %land.lhs.true374.cleanup409_crit_edge
  %185 = ptrtoint ptr %nd_opts_ri_end to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %nd_opts_ri_end, align 4
  %cmp.not.i = icmp ult ptr %p.0887, %186
  br i1 %cmp.not.i, label %if.end.i754, label %cleanup409.skip_routeinfo_crit_edge

cleanup409.skip_routeinfo_crit_edge:              ; preds = %cleanup409
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

if.end.i754:                                      ; preds = %cleanup409
  %187 = ptrtoint ptr %p.0887 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %p.0887, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end.i754
  %cur.addr.0.i = phi ptr [ %p.0887, %if.end.i754 ], [ %add.ptr.i755, %land.rhs.i.do.body.i_crit_edge ]
  %nd_opt_len.i = getelementptr inbounds %struct.nd_opt_hdr, ptr %cur.addr.0.i, i32 0, i32 1
  %189 = ptrtoint ptr %nd_opt_len.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %nd_opt_len.i, align 1
  %conv3.i = zext i8 %190 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 3
  %add.ptr.i755 = getelementptr i8, ptr %cur.addr.0.i, i32 %shl.i
  %cmp4.i = icmp ult ptr %add.ptr.i755, %186
  br i1 %cmp4.i, label %land.rhs.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %191 = ptrtoint ptr %add.ptr.i755 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %add.ptr.i755, align 1
  %cmp8.not.i = icmp eq i8 %192, %188
  br i1 %cmp8.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %cmp10.not.i = icmp ugt ptr %add.ptr.i755, %186
  br i1 %cmp10.not.i, label %do.end.i.skip_routeinfo_crit_edge, label %land.lhs.true.i757

do.end.i.skip_routeinfo_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

land.lhs.true.i757:                               ; preds = %do.end.i
  %193 = ptrtoint ptr %add.ptr.i755 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %add.ptr.i755, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %194, i8 %188)
  %cmp14.i = icmp ne i8 %194, %188
  %tobool365.not = icmp eq ptr %add.ptr.i755, null
  %or.cond905 = select i1 %cmp14.i, i1 true, i1 %tobool365.not
  br i1 %or.cond905, label %land.lhs.true.i757.skip_routeinfo_crit_edge, label %land.lhs.true.i757.for.body_crit_edge

land.lhs.true.i757.for.body_crit_edge:            ; preds = %land.lhs.true.i757
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

land.lhs.true.i757.skip_routeinfo_crit_edge:      ; preds = %land.lhs.true.i757
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_routeinfo

skip_routeinfo:                                   ; preds = %land.lhs.true.i757.skip_routeinfo_crit_edge, %do.end.i.skip_routeinfo_crit_edge, %cleanup409.skip_routeinfo_crit_edge, %land.lhs.true361.skip_routeinfo_crit_edge, %if.end357.skip_routeinfo_crit_edge, %land.lhs.true345.skip_routeinfo_crit_edge
  %195 = ptrtoint ptr %ndisc_nodetype to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %bf.load415 = load i32, ptr %ndisc_nodetype, align 2
  %196 = and i32 %bf.load415, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %196)
  %cmp420 = icmp eq i32 %196, 33554432
  br i1 %cmp420, label %skip_routeinfo.out_crit_edge, label %if.end426

skip_routeinfo.out_crit_edge:                     ; preds = %skip_routeinfo
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end426:                                        ; preds = %skip_routeinfo
  %accept_ra_pinfo = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 23
  %197 = ptrtoint ptr %accept_ra_pinfo to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %accept_ra_pinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool428.not = icmp eq i32 %198, 0
  br i1 %tobool428.not, label %if.end426.if.end452_crit_edge, label %land.lhs.true429

if.end426.if.end452_crit_edge:                    ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end452

land.lhs.true429:                                 ; preds = %if.end426
  %arrayidx431 = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 3
  %199 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx431, align 4
  %tobool432.not = icmp eq ptr %200, null
  br i1 %tobool432.not, label %land.lhs.true429.if.end452_crit_edge, label %for.cond437.preheader

land.lhs.true429.if.end452_crit_edge:             ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end452

for.cond437.preheader:                            ; preds = %land.lhs.true429
  %arrayidx444 = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 1
  br label %for.body439

for.body439:                                      ; preds = %land.lhs.true.i776.for.body439_crit_edge, %for.cond437.preheader
  %p434.0889 = phi ptr [ %200, %for.cond437.preheader ], [ %add.ptr.i767, %land.lhs.true.i776.for.body439_crit_edge ]
  %201 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %11, align 8
  %nd_opt_len440 = getelementptr inbounds %struct.nd_opt_hdr, ptr %p434.0889, i32 0, i32 1
  %203 = ptrtoint ptr %nd_opt_len440 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %nd_opt_len440, align 1
  %conv441 = zext i8 %204 to i32
  %shl442 = shl nuw nsw i32 %conv441, 3
  %205 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx444, align 4
  %cmp445 = icmp ne ptr %206, null
  call void @addrconf_prefix_rcv(ptr noundef %202, ptr noundef nonnull %p434.0889, i32 noundef %shl442, i1 noundef zeroext %cmp445) #14
  %207 = ptrtoint ptr %ndopts to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ndopts, align 4
  %cmp.not.i760 = icmp ult ptr %p434.0889, %208
  br i1 %cmp.not.i760, label %if.end.i762, label %for.body439.if.end452_crit_edge

for.body439.if.end452_crit_edge:                  ; preds = %for.body439
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end452

if.end.i762:                                      ; preds = %for.body439
  %209 = ptrtoint ptr %p434.0889 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %p434.0889, align 1
  br label %do.body.i769

do.body.i769:                                     ; preds = %land.rhs.i771.do.body.i769_crit_edge, %if.end.i762
  %cur.addr.0.i763 = phi ptr [ %p434.0889, %if.end.i762 ], [ %add.ptr.i767, %land.rhs.i771.do.body.i769_crit_edge ]
  %nd_opt_len.i764 = getelementptr inbounds %struct.nd_opt_hdr, ptr %cur.addr.0.i763, i32 0, i32 1
  %211 = ptrtoint ptr %nd_opt_len.i764 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %nd_opt_len.i764, align 1
  %conv3.i765 = zext i8 %212 to i32
  %shl.i766 = shl nuw nsw i32 %conv3.i765, 3
  %add.ptr.i767 = getelementptr i8, ptr %cur.addr.0.i763, i32 %shl.i766
  %cmp4.i768 = icmp ult ptr %add.ptr.i767, %208
  br i1 %cmp4.i768, label %land.rhs.i771, label %do.body.i769.do.end.i773_crit_edge

do.body.i769.do.end.i773_crit_edge:               ; preds = %do.body.i769
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i773

land.rhs.i771:                                    ; preds = %do.body.i769
  %213 = ptrtoint ptr %add.ptr.i767 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr.i767, align 1
  %cmp8.not.i770 = icmp eq i8 %214, %210
  br i1 %cmp8.not.i770, label %land.rhs.i771.do.end.i773_crit_edge, label %land.rhs.i771.do.body.i769_crit_edge

land.rhs.i771.do.body.i769_crit_edge:             ; preds = %land.rhs.i771
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i769

land.rhs.i771.do.end.i773_crit_edge:              ; preds = %land.rhs.i771
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i773

do.end.i773:                                      ; preds = %land.rhs.i771.do.end.i773_crit_edge, %do.body.i769.do.end.i773_crit_edge
  %cmp10.not.i772 = icmp ugt ptr %add.ptr.i767, %208
  br i1 %cmp10.not.i772, label %do.end.i773.if.end452_crit_edge, label %land.lhs.true.i776

do.end.i773.if.end452_crit_edge:                  ; preds = %do.end.i773
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end452

land.lhs.true.i776:                               ; preds = %do.end.i773
  %215 = ptrtoint ptr %add.ptr.i767 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %add.ptr.i767, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %216, i8 %210)
  %cmp14.i774 = icmp ne i8 %216, %210
  %tobool438.not = icmp eq ptr %add.ptr.i767, null
  %or.cond = select i1 %cmp14.i774, i1 true, i1 %tobool438.not
  br i1 %or.cond, label %land.lhs.true.i776.if.end452_crit_edge, label %land.lhs.true.i776.for.body439_crit_edge

land.lhs.true.i776.for.body439_crit_edge:         ; preds = %land.lhs.true.i776
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body439

land.lhs.true.i776.if.end452_crit_edge:           ; preds = %land.lhs.true.i776
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end452

if.end452:                                        ; preds = %land.lhs.true.i776.if.end452_crit_edge, %do.end.i773.if.end452_crit_edge, %for.body439.if.end452_crit_edge, %land.lhs.true429.if.end452_crit_edge, %if.end426.if.end452_crit_edge
  %arrayidx454 = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 5
  %217 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx454, align 4
  %tobool455.not = icmp eq ptr %218, null
  br i1 %tobool455.not, label %if.end452.if.end488_crit_edge, label %land.lhs.true456

if.end452.if.end488_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end488

land.lhs.true456:                                 ; preds = %if.end452
  %accept_ra_mtu = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 41
  %219 = ptrtoint ptr %accept_ra_mtu to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %accept_ra_mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool458.not = icmp eq i32 %220, 0
  br i1 %tobool458.not, label %land.lhs.true456.if.end488_crit_edge, label %if.then459

land.lhs.true456.if.end488_crit_edge:             ; preds = %land.lhs.true456
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end488

if.then459:                                       ; preds = %land.lhs.true456
  %add.ptr463 = getelementptr %struct.nd_opt_hdr, ptr %218, i32 2
  %221 = ptrtoint ptr %add.ptr463 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %n.0.copyload = load i32, ptr %add.ptr463, align 1
  %ra_mtu = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 39
  %222 = ptrtoint ptr %ra_mtu to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %ra_mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %n.0.copyload)
  %cmp464.not = icmp eq i32 %223, %n.0.copyload
  br i1 %cmp464.not, label %if.then459.if.end468_crit_edge, label %if.then466

if.then459.if.end468_crit_edge:                   ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end468

if.then466:                                       ; preds = %if.then459
  call void @__sanitizer_cov_trace_pc() #16
  %224 = ptrtoint ptr %ra_mtu to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %n.0.copyload, ptr %ra_mtu, align 4
  br label %if.end468

if.end468:                                        ; preds = %if.then466, %if.then459.if.end468_crit_edge
  %send_ifinfo_notify.4.off0 = phi i1 [ true, %if.then466 ], [ %send_ifinfo_notify.3.off0857, %if.then459.if.end468_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %n.0.copyload)
  %cmp469 = icmp ult i32 %n.0.copyload, 1280
  br i1 %cmp469, label %if.end468.if.end488_crit_edge, label %lor.lhs.false471

if.end468.if.end488_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end488

lor.lhs.false471:                                 ; preds = %if.end468
  %225 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %11, align 8
  %mtu472 = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 20
  %227 = ptrtoint ptr %mtu472 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %mtu472, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.copyload, i32 %228)
  %cmp473 = icmp ugt i32 %n.0.copyload, %228
  br i1 %cmp473, label %lor.lhs.false471.if.end488_crit_edge, label %if.else479

lor.lhs.false471.if.end488_crit_edge:             ; preds = %lor.lhs.false471
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end488

if.else479:                                       ; preds = %lor.lhs.false471
  %mtu6 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 2
  %229 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mtu6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %n.0.copyload)
  %cmp481.not = icmp eq i32 %230, %n.0.copyload
  br i1 %cmp481.not, label %if.else479.if.end488_crit_edge, label %if.then483

if.else479.if.end488_crit_edge:                   ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end488

if.then483:                                       ; preds = %if.else479
  call void @__sanitizer_cov_trace_pc() #16
  %231 = ptrtoint ptr %mtu6 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %n.0.copyload, ptr %mtu6, align 4
  call void @fib6_metric_set(ptr noundef %rt.3858867, i32 noundef 2, i32 noundef %n.0.copyload) #14
  %232 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %11, align 8
  call void @rt6_mtu_change(ptr noundef %233, i32 noundef %n.0.copyload) #14
  br label %if.end488

if.end488:                                        ; preds = %if.then483, %if.else479.if.end488_crit_edge, %lor.lhs.false471.if.end488_crit_edge, %if.end468.if.end488_crit_edge, %land.lhs.true456.if.end488_crit_edge, %if.end452.if.end488_crit_edge
  %send_ifinfo_notify.5.off0 = phi i1 [ %send_ifinfo_notify.3.off0857, %land.lhs.true456.if.end488_crit_edge ], [ %send_ifinfo_notify.3.off0857, %if.end452.if.end488_crit_edge ], [ %send_ifinfo_notify.4.off0, %if.else479.if.end488_crit_edge ], [ %send_ifinfo_notify.4.off0, %if.then483 ], [ %send_ifinfo_notify.4.off0, %lor.lhs.false471.if.end488_crit_edge ], [ %send_ifinfo_notify.4.off0, %if.end468.if.end488_crit_edge ]
  %nd_useropts = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 3
  %234 = ptrtoint ptr %nd_useropts to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %nd_useropts, align 4
  %tobool489.not = icmp eq ptr %235, null
  br i1 %tobool489.not, label %if.end488.out_crit_edge, label %for.body495.lr.ph

if.end488.out_crit_edge:                          ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body495.lr.ph:                                ; preds = %if.end488
  %nd_useropts_end = getelementptr inbounds %struct.ndisc_options, ptr %ndopts, i32 0, i32 4
  br label %for.body495

for.body495:                                      ; preds = %ndisc_next_useropt.exit.for.body495_crit_edge, %for.body495.lr.ph
  %p491.0891 = phi ptr [ %235, %for.body495.lr.ph ], [ %add.ptr.i799, %ndisc_next_useropt.exit.for.body495_crit_edge ]
  %236 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %head.i, align 8
  %238 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %transport_header.i, align 2
  %conv.i.i780 = zext i16 %239 to i32
  %add.ptr.i.i781 = getelementptr i8, ptr %237, i32 %conv.i.i780
  %240 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %11, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %241, i32 0, i32 127
  %242 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %nd_net.i.i, align 4
  %nd_opt_len.i782 = getelementptr inbounds %struct.nd_opt_hdr, ptr %p491.0891, i32 0, i32 1
  %244 = ptrtoint ptr %nd_opt_len.i782 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %nd_opt_len.i782, align 1
  %conv.i783 = zext i8 %245 to i32
  %shl.i784 = shl nuw nsw i32 %conv.i783, 3
  %sub.i = add nuw nsw i32 %shl.i784, 19
  %and.i785 = and i32 %sub.i, 4088
  %sub.i.i.i = add nuw nsw i32 %and.i785, 39
  %and.i.i.i786 = and i32 %sub.i.i.i, 8188
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %and.i.i.i786, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i787 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i787, label %for.body495.errout.i_crit_edge, label %if.end.i788

for.body495.errout.i_crit_edge:                   ; preds = %for.body495
  call void @__sanitizer_cov_trace_pc() #16
  br label %errout.i

if.end.i788:                                      ; preds = %for.body495
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %246 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool.i.not.i.i.i = icmp eq i32 %247, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end.i788.skb_tailroom.exit.i.i_crit_edge

if.end.i788.skb_tailroom.exit.i.i_crit_edge:      ; preds = %if.end.i788
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i788
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %248 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %250 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %249 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %251 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end.i788.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %if.end.i788.skb_tailroom.exit.i.i_crit_edge ]
  %sub.i.i51.i = add nuw nsw i32 %and.i785, 19
  %and.i.i52.i = and i32 %sub.i.i51.i, 8184
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %and.i.i52.i)
  %cmp.i.i789 = icmp slt i32 %cond.i.i.i, %and.i.i52.i
  br i1 %cmp.i.i789, label %skb_tailroom.exit.i.i.nla_put_failure.i_crit_edge, label %nlmsg_put.exit.i, !prof !133

skb_tailroom.exit.i.i.nla_put_failure.i_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 68, i32 noundef %and.i785, i32 noundef 0) #14
  %tobool7.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool7.not.i, label %nlmsg_put.exit.i.nla_put_failure.i_crit_edge, label %if.end9.i

nlmsg_put.exit.i.nla_put_failure.i_crit_edge:     ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure.i

if.end9.i:                                        ; preds = %nlmsg_put.exit.i
  %add.ptr.i53.i = getelementptr i8, ptr %call3.i.i, i32 16
  %252 = ptrtoint ptr %add.ptr.i53.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 10, ptr %add.ptr.i53.i, align 4
  %253 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %11, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %254, i32 0, i32 17
  %255 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %ifindex.i, align 4
  %nduseropt_ifindex.i = getelementptr i8, ptr %call3.i.i, i32 20
  %257 = ptrtoint ptr %nduseropt_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %nduseropt_ifindex.i, align 4
  %258 = ptrtoint ptr %add.ptr.i.i781 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %add.ptr.i.i781, align 4
  %nduseropt_icmp_type.i = getelementptr i8, ptr %call3.i.i, i32 24
  %260 = ptrtoint ptr %nduseropt_icmp_type.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %nduseropt_icmp_type.i, align 4
  %icmp6_code.i = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i781, i32 0, i32 1
  %261 = ptrtoint ptr %icmp6_code.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %icmp6_code.i, align 1
  %nduseropt_icmp_code.i = getelementptr i8, ptr %call3.i.i, i32 25
  %263 = ptrtoint ptr %nduseropt_icmp_code.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %nduseropt_icmp_code.i, align 1
  %264 = ptrtoint ptr %nd_opt_len.i782 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %nd_opt_len.i782, align 1
  %conv12.i = zext i8 %265 to i16
  %shl13.i = shl nuw nsw i16 %conv12.i, 3
  %nduseropt_opts_len.i = getelementptr i8, ptr %call3.i.i, i32 18
  %266 = ptrtoint ptr %nduseropt_opts_len.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %shl13.i, ptr %nduseropt_opts_len.i, align 2
  %add.ptr.i790 = getelementptr i8, ptr %call3.i.i, i32 32
  %267 = load i8, ptr %nd_opt_len.i782, align 1
  %conv16.i = zext i8 %267 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 3
  %268 = call ptr @memcpy(ptr %add.ptr.i790, ptr %p491.0891, i32 %shl17.i)
  %269 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %head.i, align 8
  %271 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i791 = zext i16 %272 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %270, i32 %conv.i.i.i791
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %call.i.i792 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 16, ptr noundef %saddr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i792)
  %tobool20.not.i = icmp eq i32 %call.i.i792, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end9.i.nla_put_failure.i_crit_edge

if.end9.i.nla_put_failure.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure.i

if.end22.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %tail.i.i54.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %273 = ptrtoint ptr %tail.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %tail.i.i54.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %274 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %275 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  call void @rtnl_notify(ptr noundef nonnull %call.i.i.i, ptr noundef %243, i32 noundef 0, i32 noundef 20, ptr noundef null, i32 noundef 2592) #14
  br label %ndisc_ra_useropt.exit

nla_put_failure.i:                                ; preds = %if.end9.i.nla_put_failure.i_crit_edge, %nlmsg_put.exit.i.nla_put_failure.i_crit_edge, %skb_tailroom.exit.i.i.nla_put_failure.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %errout.i

errout.i:                                         ; preds = %nla_put_failure.i, %for.body495.errout.i_crit_edge
  %err.0.i = phi i32 [ -90, %nla_put_failure.i ], [ -105, %for.body495.errout.i_crit_edge ]
  call void @rtnl_set_sk_err(ptr noundef %243, i32 noundef 20, i32 noundef %err.0.i) #14
  br label %ndisc_ra_useropt.exit

ndisc_ra_useropt.exit:                            ; preds = %errout.i, %if.end22.i
  %276 = ptrtoint ptr %nd_useropts_end to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %nd_useropts_end, align 4
  %cmp.not.i794 = icmp ult ptr %p491.0891, %277
  br i1 %cmp.not.i794, label %do.body.preheader.i, label %ndisc_ra_useropt.exit.ndisc_next_useropt.exit.thread_crit_edge

ndisc_ra_useropt.exit.ndisc_next_useropt.exit.thread_crit_edge: ; preds = %ndisc_ra_useropt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit.thread

do.body.preheader.i:                              ; preds = %ndisc_ra_useropt.exit
  %278 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %11, align 8
  %ndisc_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %279, i32 0, i32 46
  br label %do.body.i800

do.body.i800:                                     ; preds = %ndisc_is_useropt.exit.i.do.body.i800_crit_edge, %do.body.preheader.i
  %cur.addr.0.i795 = phi ptr [ %add.ptr.i799, %ndisc_is_useropt.exit.i.do.body.i800_crit_edge ], [ %p491.0891, %do.body.preheader.i ]
  %nd_opt_len.i796 = getelementptr inbounds %struct.nd_opt_hdr, ptr %cur.addr.0.i795, i32 0, i32 1
  %280 = ptrtoint ptr %nd_opt_len.i796 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %nd_opt_len.i796, align 1
  %conv.i797 = zext i8 %281 to i32
  %shl.i798 = shl nuw nsw i32 %conv.i797, 3
  %add.ptr.i799 = getelementptr i8, ptr %cur.addr.0.i795, i32 %shl.i798
  %cmp3.i = icmp ult ptr %add.ptr.i799, %277
  br i1 %cmp3.i, label %land.rhs.i801, label %do.body.i800.do.end.i803_crit_edge

do.body.i800.do.end.i803_crit_edge:               ; preds = %do.body.i800
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

land.rhs.i801:                                    ; preds = %do.body.i800
  %282 = ptrtoint ptr %add.ptr.i799 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %add.ptr.i799, align 1
  %284 = zext i8 %283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %284, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %283, label %lor.rhs.i.i [
    i8 25, label %land.rhs.i801.do.end.i803_crit_edge
    i8 31, label %land.rhs.i801.do.end.i803_crit_edge906
    i8 37, label %land.rhs.i801.do.end.i803_crit_edge907
    i8 38, label %land.rhs.i801.do.end.i803_crit_edge908
  ]

land.rhs.i801.do.end.i803_crit_edge908:           ; preds = %land.rhs.i801
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

land.rhs.i801.do.end.i803_crit_edge907:           ; preds = %land.rhs.i801
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

land.rhs.i801.do.end.i803_crit_edge906:           ; preds = %land.rhs.i801
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

land.rhs.i801.do.end.i803_crit_edge:              ; preds = %land.rhs.i801
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

lor.rhs.i.i:                                      ; preds = %land.rhs.i801
  %285 = ptrtoint ptr %ndisc_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ndisc_ops.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %286, null
  br i1 %tobool.not.i.i.i, label %lor.rhs.i.i.ndisc_is_useropt.exit.i_crit_edge, label %land.lhs.true.i.i.i

lor.rhs.i.i.ndisc_is_useropt.exit.i_crit_edge:    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_is_useropt.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.rhs.i.i
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %tobool2.not.i.i.i = icmp eq ptr %288, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.ndisc_is_useropt.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.ndisc_is_useropt.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_is_useropt.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i802 = call i32 %288(i8 noundef zeroext %283) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i802)
  %phi.cmp.i.i = icmp ne i32 %call.i.i.i802, 0
  %phi.cast21.i.i = zext i1 %phi.cmp.i.i to i32
  br label %ndisc_is_useropt.exit.i

ndisc_is_useropt.exit.i:                          ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.ndisc_is_useropt.exit.i_crit_edge, %lor.rhs.i.i.ndisc_is_useropt.exit.i_crit_edge
  %289 = phi i32 [ %phi.cast21.i.i, %if.then.i.i.i ], [ 0, %land.lhs.true.i.i.i.ndisc_is_useropt.exit.i_crit_edge ], [ 0, %lor.rhs.i.i.ndisc_is_useropt.exit.i_crit_edge ]
  %tobool5.not.i = icmp eq i32 %289, 0
  br i1 %tobool5.not.i, label %ndisc_is_useropt.exit.i.do.body.i800_crit_edge, label %ndisc_is_useropt.exit.i.do.end.i803_crit_edge

ndisc_is_useropt.exit.i.do.end.i803_crit_edge:    ; preds = %ndisc_is_useropt.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i803

ndisc_is_useropt.exit.i.do.body.i800_crit_edge:   ; preds = %ndisc_is_useropt.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i800

do.end.i803:                                      ; preds = %ndisc_is_useropt.exit.i.do.end.i803_crit_edge, %land.rhs.i801.do.end.i803_crit_edge, %land.rhs.i801.do.end.i803_crit_edge906, %land.rhs.i801.do.end.i803_crit_edge907, %land.rhs.i801.do.end.i803_crit_edge908, %do.body.i800.do.end.i803_crit_edge
  %cmp6.not.i = icmp ugt ptr %add.ptr.i799, %277
  br i1 %cmp6.not.i, label %do.end.i803.ndisc_next_useropt.exit.thread_crit_edge, label %land.lhs.true.i804

do.end.i803.ndisc_next_useropt.exit.thread_crit_edge: ; preds = %do.end.i803
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit.thread

land.lhs.true.i804:                               ; preds = %do.end.i803
  %290 = ptrtoint ptr %add.ptr.i799 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %add.ptr.i799, align 1
  %292 = zext i8 %291 to i64
  call void @__sanitizer_cov_trace_switch(i64 %292, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %291, label %lor.rhs.i25.i [
    i8 25, label %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge
    i8 31, label %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge909
    i8 37, label %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge910
    i8 38, label %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge911
  ]

land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge911: ; preds = %land.lhs.true.i804
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit

land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge910: ; preds = %land.lhs.true.i804
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit

land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge909: ; preds = %land.lhs.true.i804
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit

land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge: ; preds = %land.lhs.true.i804
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit

lor.rhs.i25.i:                                    ; preds = %land.lhs.true.i804
  %293 = ptrtoint ptr %ndisc_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ndisc_ops.i.i.i, align 8
  %tobool.not.i.i24.i = icmp eq ptr %294, null
  br i1 %tobool.not.i.i24.i, label %lor.rhs.i25.i.ndisc_next_useropt.exit.thread_crit_edge, label %land.lhs.true.i.i27.i

lor.rhs.i25.i.ndisc_next_useropt.exit.thread_crit_edge: ; preds = %lor.rhs.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit.thread

land.lhs.true.i.i27.i:                            ; preds = %lor.rhs.i25.i
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %tobool2.not.i.i26.i = icmp eq ptr %296, null
  br i1 %tobool2.not.i.i26.i, label %land.lhs.true.i.i27.i.ndisc_next_useropt.exit.thread_crit_edge, label %ndisc_is_useropt.exit32.i

land.lhs.true.i.i27.i.ndisc_next_useropt.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit.thread

ndisc_is_useropt.exit32.i:                        ; preds = %land.lhs.true.i.i27.i
  %call.i.i28.i = call i32 %296(i8 noundef zeroext %291) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i)
  %phi.cmp.i29.not.i = icmp eq i32 %call.i.i28.i, 0
  br i1 %phi.cmp.i29.not.i, label %ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit.thread_crit_edge, label %ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit_crit_edge

ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit_crit_edge: ; preds = %ndisc_is_useropt.exit32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit

ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit.thread_crit_edge: ; preds = %ndisc_is_useropt.exit32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ndisc_next_useropt.exit.thread

ndisc_next_useropt.exit.thread:                   ; preds = %ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit.thread_crit_edge, %land.lhs.true.i.i27.i.ndisc_next_useropt.exit.thread_crit_edge, %lor.rhs.i25.i.ndisc_next_useropt.exit.thread_crit_edge, %do.end.i803.ndisc_next_useropt.exit.thread_crit_edge, %ndisc_ra_useropt.exit.ndisc_next_useropt.exit.thread_crit_edge
  br i1 %send_ifinfo_notify.5.off0, label %ndisc_next_useropt.exit.thread.if.then513_crit_edge, label %ndisc_next_useropt.exit.thread.if.end514_crit_edge

ndisc_next_useropt.exit.thread.if.end514_crit_edge: ; preds = %ndisc_next_useropt.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end514

ndisc_next_useropt.exit.thread.if.then513_crit_edge: ; preds = %ndisc_next_useropt.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then513

ndisc_next_useropt.exit:                          ; preds = %ndisc_is_useropt.exit32.i.ndisc_next_useropt.exit_crit_edge, %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge, %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge909, %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge910, %land.lhs.true.i804.ndisc_next_useropt.exit_crit_edge911
  %tobool494.not = icmp eq ptr %add.ptr.i799, null
  br i1 %tobool494.not, label %ndisc_next_useropt.exit.out_crit_edge, label %ndisc_next_useropt.exit.for.body495_crit_edge

ndisc_next_useropt.exit.for.body495_crit_edge:    ; preds = %ndisc_next_useropt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body495

ndisc_next_useropt.exit.out_crit_edge:            ; preds = %ndisc_next_useropt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %ndisc_next_useropt.exit.out_crit_edge, %if.end488.out_crit_edge, %skip_routeinfo.out_crit_edge, %if.end335.out_crit_edge, %if.then324.out_crit_edge
  %tobool320.not874 = phi i1 [ %tobool320.not876, %skip_routeinfo.out_crit_edge ], [ %tobool320.not876, %if.end488.out_crit_edge ], [ %tobool320.not876, %if.end335.out_crit_edge ], [ false, %if.then324.out_crit_edge ], [ %tobool320.not876, %ndisc_next_useropt.exit.out_crit_edge ]
  %neigh.4870 = phi ptr [ %neigh.4871, %skip_routeinfo.out_crit_edge ], [ %neigh.4871, %if.end488.out_crit_edge ], [ %neigh.4871, %if.end335.out_crit_edge ], [ %neigh.4869, %if.then324.out_crit_edge ], [ %neigh.4871, %ndisc_next_useropt.exit.out_crit_edge ]
  %rt.3860 = phi ptr [ %rt.3858867, %skip_routeinfo.out_crit_edge ], [ %rt.3858867, %if.end488.out_crit_edge ], [ %rt.3858867, %if.end335.out_crit_edge ], [ %rt.3858866, %if.then324.out_crit_edge ], [ %rt.3858867, %ndisc_next_useropt.exit.out_crit_edge ]
  %send_ifinfo_notify.6.off0 = phi i1 [ %send_ifinfo_notify.3.off0857, %skip_routeinfo.out_crit_edge ], [ %send_ifinfo_notify.5.off0, %if.end488.out_crit_edge ], [ %send_ifinfo_notify.3.off0857, %if.end335.out_crit_edge ], [ %send_ifinfo_notify.3.off0855868, %if.then324.out_crit_edge ], [ %send_ifinfo_notify.5.off0, %ndisc_next_useropt.exit.out_crit_edge ]
  br i1 %send_ifinfo_notify.6.off0, label %out.if.then513_crit_edge, label %out.if.end514_crit_edge

out.if.end514_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end514

out.if.then513_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then513

if.then513:                                       ; preds = %out.if.then513_crit_edge, %ndisc_next_useropt.exit.thread.if.then513_crit_edge
  %rt.3860904 = phi ptr [ %rt.3858867, %ndisc_next_useropt.exit.thread.if.then513_crit_edge ], [ %rt.3860, %out.if.then513_crit_edge ]
  %neigh.4870902 = phi ptr [ %neigh.4871, %ndisc_next_useropt.exit.thread.if.then513_crit_edge ], [ %neigh.4870, %out.if.then513_crit_edge ]
  %tobool320.not874900 = phi i1 [ %tobool320.not876, %ndisc_next_useropt.exit.thread.if.then513_crit_edge ], [ %tobool320.not874, %out.if.then513_crit_edge ]
  call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %15) #14
  br label %if.end514

if.end514:                                        ; preds = %if.then513, %out.if.end514_crit_edge, %ndisc_next_useropt.exit.thread.if.end514_crit_edge
  %rt.3860903 = phi ptr [ %rt.3858867, %ndisc_next_useropt.exit.thread.if.end514_crit_edge ], [ %rt.3860904, %if.then513 ], [ %rt.3860, %out.if.end514_crit_edge ]
  %neigh.4870901 = phi ptr [ %neigh.4871, %ndisc_next_useropt.exit.thread.if.end514_crit_edge ], [ %neigh.4870902, %if.then513 ], [ %neigh.4870, %out.if.end514_crit_edge ]
  %tobool320.not874899 = phi i1 [ %tobool320.not876, %ndisc_next_useropt.exit.thread.if.end514_crit_edge ], [ %tobool320.not874900, %if.then513 ], [ %tobool320.not874, %out.if.end514_crit_edge ]
  %tobool.not.i806 = icmp eq ptr %rt.3860903, null
  br i1 %tobool.not.i806, label %if.end514.fib6_info_release.exit_crit_edge, label %land.lhs.true.i807

if.end514.fib6_info_release.exit_crit_edge:       ; preds = %if.end514
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib6_info_release.exit

land.lhs.true.i807:                               ; preds = %if.end514
  %fib6_ref.i = getelementptr inbounds %struct.fib6_info, ptr %rt.3860903, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %fib6_ref.i, i32 1, i32 3, i32 1) #14
  %297 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref.i, ptr %fib6_ref.i, i32 1, ptr elementtype(i32) %fib6_ref.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %297, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i808, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i807
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fib6_info_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.fib6_info_release.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fib6_info_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %fib6_ref.i, i32 noundef 3) #14
  br label %fib6_info_release.exit

if.then.i808:                                     ; preds = %land.lhs.true.i807
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  %rcu.i = getelementptr inbounds %struct.fib6_info, ptr %rt.3860903, i32 0, i32 19
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @fib6_info_destroy_rcu) #14
  br label %fib6_info_release.exit

fib6_info_release.exit:                           ; preds = %if.then.i808, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fib6_info_release.exit_crit_edge, %if.end514.fib6_info_release.exit_crit_edge
  br i1 %tobool320.not874899, label %fib6_info_release.exit.cleanup518_crit_edge, label %if.then516

fib6_info_release.exit.cleanup518_crit_edge:      ; preds = %fib6_info_release.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

if.then516:                                       ; preds = %fib6_info_release.exit
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %neigh.4870901, i32 0, i32 6
  %call.i.i.i.i.i.i810 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %298 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i811 = extractvalue { i32, i32, i32 } %298, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i811)
  %cmp.i.i.i.i812 = icmp eq i32 %asmresult.i.i.i.i.i.i.i811, 1
  br i1 %cmp.i.i.i.i812, label %if.then.i816, label %if.end5.i.i.i.i814

if.end5.i.i.i.i814:                               ; preds = %if.then516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i811)
  %.not.i.i.i.i813 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i811, 0
  br i1 %.not.i.i.i.i813, label %if.end5.i.i.i.i814.cleanup518_crit_edge, label %if.then10.i.i.i.i815, !prof !135

if.end5.i.i.i.i814.cleanup518_crit_edge:          ; preds = %if.end5.i.i.i.i814
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup518

if.then10.i.i.i.i815:                             ; preds = %if.end5.i.i.i.i814
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup518

if.then.i816:                                     ; preds = %if.then516
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @neigh_destroy(ptr noundef %neigh.4870901) #14
  br label %cleanup518

cleanup518:                                       ; preds = %if.then.i816, %if.then10.i.i.i.i815, %if.end5.i.i.i.i814.cleanup518_crit_edge, %fib6_info_release.exit.cleanup518_crit_edge, %do.end226, %do.end190, %do.body184.cleanup518_crit_edge, %do.end154, %if.end37.cleanup518_crit_edge, %do.end30, %do.body24.cleanup518_crit_edge, %if.end12.cleanup518_crit_edge, %entry.cleanup518_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ndopts) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_redirect_rcv(ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  %ndopts = alloca %struct.ndisc_options, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ndopts) #14
  %0 = call ptr @memset(ptr %ndopts, i32 255, i32 88)
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %3 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 40
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %ndisc_nodetype = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %ndisc_nodetype to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load = load i32, ptr %ndisc_nodetype, align 2
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.cast = and i32 %bf.lshr, 3
  %bf.cast.off = add nsw i32 %bf.cast, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.cast.off)
  %switch = icmp ult i32 %bf.cast.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr) #14
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %10 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call8 = call ptr @ndisc_parse_options(ptr noundef %12, ptr noundef %add.ptr, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ndopts)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [15 x ptr], ptr %ndopts, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %19 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex, align 4
  call void @ip6_redirect_no_header(ptr noundef %skb, ptr noundef %18, i32 noundef %20) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %add.ptr18 = getelementptr i8, ptr %14, i32 8
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %23 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i, align 2
  %conv.i48 = zext i16 %24 to i32
  %add.ptr.i49 = getelementptr i8, ptr %22, i32 %conv.i48
  %sub.ptr.lhs.cast20 = ptrtoint ptr %add.ptr18 to i32
  %sub.ptr.rhs.cast21 = ptrtoint ptr %add.ptr.i49 to i32
  %sub.ptr.sub22 = sub i32 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub.ptr.sub22)
  %cmp.i = icmp ult i32 %26, %sub.ptr.sub22
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %cond.false.i, !prof !133

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false.i:                                     ; preds = %if.end15
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub22, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub22, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %sub.ptr.sub22, %sub.i.i.i
  %call2.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #14
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pskb_pull.exit

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %29 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %30, %sub.ptr.sub22
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %32, i32 %sub.ptr.sub22
  store ptr %add.ptr.i.i50, ptr %data.i.i, align 4
  %tobool24.not = icmp eq ptr %add.ptr.i.i50, null
  br i1 %tobool24.not, label %pskb_pull.exit.cleanup_crit_edge, label %if.end26

pskb_pull.exit.cleanup_crit_edge:                 ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @icmpv6_notify(ptr noundef %skb, i8 noundef zeroext -119, i8 noundef zeroext 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %pskb_pull.exit.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ndopts) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndisc_ifinfo_sysctl_change(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(20) @.str.2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.4, ptr %1
  %4 = tail call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %call1.i = tail call i32 @strcmp(ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef %comm.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %8 = load i32, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.i = icmp slt i32 %8, 5
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call ptr @strcpy(ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef %comm.i) #20
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef nonnull @.str.3, ptr noundef %spec.select, ptr noundef %10, ptr noundef %spec.select, ptr noundef %10) #17
  %11 = load i32, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %12 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(13) @.str.1) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = tail call i32 @neigh_proc_dointvec(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #14
  br label %if.end27

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(20) @.str.2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 @neigh_proc_dointvec_jiffies(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #14
  br label %if.end27

if.else14:                                        ; preds = %if.else
  %call16 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(16) @.str.5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.else14.if.then22_crit_edge, label %lor.lhs.false18

if.else14.if.then22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

lor.lhs.false18:                                  ; preds = %if.else14
  %call20 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(23) @.str.6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %lor.lhs.false18.if.then22_crit_edge, label %lor.lhs.false18.if.end45_crit_edge

lor.lhs.false18.if.end45_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

lor.lhs.false18.if.then22_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false18.if.then22_crit_edge, %if.else14.if.then22_crit_edge
  %call23 = tail call i32 @neigh_proc_dointvec_ms_jiffies(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then12, %if.then7
  %ret.0 = phi i32 [ %call8, %if.then7 ], [ %call13, %if.then12 ], [ %call23, %if.then22 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool28.not = icmp eq i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp29 = icmp ne i32 %ret.0, 0
  %or.cond = select i1 %tobool28.not, i1 true, i1 %cmp29
  %tobool31.not = icmp eq ptr %1, null
  %or.cond75 = select i1 %or.cond, i1 true, i1 %tobool31.not
  br i1 %or.cond75, label %if.end27.if.end45_crit_edge, label %land.lhs.true32

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true32:                                  ; preds = %if.end27
  %call33 = tail call fastcc ptr @in6_dev_get(ptr noundef nonnull %1)
  %cmp34.not = icmp eq ptr %call33, null
  br i1 %cmp34.not, label %land.lhs.true32.if.end45_crit_edge, label %if.then35

land.lhs.true32.if.end45_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then35:                                        ; preds = %land.lhs.true32
  %data = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %nd_parms = getelementptr inbounds %struct.inet6_dev, ptr %call33, i32 0, i32 31
  %16 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nd_parms, align 4
  %arrayidx = getelementptr %struct.neigh_parms, ptr %17, i32 0, i32 11, i32 5
  %cmp37 = icmp eq ptr %15, %arrayidx
  br i1 %cmp37, label %if.then38, label %if.then35.if.end44_crit_edge

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %call42 = tail call i32 @neigh_rand_reach_time(i32 noundef %19) #14
  %20 = ptrtoint ptr %nd_parms to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_parms, align 4
  %reachable_time = getelementptr inbounds %struct.neigh_parms, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %reachable_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call42, ptr %reachable_time, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.then35.if.end44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %tstamp = getelementptr inbounds %struct.inet6_dev, ptr %call33, i32 0, i32 37
  %24 = ptrtoint ptr %tstamp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tstamp, align 4
  tail call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %call33) #14
  %refcnt.i = getelementptr inbounds %struct.inet6_dev, ptr %call33, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i76, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end45_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.if.end45_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %if.end45

if.then.i76:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %call33) #14
  br label %if.end45

if.end45:                                         ; preds = %if.then.i76, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end45_crit_edge, %land.lhs.true32.if.end45_crit_edge, %if.end27.if.end45_crit_edge, %lor.lhs.false18.if.end45_crit_edge
  %ret.084 = phi i32 [ 0, %land.lhs.true32.if.end45_crit_edge ], [ %ret.0, %if.end27.if.end45_crit_edge ], [ 0, %if.end5.i.i.i.i.if.end45_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i76 ], [ -1, %lor.lhs.false18.if.end45_crit_edge ]
  ret i32 %ret.084
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @in6_dev_get(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ip6_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 80
  %4 = ptrtoint ptr %ip6_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ip6_ptr, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @in6_dev_get.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 359, ptr noundef nonnull @.str.13) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end11_crit_edge, label %if.then10

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %do.end7
  %refcnt = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 25
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !134
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then10.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !133

if.then10.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then10
  %add.i.i.i15 = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i15, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end11_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !135

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end11_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then10.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then10.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #14
  br label %if.end11

if.end11:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end11_crit_edge, %do.end7.if.end11_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i16, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end11
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %8 = tail call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i23 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_rand_reach_time(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifinfo_notify(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndisc_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @neigh_table_init(i32 noundef 1, ptr noundef nonnull @nd_tbl) #14
  %call1 = tail call i32 @neigh_sysctl_register(ptr noundef null, ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 13), ptr noundef nonnull @ndisc_ifinfo_sysctl_change) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out_unregister_pernet

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_unregister_pernet:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unregister_pernet, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1, %out_unregister_pernet ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_table_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndisc_late_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ndisc_netdev_notifier) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_late_cleanup() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ndisc_netdev_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndisc_cleanup() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @neigh_sysctl_unregister(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 13)) #14
  %call = tail call i32 @neigh_table_clear(i32 noundef 1, ptr noundef nonnull @nd_tbl) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_sysctl_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_table_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_direct_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndisc_solicit(ptr noundef %neigh, ptr noundef readonly %skb) #1 align 64 {
entry:
  %mcaddr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mcaddr) #14
  %0 = getelementptr inbounds [4 x i32], ptr %mcaddr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %mcaddr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %mcaddr, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %probes2 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %probes2, i32 noundef 4) #14
  %5 = ptrtoint ptr %probes2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %probes2, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %saddr5 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call6 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %8, ptr noundef %saddr5, ptr noundef %4, i1 noundef zeroext false, i32 noundef 1, i32 noundef 68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i56 = zext i16 %16 to i32
  %add.ptr.i.i57 = getelementptr i8, ptr %14, i32 %conv.i.i56
  %saddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i57, i32 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %saddr.0 = phi ptr [ %saddr9, %if.then ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  %parms = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 2
  %17 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parms, align 8
  %arrayidx = getelementptr %struct.neigh_parms, ptr %18, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %6, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %21 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nud_state, align 8
  %23 = and i8 %22, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  br i1 %tobool11.not, label %do.body13, label %if.then10.if.end25_crit_edge

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

do.body13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ndisc_solicit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ndisc_solicit, %land.lhs.true18)) #14
          to label %if.end25 [label %land.lhs.true18], !srcloc !145

land.lhs.true18:                                  ; preds = %do.body13
  %call19 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end25_crit_edge, label %if.then21

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ndisc_solicit.descriptor, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef %primary_key) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true18.if.end25_crit_edge, %do.body13, %if.then10.if.end25_crit_edge
  tail call void @ndisc_send_ns(ptr noundef %4, ptr noundef %primary_key, ptr noundef %primary_key, ptr noundef %saddr.0, i64 noundef 0)
  br label %if.end35

if.else:                                          ; preds = %if.end
  %arrayidx28 = getelementptr %struct.neigh_parms, ptr %18, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 4
  %sub29 = sub i32 %sub, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_app_ns(ptr noundef %neigh) #14
  br label %if.end35

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr %struct.neighbour, ptr %neigh, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %27, -16777216
  %28 = ptrtoint ptr %mcaddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -16646144, ptr %mcaddr, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %0, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %1, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %2, align 4
  call void @ndisc_send_ns(ptr noundef %4, ptr noundef %primary_key, ptr noundef nonnull %mcaddr, ptr noundef %saddr.0, i64 noundef 0)
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then32, %if.end25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mcaddr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndisc_error_report(ptr nocapture noundef readnone %neigh, ptr noundef %skb) #1 align 64 {
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
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !133

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
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
declare dso_local i32 @neigh_resolve_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_app_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_connected_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_inc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_dec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifa_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icmp6_dst_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !133

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %output = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #5 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10, i32 3), ptr blockaddress(@nf_hook, %if.end)) #14
          to label %cleanup [label %if.end], !srcloc !145

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !138
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.19, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nf_hook.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 232, ptr noundef nonnull @.str.13) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
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
  store i8 3, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dst_output, ptr %okfn5.i, align 4
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !139
  %13 = call i32 @llvm.read_register.i32(metadata !121) #14
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
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_dad_failure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_acast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pndisc_is_router(ptr noundef %pkey, ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 28)) #14
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call ptr @__pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %1, ptr noundef %pkey, ptr noundef %dev) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.pneigh_entry, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = lshr i32 %3, 7
  %and.lobit = and i32 %and, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %and.lobit, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 28)) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pneigh_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__neigh_lookup(ptr noundef %pkey, ptr noundef %dev, i32 noundef %creat) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %pkey, ptr noundef %dev) #14
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
  %call.i = tail call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %pkey, ptr noundef %dev, i1 noundef zeroext true) #14
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_clean_tohost(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_get_dflt_router(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_neigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib6_info_release(ptr noundef %f6i) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %f6i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fib6_ref = getelementptr inbounds %struct.fib6_info, ptr %f6i, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib6_ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %fib6_ref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib6_ref, ptr %fib6_ref, i32 1, ptr elementtype(i32) %fib6_ref) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !135

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %fib6_ref, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  %rcu = getelementptr inbounds %struct.fib6_info, ptr %f6i, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @fib6_info_destroy_rcu) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_add_dflt_router(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_metric_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt6_route_rcv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_prefix_rcv(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_mtu_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect_no_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_notify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ndisc_net_init(ptr noundef %net) #1 align 64 {
entry:
  %sk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sk) #14
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sk, align 4, !annotation !144
  %call = call i32 @inet_ctl_sock_create(ptr noundef nonnull %sk, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body1, label %if.end10

do.body1:                                         ; preds = %entry
  %call2 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body1.cleanup_crit_edge, label %do.end

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call) #17
  br label %cleanup

if.end10:                                         ; preds = %entry
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 4
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 26
  %3 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %ndisc_sk, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end10.inet6_sk.exit_crit_edge, label %cond.true.i

if.end10.inet6_sk.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end10.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %if.end10.inet6_sk.exit_crit_edge ]
  %hop_limit = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %8 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %hop_limit, align 4
  %bf.clear = and i32 %bf.load, 8388606
  %bf.set = or i32 %bf.clear, 2139095040
  store i32 %bf.set, ptr %hop_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %inet6_sk.exit, %do.end, %do.body1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %inet6_sk.exit ], [ %call, %do.end ], [ %call, %do.body1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndisc_net_exit(ptr nocapture noundef readonly %net) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ndisc_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 26
  %0 = ptrtoint ptr %ndisc_sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndisc_sk, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

entry.inet_ctl_sock_destroy.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %2 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %3) #14
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %entry.inet_ctl_sock_destroy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ndisc_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 4, label %sw.bb9
    i32 2, label %sw.bb30
    i32 19, label %sw.bb32
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_changeaddr(ptr noundef nonnull @nd_tbl, ptr noundef %1) #14
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #14
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %call3 = tail call fastcc ptr @in6_dev_get(ptr noundef %1)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.end

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb2
  %ndisc_notify = getelementptr inbounds %struct.inet6_dev, ptr %call3, i32 0, i32 32, i32 39
  %5 = ptrtoint ptr %ndisc_notify to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndisc_notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %devconf_all = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 2
  %7 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devconf_all, align 32
  %ndisc_notify5 = getelementptr inbounds %struct.ipv6_devconf, ptr %8, i32 0, i32 39
  %9 = ptrtoint ptr %ndisc_notify5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndisc_notify5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call fastcc void @ndisc_send_unsol_na(ptr noundef %1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %lor.lhs.false.if.end8_crit_edge
  %refcnt.i = getelementptr inbounds %struct.inet6_dev, ptr %call3, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %sw.epilog

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %call3) #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = tail call fastcc ptr @in6_dev_get(ptr noundef %1)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %sw.bb9.if.end20_crit_edge, label %if.else

sw.bb9.if.end20_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else:                                          ; preds = %sw.bb9
  %ndisc_evict_nocarrier = getelementptr inbounds %struct.inet6_dev, ptr %call10, i32 0, i32 32, i32 56
  %12 = ptrtoint ptr %ndisc_evict_nocarrier to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ndisc_evict_nocarrier, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %if.else.land.end_crit_edge, label %land.rhs

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %devconf_all16 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 36, i32 2
  %14 = ptrtoint ptr %devconf_all16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devconf_all16, align 32
  %ndisc_evict_nocarrier17 = getelementptr inbounds %struct.ipv6_devconf, ptr %15, i32 0, i32 56
  %16 = ptrtoint ptr %ndisc_evict_nocarrier17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ndisc_evict_nocarrier17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19 = icmp ne i8 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.land.end_crit_edge
  %18 = phi i1 [ false, %if.else.land.end_crit_edge ], [ %tobool19, %land.rhs ]
  %refcnt.i51 = getelementptr inbounds %struct.inet6_dev, ptr %call10, i32 0, i32 25
  %call.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i51, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i51, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i51, ptr %refcnt.i51, i32 1, ptr elementtype(i32) %refcnt.i51) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i53 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i53)
  %cmp.i.i.i.i54 = icmp eq i32 %asmresult.i.i.i.i.i.i.i53, 1
  br i1 %cmp.i.i.i.i54, label %if.then.i58, label %if.end5.i.i.i.i56

if.end5.i.i.i.i56:                                ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i53)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i56.if.end20_crit_edge, label %if.then10.i.i.i.i57, !prof !135

if.end5.i.i.i.i56.if.end20_crit_edge:             ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then10.i.i.i.i57:                              ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i51, i32 noundef 3) #14
  br label %if.end20

if.then.i58:                                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %call10) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then.i58, %if.then10.i.i.i.i57, %if.end5.i.i.i.i56.if.end20_crit_edge, %sw.bb9.if.end20_crit_edge
  %evict_nocarrier.0.off0 = phi i1 [ true, %sw.bb9.if.end20_crit_edge ], [ %18, %if.end5.i.i.i.i56.if.end20_crit_edge ], [ %18, %if.then10.i.i.i.i57 ], [ %18, %if.then.i58 ]
  %flags_changed = getelementptr inbounds %struct.netdev_notifier_change_info, ptr %ptr, i32 0, i32 1
  %20 = ptrtoint ptr %flags_changed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags_changed, align 4
  %and = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @neigh_changeaddr(ptr noundef nonnull @nd_tbl, ptr noundef %1) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  br i1 %evict_nocarrier.0.off0, label %land.lhs.true, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end23
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.lhs.true.sw.epilog_crit_edge, label %if.then27

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call28 = tail call i32 @neigh_carrier_down(ptr noundef nonnull @nd_tbl, ptr noundef %1) #14
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 @neigh_ifdown(ptr noundef nonnull @nd_tbl, ptr noundef %1) #14
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef %3, i1 noundef zeroext false) #14
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ndisc_send_unsol_na(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30, %if.then27, %land.lhs.true.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_changeaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_run_gc(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ndisc_send_unsol_na(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @in6_dev_get(ptr noundef %dev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %call, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #14
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load ptr, ptr %addr_list, align 4
  %cmp.not31 = icmp eq ptr %.pn29, %addr_list
  br i1 %cmp.not31, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %cnf = getelementptr inbounds %struct.inet6_dev, ptr %call, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn32 = phi ptr [ %.pn29, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn32, i32 -144
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %3 = and i32 %2, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %4 = icmp eq i32 %3, 64
  br i1 %4, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %ifa.033 = getelementptr i8, ptr %.pn32, i32 -228
  %5 = ptrtoint ptr %cnf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8 = icmp ne i32 %6, 0
  tail call void @ndisc_send_na(ptr noundef %dev, ptr noundef nonnull @in6addr_linklocal_allnodes, ptr noundef %ifa.033, i1 noundef zeroext %tobool8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #14
  %refcnt.i = getelementptr inbounds %struct.inet6_dev, ptr %call, i32 0, i32 25
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !132
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !135

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_carrier_down(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !108, !109, !110, !112, !114, !116, !117, !118, !119}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/ndisc.c", i32 121, i32 9}
!2 = !{ptr @nd_tbl, !3, !"nd_tbl", i1 false, i1 false}
!3 = !{!"../net/ipv6/ndisc.c", i32 109, i32 20}
!4 = !{ptr @__ksymtab_nd_tbl, !5, !"__ksymtab_nd_tbl", i1 false, i1 false}
!5 = !{!"../net/ipv6/ndisc.c", i32 143, i32 1}
!6 = !{ptr @__ksymtab___ndisc_fill_addr_option, !7, !"__ksymtab___ndisc_fill_addr_option", i1 false, i1 false}
!7 = !{!"../net/ipv6/ndisc.c", i32 165, i32 1}
!8 = !{ptr @__ksymtab_ndisc_mc_map, !9, !"__ksymtab_ndisc_mc_map", i1 false, i1 false}
!9 = !{!"../net/ipv6/ndisc.c", i32 311, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv6/ndisc.c", i32 1871, i32 29}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv6/ndisc.c", i32 1872, i32 29}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv6/ndisc.c", i32 1873, i32 37}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv6/ndisc.c", i32 1873, i32 66}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv6/ndisc.c", i32 1882, i32 34}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv6/ndisc.c", i32 1883, i32 27}
!22 = !{ptr @ndisc_direct_ops, !23, !"ndisc_direct_ops", i1 false, i1 false}
!23 = !{!"../net/ipv6/ndisc.c", i32 103, i32 31}
!24 = !{ptr @ndisc_hh_ops, !25, !"ndisc_hh_ops", i1 false, i1 false}
!25 = !{!"../net/ipv6/ndisc.c", i32 94, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/ndisc.c", i32 733, i32 4}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ndisc_solicit.descriptor, !27, !"descriptor", i1 false, i1 false}
!32 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ndisc_generic_ops, !34, !"ndisc_generic_ops", i1 false, i1 false}
!34 = !{!"../net/ipv6/ndisc.c", i32 86, i32 31}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ndisc_allow_add.__msg, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../net/ipv6/ndisc.c", i32 405, i32 3}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv6/ndisc.c", i32 422, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ndisc_alloc_skb._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ndisc_alloc_skb._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv6/ndisc.c", i32 1733, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ndisc_suppress_frag_ndisc._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ndisc_suppress_frag_ndisc._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/ipv6/ndisc.c", i32 1021, i32 4}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ndisc_recv_na._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ndisc_recv_na._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv6/ndisc.c", i32 1083, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ndisc_recv_rs._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ndisc_recv_rs._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ipv6/ndisc.c", i32 1215, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ndisc_router_discovery._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ndisc_router_discovery._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/ipv6/ndisc.c", i32 1300, i32 4}
!92 = !{ptr @ndisc_router_discovery._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ndisc_router_discovery._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/ipv6/ndisc.c", i32 1323, i32 4}
!96 = !{ptr @ndisc_router_discovery._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ndisc_router_discovery._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @ndisc_router_discovery._entry.40, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../net/ipv6/ndisc.c", i32 1333, i32 4}
!100 = !{ptr @ndisc_router_discovery._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @ndisc_warn_deprecated_sysctl.warncomm, !102, !"warncomm", i1 false, i1 false}
!102 = !{!"../net/ipv6/ndisc.c", i32 1852, i32 14}
!103 = !{ptr @ndisc_warn_deprecated_sysctl.warned, !104, !"warned", i1 false, i1 false}
!104 = !{!"../net/ipv6/ndisc.c", i32 1853, i32 13}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/ipv6/ndisc.c", i32 1856, i32 3}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ndisc_warn_deprecated_sysctl._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ndisc_warn_deprecated_sysctl._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/net/addrconf.h", i32 359, i32 9}
!112 = !{ptr @ndisc_net_ops, !113, !"ndisc_net_ops", i1 false, i1 false}
!113 = !{!"../net/ipv6/ndisc.c", i32 1933, i32 33}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/ipv6/ndisc.c", i32 1912, i32 3}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ndisc_net_init._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ndisc_net_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @ndisc_netdev_notifier, !120, !"ndisc_netdev_notifier", i1 false, i1 false}
!120 = !{!"../net/ipv6/ndisc.c", i32 1843, i32 30}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2148477978}
!132 = !{i64 2148392418, i64 2148392450, i64 2148392479, i64 2148392513, i64 2148392544, i64 2148392567}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 2148389953, i64 2148389985, i64 2148390014, i64 2148390048, i64 2148390079, i64 2148390102}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2149354092}
!137 = !{i64 6664017}
!138 = !{i64 2149404582}
!139 = !{i64 2149404848}
!140 = !{i64 792123, i64 792184}
!141 = !{i64 794855}
!142 = !{i64 795140}
!143 = !{i64 2148388423, i64 2148388449, i64 2148388478, i64 2148388512, i64 2148388543, i64 2148388566}
!144 = !{!"auto-init"}
!145 = !{i64 2149001800, i64 2149001805, i64 2149001818, i64 2149001862, i64 2149001896, i64 2149001917}
