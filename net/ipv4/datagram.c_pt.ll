; ModuleID = '/llk/IR_all_yes/net/ipv4/datagram.c_pt.bc'
source_filename = "../net/ipv4/datagram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ip4_datagram_connect\22, \22a\22\09"
module asm "\09.weak\09__crc___ip4_datagram_connect\09\09\09\09"
module asm "\09.long\09__crc___ip4_datagram_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip4_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns___ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip4_datagram_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_ip4_datagram_connect\09\09\09\09"
module asm "\09.long\09__crc_ip4_datagram_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22ip4_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns_ip4_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip4_datagram_release_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_ip4_datagram_release_cb\09\09\09\09"
module asm "\09.long\09__crc_ip4_datagram_release_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip4_datagram_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22ip4_datagram_release_cb\22\09\09\09\09\09"
module asm "__kstrtabns_ip4_datagram_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.153, [0 x i32], %union.anon.154, i16, i16, %union.anon.155, %struct.refcount_struct, [0 x i32], %union.anon.156 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { %struct.hlist_node }
%union.anon.155 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.156 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.157, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.158, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.159, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.157 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.158 = type { ptr }
%union.anon.159 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.163, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.181, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.163 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.181 = type { ptr }
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
%struct.anon.39 = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.190, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.190 = type { %struct.in6_addr }
%struct.anon = type { i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.152, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.152 = type { ptr }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab___ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab___ip4_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip4_datagram_connect to i32), ptr @__kstrtab___ip4_datagram_connect, ptr @__kstrtabns___ip4_datagram_connect }, section "___ksymtab+__ip4_datagram_connect", align 4
@__kstrtab_ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip4_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_ip4_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip4_datagram_connect to i32), ptr @__kstrtab_ip4_datagram_connect, ptr @__kstrtabns_ip4_datagram_connect }, section "___ksymtab+ip4_datagram_connect", align 4
@ip4_datagram_release_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/datagram.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_ip4_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip4_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_ip4_datagram_release_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip4_datagram_release_cb to i32), ptr @__kstrtab_ip4_datagram_release_cb, ptr @__kstrtabns_ip4_datagram_release_cb }, section "___ksymtab_gpl+ip4_datagram_release_cb", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@reuseport_has_conns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/net/sock_reuseport.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private constant [23 x i8] c"../net/ipv4/datagram.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 115, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 271, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [32 x i8] c"../include/net/sock_reuseport.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 52, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 2067, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___ip4_datagram_connect, ptr @__ksymtab_ip4_datagram_connect, ptr @__ksymtab_ip4_datagram_release_cb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ip4_datagram_connect(ptr noundef %sk, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp1.not = icmp eq i16 %1, 2
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %skc_tx_queue_mapping.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %2 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %sk_dst_pending_confirm.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %3 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_dst_cache.i.i) #7, !srcloc !37
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %5 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @dst_release(ptr noundef %5) #7
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %6 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skc_bound_dev_if, align 4
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inet_saddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %10 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr, align 4
  %and.i = and i32 %11, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.then6, label %if.end4.if.end15_crit_edge

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then6.if.then10_crit_edge, label %lor.lhs.false

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then6
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %lor.lhs.false.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.rcu_read_lock.exit.i_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %lor.lhs.false.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %13, i32 noundef %7) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end3.i_crit_edge, label %if.then1.i

rcu_read_lock.exit.i.if.end3.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.i = icmp ne i64 %and.i.i, 0
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %rcu_read_lock.exit.i.if.end3.i_crit_edge
  %rc.0.off0.i = phi i1 [ %tobool.i.i, %if.then1.i ], [ false, %rcu_read_lock.exit.i.if.end3.i_crit_edge ]
  %call.i8.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i8.i, label %if.end3.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true.i11.i

if.end3.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_index_is_l3_master.exit

land.lhs.true.i11.i:                              ; preds = %if.end3.i
  %call1.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_index_is_l3_master.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %netif_index_is_l3_master.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %netif_index_is_l3_master.exit

netif_index_is_l3_master.exit:                    ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, %if.end3.i.netif_index_is_l3_master.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %20 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i15.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %rc.0.off0.i, label %netif_index_is_l3_master.exit.if.then10_crit_edge, label %netif_index_is_l3_master.exit.if.end11_crit_edge

netif_index_is_l3_master.exit.if.end11_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

netif_index_is_l3_master.exit.if.then10_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %netif_index_is_l3_master.exit.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %mc_index = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 16
  %24 = ptrtoint ptr %mc_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mc_index, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %netif_index_is_l3_master.exit.if.end11_crit_edge
  %oif.0 = phi i32 [ %25, %if.then10 ], [ %7, %netif_index_is_l3_master.exit.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %mc_addr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 17
  %26 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mc_addr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %saddr.0 = phi i32 [ %9, %if.end11.if.end15_crit_edge ], [ %27, %if.then13 ], [ %9, %if.end4.if.end15_crit_edge ]
  %oif.1 = phi i32 [ %oif.0, %if.end11.if.end15_crit_edge ], [ %oif.0, %if.then13 ], [ %7, %if.end4.if.end15_crit_edge ]
  %fl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sin_addr, align 4
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 4
  %32 = and i8 %31, 30
  %33 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = lshr i32 %35, 13
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %37 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sk_protocol, align 4
  %conv22 = trunc i16 %38 to i8
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %39 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %inet_sport, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  %41 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sin_port, align 2
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %43 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skc_net.i.i, align 4
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %45 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i.i = load i16, ptr %transparent.i.i, align 8
  %46 = lshr i16 %bf.load.i.i, 10
  %47 = trunc i16 %46 to i8
  %48 = and i8 %47, 1
  %sk_mark.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %49 = ptrtoint ptr %sk_mark.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sk_mark.i.i, align 8
  %51 = trunc i32 %36 to i8
  %52 = and i8 %51, 1
  %conv2.i.i = or i8 %52, %32
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %53 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack.i.i = load i32, ptr %sk_uid.i.i, align 4
  %54 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %oif.1, ptr %fl, align 8
  %flowic_iif.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %flowic_iif.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %flowic_iif.i.i.i, align 4
  %flowic_mark.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %flowic_mark.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %50, ptr %flowic_mark.i.i.i, align 8
  %flowic_tos.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  %57 = ptrtoint ptr %flowic_tos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv2.i.i, ptr %flowic_tos.i.i.i, align 4
  %flowic_scope.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  %58 = ptrtoint ptr %flowic_scope.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %flowic_scope.i.i.i, align 1
  %flowic_proto.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  %59 = ptrtoint ptr %flowic_proto.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv22, ptr %flowic_proto.i.i.i, align 2
  %flowic_flags.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  %60 = ptrtoint ptr %flowic_flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %48, ptr %flowic_flags.i.i.i, align 1
  %flowic_secid.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  %61 = ptrtoint ptr %flowic_secid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flowic_secid.i.i.i, align 8
  %flowic_tun_key.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  %62 = ptrtoint ptr %flowic_tun_key.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %flowic_tun_key.i.i.i, align 8
  %flowic_uid.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  %63 = ptrtoint ptr %flowic_uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.unpack.i.i, ptr %flowic_uid.i.i.i, align 4
  %daddr10.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %daddr10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %29, ptr %daddr10.i.i.i, align 4
  %saddr11.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %saddr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %saddr.0, ptr %saddr11.i.i.i, align 8
  %uli.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %66 = ptrtoint ptr %uli.i.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %42, ptr %uli.i.i.i, align 8
  %sport14.i.i.i = getelementptr inbounds %struct.anon.39, ptr %uli.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %sport14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %40, ptr %sport14.i.i.i, align 2
  %flowic_multipath_hash.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  %68 = ptrtoint ptr %flowic_multipath_hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %flowic_multipath_hash.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i132 = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saddr.0)
  %tobool1.not.i = icmp eq i32 %saddr.0, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i132
  br i1 %or.cond.i, label %if.then.i, label %if.end15.if.end5.i_crit_edge

if.end15.if.end5.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end15
  %call.i.i133 = tail call ptr @ip_route_output_key_hash(ptr noundef %44, ptr noundef %fl, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call.i.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.ip_route_connect.exit_crit_edge, label %if.end.i

if.then.i.ip_route_connect.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip_route_connect.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dst_release(ptr noundef %call.i.i133) #7
  %69 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %oif.1, ptr %fl, align 8
  %70 = ptrtoint ptr %flowic_tos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv2.i.i, ptr %flowic_tos.i.i.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end15.if.end5.i_crit_edge
  tail call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef %fl) #7
  %call7.i = tail call ptr @ip_route_output_flow(ptr noundef %44, ptr noundef %fl, ptr noundef %sk) #7
  br label %ip_route_connect.exit

ip_route_connect.exit:                            ; preds = %if.end5.i, %if.then.i.ip_route_connect.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i, %if.end5.i ], [ %call.i.i133, %if.then.i.ip_route_connect.exit_crit_edge ]
  %cmp.i134 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then25, label %if.end43

if.then25:                                        ; preds = %ip_route_connect.exit
  %71 = ptrtoint ptr %retval.0.i to i32
  %cmp27 = icmp eq ptr %retval.0.i, inttoptr (i32 -101 to ptr)
  br i1 %cmp27, label %do.body, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then25
  tail call fastcc void @local_bh_disable()
  %72 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skc_net.i.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %73, i32 0, i32 30
  %74 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mib, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i136 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i136 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx, align 4
  %add = add i32 %82, %76
  %83 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %83, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %84 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i137 = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i137, label %do.body.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i138

do.body.u64_stats_update_begin.exit_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i138:                             ; preds = %do.body
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  %87 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %92, ptrtoint (ptr @lockdep_recursion to i32)
  %93 = inttoptr i32 %add.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !42
  %96 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i7.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %99, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool20.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i138.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i138.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i138
  %100 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i139 = icmp eq i32 %103, 0
  br i1 %cmp.i.i139, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %104 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i9.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %107, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %108 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %111, ptrtoint (ptr @hardirqs_enabled to i32)
  %112 = inttoptr i32 %add47.i.i to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %115 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i12.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %118, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool54.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i140, !prof !45

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %u64_stats_update_begin.exit

if.then.i.i140:                                   ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i140, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i138.u64_stats_update_begin.exit_crit_edge, %do.body.u64_stats_update_begin.exit_crit_edge
  %119 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %120, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %83, i32 0, i32 1, i32 0, i32 1
  %121 = tail call ptr @llvm.returnaddress(i32 0) #7
  %122 = ptrtoint ptr %121 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %122) #7
  %arrayidx35 = getelementptr [37 x i64], ptr %83, i32 0, i32 15
  %123 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx35, align 8
  %add36 = add i64 %124, 1
  store i64 %add36, ptr %arrayidx35, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %122) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %125 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %126, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end43:                                         ; preds = %ip_route_connect.exit
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %retval.0.i, i32 0, i32 2
  %127 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rt_flags, align 4
  %and44 = and i32 %128, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end48_crit_edge, label %land.lhs.true

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end43
  %129 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %33, align 4
  %131 = and i32 %130, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.i141.not = icmp eq i32 %131, 0
  br i1 %tobool.i141.not, label %if.then47, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dst_release(ptr noundef %retval.0.i) #7
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end43.if.end48_crit_edge
  %132 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %inet_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool50.not = icmp eq i32 %133, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %saddr11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %saddr11.i.i.i, align 8
  %136 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %inet_saddr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %137 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool57.not = icmp eq i32 %138, 0
  br i1 %tobool57.not, label %if.then58, label %if.end54.if.end70_crit_edge

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then58:                                        ; preds = %if.end54
  %139 = ptrtoint ptr %saddr11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %saddr11.i.i.i, align 8
  %141 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %skc_rcv_saddr, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %142 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %skc_prot, align 8
  %rehash = getelementptr inbounds %struct.proto, ptr %143, i32 0, i32 22
  %144 = ptrtoint ptr %rehash to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rehash, align 4
  %tobool64.not = icmp eq ptr %145, null
  br i1 %tobool64.not, label %if.then58.if.end70_crit_edge, label %if.then65

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then65:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %145(ptr noundef %sk) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.then58.if.end70_crit_edge, %if.end54.if.end70_crit_edge
  %146 = ptrtoint ptr %daddr10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %daddr10.i.i.i, align 4
  %148 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %sk, align 8
  %149 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %sin_port, align 2
  %151 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %150, ptr %151, align 4
  %153 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i.i142 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i.i142 to ptr
  %preempt_count.i.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i.i143, align 4
  %add.i.i.i.i144 = add i32 %156, 1
  store volatile i32 %add.i.i.i.i144, ptr %preempt_count.i.i.i.i.i143, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i145 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i145, label %if.end70.rcu_read_lock.exit.i154_crit_edge, label %land.lhs.true.i.i148

if.end70.rcu_read_lock.exit.i154_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i154

land.lhs.true.i.i148:                             ; preds = %if.end70
  %call1.i.i146 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %call1.i.i146, 0
  br i1 %tobool.not.i.i147, label %land.lhs.true.i.i148.rcu_read_lock.exit.i154_crit_edge, label %land.lhs.true2.i.i150

land.lhs.true.i.i148.rcu_read_lock.exit.i154_crit_edge: ; preds = %land.lhs.true.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i154

land.lhs.true2.i.i150:                            ; preds = %land.lhs.true.i.i148
  %.b4.i.i149 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i149, label %land.lhs.true2.i.i150.rcu_read_lock.exit.i154_crit_edge, label %if.then.i.i151

land.lhs.true2.i.i150.rcu_read_lock.exit.i154_crit_edge: ; preds = %land.lhs.true2.i.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i154

if.then.i.i151:                                   ; preds = %land.lhs.true2.i.i150
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit.i154

rcu_read_lock.exit.i154:                          ; preds = %if.then.i.i151, %land.lhs.true2.i.i150.rcu_read_lock.exit.i154_crit_edge, %land.lhs.true.i.i148.rcu_read_lock.exit.i154_crit_edge, %if.end70.rcu_read_lock.exit.i154_crit_edge
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 83
  %157 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %call.i152 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %land.lhs.true.i, label %rcu_read_lock.exit.i154.do.end7.i_crit_edge

rcu_read_lock.exit.i154.do.end7.i_crit_edge:      ; preds = %rcu_read_lock.exit.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i154
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @reuseport_has_conns.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i155

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i155:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reuseport_has_conns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 52, ptr noundef nonnull @.str.1) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i155, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i154.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %158, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end19.i_crit_edge, label %if.then12.i

do.end7.i.if.end19.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then12.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %has_conns.i = getelementptr inbounds %struct.sock_reuseport, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %has_conns.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %bf.load.i = load i8, ptr %has_conns.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %has_conns.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i, %do.end7.i.if.end19.i_crit_edge
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2.i, label %if.end19.i.reuseport_has_conns.exit_crit_edge, label %land.lhs.true.i5.i

if.end19.i.reuseport_has_conns.exit_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_has_conns.exit

land.lhs.true.i5.i:                               ; preds = %if.end19.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_has_conns.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_has_conns.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %reuseport_has_conns.exit

reuseport_has_conns.exit:                         ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge, %land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge, %if.end19.i.reuseport_has_conns.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %160 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i9.i = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i156 = add i32 %163, -1
  store volatile i32 %sub.i.i.i.i156, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %164 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %164)
  store volatile i8 1, ptr %skc_state, align 2
  %call.i.i157 = tail call i32 @prandom_u32() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %tobool.not.i.i158 = icmp eq i32 %call.i.i157, 0
  %..i.i = select i1 %tobool.not.i.i158, i32 1, i32 %call.i.i157
  %sk_txhash.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 42
  %165 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 %..i.i, ptr %sk_txhash.i, align 4
  %call78 = tail call i32 @prandom_u32() #7
  %conv79 = trunc i32 %call78 to i16
  %inet_id = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 7
  %166 = ptrtoint ptr %inet_id to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv79, ptr %inet_id, align 2
  %167 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i, align 4
  %168 = ptrtoint ptr %sk_dst_pending_confirm.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %sk_dst_pending_confirm.i.i, align 8
  %call.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %169 = ptrtoint ptr %retval.0.i to i32
  tail call void @llvm.prefetch.p0(ptr %sk_dst_cache.i.i, i32 1, i32 3, i32 1) #7
  %170 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %169, ptr %sk_dst_cache.i.i) #7, !srcloc !37
  %asmresult.i.i = extractvalue { i32, i32 } %170, 0
  %171 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @dst_release(ptr noundef %171) #7
  br label %cleanup

cleanup:                                          ; preds = %reuseport_has_conns.exit, %if.then47, %u64_stats_update_begin.exit, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ -101, %u64_stats_update_begin.exit ], [ %71, %if.then25.cleanup_crit_edge ], [ 0, %reuseport_has_conns.exit ], [ -13, %if.then47 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip4_datagram_connect(ptr noundef %sk, ptr nocapture noundef readonly %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #7
  %call = tail call i32 @__ip4_datagram_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len)
  tail call void @release_sock(ptr noundef %sk) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip4_datagram_release_cb(ptr noundef %sk) #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #7
  %2 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %3 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %7 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge

rcu_read_lock.exit.__sk_dst_get.exit_crit_edge:   ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %rcu_read_lock.exit
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i64 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_dst_get.exit

land.lhs.true.i65:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i65.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i65.__sk_dst_get.exit_crit_edge:    ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i65
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i66

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_dst_get.exit

if.then.i66:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 2068, ptr noundef nonnull @.str.1) #7
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i66, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i65.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %rcu_read_lock.exit.__sk_dst_get.exit_crit_edge
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %__sk_dst_get.exit.if.then_crit_edge, label %lor.lhs.false

__sk_dst_get.exit.if.then_crit_edge:              ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %__sk_dst_get.exit
  %obsolete = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %obsolete to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %obsolete, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool3.not = icmp eq i16 %10, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %check = getelementptr inbounds %struct.dst_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check, align 4
  %call5 = tail call ptr %14(ptr noundef nonnull %8, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %__sk_dst_get.exit.if.then_crit_edge
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i67, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i70

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i70:                                ; preds = %if.then
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %15 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i74 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %inet_opt7 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %19 = ptrtoint ptr %inet_opt7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %inet_opt7, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end.do.end18_crit_edge

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b63 = load i1, ptr @ip4_datagram_release_cb.__warned, align 1
  br i1 %.b63, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ip4_datagram_release_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.1) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %tobool20.not = icmp eq ptr %20, null
  br i1 %tobool20.not, label %do.end18.if.end25_crit_edge, label %land.lhs.true21

do.end18.if.end25_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true21:                                  ; preds = %do.end18
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %20, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.end25_crit_edge, label %if.then23

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %opt = getelementptr inbounds %struct.ip_options_rcu, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21.if.end25_crit_edge, %do.end18.if.end25_crit_edge
  %daddr.0 = phi i32 [ %24, %if.then23 ], [ %1, %land.lhs.true21.if.end25_crit_edge ], [ %1, %do.end18.if.end25_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %25 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i, align 4
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %27 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inet_saddr, align 4
  %29 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %32 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %inet_sport, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %34 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sk_protocol, align 4
  %conv29 = trunc i16 %35 to i8
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %36 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tos, align 4
  %38 = and i8 %37, 30
  %39 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = lshr i32 %41, 13
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %or = or i8 %44, %38
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %45 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %skc_bound_dev_if, align 4
  %tobool.not.i76 = icmp eq ptr %sk, null
  br i1 %tobool.not.i76, label %sock_net_uid.exit32.i, label %sock_net_uid.exit.i

sock_net_uid.exit.i:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %47 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_mark.i, align 8
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %49 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %transparent.i.i, align 8
  %50 = and i16 %bf.load.i.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %51 = icmp ne i16 %50, 0
  %flags.0.i.i = zext i1 %51 to i8
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %52 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %sk_uid.i.i, align 4
  %53 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %46, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %54 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %55 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %48, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %56 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %or, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %57 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %58 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv29, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %59 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %flags.0.i.i, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %60 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %61 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %62 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %63 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %daddr.0, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %64 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %28, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %65 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %31, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.39, ptr %uli.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %33, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %67 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  call void @security_sk_classify_flow(ptr noundef nonnull %sk, ptr noundef nonnull %fl4) #7
  br label %ip_route_output_ports.exit

sock_net_uid.exit32.i:                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %user_ns.i28.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 11
  %68 = ptrtoint ptr %user_ns.i28.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %user_ns.i28.i, align 4
  %call.i29.i = tail call i32 @make_kuid(ptr noundef %69, i32 noundef 0) #7
  %70 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %46, ptr %fl4, align 8
  %flowic_iif.i33.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %71 = ptrtoint ptr %flowic_iif.i33.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %flowic_iif.i33.i, align 4
  %flowic_mark.i34.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %72 = ptrtoint ptr %flowic_mark.i34.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %flowic_mark.i34.i, align 8
  %flowic_tos.i35.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %73 = ptrtoint ptr %flowic_tos.i35.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %or, ptr %flowic_tos.i35.i, align 4
  %flowic_scope.i36.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %74 = ptrtoint ptr %flowic_scope.i36.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %flowic_scope.i36.i, align 1
  %flowic_proto.i37.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %75 = ptrtoint ptr %flowic_proto.i37.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv29, ptr %flowic_proto.i37.i, align 2
  %flowic_flags.i38.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %76 = ptrtoint ptr %flowic_flags.i38.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %flowic_flags.i38.i, align 1
  %flowic_secid.i39.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %77 = ptrtoint ptr %flowic_secid.i39.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %flowic_secid.i39.i, align 8
  %flowic_tun_key.i40.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %78 = ptrtoint ptr %flowic_tun_key.i40.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %flowic_tun_key.i40.i, align 8
  %flowic_uid.i41.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %79 = ptrtoint ptr %flowic_uid.i41.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call.i29.i, ptr %flowic_uid.i41.i, align 4
  %daddr10.i42.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %80 = ptrtoint ptr %daddr10.i42.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %daddr.0, ptr %daddr10.i42.i, align 4
  %saddr11.i43.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %81 = ptrtoint ptr %saddr11.i43.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %28, ptr %saddr11.i43.i, align 8
  %uli.i44.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %82 = ptrtoint ptr %uli.i44.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %31, ptr %uli.i44.i, align 8
  %sport14.i45.i = getelementptr inbounds %struct.anon.39, ptr %uli.i44.i, i32 0, i32 1
  %83 = ptrtoint ptr %sport14.i45.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %33, ptr %sport14.i45.i, align 2
  %flowic_multipath_hash.i46.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %84 = ptrtoint ptr %flowic_multipath_hash.i46.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %flowic_multipath_hash.i46.i, align 8
  br label %ip_route_output_ports.exit

ip_route_output_ports.exit:                       ; preds = %sock_net_uid.exit32.i, %sock_net_uid.exit.i
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %26, ptr noundef nonnull %fl4, ptr noundef %sk) #7
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call11.i
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %85 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %86 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_dst_cache.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %87 = ptrtoint ptr %spec.select to i32
  call void @llvm.prefetch.p0(ptr %sk_dst_cache.i, i32 1, i32 3, i32 1) #7
  %88 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %87, ptr %sk_dst_cache.i) #7, !srcloc !37
  %asmresult.i.i = extractvalue { i32, i32 } %88, 0
  %89 = inttoptr i32 %asmresult.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  call void @dst_release(ptr noundef %89) #7
  %call.i78 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i78, label %ip_route_output_ports.exit.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true.i81

ip_route_output_ports.exit.rcu_read_unlock.exit88_crit_edge: ; preds = %ip_route_output_ports.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit88

land.lhs.true.i81:                                ; preds = %ip_route_output_ports.exit
  %call1.i79 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, label %land.lhs.true2.i83

land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit88

land.lhs.true2.i83:                               ; preds = %land.lhs.true.i81
  %.b4.i82 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i82, label %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, label %if.then.i84

land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge: ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit88

if.then.i84:                                      ; preds = %land.lhs.true2.i83
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit88

rcu_read_unlock.exit88:                           ; preds = %if.then.i84, %land.lhs.true2.i83.rcu_read_unlock.exit88_crit_edge, %land.lhs.true.i81.rcu_read_unlock.exit88_crit_edge, %ip_route_output_ports.exit.rcu_read_unlock.exit88_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %90 = call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i85 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i85 to ptr
  %preempt_count.i.i.i.i86 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i86, align 4
  %sub.i.i.i87 = add i32 %93, -1
  store volatile i32 %sub.i.i.i87, ptr %preempt_count.i.i.i.i86, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit88, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab___ip4_datagram_connect, !1, !"__ksymtab___ip4_datagram_connect", i1 false, i1 false}
!1 = !{!"../net/ipv4/datagram.c", i32 82, i32 1}
!2 = !{ptr @__ksymtab_ip4_datagram_connect, !3, !"__ksymtab_ip4_datagram_connect", i1 false, i1 false}
!3 = !{!"../net/ipv4/datagram.c", i32 93, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ipv4/datagram.c", i32 115, i32 13}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ip4_datagram_release_cb, !9, !"__ksymtab_ip4_datagram_release_cb", i1 false, i1 false}
!9 = !{!"../net/ipv4/datagram.c", i32 128, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/net/sock_reuseport.h", i32 52, i32 10}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/net/sock.h", i32 2067, i32 9}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2156773593}
!37 = !{i64 847974, i64 847991, i64 848015, i64 848041, i64 848059}
!38 = !{i64 2156773938}
!39 = !{i64 2149357365}
!40 = !{i64 2149357631}
!41 = !{i64 2149865364}
!42 = !{i64 2149870296}
!43 = !{i64 2149892008}
!44 = !{i64 2149896900}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2149973357}
!47 = !{i64 2149973682}
