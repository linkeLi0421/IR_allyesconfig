; ModuleID = '/llk/IR_all_yes/net/ipv6/raw.c_pt.bc'
source_filename = "../net/ipv6/raw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+raw_v6_hashinfo\22, \22a\22\09"
module asm "\09.weak\09__crc_raw_v6_hashinfo\09\09\09\09"
module asm "\09.long\09__crc_raw_v6_hashinfo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_v6_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_v6_hashinfo\22\09\09\09\09\09"
module asm "__kstrtabns_raw_v6_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__raw_v6_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc___raw_v6_lookup\09\09\09\09"
module asm "\09.long\09__crc___raw_v6_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_v6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_v6_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___raw_v6_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rawv6_mh_filter_register\22, \22a\22\09"
module asm "\09.weak\09__crc_rawv6_mh_filter_register\09\09\09\09"
module asm "\09.long\09__crc_rawv6_mh_filter_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawv6_mh_filter_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rawv6_mh_filter_register\22\09\09\09\09\09"
module asm "__kstrtabns_rawv6_mh_filter_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rawv6_mh_filter_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_rawv6_mh_filter_unregister\09\09\09\09"
module asm "\09.long\09__crc_rawv6_mh_filter_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawv6_mh_filter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rawv6_mh_filter_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rawv6_mh_filter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_hashinfo = type { %struct.rwlock_t, [256 x %struct.hlist_head] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.164, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.164 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.145 }
%struct.atomic_t = type { i32 }
%union.anon.145 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.80, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.80 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sock_common = type { %union.anon.0, %union.anon.1, %union.anon.2, i16, i8, i8, i32, %union.anon.4, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.165, [0 x i32], %union.anon.166, i16, i16, %union.anon.167, %struct.refcount_struct, [0 x i32], %union.anon.168 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.4 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { %struct.hlist_node }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%struct.anon.3 = type { i16, i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.203 }
%union.anon.203 = type { [1 x i32] }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.175, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.193, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.175 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.193 = type { ptr }
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
%struct.raw6_sock = type { %struct.inet_sock, i32, i32, %struct.icmp6_filter, i32, %struct.ipv6_pinfo }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.169, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.170, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.171, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.169 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.170 = type { ptr }
%union.anon.171 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmp6_filter = type { [8 x i32] }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.199, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.raw6_frag_vec = type { ptr, i32, [4 x i8] }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.163, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.5, %union.anon.161 }
%union.anon.5 = type { ptr }
%union.anon.161 = type { i64 }
%union.anon.163 = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.201, i32, i32, ptr }
%union.anon.201 = type { ptr }
%struct.anon = type { i32, i32 }
%struct.anon.41 = type { i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.raw_iter_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type { ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raw_v6_hashinfo.lock\00", [43 x i8] zeroinitializer }, align 32
@raw_v6_hashinfo = dso_local global { %struct.raw_hashinfo, [276 x i8] } { %struct.raw_hashinfo { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [256 x %struct.hlist_head] zeroinitializer }, [276 x i8] zeroinitializer }, align 32
@__kstrtab_raw_v6_hashinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_v6_hashinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_v6_hashinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_v6_hashinfo to i32), ptr @__kstrtab_raw_v6_hashinfo, ptr @__kstrtabns_raw_v6_hashinfo }, section "___ksymtab_gpl+raw_v6_hashinfo", align 4
@__kstrtab___raw_v6_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_v6_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_v6_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_v6_lookup to i32), ptr @__kstrtab___raw_v6_lookup, ptr @__kstrtabns___raw_v6_lookup }, section "___ksymtab_gpl+__raw_v6_lookup", align 4
@mh_filter = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_rawv6_mh_filter_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawv6_mh_filter_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rawv6_mh_filter_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawv6_mh_filter_register to i32), ptr @__kstrtab_rawv6_mh_filter_register, ptr @__kstrtabns_rawv6_mh_filter_register }, section "___ksymtab+rawv6_mh_filter_register", align 4
@__kstrtab_rawv6_mh_filter_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawv6_mh_filter_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rawv6_mh_filter_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawv6_mh_filter_unregister to i32), ptr @__kstrtab_rawv6_mh_filter_unregister, ptr @__kstrtabns_rawv6_mh_filter_unregister }, section "___ksymtab+rawv6_mh_filter_unregister", align 4
@rawv6_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @rawv6_close, ptr null, ptr @ip6_datagram_connect_v6_only, ptr @__udp_disconnect, ptr null, ptr @rawv6_ioctl, ptr @rawv6_init_sk, ptr @raw6_destroy, ptr null, ptr @rawv6_setsockopt, ptr @rawv6_getsockopt, ptr null, ptr @rawv6_sendmsg, ptr @rawv6_recvmsg, ptr null, ptr @rawv6_bind, ptr null, ptr @rawv6_rcv_skb, ptr null, ptr null, ptr @raw_hash_sk, ptr @raw_unhash_sk, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1304, i32 0, i32 1152, i32 32, ptr null, ptr null, ptr null, %union.anon.164 { ptr @raw_v6_hashinfo }, ptr null, [32 x i8] c"RAWv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @raw_abort }, [36 x i8] zeroinitializer }, align 32
@raw6_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @raw6_init_net, ptr null, ptr @raw6_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@inet6_sockraw_ops = dso_local constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 10, ptr null, ptr @inet6_release, ptr @inet6_bind, ptr @inet_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @inet6_getname, ptr @datagram_poll, ptr @inet6_ioctl, ptr @sock_gettstamp, ptr @sock_no_listen, ptr @inet_shutdown, ptr @sock_common_setsockopt, ptr @sock_common_getsockopt, ptr null, ptr @inet_sendmsg, ptr @sock_common_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rawv6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 3, i16 0, ptr @rawv6_prot, ptr @inet6_sockraw_ops, i8 1 }, [40 x i8] zeroinitializer }, align 32
@ipv6_raw_deliver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv6/raw.c\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@txopt_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/ipv6.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"raw6\00", [27 x i8] zeroinitializer }, align 32
@raw6_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @raw_seq_start, ptr @raw_seq_stop, ptr @raw_seq_next, ptr @raw6_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [164 x i8], [60 x i8] } { [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 58, i64 135]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 21521, i64 21531]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 58, i64 135]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 41, i64 58, i64 255]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 36]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 36]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 41, i64 58, i64 255]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 36]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 36]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 58, i64 135]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 65, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"raw_v6_hashinfo\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 64, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"rawv6_prot\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1233, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"raw6_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1295, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"inet6_sockraw_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1312, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"rawv6_protosw\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1337, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 201, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1011, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 214, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"../include/net/ipv6.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 379, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 229, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 271, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1283, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"raw6_seq_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1274, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [18 x i8] c"../net/ipv6/raw.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1264, i32 17 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab___raw_v6_lookup, ptr @__ksymtab_raw_v6_hashinfo, ptr @__ksymtab_rawv6_mh_filter_register, ptr @__ksymtab_rawv6_mh_filter_unregister, ptr @.str, ptr @raw_v6_hashinfo, ptr @rawv6_prot, ptr @raw6_net_ops, ptr @inet6_sockraw_ops, ptr @rawv6_protosw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.17, ptr @.str.18, ptr @raw6_seq_ops, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw_v6_hashinfo to i32), i32 1068, i32 1344, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawv6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw6_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet6_sockraw_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rawv6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raw6_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__raw_v6_lookup(ptr noundef readonly %net, ptr noundef %sk, i16 noundef zeroext %num, ptr noundef %loc_addr, ptr noundef %rmt_addr, i32 noundef %dif, i32 noundef %sdif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loc_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %1)
  %cmp.i = icmp ugt i32 %1, -16777217
  %tobool.not81 = icmp eq ptr %sk, null
  br i1 %tobool.not81, label %entry.found_crit_edge, label %for.body.lr.ph

entry.found_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx6.i = getelementptr [4 x i32], ptr %rmt_addr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %rmt_addr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %rmt_addr, i32 0, i32 3
  %sysctl_raw_l3mdev_accept.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdif)
  %tobool1.not.i.i = icmp eq i32 %sdif, 0
  %arrayidx6.i69 = getelementptr [4 x i32], ptr %loc_addr, i32 0, i32 1
  %arrayidx11.i73 = getelementptr [4 x i32], ptr %loc_addr, i32 0, i32 2
  %arrayidx17.i77 = getelementptr [4 x i32], ptr %loc_addr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.addr.082 = phi ptr [ %sk, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %num)
  %cmp = icmp eq i16 %4, %num
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %cmp.i55.not = icmp eq ptr %6, %net
  br i1 %cmp.i55.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %if.then
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 10
  %7 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skc_v6_daddr, align 4
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 10, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %10, %8
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 10, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %12
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 10, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i56 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i56, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %15 = ptrtoint ptr %rmt_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmt_addr, align 4
  %xor.i = xor i32 %16, %8
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %18, %10
  %or.i58 = or i32 %xor7.i, %xor.i
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %20, %12
  %or13.i = or i32 %or.i58, %xor12.i
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %22, %14
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i59 = icmp eq i32 %or19.i, 0
  br i1 %cmp.i59, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 6
  %23 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %raw_sk_bound_dev_eq.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %dif)
  %cmp.i.i = icmp eq i32 %24, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sdif)
  %cmp4.i.i = icmp eq i32 %24, %sdif
  %spec.select9.i.i = or i1 %cmp.i.i, %cmp4.i.i
  br i1 %spec.select9.i.i, label %if.end.i.i.if.end19_crit_edge, label %if.end.i.i.for.inc_crit_edge

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.if.end19_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

raw_sk_bound_dev_eq.exit:                         ; preds = %if.end15
  %25 = ptrtoint ptr %sysctl_raw_l3mdev_accept.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sysctl_raw_l3mdev_accept.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i = icmp ne i8 %26, 0
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.i
  br i1 %spec.select.i.i, label %raw_sk_bound_dev_eq.exit.if.end19_crit_edge, label %raw_sk_bound_dev_eq.exit.for.inc_crit_edge

raw_sk_bound_dev_eq.exit.for.inc_crit_edge:       ; preds = %raw_sk_bound_dev_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

raw_sk_bound_dev_eq.exit.if.end19_crit_edge:      ; preds = %raw_sk_bound_dev_eq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %raw_sk_bound_dev_eq.exit.if.end19_crit_edge, %if.end.i.i.if.end19_crit_edge
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 11
  %27 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %arrayidx2.i60 = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 11, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx2.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i60, align 4
  %or.i61 = or i32 %30, %28
  %arrayidx4.i62 = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 11, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx4.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.i62, align 4
  %or5.i63 = or i32 %or.i61, %32
  %arrayidx7.i64 = getelementptr %struct.sock_common, ptr %sk.addr.082, i32 0, i32 11, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx7.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i64, align 4
  %or8.i65 = or i32 %or5.i63, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i65)
  %cmp.i66 = icmp eq i32 %or8.i65, 0
  br i1 %cmp.i66, label %if.end19.found_crit_edge, label %if.then22

if.end19.found_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.then22:                                        ; preds = %if.end19
  %35 = ptrtoint ptr %loc_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %loc_addr, align 4
  %xor.i67 = xor i32 %36, %28
  %37 = ptrtoint ptr %arrayidx6.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.i69, align 4
  %xor7.i70 = xor i32 %38, %30
  %or.i71 = or i32 %xor7.i70, %xor.i67
  %39 = ptrtoint ptr %arrayidx11.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.i73, align 4
  %xor12.i74 = xor i32 %40, %32
  %or13.i75 = or i32 %or.i71, %xor12.i74
  %41 = ptrtoint ptr %arrayidx17.i77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx17.i77, align 4
  %xor18.i78 = xor i32 %42, %34
  %or19.i79 = or i32 %or13.i75, %xor18.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i79)
  %cmp.i80 = icmp eq i32 %or19.i79, 0
  br i1 %cmp.i80, label %if.then22.found_crit_edge, label %if.end27

if.then22.found_crit_edge:                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end27:                                         ; preds = %if.then22
  br i1 %cmp.i, label %land.lhs.true30, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true30:                                  ; preds = %if.end27
  %call31 = tail call zeroext i1 @inet6_mc_check(ptr noundef nonnull %sk.addr.082, ptr noundef %loc_addr, ptr noundef %rmt_addr) #10
  br i1 %call31, label %land.lhs.true30.found_crit_edge, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true30.found_crit_edge:                  ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %land.lhs.true30.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %raw_sk_bound_dev_eq.exit.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %43 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.082, i32 0, i32 15
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool38.not = icmp eq ptr %45, null
  %add.ptr = getelementptr i8, ptr %45, i32 -84
  %tobool.not87 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %tobool38.not, %tobool.not87
  br i1 %tobool.not, label %for.inc.found_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

found:                                            ; preds = %for.inc.found_crit_edge, %land.lhs.true30.found_crit_edge, %if.then22.found_crit_edge, %if.end19.found_crit_edge, %entry.found_crit_edge
  %sk.addr.0.lcssa = phi ptr [ null, %entry.found_crit_edge ], [ null, %for.inc.found_crit_edge ], [ %sk.addr.082, %if.end19.found_crit_edge ], [ %sk.addr.082, %land.lhs.true30.found_crit_edge ], [ %sk.addr.082, %if.then22.found_crit_edge ]
  ret ptr %sk.addr.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet6_mc_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rawv6_mh_filter_register(ptr noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  store volatile ptr %filter, ptr @mh_filter, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rawv6_mh_filter_unregister(ptr nocapture readnone %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr null, ptr @mh_filter, align 4
  tail call void @synchronize_rcu() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @raw6_local_deliver(ptr noundef %skb, i32 noundef %nexthdr) local_unnamed_addr #0 align 64 {
entry:
  %_hdr.i.i = alloca %struct.icmp6hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %nexthdr, 255
  %arrayidx = getelementptr %struct.raw_hashinfo, ptr @raw_v6_hashinfo, i32 0, i32 1, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -84
  %tobool.not6 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %tobool.not.i.not.i, %tobool.not6
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %saddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %add.ptr.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v6_hashinfo) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  %add.ptr.i.i75.i = getelementptr i8, ptr %7, i32 -84
  %tobool.not107.i = icmp eq ptr %add.ptr.i.i75.i, null
  %tobool.not.i = or i1 %tobool.not.i.not.i.i, %tobool.not107.i
  br i1 %tobool.not.i, label %land.lhs.true.ipv6_raw_deliver.exit_crit_edge, label %if.end.i

land.lhs.true.ipv6_raw_deliver.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_raw_deliver.exit

if.end.i:                                         ; preds = %land.lhs.true
  %8 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i.i, align 4
  %conv4.i = trunc i32 %nexthdr to i16
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i.i, align 8
  %15 = and i16 %14, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not.i.i = icmp eq i16 %15, 0
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i.i = select i1 %tobool.i.not.i.i, ptr %cb.i.i, ptr %skb_iif.i.i
  %16 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %skb, null
  %brmerge.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool.i.not.i.i
  br i1 %brmerge.i, label %if.end.i.inet6_sdif.exit.i_crit_edge, label %if.then.i.i

if.end.i.inet6_sdif.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sdif.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb.i.i, align 8
  br label %inet6_sdif.exit.i

inet6_sdif.exit.i:                                ; preds = %if.then.i.i, %if.end.i.inet6_sdif.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %18, %if.then.i.i ], [ 0, %if.end.i.inet6_sdif.exit.i_crit_edge ]
  %call7.i = tail call ptr @__raw_v6_lookup(ptr noundef %12, ptr noundef nonnull %add.ptr.i.i75.i, i16 noundef zeroext %conv4.i, ptr noundef %add.ptr.i, ptr noundef %saddr1.i, i32 noundef %cond.i.i, i32 noundef %retval.0.i.i) #10
  %tobool8.not109.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not109.i, label %inet6_sdif.exit.i.ipv6_raw_deliver.exit_crit_edge, label %while.body.lr.ph.i

inet6_sdif.exit.i.ipv6_raw_deliver.exit_crit_edge: ; preds = %inet6_sdif.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_raw_deliver.exit

while.body.lr.ph.i:                               ; preds = %inet6_sdif.exit.i
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sk.0110.i = phi ptr [ %call7.i, %while.body.lr.ph.i ], [ %call41.i, %cleanup.i.while.body.i_crit_edge ]
  %19 = zext i32 %nexthdr to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %nexthdr, label %while.body.i.if.then30.i_crit_edge [
    i32 58, label %sw.bb.i
    i32 135, label %sw.bb10.i
  ]

while.body.i.if.then30.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr.i.i) #10
  %20 = ptrtoint ptr %_hdr.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %_hdr.i.i, align 8
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %23 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %24 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i.i.i
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %27 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  %31 = add i32 %30, %sub.ptr.sub.i.i.i
  %sub.i1.i.i.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %skb_header_pointer.exit.i.i, label %if.end.i.i.i.i, !prof !80

if.end.i.i.i.i:                                   ; preds = %sw.bb.i
  br i1 %tobool.not.i.i, label %if.end.i.i.i.i.icmpv6_filter.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.icmpv6_filter.exit.i_crit_edge:    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %icmpv6_filter.exit.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %_hdr.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.icmpv6_filter.exit.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then.i80.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i80.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i80.i

lor.lhs.false.i.i.i.i.icmpv6_filter.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %icmpv6_filter.exit.i

skb_header_pointer.exit.i.i:                      ; preds = %sw.bb.i
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %26, i32 %sub.ptr.sub.i.i.i
  %tobool.not.i79.i = icmp eq ptr %add.ptr.i.i12.i.i, null
  br i1 %tobool.not.i79.i, label %skb_header_pointer.exit.i.i.icmpv6_filter.exit.i_crit_edge, label %skb_header_pointer.exit.i.i.if.then.i80.i_crit_edge

skb_header_pointer.exit.i.i.if.then.i80.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i80.i

skb_header_pointer.exit.i.i.icmpv6_filter.exit.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %icmpv6_filter.exit.i

if.then.i80.i:                                    ; preds = %skb_header_pointer.exit.i.i.if.then.i80.i_crit_edge, %lor.lhs.false.i.i.i.i.if.then.i80.i_crit_edge
  %retval.0.i.i18.i.i = phi ptr [ %add.ptr.i.i12.i.i, %skb_header_pointer.exit.i.i.if.then.i80.i_crit_edge ], [ %_hdr.i.i, %lor.lhs.false.i.i.i.i.if.then.i80.i_crit_edge ]
  %filter.i.i = getelementptr inbounds %struct.raw6_sock, ptr %sk.0110.i, i32 0, i32 3
  %32 = ptrtoint ptr %retval.0.i.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %retval.0.i.i18.i.i, align 4
  %conv.i.i = zext i8 %33 to i32
  %shr.i.i = lshr i32 %conv.i.i, 5
  %arrayidx4.i.i = getelementptr i32, ptr %filter.i.i, i32 %shr.i.i
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i.i, align 4
  %and.i.i = and i32 %conv.i.i, 31
  %36 = lshr i32 %35, %and.i.i
  %37 = and i32 %36, 1
  br label %icmpv6_filter.exit.i

icmpv6_filter.exit.i:                             ; preds = %if.then.i80.i, %skb_header_pointer.exit.i.i.icmpv6_filter.exit.i_crit_edge, %lor.lhs.false.i.i.i.i.icmpv6_filter.exit.i_crit_edge, %if.end.i.i.i.i.icmpv6_filter.exit.i_crit_edge
  %retval.0.i81.i = phi i32 [ %37, %if.then.i80.i ], [ 1, %skb_header_pointer.exit.i.i.icmpv6_filter.exit.i_crit_edge ], [ 1, %if.end.i.i.i.i.icmpv6_filter.exit.i_crit_edge ], [ 1, %lor.lhs.false.i.i.i.i.icmpv6_filter.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr.i.i) #10
  br label %if.end27.i

sw.bb10.i:                                        ; preds = %while.body.i
  %38 = load volatile ptr, ptr @mh_filter, align 4
  %call12.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i, label %sw.bb10.i.do.end21.i_crit_edge

sw.bb10.i.do.end21.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

land.lhs.true.i:                                  ; preds = %sw.bb10.i
  %call14.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.do.end21.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.do.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %.b74.i = load i1, ptr @ipv6_raw_deliver.__warned, align 1
  br i1 %.b74.i, label %land.lhs.true16.i.do.end21.i_crit_edge, label %if.then18.i

land.lhs.true16.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ipv6_raw_deliver.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef nonnull @.str.2) #10
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i.do.end21.i_crit_edge, %land.lhs.true.i.do.end21.i_crit_edge, %sw.bb10.i.do.end21.i_crit_edge
  %tobool23.not.i = icmp eq ptr %38, null
  br i1 %tobool23.not.i, label %do.end21.i.if.then30.i_crit_edge, label %sw.epilog.i

do.end21.i.if.then30.i_crit_edge:                 ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

sw.epilog.i:                                      ; preds = %do.end21.i
  %call24.i = call i32 %38(ptr noundef nonnull %sk.0110.i, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.i = icmp slt i32 %call24.i, 0
  br i1 %cmp.i, label %sw.epilog.i._crit_edge, label %sw.epilog.i.if.end27.i_crit_edge

sw.epilog.i.if.end27.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %53

if.end27.i:                                       ; preds = %sw.epilog.i.if.end27.i_crit_edge, %icmpv6_filter.exit.i
  %filtered.0100.i = phi i32 [ %call24.i, %sw.epilog.i.if.end27.i_crit_edge ], [ %retval.0.i81.i, %icmpv6_filter.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filtered.0100.i)
  %cmp28.i = icmp eq i32 %filtered.0100.i, 0
  br i1 %cmp28.i, label %if.end27.i.if.then30.i_crit_edge, label %if.end27.i.if.end36.i_crit_edge

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end27.i.if.then30.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end27.i.if.then30.i_crit_edge, %do.end21.i.if.then30.i_crit_edge, %while.body.i.if.then30.i_crit_edge
  %call31.i = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.then30.i.if.end36.i_crit_edge, label %if.then33.i

if.then30.i.if.end36.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then30.i
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call31.i, i32 0, i32 5
  %39 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i.i = and i32 %40, -8
  %41 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then33.i.nf_reset_ct.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then33.i.nf_reset_ct.exit.i_crit_edge:         ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then33.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #10, !srcloc !82
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.nf_reset_ct.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !80

if.end5.i.i.i.i.i.i.nf_reset_ct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_reset_ct.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef 3) #10
  br label %nf_reset_ct.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  call void @nf_conntrack_destroy(ptr noundef nonnull %41) #10
  br label %nf_reset_ct.exit.i

nf_reset_ct.exit.i:                               ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.nf_reset_ct.exit.i_crit_edge, %if.then33.i.nf_reset_ct.exit.i_crit_edge
  %43 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %_nfct.i.i.i, align 8
  %call34.i = call i32 @rawv6_rcv(ptr noundef nonnull %sk.0110.i, ptr noundef nonnull %call31.i) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %nf_reset_ct.exit.i, %if.then30.i.if.end36.i_crit_edge, %if.end27.i.if.end36.i_crit_edge
  %44 = getelementptr inbounds %struct.sock_common, ptr %sk.0110.i, i32 0, i32 15
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool.not.i82.i = icmp eq ptr %46, null
  %add.ptr.i.i4 = getelementptr i8, ptr %46, i32 -84
  %spec.select.i83.i = select i1 %tobool.not.i82.i, ptr null, ptr %add.ptr.i.i4
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags.i.i, align 8
  %49 = and i16 %48, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.i.not.i85.i = icmp eq i16 %49, 0
  %cond.in.i88.i = select i1 %tobool.i.not.i85.i, ptr %cb.i.i, ptr %skb_iif.i.i
  %50 = ptrtoint ptr %cond.in.i88.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %cond.i89.i = load i32, ptr %cond.in.i88.i, align 8
  %brmerge106.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool.i.not.i85.i
  br i1 %brmerge106.i, label %if.end36.i.cleanup.i_crit_edge, label %if.then.i95.i

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then.i95.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cb.i.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i95.i, %if.end36.i.cleanup.i_crit_edge
  %retval.0.i96.i = phi i32 [ %52, %if.then.i95.i ], [ 0, %if.end36.i.cleanup.i_crit_edge ]
  %call41.i = call ptr @__raw_v6_lookup(ptr noundef %12, ptr noundef %spec.select.i83.i, i16 noundef zeroext %conv4.i, ptr noundef %add.ptr.i, ptr noundef %saddr1.i, i32 noundef %cond.i89.i, i32 noundef %retval.0.i96.i) #10
  %tobool8.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool8.not.i, label %cleanup.i._crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i._crit_edge:                             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %53

ipv6_raw_deliver.exit:                            ; preds = %inet6_sdif.exit.i.ipv6_raw_deliver.exit_crit_edge, %land.lhs.true.ipv6_raw_deliver.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @raw_v6_hashinfo) #10
  br label %if.end

53:                                               ; preds = %cleanup.i._crit_edge, %sw.epilog.i._crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @raw_v6_hashinfo) #10
  br label %if.end

if.end:                                           ; preds = %53, %ipv6_raw_deliver.exit, %entry.if.end_crit_edge
  %raw_sk.0 = phi i1 [ false, %entry.if.end_crit_edge ], [ true, %53 ], [ false, %ipv6_raw_deliver.exit ]
  ret i1 %raw_sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raw6_icmp_error(ptr noundef %skb, i32 noundef %nexthdr, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %inner_offset, i32 noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %nexthdr, 255
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v6_hashinfo) #10
  %arrayidx = getelementptr %struct.raw_hashinfo, ptr @raw_v6_hashinfo, i32 0, i32 1, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -84
  %tobool.not27 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %tobool.not.i.not.i, %tobool.not27
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %3, i32 0, i32 5
  %daddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %3, i32 0, i32 6
  %4 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %conv = trunc i32 %nexthdr to i16
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 8
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i28 = icmp eq i16 %11, 0
  %cond.in.i29 = select i1 %tobool.i.not.i28, ptr %cb.i, ptr %skb_iif.i
  %12 = ptrtoint ptr %cond.in.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i30 = load i32, ptr %cond.in.i29, align 8
  %call631 = call ptr @__raw_v6_lookup(ptr noundef %8, ptr noundef nonnull %add.ptr.i.i, i16 noundef zeroext %conv, ptr noundef %saddr1, ptr noundef %daddr2, i32 noundef %cond.i30, i32 noundef %cond.i30)
  %tobool7.not32 = icmp eq ptr %call631, null
  br i1 %tobool7.not32, label %if.then.if.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body:                                       ; preds = %rawv6_err.exit.while.body_crit_edge, %if.then.while.body_crit_edge
  %call633 = phi ptr [ %call6, %rawv6_err.exit.while.body_crit_edge ], [ %call631, %if.then.while.body_crit_edge ]
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call633, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %14 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %while.body.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

while.body.inet6_sk.exit.i_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %call633, i32 0, i32 1
  %15 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %while.body.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %16, %cond.true.i.i ], [ null, %while.body.inet6_sk.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #10
  %17 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %err.i, align 4, !annotation !84
  %recverr.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %recverr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i, label %inet6_sk.exit.i.if.end.i_crit_edge

inet6_sk.exit.i.if.end.i_crit_edge:               ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %inet6_sk.exit.i
  %19 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp.not.i = icmp eq i8 %20, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.rawv6_err.exit_crit_edge

land.lhs.true.i.rawv6_err.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rawv6_err.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %inet6_sk.exit.i.if.end.i_crit_edge
  %call3.i = call i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr noundef nonnull %err.i) #10
  %21 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %type, label %if.end18thread-pre-split.i [
    i8 2, label %if.end13.thread.i
    i8 -119, label %if.then17.i
  ]

if.end13.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_sk_update_pmtu(ptr noundef %skb, ptr noundef nonnull %call633, i32 noundef %info) #10
  %22 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load8.i = load i16, ptr %recverr.i, align 2
  %23 = and i16 %bf.load8.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %23)
  %cmp11.i = icmp eq i16 %23, 2048
  %conv12.i = zext i1 %cmp11.i to i32
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_sk_redirect(ptr noundef %skb, ptr noundef nonnull %call633) #10
  br label %rawv6_err.exit

if.end18thread-pre-split.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load20.pr.i = load i16, ptr %recverr.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18thread-pre-split.i, %if.end13.thread.i
  %bf.load20.i = phi i16 [ %bf.load20.pr.i, %if.end18thread-pre-split.i ], [ %bf.load8.i, %if.end13.thread.i ]
  %harderr.04.i = phi i32 [ %call3.i, %if.end18thread-pre-split.i ], [ %conv12.i, %if.end13.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.i)
  %tobool22.not.i = icmp sgt i16 %bf.load20.i, -1
  br i1 %tobool22.not.i, label %if.end18.i.if.end30.i_crit_edge, label %if.then23.i

if.end18.i.if.end30.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %hdrincl.i = getelementptr inbounds %struct.inet_sock, ptr %call633, i32 0, i32 12
  %27 = ptrtoint ptr %hdrincl.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load24.i = load i16, ptr %hdrincl.i, align 8
  %28 = and i16 %bf.load24.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool27.not.i = icmp eq i16 %28, 0
  %spec.select.idx.i = select i1 %tobool27.not.i, i32 %inner_offset, i32 0
  %spec.select.i24 = getelementptr i8, ptr %26, i32 %spec.select.idx.i
  %29 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err.i, align 4
  call void @ipv6_icmp_error(ptr noundef nonnull %call633, ptr noundef %skb, i32 noundef %30, i16 noundef zeroext 0, i32 noundef %info, ptr noundef %spec.select.i24) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %if.end18.i.if.end30.i_crit_edge
  %31 = ptrtoint ptr %recverr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load32.i = load i16, ptr %recverr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load32.i)
  %tobool35.not.i = icmp sgt i16 %bf.load32.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %harderr.04.i)
  %tobool36.not.i = icmp eq i32 %harderr.04.i, 0
  %or.cond.i = select i1 %tobool35.not.i, i1 %tobool36.not.i, i1 false
  br i1 %or.cond.i, label %if.end30.i.rawv6_err.exit_crit_edge, label %if.then37.i

if.end30.i.rawv6_err.exit_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rawv6_err.exit

if.then37.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err.i, align 4
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %call633, i32 0, i32 51
  %34 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sk_err.i, align 4
  call void @sk_error_report(ptr noundef nonnull %call633) #10
  br label %rawv6_err.exit

rawv6_err.exit:                                   ; preds = %if.then37.i, %if.end30.i.rawv6_err.exit_crit_edge, %if.then17.i, %land.lhs.true.i.rawv6_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #10
  %35 = getelementptr inbounds %struct.sock_common, ptr %call633, i32 0, i32 15
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool.not.i25 = icmp eq ptr %37, null
  %add.ptr.i = getelementptr i8, ptr %37, i32 -84
  %spec.select.i26 = select i1 %tobool.not.i25, ptr null, ptr %add.ptr.i
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i, align 8
  %40 = and i16 %39, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i.not.i = icmp eq i16 %40, 0
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %41 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %call6 = call ptr @__raw_v6_lookup(ptr noundef %8, ptr noundef %spec.select.i26, i16 noundef zeroext %conv, ptr noundef %saddr1, ptr noundef %daddr2, i32 noundef %cond.i, i32 noundef %cond.i)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %rawv6_err.exit.if.end_crit_edge, label %rawv6_err.exit.while.body_crit_edge

rawv6_err.exit.while.body_crit_edge:              ; preds = %rawv6_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rawv6_err.exit.if.end_crit_edge:                  ; preds = %rawv6_err.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %rawv6_err.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @raw_v6_hashinfo) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rawv6_rcv(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %sk, null
  br i1 %tobool1.not.i.i.i, label %entry.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %sk_policy.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 18
  %5 = ptrtoint ptr %sk_policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_policy.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  br label %xfrm6_policy_check.exit

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %entry.if.end.i.i.i_crit_edge
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %7 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %policy_default.i.i.i.i, align 16
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.i.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %policy_count.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %10 = ptrtoint ptr %policy_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %policy_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %12 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i.i.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end_crit_edge:            ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !85

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i.i.i = load i32, ptr %15, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %19 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %17, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool12.not.i.i.i = icmp ult i32 %19, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge:       ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !85

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i11.i.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i.i, align 4
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not.i.i.i = icmp eq i16 %25, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, label %skb_dst.exit12.i.i.i.if.end_crit_edge

skb_dst.exit12.i.i.i.if.end_crit_edge:            ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge:     ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %skb_dst.exit12.i.i.i.lor.rhs.i.i.i_crit_edge, %skb_dst.exit.i.i.i.lor.rhs.i.i.i_crit_edge
  %call18.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool19.i.i.i = icmp ne i32 %call18.i.i.i, 0
  %phi.cast1.i.i.i = zext i1 %tobool19.i.i.i to i32
  br label %xfrm6_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i13.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !85

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr35.i.i.i = load i32, ptr %26, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %30 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %28, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool21.not.i.i.i = icmp ult i32 %30, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !85

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 8
  %and25.i33.i.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags24.i.i.i, align 4
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not.i.i.i = icmp eq i16 %36, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, label %skb_dst.exit34.i.i.i.if.end_crit_edge

skb_dst.exit34.i.i.i.if.end_crit_edge:            ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge:   ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs28.i.i.i

lor.rhs28.i.i.i:                                  ; preds = %skb_dst.exit34.i.i.i.lor.rhs28.i.i.i_crit_edge, %skb_dst.exit23.i.i.i.lor.rhs28.i.i.i_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i = icmp ne i32 %call30.i.i.i, 0
  %phi.cast.i.i.i = zext i1 %tobool31.i.i.i to i32
  br label %xfrm6_policy_check.exit

xfrm6_policy_check.exit:                          ; preds = %lor.rhs28.i.i.i, %lor.rhs.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i ], [ %phi.cast1.i.i.i, %lor.rhs.i.i.i ], [ %phi.cast.i.i.i, %lor.rhs28.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool.not = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %xfrm6_policy_check.exit.if.end_crit_edge

xfrm6_policy_check.exit.if.end_crit_edge:         ; preds = %xfrm6_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %xfrm6_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #10, !srcloc !86
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %xfrm6_policy_check.exit.if.end_crit_edge, %skb_dst.exit34.i.i.i.if.end_crit_edge, %skb_dst.exit12.i.i.i.if.end_crit_edge, %land.lhs.true8.i.i.i.if.end_crit_edge
  %checksum = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 1
  %38 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %checksum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.not = icmp eq i32 %39, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ip_summed6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %41 = ptrtoint ptr %ip_summed6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load7 = load i16, ptr %ip_summed6, align 8
  %42 = and i16 %bf.load7, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %42)
  %cmp = icmp eq i16 %42, 1024
  br i1 %cmp, label %if.then10, label %if.end5.if.end25_crit_edge

if.end5.if.end25_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then10:                                        ; preds = %if.end5
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %43 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %bf.lshr.i = lshr i16 %bf.load7, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %45 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.21)
  switch i2 %trunc.i, label %if.then10.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

if.then10.skb_postpull_rcsum.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %46 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %transport_header.i, align 2
  %conv.i84 = zext i16 %47 to i32
  %48 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i, align 4
  %conv.i83 = zext i16 %49 to i32
  %sub.i = sub nsw i32 %conv.i84, %conv.i83
  %add.ptr.i = getelementptr i8, ptr %44, i32 %conv.i83
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %sub.i.i = sub i32 0, %52
  %call2.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef %sub.i.i) #10
  %sub.i25.i = sub i32 0, %call2.i
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i25.i, ptr %50, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.then10
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 8
  %conv.i.i = zext i16 %56 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.i26.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i = and i16 %bf.load7, -1537
  %59 = ptrtoint ptr %ip_summed6 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %bf.clear18.i, ptr %ip_summed6, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %if.then10.skb_postpull_rcsum.exit_crit_edge
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i, align 8
  %62 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i, align 4
  %conv.i.i86 = zext i16 %63 to i32
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %conv.i.i86
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %66 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %skc_num, align 2
  %69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %72 = and i16 %68, 255
  %conv.i91 = zext i16 %72 to i32
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %65, i32 noundef %conv.i91, i32 noundef %71) #10
  %73 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #13, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %73)
  %tobool18.not = icmp ugt i32 %73, -65537
  br i1 %tobool18.not, label %if.then19, label %skb_postpull_rcsum.exit.if.end25_crit_edge

skb_postpull_rcsum.exit.if.end25_crit_edge:       ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %ip_summed6 to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load21 = load i16, ptr %ip_summed6, align 8
  %bf.clear22 = and i16 %bf.load21, -1537
  %bf.set23 = or i16 %bf.clear22, 512
  store i16 %bf.set23, ptr %ip_summed6, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %skb_postpull_rcsum.exit.if.end25_crit_edge, %if.end5.if.end25_crit_edge
  %75 = ptrtoint ptr %ip_summed6 to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i94 = load i16, ptr %ip_summed6, align 8
  %bf.lshr.i95 = lshr i16 %bf.load.i94, 9
  %76 = and i16 %bf.lshr.i95, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %76)
  %cmp.i = icmp ne i16 %76, 1
  %77 = and i16 %bf.load.i94, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i = icmp eq i16 %77, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

lor.rhs.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %76)
  %cmp12.i = icmp eq i16 %76, 3
  br i1 %cmp12.i, label %skb_csum_unnecessary.exit, label %lor.rhs.i.if.then28_crit_edge

lor.rhs.i.if.then28_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

skb_csum_unnecessary.exit:                        ; preds = %lor.rhs.i
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %78, align 8
  %conv.i.i96 = zext i16 %80 to i32
  %data.i.i.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %81 = ptrtoint ptr %data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i.i.i97, align 4
  %head.i.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %83 = ptrtoint ptr %head.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %head.i.i.i98, align 8
  %sub.ptr.lhs.cast.i.i.i99 = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i.i.i100 = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i.neg.i.i101 = sub i32 %conv.i.i96, %sub.ptr.lhs.cast.i.i.i99
  %sub.i.i102 = add i32 %sub.ptr.sub.i.neg.i.i101, %sub.ptr.rhs.cast.i.i.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i102)
  %tobool27.not = icmp slt i32 %sub.i.i102, 0
  br i1 %tobool27.not, label %skb_csum_unnecessary.exit.if.then28_crit_edge, label %skb_csum_unnecessary.exit.if.end40_crit_edge

skb_csum_unnecessary.exit.if.end40_crit_edge:     ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

skb_csum_unnecessary.exit.if.then28_crit_edge:    ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %skb_csum_unnecessary.exit.if.then28_crit_edge, %lor.rhs.i.if.then28_crit_edge
  %head.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %85 = ptrtoint ptr %head.i.i103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i103, align 8
  %network_header.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %87 = ptrtoint ptr %network_header.i.i104 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %network_header.i.i104, align 4
  %conv.i.i105 = zext i16 %88 to i32
  %add.ptr.i.i106 = getelementptr i8, ptr %86, i32 %conv.i.i105
  %saddr30 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i106, i32 0, i32 5
  %daddr32 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i106, i32 0, i32 6
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %89 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len33, align 4
  %91 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num36 = getelementptr inbounds %struct.anon.3, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %skc_num36 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %skc_num36, align 2
  %94 = and i16 %93, 255
  %conv.i111 = zext i16 %94 to i32
  %call.i112 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr30, ptr noundef %daddr32, i32 noundef %90, i32 noundef %conv.i111, i32 noundef 0) #10
  %95 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i112) #13, !srcloc !87
  %shr.i.i114 = lshr i32 %95, 16
  %neg124 = or i32 %shr.i.i114, -65536
  %96 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %neg124, ptr %96, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %skb_csum_unnecessary.exit.if.end40_crit_edge, %if.end25.if.end40_crit_edge
  %hdrincl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %98 = ptrtoint ptr %hdrincl to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load41 = load i16, ptr %hdrincl, align 8
  %99 = and i16 %bf.load41, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool45.not = icmp eq i16 %99, 0
  br i1 %tobool45.not, label %if.end40.if.end52_crit_edge, label %if.then46

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then46:                                        ; preds = %if.end40
  %100 = ptrtoint ptr %ip_summed6 to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i.i = load i16, ptr %ip_summed6, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %101 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %101)
  %cmp.i.i = icmp ne i16 %101, 1
  %102 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool.not.i.i = icmp eq i16 %102, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then46.if.end52_crit_edge

if.then46.if.end52_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

lor.rhs.i.i:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %101)
  %cmp12.i.i = icmp eq i16 %101, 3
  br i1 %cmp12.i.i, label %skb_csum_unnecessary.exit.i, label %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge

lor.rhs.i.i.skb_checksum_complete.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_checksum_complete.exit

skb_csum_unnecessary.exit.i:                      ; preds = %lor.rhs.i.i
  %103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %103, align 8
  %conv.i.i.i = zext i16 %105 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %106 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i116 = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i116, label %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, label %skb_csum_unnecessary.exit.i.if.end52_crit_edge

skb_csum_unnecessary.exit.i.if.end52_crit_edge:   ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_checksum_complete.exit

skb_checksum_complete.exit:                       ; preds = %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge
  %call1.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool48.not = icmp eq i16 %call1.i, 0
  br i1 %tobool48.not, label %skb_checksum_complete.exit.if.end52_crit_edge, label %if.then49

skb_checksum_complete.exit.if.end52_crit_edge:    ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_drops50 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops50, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_drops50, i32 1, i32 3, i32 1) #10
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops50, ptr %sk_drops50, i32 1, ptr elementtype(i32) %sk_drops50) #10, !srcloc !86
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

if.end52:                                         ; preds = %skb_checksum_complete.exit.if.end52_crit_edge, %skb_csum_unnecessary.exit.i.if.end52_crit_edge, %if.then46.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  %call53 = tail call i32 @rawv6_rcv_skb(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then49, %if.then
  %retval.0 = phi i32 [ 1, %if.then49 ], [ 0, %if.end52 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_rcv_skb(ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %checksum = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %checksum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %sk_filter = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 16
  %2 = ptrtoint ptr %sk_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sk_filter, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %5 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i.i = icmp ne i16 %5, 1
  %6 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i.i = icmp eq i16 %6, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.rhs.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp12.i.i = icmp eq i16 %5, 3
  br i1 %cmp12.i.i, label %skb_csum_unnecessary.exit.i, label %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge

lor.rhs.i.i.skb_checksum_complete.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_checksum_complete.exit

skb_csum_unnecessary.exit.i:                      ; preds = %lor.rhs.i.i
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %conv.i.i.i = zext i16 %9 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, label %skb_csum_unnecessary.exit.i.if.end_crit_edge

skb_csum_unnecessary.exit.i.if.end_crit_edge:     ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_checksum_complete.exit

skb_checksum_complete.exit:                       ; preds = %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge
  %call1.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool4.not = icmp eq i16 %call1.i, 0
  br i1 %tobool4.not, label %skb_checksum_complete.exit.if.end_crit_edge, label %if.then

skb_checksum_complete.exit.if.end_crit_edge:      ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #10, !srcloc !86
  br label %return.sink.split

if.end:                                           ; preds = %skb_checksum_complete.exit.if.end_crit_edge, %skb_csum_unnecessary.exit.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i16 = icmp eq i32 %17, 0
  br i1 %tobool.not.i16, label %if.end.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end.skb_dst_drop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i17, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %18) #10
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %15, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end.skb_dst_drop.exit_crit_edge
  %call5 = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %skb_dst_drop.exit.return.sink.split_crit_edge, label %skb_dst_drop.exit.return_crit_edge

skb_dst_drop.exit.return_crit_edge:               ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

skb_dst_drop.exit.return.sink.split_crit_edge:    ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %skb_dst_drop.exit.return.sink.split_crit_edge, %if.then
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %return.sink.split, %skb_dst_drop.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %skb_dst_drop.exit.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rawv6_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %2)
  %cmp = icmp eq i16 %2, 255
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @ip6_ra_control(ptr noundef %sk, i32 noundef -1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @ip6mr_sk_done(ptr noundef %sk) #10
  tail call void @sk_common_release(ptr noundef %sk) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect_v6_only(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_ioctl(ptr noundef %sk, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %sw.default [
    i32 21521, label %sw.bb
    i32 21531, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #10
  %1 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %2, -1
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1157) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !88
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %sub.i, i32 -1226833921) #10, !srcloc !91
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  br label %return

sw.bb3:                                           ; preds = %entry
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %8 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %9, %sk_receive_queue
  %tobool.not37 = icmp eq ptr %9, null
  %tobool.not = or i1 %cmp.i, %tobool.not37
  br i1 %tobool.not, label %sw.bb3.if.end_crit_edge, label %if.then

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3.if.end_crit_edge
  %amount4.0 = phi i32 [ %11, %if.then ], [ 0, %sw.bb3.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %12 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1168) #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i33 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i33 to ptr
  %cpu_domain.i.i34 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i34) #7, !srcloc !88
  %and.i35 = and i32 %15, -13
  %or.i36 = or i32 %and.i35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i36) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i32 %amount4.0, i32 -1226833921) #10, !srcloc !92
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = inttoptr i32 %arg to ptr
  %call24 = tail call i32 @ip6mr_ioctl(ptr noundef %sk, i32 noundef %cmd, ptr noundef %17) #10
  br label %return

return:                                           ; preds = %sw.default, %if.end, %sw.bb
  %retval.0 = phi i32 [ %call24, %sw.default ], [ %16, %if.end ], [ %7, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rawv6_init_sk(ptr nocapture noundef %sk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %2, label %entry.sw.epilog_crit_edge [
    i16 58, label %entry.sw.epilog.sink.split_crit_edge
    i16 135, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb3 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %checksum4 = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 1
  %4 = ptrtoint ptr %checksum4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %checksum4, align 8
  %offset5 = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 2
  %5 = ptrtoint ptr %offset5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %offset5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw6_destroy(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  tail call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  tail call void @release_sock(ptr noundef %sk) #10
  tail call void @inet6_destroy_sock(ptr noundef %sk) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %level, label %entry.sw.default_crit_edge [
    i32 255, label %entry.sw.epilog_crit_edge
    i32 58, label %sw.bb
    i32 41, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %3)
  %cmp.not = icmp eq i16 %3, 58
  br i1 %cmp.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond.i = icmp eq i32 %optname, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.umin.i32(i32 %optlen, i32 32) #10
  %filter.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 3
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %5 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb.i
  tail call void @__check_object_size(ptr noundef %filter.i, i32 noundef %4, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %4, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !80

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %filter.i, i32 noundef %4) #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !88
  %and.i.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %filter.i, ptr noundef %5, i32 noundef %4) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %4, %if.then.i.i.i.i.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %4, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.return_crit_edge, label %if.then11.i.i.i.i, !prof !80

if.end.i.i.i.i.return_crit_edge:                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = sub i32 %4, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %filter.i, i32 %sub.i.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %return

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call ptr @memcpy(ptr %filter.i, ptr %5, i32 %4)
  br label %return

sw.bb4:                                           ; preds = %entry
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %optname, label %sw.bb4.sw.default_crit_edge [
    i32 7, label %sw.bb4.sw.epilog_crit_edge
    i32 36, label %sw.bb4.sw.epilog_crit_edge46
  ]

sw.bb4.sw.epilog_crit_edge46:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4.sw.default_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %sw.bb4.sw.default_crit_edge, %entry.sw.default_crit_edge
  %call11 = tail call i32 @ipv6_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #10
  br label %return

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge46, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.i = icmp ult i32 %optlen, 4
  br i1 %cmp.i, label %sw.epilog.do_rawv6_setsockopt.exit_crit_edge, label %if.end.i

sw.epilog.do_rawv6_setsockopt.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_setsockopt.exit

if.end.i:                                         ; preds = %sw.epilog
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %14 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #10
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 4, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !80

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #10
  %16 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !88
  %and.i.i.i.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #10, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %14, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end3.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !80

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end3.i_crit_edge:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i42.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 4, %res.0.i.i.i.i42.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %val.i, i32 %sub.i.i.i.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i42.i)
  br label %do_rawv6_setsockopt.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %14, align 1
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end3.i_crit_edge
  %23 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %optname, label %if.end3.i.do_rawv6_setsockopt.exit_crit_edge [
    i32 36, label %sw.bb.i41
    i32 7, label %sw.bb12.i
  ]

if.end3.i.do_rawv6_setsockopt.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_setsockopt.exit

sw.bb.i41:                                        ; preds = %if.end3.i
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %24 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp4.not.i = icmp eq i16 %25, 3
  br i1 %cmp4.not.i, label %if.end7.i, label %sw.bb.i41.do_rawv6_setsockopt.exit_crit_edge

sw.bb.i41.do_rawv6_setsockopt.exit_crit_edge:     ; preds = %sw.bb.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_setsockopt.exit

if.end7.i:                                        ; preds = %sw.bb.i41
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp eq i32 %27, 0
  %hdrincl.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %28 = ptrtoint ptr %hdrincl.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %hdrincl.i, align 8
  %bf.shl.i = select i1 %tobool8.not.i, i16 0, i16 4096
  %bf.clear.i = and i16 %bf.load.i, -4097
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %hdrincl.i, align 8
  br label %do_rawv6_setsockopt.exit

sw.bb12.i:                                        ; preds = %if.end3.i
  %29 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.3, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %skc_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %31)
  %cmp16.i = icmp eq i16 %31, 58
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %level)
  %cmp18.i = icmp eq i32 %level, 41
  %or.cond.i = and i1 %cmp18.i, %cmp16.i
  br i1 %or.cond.i, label %sw.bb12.i.do_rawv6_setsockopt.exit_crit_edge, label %if.end21.i

sw.bb12.i.do_rawv6_setsockopt.exit_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_setsockopt.exit

if.end21.i:                                       ; preds = %sw.bb12.i
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp22.i = icmp slt i32 %33, 1
  %and.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  %or.cond39.i = or i1 %cmp22.i, %tobool25.not.i
  br i1 %or.cond39.i, label %if.end27.i, label %if.end21.i.do_rawv6_setsockopt.exit_crit_edge

if.end21.i.do_rawv6_setsockopt.exit_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_setsockopt.exit

if.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp28.i = icmp slt i32 %33, 0
  %checksum.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 1
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %checksum.i, align 8
  br label %do_rawv6_setsockopt.exit

if.else.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %checksum.i, align 8
  %offset.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 2
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %offset.i, align 4
  br label %do_rawv6_setsockopt.exit

do_rawv6_setsockopt.exit:                         ; preds = %if.else.i, %if.then30.i, %if.end21.i.do_rawv6_setsockopt.exit_crit_edge, %sw.bb12.i.do_rawv6_setsockopt.exit_crit_edge, %if.end7.i, %sw.bb.i41.do_rawv6_setsockopt.exit_crit_edge, %if.end3.i.do_rawv6_setsockopt.exit_crit_edge, %if.then11.i.i.i.i.i, %sw.epilog.do_rawv6_setsockopt.exit_crit_edge
  %retval.0.i42 = phi i32 [ 0, %if.end7.i ], [ -22, %sw.epilog.do_rawv6_setsockopt.exit_crit_edge ], [ -22, %sw.bb.i41.do_rawv6_setsockopt.exit_crit_edge ], [ -22, %sw.bb12.i.do_rawv6_setsockopt.exit_crit_edge ], [ -22, %if.end21.i.do_rawv6_setsockopt.exit_crit_edge ], [ 0, %if.else.i ], [ 0, %if.then30.i ], [ -92, %if.end3.i.do_rawv6_setsockopt.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %return

return:                                           ; preds = %do_rawv6_setsockopt.exit, %sw.default, %if.end.i.i, %if.then11.i.i.i.i, %if.end.i.i.i.i.return_crit_edge, %if.end.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.default ], [ %retval.0.i42, %do_rawv6_setsockopt.exit ], [ -95, %sw.bb.return_crit_edge ], [ -92, %if.end.return_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end.i.i.i.i.return_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %level, label %entry.sw.default_crit_edge [
    i32 255, label %entry.sw.epilog_crit_edge
    i32 58, label %sw.bb
    i32 41, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %3)
  %cmp.not = icmp eq i16 %3, 58
  br i1 %cmp.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond.i = icmp eq i32 %optname, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.i:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 998) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !88
  %and.i.i = and i32 %6, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !94
  %asmresult.i = extractvalue { i32, i32 } %7, 0
  %asmresult1.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %cmp.i = icmp slt i32 %asmresult1.i, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %if.end4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  %8 = tail call i32 @llvm.umin.i32(i32 %asmresult1.i, i32 32) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1004) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i1.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i to ptr
  %cpu_domain.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2.i) #7, !srcloc !88
  %and.i3.i = and i32 %11, -13
  %or.i4.i = or i32 %and.i3.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4.i) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %8, i32 -1226833921) #10, !srcloc !95
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not.i = icmp eq i32 %12, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end19.i:                                       ; preds = %if.end4.i
  %filter.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 3
  tail call void @__check_object_size(ptr noundef %filter.i, i32 noundef %8, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.end19.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.end19.i.copy_to_user.exit.i_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.end19.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %8, i32 -1226833920) #13, !srcloc !96
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %filter.i, i32 noundef %8) #10
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef %filter.i, i32 noundef %8) #10
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.end19.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %8, %if.end19.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %8, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool22.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %return

sw.bb4:                                           ; preds = %entry
  %14 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %optname, label %sw.bb4.sw.default_crit_edge [
    i32 7, label %sw.bb4.sw.epilog_crit_edge
    i32 36, label %sw.bb4.sw.epilog_crit_edge53
  ]

sw.bb4.sw.epilog_crit_edge53:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4.sw.default_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default

sw.default:                                       ; preds = %sw.bb4.sw.default_crit_edge, %entry.sw.default_crit_edge
  %call11 = tail call i32 @ipv6_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #10
  br label %return

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge53, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1096) #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i27 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i27 to ptr
  %cpu_domain.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i28) #7, !srcloc !88
  %and.i.i29 = and i32 %17, -13
  %or.i.i30 = or i32 %and.i.i29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i30) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #10, !srcloc !97
  %asmresult.i31 = extractvalue { i32, i32 } %18, 0
  %asmresult2.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i31)
  %tobool.not.i32 = icmp eq i32 %asmresult.i31, 0
  br i1 %tobool.not.i32, label %if.end.i33, label %sw.epilog.do_rawv6_getsockopt.exit_crit_edge

sw.epilog.do_rawv6_getsockopt.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_getsockopt.exit

if.end.i33:                                       ; preds = %sw.epilog
  %19 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %optname, label %if.end.i33.do_rawv6_getsockopt.exit_crit_edge [
    i32 36, label %sw.bb.i34
    i32 7, label %sw.bb5.i
  ]

if.end.i33.do_rawv6_getsockopt.exit_crit_edge:    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_getsockopt.exit

sw.bb.i34:                                        ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  %hdrincl.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %20 = ptrtoint ptr %hdrincl.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %hdrincl.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 12
  %21 = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.cast.i, ptr %val.i, align 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i33
  %checksum.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 1
  %23 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %checksum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i35 = icmp eq i32 %24, 0
  br i1 %cmp.i35, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %val.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i = getelementptr inbounds %struct.raw6_sock, ptr %sk, i32 0, i32 2
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else.i, %if.then7.i, %sw.bb.i34
  %29 = tail call i32 @llvm.umin.i32(i32 %asmresult2.i, i32 4) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1121) #10
  %30 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i1.i36 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i36 to ptr
  %cpu_domain.i.i2.i37 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2.i37) #7, !srcloc !88
  %and.i3.i38 = and i32 %32, -13
  %or.i4.i39 = or i32 %and.i3.i38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4.i39) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %29, i32 -1226833921) #10, !srcloc !98
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not.i = icmp eq i32 %33, 0
  br i1 %tobool21.not.i, label %if.then.i.i.i.i41, label %sw.epilog.i.do_rawv6_getsockopt.exit_crit_edge

sw.epilog.i.do_rawv6_getsockopt.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_rawv6_getsockopt.exit

if.then.i.i.i.i41:                                ; preds = %sw.epilog.i
  call void @__check_object_size(ptr noundef nonnull %val.i, i32 noundef %29, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #10
  %call.i.i.i42 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i42, label %if.then.i.i.i.i41.copy_to_user.exit.i51_crit_edge, label %if.end.i.i.i46

if.then.i.i.i.i41.copy_to_user.exit.i51_crit_edge: ; preds = %if.then.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i51

if.end.i.i.i46:                                   ; preds = %if.then.i.i.i.i41
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %29, i32 -1226833920) #13, !srcloc !96
  %asmresult.i.i.i44 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i44)
  %cmp.i6.i.i45 = icmp eq i32 %asmresult.i.i.i44, 0
  br i1 %cmp.i6.i.i45, label %if.then2.i.i.i49, label %if.end.i.i.i46.copy_to_user.exit.i51_crit_edge

if.end.i.i.i46.copy_to_user.exit.i51_crit_edge:   ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.i51

if.then2.i.i.i49:                                 ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i47 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val.i, i32 noundef %29) #10
  %call.i12.i.i.i48 = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val.i, i32 noundef %29) #10
  br label %copy_to_user.exit.i51

copy_to_user.exit.i51:                            ; preds = %if.then2.i.i.i49, %if.end.i.i.i46.copy_to_user.exit.i51_crit_edge, %if.then.i.i.i.i41.copy_to_user.exit.i51_crit_edge
  %n.addr.0.i.i50 = phi i32 [ %29, %if.then.i.i.i.i41.copy_to_user.exit.i51_crit_edge ], [ %call.i12.i.i.i48, %if.then2.i.i.i49 ], [ %29, %if.end.i.i.i46.copy_to_user.exit.i51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i50)
  %tobool25.not.i = icmp eq i32 %n.addr.0.i.i50, 0
  %..i = select i1 %tobool25.not.i, i32 0, i32 -14
  br label %do_rawv6_getsockopt.exit

do_rawv6_getsockopt.exit:                         ; preds = %copy_to_user.exit.i51, %sw.epilog.i.do_rawv6_getsockopt.exit_crit_edge, %if.end.i33.do_rawv6_getsockopt.exit_crit_edge, %sw.epilog.do_rawv6_getsockopt.exit_crit_edge
  %retval.0.i52 = phi i32 [ -14, %sw.epilog.do_rawv6_getsockopt.exit_crit_edge ], [ -92, %if.end.i33.do_rawv6_getsockopt.exit_crit_edge ], [ -14, %sw.epilog.i.do_rawv6_getsockopt.exit_crit_edge ], [ %..i, %copy_to_user.exit.i51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %return

return:                                           ; preds = %do_rawv6_getsockopt.exit, %sw.default, %copy_to_user.exit.i, %if.end4.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.i.return_crit_edge, %if.end.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.default ], [ %retval.0.i52, %do_rawv6_getsockopt.exit ], [ -95, %sw.bb.return_crit_edge ], [ -14, %sw.bb.i.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ -14, %if.end4.i.return_crit_edge ], [ -92, %if.end.return_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %opt_space = alloca %struct.ipv6_txoptions, align 4
  %final = alloca %struct.in6_addr, align 4
  %dst = alloca ptr, align 4
  %rfv = alloca %struct.raw6_frag_vec, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
  %hdrincl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt_space) #10
  %0 = call ptr @memset(ptr %opt_space, i32 255, i32 36)
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #10
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = call ptr @memset(ptr %final, i32 255, i32 16)
  %4 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %6 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #10
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rfv) #10
  %9 = getelementptr inbounds %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 1
  %10 = call ptr @memset(ptr %rfv, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #10
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_namelen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdrincl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %inet6_sk.exit.cleanup_crit_edge, label %if.end

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_flags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hdrincl5 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %15 = ptrtoint ptr %hdrincl5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %hdrincl5, align 8
  %bf.lshr = lshr i16 %bf.load, 12
  %16 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %16 to i32
  %17 = ptrtoint ptr %hdrincl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.cast, ptr %hdrincl, align 4
  %hdrincl.0.hdrincl.0.hdrincl.0. = load volatile i32, ptr %hdrincl, align 4
  %18 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %19 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %21 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %22 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_uid, align 4
  %24 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flowic_uid, align 4
  %25 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %27 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %28 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.41.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %29 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %30 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %31 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sk_tsflags, align 8
  %tsflags = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 2
  %33 = ptrtoint ptr %tsflags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tsflags, align 4
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %34 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %20, ptr %mark, align 8
  %tobool13.not = icmp eq ptr %2, null
  br i1 %tobool13.not, label %if.else87, label %if.then14

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %12)
  %cmp15 = icmp slt i32 %12, 24
  br i1 %cmp15, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %36, label %if.end18.cleanup_crit_edge [
    i16 0, label %if.end18.if.end26_crit_edge
    i16 10, label %if.end18.if.end26_crit_edge435
  ]

if.end18.if.end26_crit_edge435:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end18.if.end26_crit_edge, %if.end18.if.end26_crit_edge435
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  %38 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sin6_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool27.not = icmp eq i16 %39, 0
  %40 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %skc_num, align 2
  br i1 %tobool27.not, label %if.end26.if.end39_crit_edge, label %if.else

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %42)
  %cmp35.not = icmp eq i16 %39, %42
  br i1 %cmp35.not, label %if.else.if.end39_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %proto.0 = phi i16 [ %39, %if.else.if.end39_crit_edge ], [ %42, %if.end26.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %proto.0)
  %cmp41 = icmp ugt i16 %proto.0, 255
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 3
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %43 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load45 = load i16, ptr %sndflow, align 2
  %44 = and i16 %bf.load45, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool48.not = icmp eq i16 %44, 0
  br i1 %tobool48.not, label %if.end44.if.end62_crit_edge, label %if.then49

if.end44.if.end62_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then49:                                        ; preds = %if.end44
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 2
  %45 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sin6_flowinfo, align 4
  %and50 = and i32 %46, 268435455
  %flowlabel51 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %47 = ptrtoint ptr %flowlabel51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and50, ptr %flowlabel51, align 8
  %and53 = and i32 %46, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then49.if.end62_crit_edge, label %if.then55

if.then49.if.end62_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then55:                                        ; preds = %if.then49
  %call57 = tail call fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %and50)
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55.cleanup_crit_edge, label %if.then55.if.end62_crit_edge

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.then55.if.end62_crit_edge, %if.then49.if.end62_crit_edge, %if.end44.if.end62_crit_edge
  %flowlabel.0 = phi ptr [ %call57, %if.then55.if.end62_crit_edge ], [ null, %if.then49.if.end62_crit_edge ], [ null, %if.end44.if.end62_crit_edge ]
  %48 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp65 = icmp eq i8 %49, 1
  br i1 %cmp65, label %land.lhs.true67, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true67:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %50 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sin6_addr, align 4
  %52 = ptrtoint ptr %skc_v6_daddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %skc_v6_daddr, align 4
  %xor.i = xor i32 %53, %51
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %57, %55
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr %struct.sockaddr_in6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %61, %59
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr %struct.sockaddr_in6, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %65, %63
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i398 = icmp eq i32 %or19.i, 0
  %spec.select = select i1 %cmp.i398, ptr %skc_v6_daddr, ptr %sin6_addr
  br label %if.end74

if.end74:                                         ; preds = %land.lhs.true67, %if.end62.if.end74_crit_edge
  %daddr.0 = phi ptr [ %sin6_addr, %if.end62.if.end74_crit_edge ], [ %spec.select, %land.lhs.true67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %12)
  %cmp75 = icmp ugt i32 %12, 27
  %extract.t394 = trunc i16 %proto.0 to i8
  br i1 %cmp75, label %land.lhs.true77, label %if.end74.if.end101thread-pre-split_crit_edge

if.end74.if.end101thread-pre-split_crit_edge:     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101thread-pre-split

land.lhs.true77:                                  ; preds = %if.end74
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 4
  %66 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool78.not = icmp eq i32 %67, 0
  br i1 %tobool78.not, label %land.lhs.true77.if.end101thread-pre-split_crit_edge, label %land.lhs.true79

land.lhs.true77.if.end101thread-pre-split_crit_edge: ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101thread-pre-split

land.lhs.true79:                                  ; preds = %land.lhs.true77
  %call80 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr.0) #10
  %and.i = and i32 %call80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %land.lhs.true79.if.then83_crit_edge

land.lhs.true79.if.then83_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

lor.rhs.i:                                        ; preds = %land.lhs.true79
  %and1.i = and i32 %call80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %and3.i = and i32 %call80, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %or.cond433 = and i1 %tobool2.not.i, %tobool4.i
  br i1 %or.cond433, label %lor.rhs.i.if.then83_crit_edge, label %lor.rhs.i.if.end101thread-pre-split_crit_edge

lor.rhs.i.if.end101thread-pre-split_crit_edge:    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101thread-pre-split

lor.rhs.i.if.then83_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

if.then83:                                        ; preds = %lor.rhs.i.if.then83_crit_edge, %land.lhs.true79.if.then83_crit_edge
  %68 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sin6_scope_id, align 4
  %70 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %fl6, align 8
  br label %if.end101

if.else87:                                        ; preds = %if.end4
  %71 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp91.not = icmp eq i8 %72, 1
  br i1 %cmp91.not, label %if.end94, label %if.else87.cleanup_crit_edge

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  %73 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num97 = getelementptr inbounds %struct.anon.3, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %skc_num97 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %skc_num97, align 2
  %skc_v6_daddr99 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %76 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flow_label, align 4
  %flowlabel100 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %78 = ptrtoint ptr %flowlabel100 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %flowlabel100, align 8
  %extract.t395 = trunc i16 %75 to i8
  br label %if.end101thread-pre-split

if.end101thread-pre-split:                        ; preds = %if.end94, %lor.rhs.i.if.end101thread-pre-split_crit_edge, %land.lhs.true77.if.end101thread-pre-split_crit_edge, %if.end74.if.end101thread-pre-split_crit_edge
  %daddr.1.ph = phi ptr [ %skc_v6_daddr99, %if.end94 ], [ %daddr.0, %if.end74.if.end101thread-pre-split_crit_edge ], [ %daddr.0, %land.lhs.true77.if.end101thread-pre-split_crit_edge ], [ %daddr.0, %lor.rhs.i.if.end101thread-pre-split_crit_edge ]
  %flowlabel.1.ph = phi ptr [ null, %if.end94 ], [ %flowlabel.0, %if.end74.if.end101thread-pre-split_crit_edge ], [ %flowlabel.0, %land.lhs.true77.if.end101thread-pre-split_crit_edge ], [ %flowlabel.0, %lor.rhs.i.if.end101thread-pre-split_crit_edge ]
  %proto.1.off0.ph = phi i8 [ %extract.t395, %if.end94 ], [ %extract.t394, %if.end74.if.end101thread-pre-split_crit_edge ], [ %extract.t394, %land.lhs.true77.if.end101thread-pre-split_crit_edge ], [ %extract.t394, %lor.rhs.i.if.end101thread-pre-split_crit_edge ]
  %79 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load i32, ptr %fl6, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.end101thread-pre-split, %if.then83
  %80 = phi i32 [ %.pr, %if.end101thread-pre-split ], [ %69, %if.then83 ]
  %daddr.1 = phi ptr [ %daddr.1.ph, %if.end101thread-pre-split ], [ %daddr.0, %if.then83 ]
  %flowlabel.1 = phi ptr [ %flowlabel.1.ph, %if.end101thread-pre-split ], [ %flowlabel.0, %if.then83 ]
  %proto.1.off0 = phi i8 [ %proto.1.off0.ph, %if.end101thread-pre-split ], [ %extract.t394, %if.then83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp104 = icmp eq i32 %80, 0
  br i1 %cmp104, label %if.then106, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %81 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %skc_bound_dev_if, align 4
  %83 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %fl6, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end101.if.end110_crit_edge
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %84 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool111.not = icmp eq i32 %85, 0
  br i1 %tobool111.not, label %if.end110.if.then139_crit_edge, label %if.then112

if.end110.if.then139_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139

if.then112:                                       ; preds = %if.end110
  %86 = call ptr @memset(ptr %opt_space, i32 0, i32 36)
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 1
  %87 = ptrtoint ptr %tot_len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 36, ptr %tot_len, align 4
  %opt113 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %88 = ptrtoint ptr %opt113 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %opt_space, ptr %opt113, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %89 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %skc_net.i, align 4
  %call115 = call i32 @ip6_datagram_send_ctl(ptr noundef %90, ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %fl6, ptr noundef nonnull %ipc6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @fl6_sock_release(ptr noundef %flowlabel.1)
  br label %cleanup

if.end119:                                        ; preds = %if.then112
  %flowlabel120 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %91 = ptrtoint ptr %flowlabel120 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flowlabel120, align 8
  %and121 = and i32 %92, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp ne i32 %and121, 0
  %tobool124.not = icmp eq ptr %flowlabel.1, null
  %or.cond = and i1 %tobool124.not, %tobool122.not
  br i1 %or.cond, label %if.then125, label %if.end119.if.end131_crit_edge

if.end119.if.end131_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then125:                                       ; preds = %if.end119
  %call127 = call fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %92)
  %cmp.i399 = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i399, label %if.then125.cleanup_crit_edge, label %if.then125.if.end131_crit_edge

if.then125.if.end131_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end131:                                        ; preds = %if.then125.if.end131_crit_edge, %if.end119.if.end131_crit_edge
  %flowlabel.2 = phi ptr [ %call127, %if.then125.if.end131_crit_edge ], [ %flowlabel.1, %if.end119.if.end131_crit_edge ]
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 3
  %93 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %opt_nflen, align 2
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 2
  %95 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %opt_flen, align 4
  %or396 = or i16 %96, %94
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or396)
  %tobool134.not = icmp eq i16 %or396, 0
  br i1 %tobool134.not, label %if.end131.if.then139_crit_edge, label %if.end131.if.end141_crit_edge

if.end131.if.end141_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.end131.if.then139_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then139

if.then139:                                       ; preds = %if.end131.if.then139_crit_edge, %if.end110.if.then139_crit_edge
  %flowlabel.3.ph = phi ptr [ %flowlabel.1, %if.end110.if.then139_crit_edge ], [ %flowlabel.2, %if.end131.if.then139_crit_edge ]
  %call140 = call fastcc ptr @txopt_get(ptr noundef %cond.i)
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end131.if.end141_crit_edge
  %flowlabel.3430 = phi ptr [ %flowlabel.3.ph, %if.then139 ], [ %flowlabel.2, %if.end131.if.end141_crit_edge ]
  %opt_to_free.0 = phi ptr [ %call140, %if.then139 ], [ null, %if.end131.if.end141_crit_edge ]
  %opt.1 = phi ptr [ %call140, %if.then139 ], [ %opt_space, %if.end131.if.end141_crit_edge ]
  %tobool142.not = icmp eq ptr %flowlabel.3430, null
  br i1 %tobool142.not, label %if.end141.if.end145_crit_edge, label %if.then143

if.end141.if.end145_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then143:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  %call144 = call ptr @fl6_merge_options(ptr noundef nonnull %opt_space, ptr noundef nonnull %flowlabel.3430, ptr noundef %opt.1) #10
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end141.if.end145_crit_edge
  %opt.2 = phi ptr [ %call144, %if.then143 ], [ %opt.1, %if.end141.if.end145_crit_edge ]
  %call146 = call ptr @ipv6_fixup_options(ptr noundef nonnull %opt_space, ptr noundef %opt.2) #10
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %97 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %proto.1.off0, ptr %flowic_proto, align 2
  %98 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mark, align 8
  %100 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %flowic_mark, align 8
  %101 = ptrtoint ptr %hdrincl to i32
  call void @__asan_load4_noabort(i32 %101)
  %hdrincl.0.hdrincl.0.hdrincl.0.307 = load i32, ptr %hdrincl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdrincl.0.hdrincl.0.hdrincl.0.307)
  %tobool153.not = icmp eq i32 %hdrincl.0.hdrincl.0.hdrincl.0.307, 0
  br i1 %tobool153.not, label %if.then154, label %if.end145.if.end160_crit_edge

if.end145.if.end160_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then154:                                       ; preds = %if.end145
  %102 = ptrtoint ptr %rfv to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg, ptr %rfv, align 4
  %103 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %9, align 4
  %call156 = call fastcc i32 @rawv6_probe_proto_opt(ptr noundef nonnull %rfv, ptr noundef nonnull %fl6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then154.if.end160_crit_edge, label %if.then154.out_crit_edge

if.then154.out_crit_edge:                         ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then154.if.end160_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.end160:                                        ; preds = %if.then154.if.end160_crit_edge, %if.end145.if.end160_crit_edge
  %104 = ptrtoint ptr %daddr.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %daddr.1, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 1
  %106 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx2.i, align 4
  %or.i400 = or i32 %107, %105
  %arrayidx4.i401 = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx4.i401 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx4.i401, align 4
  %or5.i = or i32 %or.i400, %109
  %arrayidx7.i = getelementptr [4 x i32], ptr %daddr.1, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i402 = icmp eq i32 %or8.i, 0
  %daddr165 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  br i1 %cmp.i402, label %if.else164, label %if.then162

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %112 = call ptr @memcpy(ptr %daddr165, ptr %daddr.1, i32 16)
  br label %if.end166

if.else164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr inbounds [16 x i8], ptr %daddr165, i32 0, i32 15
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %arrayidx, align 1
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then162
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %114 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %saddr, align 8
  %arrayidx2.i403 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx2.i403 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx2.i403, align 4
  %or.i404 = or i32 %117, %115
  %arrayidx4.i405 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx4.i405 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx4.i405, align 8
  %or5.i406 = or i32 %or.i404, %119
  %arrayidx7.i407 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %120 = ptrtoint ptr %arrayidx7.i407 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx7.i407, align 4
  %or8.i408 = or i32 %or5.i406, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i408)
  %cmp.i409 = icmp eq i32 %or8.i408, 0
  br i1 %cmp.i409, label %land.lhs.true169, label %if.end166.if.end175_crit_edge

if.end166.if.end175_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

land.lhs.true169:                                 ; preds = %if.end166
  %122 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cond.i, align 4
  %arrayidx2.i410 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx2.i410 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx2.i410, align 4
  %or.i411 = or i32 %125, %123
  %arrayidx4.i412 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 2
  %126 = ptrtoint ptr %arrayidx4.i412 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx4.i412, align 4
  %or5.i413 = or i32 %or.i411, %127
  %arrayidx7.i414 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 3
  %128 = ptrtoint ptr %arrayidx7.i414 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx7.i414, align 4
  %or8.i415 = or i32 %or5.i413, %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i415)
  %cmp.i416 = icmp eq i32 %or8.i415, 0
  br i1 %cmp.i416, label %land.lhs.true169.if.end175_crit_edge, label %if.then172

land.lhs.true169.if.end175_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

if.then172:                                       ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #12
  %130 = call ptr @memcpy(ptr %saddr, ptr %cond.i, i32 16)
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %land.lhs.true169.if.end175_crit_edge, %if.end166.if.end175_crit_edge
  %call176 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %call146, ptr noundef nonnull %final) #10
  %131 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool179.not = icmp eq i32 %132, 0
  br i1 %tobool179.not, label %land.lhs.true180, label %if.end175.if.end195_crit_edge

if.end175.if.end195_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

land.lhs.true180:                                 ; preds = %if.end175
  %daddr181 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %133 = ptrtoint ptr %daddr181 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %daddr181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %134)
  %cmp.i417 = icmp ugt i32 %134, -16777217
  br i1 %cmp.i417, label %if.then184, label %if.then191

if.then184:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #12
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %135 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mcast_oif, align 4
  %137 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %fl6, align 8
  br label %if.end195

if.then191:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #12
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %138 = ptrtoint ptr %ucast_oif to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ucast_oif, align 4
  %140 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %fl6, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %if.then184, %if.end175.if.end195_crit_edge
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #10
  %141 = ptrtoint ptr %hdrincl to i32
  call void @__asan_load4_noabort(i32 %141)
  %hdrincl.0.hdrincl.0.hdrincl.0.308 = load i32, ptr %hdrincl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdrincl.0.hdrincl.0.hdrincl.0.308)
  %tobool197.not = icmp eq i32 %hdrincl.0.hdrincl.0.hdrincl.0.308, 0
  br i1 %tobool197.not, label %if.end195.if.end203_crit_edge, label %if.then198

if.end195.if.end203_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 6
  %142 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %flowic_flags, align 1
  %144 = or i8 %143, 2
  store i8 %144, ptr %flowic_flags, align 1
  br label %if.end203

if.end203:                                        ; preds = %if.then198, %if.end195.if.end203_crit_edge
  %145 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp205 = icmp slt i16 %146, 0
  br i1 %cmp205, label %if.then207, label %if.end203.if.end211_crit_edge

if.end203.if.end211_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then207:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  %tclass208 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %147 = ptrtoint ptr %tclass208 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %tclass208, align 1
  %conv209 = zext i8 %148 to i16
  %149 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv209, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  br label %if.end211

if.end211:                                        ; preds = %if.then207, %if.end203.if.end211_crit_edge
  %150 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %conv213434 = zext i16 %151 to i32
  %flowlabel214 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %152 = ptrtoint ptr %flowlabel214 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flowlabel214, align 8
  %shl.i = shl i32 %conv213434, 20
  %or.i418 = or i32 %shl.i, %153
  store i32 %or.i418, ptr %flowlabel214, align 8
  %skc_net.i419 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %154 = ptrtoint ptr %skc_net.i419 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %skc_net.i419, align 4
  %call218 = call ptr @ip6_dst_lookup_flow(ptr noundef %155, ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call176) #10
  %156 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call218, ptr %dst, align 4
  %cmp.i420 = icmp ugt ptr %call218, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i420, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %call218 to i32
  br label %out

if.end222:                                        ; preds = %if.end211
  %158 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %cmp224 = icmp slt i16 %159, 0
  br i1 %cmp224, label %if.then226, label %if.end222.if.end230_crit_edge

if.end222.if.end230_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

if.then226:                                       ; preds = %if.end222
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %160 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %daddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %161)
  %cmp.i.i = icmp ugt i32 %161, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %162 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %bf.load.i = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i, 16
  %hlimit.0.in.i = select i1 %cmp.i.i, i32 %bf.shl.i, i32 %bf.load.i
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i421 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i421, label %if.then6.i, label %if.then226.ip6_sk_dst_hoplimit.exit_crit_edge

if.then226.ip6_sk_dst_hoplimit.exit_crit_edge:    ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %call218) #10
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %if.then226.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %if.then226.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv228 = trunc i32 %hlimit.1.i to i16
  %163 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv228, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  br label %if.end230

if.end230:                                        ; preds = %ip6_sk_dst_hoplimit.exit, %if.end222.if.end230_crit_edge
  %164 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp232 = icmp slt i8 %165, 0
  br i1 %cmp232, label %if.then234, label %if.end230.if.end241_crit_edge

if.end230.if.end241_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end241

if.then234:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %dontfrag235 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %166 = ptrtoint ptr %dontfrag235 to i32
  call void @__asan_load2_noabort(i32 %166)
  %bf.load236 = load i16, ptr %dontfrag235, align 2
  %167 = trunc i16 %bf.load236 to i8
  %168 = lshr i8 %167, 5
  %conv239 = and i8 %168, 1
  %169 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv239, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  br label %if.end241

if.end241:                                        ; preds = %if.then234, %if.end230.if.end241_crit_edge
  %170 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_flags, align 4
  %and243 = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %if.end241.back_from_confirm_crit_edge, label %do_confirm

if.end241.back_from_confirm_crit_edge:            ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

back_from_confirm:                                ; preds = %if.end274.back_from_confirm_crit_edge, %if.end241.back_from_confirm_crit_edge
  %172 = ptrtoint ptr %hdrincl to i32
  call void @__asan_load4_noabort(i32 %172)
  %hdrincl.0.hdrincl.0.hdrincl.0.309 = load i32, ptr %hdrincl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdrincl.0.hdrincl.0.hdrincl.0.309)
  %tobool247.not = icmp eq i32 %hdrincl.0.hdrincl.0.hdrincl.0.309, 0
  br i1 %tobool247.not, label %if.else252, label %if.then248

if.then248:                                       ; preds = %back_from_confirm
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %msg_flags, align 4
  %call251 = call fastcc i32 @rawv6_send_hdrinc(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef nonnull %fl6, ptr noundef nonnull %dst, i32 noundef %174, ptr noundef nonnull %ipc6)
  br label %done

if.else252:                                       ; preds = %back_from_confirm
  %opt253 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %175 = ptrtoint ptr %opt253 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call146, ptr %opt253, align 8
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %176 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_flags, align 4
  %call255 = call i32 @ip6_append_data(ptr noundef %sk, ptr noundef nonnull @raw6_getfrag, ptr noundef nonnull %rfv, i32 noundef %len, i32 noundef 0, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %call218, i32 noundef %177) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.else258, label %if.then257

if.then257:                                       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  br label %if.end265

if.else258:                                       ; preds = %if.else252
  %178 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %msg_flags, align 4
  %and260 = and i32 %179, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %if.then262, label %if.else258.if.end265_crit_edge

if.else258.if.end265_crit_edge:                   ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

if.then262:                                       ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #12
  %call263 = call fastcc i32 @rawv6_push_pending_frames(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %sk)
  br label %if.end265

if.end265:                                        ; preds = %if.then262, %if.else258.if.end265_crit_edge, %if.then257
  %err.0 = phi i32 [ %call255, %if.then257 ], [ 0, %if.else258.if.end265_crit_edge ], [ %call263, %if.then262 ]
  call void @release_sock(ptr noundef %sk) #10
  br label %done

done:                                             ; preds = %if.end274.done_crit_edge, %if.end265, %if.then248
  %err.1 = phi i32 [ %call251, %if.then248 ], [ %err.0, %if.end265 ], [ 0, %if.end274.done_crit_edge ]
  %180 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %181) #10
  br label %out

out:                                              ; preds = %done, %if.then220, %if.then154.out_crit_edge
  %err.2 = phi i32 [ %157, %if.then220 ], [ %err.1, %done ], [ %call156, %if.then154.out_crit_edge ]
  br i1 %tobool142.not, label %out.fl6_sock_release.exit_crit_edge, label %if.then.i

out.fl6_sock_release.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %fl6_sock_release.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %flowlabel.3430, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %182 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !99
  br label %fl6_sock_release.exit

fl6_sock_release.exit:                            ; preds = %if.then.i, %out.fl6_sock_release.exit_crit_edge
  %tobool.not.i423 = icmp eq ptr %opt_to_free.0, null
  br i1 %tobool.not.i423, label %fl6_sock_release.exit.txopt_put.exit_crit_edge, label %land.lhs.true.i

fl6_sock_release.exit.txopt_put.exit_crit_edge:   ; preds = %fl6_sock_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_put.exit

land.lhs.true.i:                                  ; preds = %fl6_sock_release.exit
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt_to_free.0, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  call void @llvm.prefetch.p0(ptr nonnull %opt_to_free.0, i32 1, i32 3, i32 1) #10
  %183 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %opt_to_free.0, ptr nonnull %opt_to_free.0, i32 1, ptr nonnull elementtype(i32) %opt_to_free.0) #10, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %183, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !80

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %opt_to_free.0, i32 noundef 3) #10
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !83
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_to_free.0, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #10
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %fl6_sock_release.exit.txopt_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp267 = icmp slt i32 %err.2, 0
  %err.2.len = select i1 %cmp267, i32 %err.2, i32 %len
  br label %cleanup

do_confirm:                                       ; preds = %if.end241
  %and270 = and i32 %171, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %do_confirm.if.end274_crit_edge, label %if.then272

do_confirm.if.end274_crit_edge:                   ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274

if.then272:                                       ; preds = %do_confirm
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call218, i32 0, i32 1
  %184 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i, align 4
  %confirm_neigh.i = getelementptr inbounds %struct.dst_ops, ptr %185, i32 0, i32 15
  %186 = ptrtoint ptr %confirm_neigh.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %confirm_neigh.i, align 4
  %tobool.not.i424 = icmp eq ptr %187, null
  br i1 %tobool.not.i424, label %if.then272.if.end274_crit_edge, label %if.then.i425

if.then272.if.end274_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274

if.then.i425:                                     ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #12
  %daddr273 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  call void %187(ptr noundef %call218, ptr noundef %daddr273) #10
  br label %if.end274

if.end274:                                        ; preds = %if.then.i425, %if.then272.if.end274_crit_edge, %do_confirm.if.end274_crit_edge
  %188 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %msg_flags, align 4
  %and276 = and i32 %189, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp ne i32 %and276, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool278.not = icmp eq i32 %len, 0
  %or.cond397 = and i1 %tobool278.not, %tobool277.not
  br i1 %or.cond397, label %if.end274.done_crit_edge, label %if.end274.back_from_confirm_crit_edge

if.end274.back_from_confirm_crit_edge:            ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %back_from_confirm

if.end274.done_crit_edge:                         ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

cleanup:                                          ; preds = %txopt_put.exit, %if.then125.cleanup_crit_edge, %if.then118, %if.else87.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %inet6_sk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call115, %if.then118 ], [ %err.2.len, %txopt_put.exit ], [ -90, %inet6_sk.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ -97, %if.end18.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -22, %if.then55.cleanup_crit_edge ], [ -89, %if.else87.cleanup_crit_edge ], [ -22, %if.then125.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdrincl)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rfv) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt_space) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr noundef %addr_len) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err, align 4, !annotation !84
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %inet6_sk.exit.cleanup_crit_edge

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %and1 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @ipv6_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rxpmtu = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 20
  %7 = ptrtoint ptr %rxpmtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxpmtu, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %9 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %rxopt, align 4
  %10 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @ipv6_recv_rxpmtu(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %call11 = call ptr @skb_recv_datagram(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %err) #10
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.out_crit_edge, label %if.end14

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end10
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %11 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %len)
  %cmp = icmp ugt i32 %12, %len
  br i1 %cmp, label %if.then17, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_flags, align 4
  %or = or i32 %14, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %copied.0 = phi i32 [ %len, %if.then17 ], [ %12, %if.end14.if.end18_crit_edge ]
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %16 = and i16 %bf.lshr.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp.i = icmp ne i16 %16, 1
  %17 = and i16 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %if.end18.if.then21_crit_edge

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.rhs.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp12.i = icmp eq i16 %16, 3
  br i1 %cmp12.i, label %skb_csum_unnecessary.exit, label %lor.rhs.i.if.else_crit_edge

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_csum_unnecessary.exit:                        ; preds = %lor.rhs.i
  %18 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 15, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  %conv.i.i117 = zext i16 %20 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i117, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool20.not = icmp slt i32 %sub.i.i, 0
  br i1 %tobool20.not, label %skb_csum_unnecessary.exit.if.else_crit_edge, label %skb_csum_unnecessary.exit.if.then21_crit_edge

skb_csum_unnecessary.exit.if.then21_crit_edge:    ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

skb_csum_unnecessary.exit.if.else_crit_edge:      ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then21:                                        ; preds = %skb_csum_unnecessary.exit.if.then21_crit_edge, %if.end18.if.then21_crit_edge
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call11, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #10
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i, ptr %err, align 4
  br label %if.end39

if.else:                                          ; preds = %skb_csum_unnecessary.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %msg_flags23 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %26 = ptrtoint ptr %msg_flags23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_flags23, align 4
  %and24 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else32, label %if.then26

if.then26:                                        ; preds = %if.else
  %call27 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %call11) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call27)
  %tobool28.not = icmp eq i16 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.csum_copy_err_crit_edge

if.then26.csum_copy_err_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_copy_err

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %msg_iter.i118 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i119 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call11, i32 noundef 0, ptr noundef %msg_iter.i118, i32 noundef %copied.0) #10
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i119, ptr %err, align 4
  br label %if.end39

if.else32:                                        ; preds = %if.else
  %call33 = call i32 @skb_copy_and_csum_datagram_msg(ptr noundef nonnull %call11, i32 noundef 0, ptr noundef %msg) #10
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call33, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call33)
  %cmp34 = icmp eq i32 %call33, -22
  br i1 %cmp34, label %if.else32.csum_copy_err_crit_edge, label %if.else32.if.end39_crit_edge

if.else32.if.end39_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.else32.csum_copy_err_crit_edge:                ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %csum_copy_err

if.end39:                                         ; preds = %if.else32.if.end39_crit_edge, %if.end30, %if.then21
  %30 = phi i32 [ %call.i119, %if.end30 ], [ %call33, %if.else32.if.end39_crit_edge ], [ %call.i, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool40.not = icmp eq i32 %30, 0
  br i1 %tobool40.not, label %if.end42, label %if.end39.out_free_crit_edge

if.end39.out_free_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end42:                                         ; preds = %if.end39
  %tobool43.not = icmp eq ptr %5, null
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %if.then44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 10, ptr %5, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i120 = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i120
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %37 = call ptr @memcpy(ptr %sin6_addr, ptr %saddr, i32 16)
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %sin6_flowinfo, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i, align 8
  %41 = and i16 %40, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.i.not.i121 = icmp eq i16 %41, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i121, ptr %cb.i, ptr %skb_iif.i
  %42 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond.i122 = load i32, ptr %cond.in.i, align 8
  %call.i123 = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i.i124 = and i32 %call.i123, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.then44.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge

if.then44.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

lor.rhs.i.i:                                      ; preds = %if.then44
  %and1.i.i = and i32 %call.i123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i123, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i125 = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i125, label %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, label %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge

lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge:   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipv6_iface_scope_id.exit

lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

__ipv6_addr_needs_scope_id.exit.thread.i:         ; preds = %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, %if.then44.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge
  br label %ipv6_iface_scope_id.exit

ipv6_iface_scope_id.exit:                         ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge
  %43 = phi i32 [ %cond.i122, %__ipv6_addr_needs_scope_id.exit.thread.i ], [ 0, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge ]
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 4
  %44 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sin6_scope_id, align 4
  %45 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 28, ptr %addr_len, align 4
  br label %if.end49

if.end49:                                         ; preds = %ipv6_iface_scope_id.exit, %if.end42.if.end49_crit_edge
  %46 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %and.i = and i32 %48, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i126 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i126, label %lor.lhs.false.i, label %if.end49.if.then.i_crit_edge

if.end49.if.then.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end49
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %49 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sk_tsflags.i, align 8
  %51 = and i16 %50, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool2.not.i = icmp eq i16 %51, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end49.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call11) #10
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %46, align 4
  %54 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i127 = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i127, label %if.else6.i, label %if.then5.i, !prof !80

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %55, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %57) #10
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %58 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %59)
  %cmp.i128 = icmp eq i64 %59, -1000000000
  br i1 %cmp.i128, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !85

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef 0) #10
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %rxopt50 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %60 = ptrtoint ptr %rxopt50 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rxopt50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool51.not = icmp eq i16 %61, 0
  br i1 %tobool51.not, label %sock_recv_ts_and_drops.exit.if.end53_crit_edge, label %if.then52

sock_recv_ts_and_drops.exit.if.end53_crit_edge:   ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then52:                                        ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_datagram_recv_ctl(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call11) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %sock_recv_ts_and_drops.exit.if.end53_crit_edge
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %copied.0, ptr %err, align 4
  %and54 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.out_free_crit_edge, label %if.then56

if.end53.out_free_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len15, align 4
  %65 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %err, align 4
  br label %out_free

out_free:                                         ; preds = %if.then56, %if.end53.out_free_crit_edge, %if.end39.out_free_crit_edge
  call void @skb_free_datagram(ptr noundef %sk, ptr noundef nonnull %call11) #10
  br label %out

out:                                              ; preds = %csum_copy_err, %out_free, %if.end10.out_crit_edge
  %66 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err, align 4
  br label %cleanup

csum_copy_err:                                    ; preds = %if.else32.csum_copy_err_crit_edge, %if.then26.csum_copy_err_crit_edge
  %call59 = call i32 @skb_kill_datagram(ptr noundef %sk, ptr noundef nonnull %call11, i32 noundef %flags) #10
  %and60 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %cond = select i1 %tobool61.not, i32 -113, i32 -11
  %68 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cond, ptr %err, align 4
  br label %out

cleanup:                                          ; preds = %out, %if.then8, %if.then3, %inet6_sk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call9, %if.then8 ], [ %67, %out ], [ -95, %inet6_sk.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rawv6_bind(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp = icmp slt i32 %addr_len, 24
  br i1 %cmp, label %inet6_sk.exit.cleanup67_crit_edge, label %if.end

inet6_sk.exit.cleanup67_crit_edge:                ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end:                                           ; preds = %inet6_sk.exit
  %4 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %uaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %cmp2.not = icmp eq i16 %5, 10
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup67_crit_edge

if.end.cleanup67_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end5:                                          ; preds = %if.end
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %call.i99 = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i = and i32 %call.i99, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 4096
  br i1 %cmp7, label %if.end5.cleanup67_crit_edge, label %if.end10

if.end5.cleanup67_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup67

if.end10:                                         ; preds = %if.end5
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %6 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp12.not = icmp eq i8 %7, 7
  br i1 %cmp12.not, label %if.end15, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end10
  %8 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end15.rcu_read_lock.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end15.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp16.not = icmp eq i32 %and.i, 0
  br i1 %cmp16.not, label %if.end57, label %if.then18

if.then18:                                        ; preds = %rcu_read_lock.exit
  %and.i100 = and i32 %call.i99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %lor.rhs.i, label %if.then18.if.then20_crit_edge

if.then18.if.then20_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.rhs.i:                                        ; preds = %if.then18
  %and1.i = and i32 %call.i99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 0
  %and3.i = and i32 %call.i99, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %or.cond = and i1 %tobool2.not.i, %tobool4.i
  br i1 %or.cond, label %lor.rhs.i.if.then20_crit_edge, label %lor.rhs.i.if.end32_crit_edge

lor.rhs.i.if.end32_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

lor.rhs.i.if.then20_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %lor.rhs.i.if.then20_crit_edge, %if.then18.if.then20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %addr_len)
  %cmp21 = icmp ugt i32 %addr_len, 27
  br i1 %cmp21, label %land.lhs.true, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then20
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %12 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %land.lhs.true.if.end26_crit_edge, label %if.then23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %14 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %skc_bound_dev_if, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true.if.end26_crit_edge, %if.then20.if.end26_crit_edge
  %skc_bound_dev_if28 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %15 = ptrtoint ptr %skc_bound_dev_if28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skc_bound_dev_if28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  br i1 %tobool29.not, label %if.end26.out_unlock_crit_edge, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end26.out_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end32:                                         ; preds = %if.end26.if.end32_crit_edge, %lor.rhs.i.if.end32_crit_edge
  %skc_bound_dev_if34 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %17 = ptrtoint ptr %skc_bound_dev_if34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skc_bound_dev_if34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not = icmp eq i32 %18, 0
  br i1 %tobool35.not, label %if.end32.if.end44_crit_edge, label %if.then36

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then36:                                        ; preds = %if.end32
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %call40 = tail call ptr @dev_get_by_index_rcu(ptr noundef %20, i32 noundef %18) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then36.out_unlock_crit_edge, label %if.then36.if.end44_crit_edge

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then36.out_unlock_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end44:                                         ; preds = %if.then36.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  %dev.0 = phi ptr [ %call40, %if.then36.if.end44_crit_edge ], [ null, %if.end32.if.end44_crit_edge ]
  %and = and i32 %call.i99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end57.thread127

if.end57.thread127:                               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %inet_saddr130 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %21 = ptrtoint ptr %inet_saddr130 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2130706438, ptr %inet_saddr130, align 4
  %skc_rcv_saddr131 = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %22 = ptrtoint ptr %skc_rcv_saddr131 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2130706438, ptr %skc_rcv_saddr131, align 4
  %skc_v6_rcv_saddr132 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %23 = call ptr @memcpy(ptr %skc_v6_rcv_saddr132, ptr %sin6_addr, i32 16)
  br label %out_unlock

land.lhs.true46:                                  ; preds = %if.end44
  %skc_net.i102 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i102, align 4
  %ip_nonlocal_bind.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 1, i32 25
  %26 = ptrtoint ptr %ip_nonlocal_bind.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip_nonlocal_bind.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i103 = icmp eq i8 %27, 0
  br i1 %tobool.not.i103, label %lor.lhs.false.i, label %land.lhs.true46.if.end57.thread_crit_edge

land.lhs.true46.if.end57.thread_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true46
  %freebind.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %28 = ptrtoint ptr %freebind.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %freebind.i, align 8
  %29 = and i16 %bf.load.i, 9216
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %.not = icmp eq i16 %29, 0
  br i1 %.not, label %if.then49, label %lor.lhs.false.i.if.end57.thread_crit_edge

lor.lhs.false.i.if.end57.thread_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.thread

if.then49:                                        ; preds = %lor.lhs.false.i
  %call52 = tail call i32 @ipv6_chk_addr(ptr noundef %25, ptr noundef %sin6_addr, ptr noundef %dev.0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then49.out_unlock_crit_edge, label %if.then49.if.end57.thread_crit_edge

if.then49.if.end57.thread_crit_edge:              ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.thread

if.then49.out_unlock_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end57.thread:                                  ; preds = %if.then49.if.end57.thread_crit_edge, %lor.lhs.false.i.if.end57.thread_crit_edge, %land.lhs.true46.if.end57.thread_crit_edge
  %inet_saddr123 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %30 = ptrtoint ptr %inet_saddr123 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2130706438, ptr %inet_saddr123, align 4
  %skc_rcv_saddr124 = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %31 = ptrtoint ptr %skc_rcv_saddr124 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2130706438, ptr %skc_rcv_saddr124, align 4
  %skc_v6_rcv_saddr125 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %32 = call ptr @memcpy(ptr %skc_v6_rcv_saddr125, ptr %sin6_addr, i32 16)
  br label %if.then64

if.end57:                                         ; preds = %rcu_read_lock.exit
  %.pre = and i32 %call.i99, 2
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %33 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %inet_saddr, align 4
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %sk, i32 0, i32 1
  %34 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %skc_rcv_saddr, align 4
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %35 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %sin6_addr, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool63.not = icmp eq i32 %.pre, 0
  br i1 %tobool63.not, label %if.end57.if.then64_crit_edge, label %if.end57.out_unlock_crit_edge

if.end57.out_unlock_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end57.if.then64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %if.end57.if.then64_crit_edge, %if.end57.thread
  %36 = call ptr @memcpy(ptr %cond.i, ptr %sin6_addr, i32 16)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then64, %if.end57.out_unlock_crit_edge, %if.then49.out_unlock_crit_edge, %if.end57.thread127, %if.then36.out_unlock_crit_edge, %if.end26.out_unlock_crit_edge
  %err.3 = phi i32 [ 0, %if.then64 ], [ 0, %if.end57.out_unlock_crit_edge ], [ -99, %if.then49.out_unlock_crit_edge ], [ -19, %if.then36.out_unlock_crit_edge ], [ -22, %if.end26.out_unlock_crit_edge ], [ 0, %if.end57.thread127 ]
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i107, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i110

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i110:                               ; preds = %out_unlock
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %37 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i114 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %if.end10.out_crit_edge
  %err.4 = phi i32 [ -22, %if.end10.out_crit_edge ], [ %err.3, %rcu_read_unlock.exit ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup67

cleanup67:                                        ; preds = %out, %if.end5.cleanup67_crit_edge, %if.end.cleanup67_crit_edge, %inet6_sk.exit.cleanup67_crit_edge
  %retval.0 = phi i32 [ %err.4, %out ], [ -22, %inet6_sk.exit.cleanup67_crit_edge ], [ -22, %if.end.cleanup67_crit_edge ], [ -99, %if.end5.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_hash_sk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_unhash_sk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_abort(ptr noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raw6_proc_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @raw6_net_ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raw6_proc_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @raw6_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dgram_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_common_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rawv6_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_register_protosw(ptr noundef nonnull @rawv6_protosw) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rawv6_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @rawv6_protosw) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_ra_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6mr_sk_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6mr_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %label) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@fl6_sock_lookup, %do.end)) #10
          to label %return [label %do.end], !srcloc !102

do.end:                                           ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %flowlabel_has_excl = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 17
  %2 = ptrtoint ptr %flowlabel_has_excl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %flowlabel_has_excl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %do.end.return_crit_edge, label %if.then

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %label) #10
  %tobool7.not = icmp eq ptr %call6, null
  %spec.select = select i1 %tobool7.not, ptr inttoptr (i32 -2 to ptr), ptr %call6
  br label %return

return:                                           ; preds = %if.then, %do.end.return_crit_edge, %entry
  %retval.0 = phi ptr [ null, %do.end.return_crit_edge ], [ null, %entry ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl6_sock_release(ptr noundef %fl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %fl, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #10, !srcloc !99
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @txopt_get(ptr noundef %np) unnamed_addr #3 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %opt1 = getelementptr inbounds %struct.ipv6_pinfo, ptr %np, i32 0, i32 18
  %4 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %opt1, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @txopt_get.__warned, align 1
  br i1 %.b19, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @txopt_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 379, ptr noundef nonnull @.str.2) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end15_crit_edge, label %if.then11

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then11
  %8 = phi i32 [ %7, %if.then11 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i20 = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 %11, i32 %add.i.i.i20, ptr nonnull elementtype(i32) %5) #10, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !80

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !80

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %. = select i1 %tobool12.i.i.i.not, ptr null, ptr %5
  br label %if.end15

if.end15:                                         ; preds = %refcount_inc_not_zero.exit, %do.end8.if.end15_crit_edge
  %opt.0 = phi ptr [ null, %do.end8.if.end15_crit_edge ], [ %., %refcount_inc_not_zero.exit ]
  %call.i21 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i21, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end15
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %18 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %opt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_merge_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_fixup_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_probe_proto_opt(ptr noundef %rfv, ptr nocapture noundef %fl6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %0 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flowic_proto, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 58, label %sw.bb
    i8 -121, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hlen = getelementptr inbounds %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 1
  %3 = ptrtoint ptr %hlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %hlen, align 4
  %c = getelementptr inbounds %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 2
  %4 = ptrtoint ptr %rfv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rfv, align 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %5, i32 0, i32 2
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %c, i32 noundef 2, ptr noundef %msg_iter.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.i.i.i)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, 2
  br i1 %cmp.i.i, label %if.then, label %memcpy_from_msg.exit, !prof !80

memcpy_from_msg.exit:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %c, align 4
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %8 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %uli, align 4
  %arrayidx4 = getelementptr %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %code = getelementptr inbounds %struct.anon.41, ptr %uli, i32 0, i32 1
  %11 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %code, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %hlen7 = getelementptr inbounds %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 1
  %12 = ptrtoint ptr %hlen7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %hlen7, align 4
  %13 = ptrtoint ptr %rfv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rfv, align 4
  %msg_iter.i35 = getelementptr inbounds %struct.msghdr, ptr %14, i32 0, i32 2
  %c8 = getelementptr inbounds %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 2
  %call3.i.i.i40 = tail call i32 @_copy_from_iter(ptr noundef %c8, i32 noundef 4, ptr noundef %msg_iter.i35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i.i.i40)
  %cmp.i.i42 = icmp eq i32 %call3.i.i.i40, 4
  br i1 %cmp.i.i42, label %if.then14, label %memcpy_from_msg.exit46, !prof !80

memcpy_from_msg.exit46:                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i35, i32 noundef %call3.i.i.i40) #10
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16 = getelementptr %struct.raw6_frag_vec, ptr %rfv, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 2
  %uli17 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %17 = ptrtoint ptr %uli17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %uli17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %memcpy_from_msg.exit46, %if.then, %memcpy_from_msg.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ -14, %memcpy_from_msg.exit46 ], [ 0, %if.then14 ], [ -14, %memcpy_from_msg.exit ], [ 0, %if.then ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_send_hdrinc(ptr noundef %sk, ptr noundef %msg, i32 noundef %length, ptr noundef %fl6, ptr nocapture noundef %dstp, i32 noundef %flags, ptr nocapture noundef readonly %sockc) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err, align 4, !annotation !84
  %7 = ptrtoint ptr %dstp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dstp, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %12 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %needed_headroom, align 8
  %conv4 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv4, %conv
  %and = and i32 %add, 131056
  %add5 = add nuw nsw i32 %and, 16
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 22
  %15 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %needed_tailroom, align 2
  %conv8 = zext i16 %16 to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %length)
  %cmp = icmp ult i32 %18, %length
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ipv6_local_error(ptr noundef %sk, i32 noundef 90, ptr noundef %fl6, i32 noundef %18) #10
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %length)
  %cmp15 = icmp ult i32 %length, 40
  br i1 %cmp15, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %and19 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %add22 = add i32 %length, 15
  %add23 = add i32 %add22, %conv8
  %add24 = add i32 %add23, %add5
  %and25 = and i32 %flags, 64
  %call26 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add24, i32 noundef %and25, ptr noundef nonnull %err) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end21.error_crit_edge, label %if.end29

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end29:                                         ; preds = %if.end21
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add5
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %22, i32 %add5
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -31011, ptr %protocol, align 8
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %24 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 6
  %26 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %priority, align 4
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %sockc, i32 0, i32 1
  %27 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mark, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %29, align 4
  %31 = ptrtoint ptr %sockc to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sockc, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %32, ptr %33, align 8
  %call30 = call ptr @skb_put(ptr noundef nonnull %call26, i32 noundef %length) #10
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 18
  %37 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i508 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %conv.i.i508
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15
  %40 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %tsflags = getelementptr inbounds %struct.sockcm_cookie, ptr %sockc, i32 0, i32 2
  %41 = ptrtoint ptr %tsflags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tsflags, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 17
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 3
  %tskey.i = getelementptr inbounds %struct.skb_shared_info, ptr %47, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i.i, label %if.end29.if.end10.i.i_crit_edge, label %if.then.i.i, !prof !80

if.end29.if.end10.i.i_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end29
  call void @__sock_tx_timestamp(i16 noundef zeroext %42, ptr noundef %tx_flags.i) #10
  %conv.i.i509 = zext i16 %42 to i32
  %and.i.i510 = and i32 %conv.i.i509, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i510)
  %tobool3.not.i.i = icmp eq i32 %and.i.i510, 0
  %and7.i.i = and i32 %conv.i.i509, 771
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond28.i.i = or i1 %tobool8.not.i.i, %tobool3.not.i.i
  br i1 %or.cond28.i.i, label %if.then.i.i.if.end10.i.i_crit_edge, label %if.then9.i.i

if.then.i.i.if.end10.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sk_tskey.i.i = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 67
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_tskey.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  call void @llvm.prefetch.p0(ptr %sk_tskey.i.i, i32 1, i32 3, i32 1) #10
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_tskey.i.i, ptr %sk_tskey.i.i, i32 1, ptr elementtype(i32) %sk_tskey.i.i) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  %sub.i.i = add i32 %asmresult.i.i.i.i.i.i, -1
  %49 = ptrtoint ptr %tskey.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i.i, ptr %tskey.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.then.i.i.if.end10.i.i_crit_edge, %if.end29.if.end10.i.i_crit_edge
  %50 = getelementptr inbounds %struct.sock_common, ptr %45, i32 0, i32 13
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %53 = and i32 %52, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i.i, label %if.end10.i.i.skb_setup_tx_timestamp.exit_crit_edge, label %if.then18.i.i, !prof !80

if.end10.i.i.skb_setup_tx_timestamp.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_setup_tx_timestamp.exit

if.then18.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_flags.i, align 1
  %56 = or i8 %55, 16
  store i8 %56, ptr %tx_flags.i, align 1
  br label %skb_setup_tx_timestamp.exit

skb_setup_tx_timestamp.exit:                      ; preds = %if.then18.i.i, %if.end10.i.i.skb_setup_tx_timestamp.exit_crit_edge
  %and32 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %skb_setup_tx_timestamp.exit.if.end35_crit_edge, label %if.then34

skb_setup_tx_timestamp.exit.if.end35_crit_edge:   ; preds = %skb_setup_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %skb_setup_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dst_pending_confirm.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 3
  %57 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load.i = load i32, ptr %dst_pending_confirm.i, align 2
  %bf.set.i = or i32 %bf.load.i, 67108864
  store i32 %bf.set.i, ptr %dst_pending_confirm.i, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %skb_setup_tx_timestamp.exit.if.end35_crit_edge
  %58 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 19
  %60 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %transport_header, align 2
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp9.i.i.i.i = icmp slt i32 %length, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end35
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !80

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void @__check_object_size(ptr noundef %add.ptr.i.i, i32 noundef %length, i1 noundef zeroext false) #10
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %add.ptr.i.i, i32 noundef %length, ptr noundef %msg_iter.i) #10
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %length)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %length
  br i1 %cmp.i.i, label %if.end39, label %if.then38, !prof !80

if.then38:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #10
  %61 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %call26, i32 noundef 0) #10
  br label %error

if.end39:                                         ; preds = %copy_from_iter.exit.i.i
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %err, align 4
  %tobool.not.i512 = icmp eq ptr %8, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 15, i32 0, i32 3
  %63 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load.i513 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i513, 4096
  %bf.shl.i = select i1 %tobool.not.i512, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i513, -4097
  %bf.set.i514 = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i514, ptr %slow_gro.i, align 2
  %64 = ptrtoint ptr %8 to i32
  %65 = getelementptr inbounds %struct.sk_buff, ptr %call26, i32 0, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %65, align 8
  %67 = ptrtoint ptr %dstp to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %dstp, align 4
  %68 = load i32, ptr %65, align 8
  %and.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end39.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end39.skb_dst.exit.i.i_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end39
  %call.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !85

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.end39.skb_dst.exit.i.i_crit_edge
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %65, align 8
  %and25.i.i.i = and i32 %70, -2
  %71 = inttoptr i32 %and25.i.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 15
  %74 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i1.i.i = and i64 %75, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1.i.i)
  %tobool.i.not.i.i515 = icmp eq i64 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i515, label %skb_dst.exit.i.i.if.end47_crit_edge, label %if.then.i.i517

skb_dst.exit.i.i.if.end47_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then.i.i517:                                   ; preds = %skb_dst.exit.i.i
  %call3.i.i = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %73) #10
  %tobool.not.i.i516 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i516, label %if.then.i.i517.if.end47_crit_edge, label %land.lhs.true.i.i

if.then.i.i517.if.end47_crit_edge:                ; preds = %if.then.i.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true.i.i:                                ; preds = %if.then.i.i517
  %l3mdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 45
  %76 = ptrtoint ptr %l3mdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %l3mdev_ops.i.i, align 4
  %l3mdev_l3_out.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %l3mdev_l3_out.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %l3mdev_l3_out.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %79, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end47_crit_edge, label %l3mdev_ip6_out.exit

land.lhs.true.i.i.if.end47_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

l3mdev_ip6_out.exit:                              ; preds = %land.lhs.true.i.i
  %call8.i.i = call ptr %79(ptr noundef nonnull %call3.i.i, ptr noundef %sk, ptr noundef nonnull %call26, i16 noundef zeroext 10) #10
  %tobool42.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool42.not, label %l3mdev_ip6_out.exit.cleanup_crit_edge, label %l3mdev_ip6_out.exit.if.end47_crit_edge, !prof !85

l3mdev_ip6_out.exit.if.end47_crit_edge:           ; preds = %l3mdev_ip6_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

l3mdev_ip6_out.exit.cleanup_crit_edge:            ; preds = %l3mdev_ip6_out.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %l3mdev_ip6_out.exit.if.end47_crit_edge, %land.lhs.true.i.i.if.end47_crit_edge, %if.then.i.i517.if.end47_crit_edge, %skb_dst.exit.i.i.if.end47_crit_edge
  %skb.addr.1.i.i547 = phi ptr [ %call8.i.i, %l3mdev_ip6_out.exit.if.end47_crit_edge ], [ %call26, %skb_dst.exit.i.i.if.end47_crit_edge ], [ %call26, %land.lhs.true.i.i.if.end47_crit_edge ], [ %call26, %if.then.i.i517.if.end47_crit_edge ]
  %80 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %83, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end47.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end47.rcu_read_lock.exit_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end47.rcu_read_lock.exit_crit_edge
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %8, i32 0, i32 6
  %84 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rt6i_idev, align 4
  %cmp48.not = icmp eq ptr %85, null
  br i1 %cmp48.not, label %rcu_read_lock.exit.do.body169_crit_edge, label %do.body, !prof !85

rcu_read_lock.exit.do.body169_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body169

do.body:                                          ; preds = %rcu_read_lock.exit
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %85, i32 0, i32 33, i32 1
  %86 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ipv6, align 4
  %88 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !107
  %arrayidx = getelementptr i64, ptr %87, i32 5
  %89 = ptrtoint ptr %arrayidx to i32
  %90 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cpu, align 4
  %arrayidx74 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx74, align 4
  %add75 = add i32 %95, %89
  %96 = inttoptr i32 %add75 to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %96, align 8
  %add76 = add i64 %98, 1
  store i64 %add76, ptr %96, align 8
  %99 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i518 = and i32 %99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i518)
  %tobool87.not = icmp eq i32 %and.i.i518, 0
  br i1 %tobool87.not, label %if.then96, label %do.body.do.end99_crit_edge, !prof !85

do.body.do.end99_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

if.then96:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %do.body.do.end99_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #10, !srcloc !109
  %100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !107
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i547, i32 0, i32 6
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  %conv123 = zext i32 %102 to i64
  %arrayidx130 = getelementptr i64, ptr %87, i32 6
  %103 = ptrtoint ptr %arrayidx130 to i32
  %104 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cpu, align 4
  %arrayidx134 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx134, align 4
  %add135 = add i32 %107, %103
  %108 = inttoptr i32 %add135 to ptr
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %108, align 8
  %add136 = add i64 %110, %conv123
  store i64 %add136, ptr %108, align 8
  %111 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i519 = and i32 %111, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i519)
  %tobool147.not = icmp eq i32 %and.i.i519, 0
  br i1 %tobool147.not, label %if.then156, label %do.end99.do.end159_crit_edge, !prof !85

do.end99.do.end159_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

if.then156:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %do.end99.do.end159_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #10, !srcloc !109
  br label %do.body169

do.body169:                                       ; preds = %do.end159, %rcu_read_lock.exit.do.body169_crit_edge
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 30, i32 1
  %112 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ipv6_statistics, align 4
  %114 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !107
  %arrayidx196 = getelementptr i64, ptr %113, i32 5
  %115 = ptrtoint ptr %arrayidx196 to i32
  %116 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i520 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i520 to ptr
  %cpu199 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %cpu199 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu199, align 4
  %arrayidx200 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx200, align 4
  %add201 = add i32 %121, %115
  %122 = inttoptr i32 %add201 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %122, align 8
  %add202 = add i64 %124, 1
  store i64 %add202, ptr %122, align 8
  %125 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i521 = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i521)
  %tobool213.not = icmp eq i32 %and.i.i521, 0
  br i1 %tobool213.not, label %if.then222, label %do.body169.do.end225_crit_edge, !prof !85

do.body169.do.end225_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end225

if.then222:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end225

do.end225:                                        ; preds = %if.then222, %do.body169.do.end225_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %114) #10, !srcloc !109
  %126 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !107
  %len249 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i547, i32 0, i32 6
  %127 = ptrtoint ptr %len249 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len249, align 4
  %conv250 = zext i32 %128 to i64
  %arrayidx257 = getelementptr i64, ptr %113, i32 6
  %129 = ptrtoint ptr %arrayidx257 to i32
  %130 = ptrtoint ptr %cpu199 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cpu199, align 4
  %arrayidx261 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %131
  %132 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx261, align 4
  %add262 = add i32 %133, %129
  %134 = inttoptr i32 %add262 to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %134, align 8
  %add263 = add i64 %136, %conv250
  store i64 %add263, ptr %134, align 8
  %137 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i522 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i522)
  %tobool274.not = icmp eq i32 %and.i.i522, 0
  br i1 %tobool274.not, label %if.then283, label %do.end225.do.end286_crit_edge, !prof !85

do.end225.do.end286_crit_edge:                    ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end286

if.then283:                                       ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %do.end286

do.end286:                                        ; preds = %if.then283, %do.end225.do.end286_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %126) #10, !srcloc !109
  %138 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %8, align 4
  %call.i523 = call fastcc i32 @nf_hook(ptr noundef %5, ptr noundef %sk, ptr noundef nonnull %skb.addr.1.i.i547, ptr noundef %139) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i523)
  %cmp.i = icmp eq i32 %call.i523, 1
  br i1 %cmp.i, label %if.then.i526, label %do.end286.NF_HOOK.exit_crit_edge

do.end286.NF_HOOK.exit_crit_edge:                 ; preds = %do.end286
  call void @__sanitizer_cov_trace_pc() #12
  br label %NF_HOOK.exit

if.then.i526:                                     ; preds = %do.end286
  %140 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i547, i32 0, i32 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %and.i.i.i524 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i524)
  %tobool.not.i.i.i525 = icmp eq i32 %and.i.i.i524, 0
  br i1 %tobool.not.i.i.i525, label %if.then.i526.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i529

if.then.i526.dst_output.exit.i_crit_edge:         ; preds = %if.then.i526
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.lhs.true.i.i.i529:                           ; preds = %if.then.i526
  %call.i.i.i527 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i527)
  %tobool1.not.i.i.i528 = icmp eq i32 %call.i.i.i527, 0
  br i1 %tobool1.not.i.i.i528, label %land.rhs.i.i.i532, label %land.lhs.true.i.i.i529.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i529.dst_output.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i529
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

land.rhs.i.i.i532:                                ; preds = %land.lhs.true.i.i.i529
  %call2.i.i.i530 = call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i530)
  %tobool3.not.i.i.i531 = icmp eq i32 %call2.i.i.i530, 0
  br i1 %tobool3.not.i.i.i531, label %do.end.i.i.i533, label %land.rhs.i.i.i532.dst_output.exit.i_crit_edge, !prof !85

land.rhs.i.i.i532.dst_output.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_output.exit.i

do.end.i.i.i533:                                  ; preds = %land.rhs.i.i.i532
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i533, %land.rhs.i.i.i532.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i529.dst_output.exit.i_crit_edge, %if.then.i526.dst_output.exit.i_crit_edge
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %140, align 8
  %and25.i.i.i534 = and i32 %144, -2
  %145 = inttoptr i32 %and25.i.i.i534 to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = call i32 %147(ptr noundef %5, ptr noundef %sk, ptr noundef nonnull %skb.addr.1.i.i547) #10
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %dst_output.exit.i, %do.end286.NF_HOOK.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i.i, %dst_output.exit.i ], [ %call.i523, %do.end286.NF_HOOK.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp298 = icmp sgt i32 %ret.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0.i)
  %cmp301.not = icmp eq i32 %ret.0.i, 2
  %cond = select i1 %cmp301.not, i32 0, i32 -105
  %storemerge = select i1 %cmp298, i32 %cond, i32 %ret.0.i
  %148 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %storemerge, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool304.not = icmp eq i32 %storemerge, 0
  br i1 %tobool304.not, label %if.end367, label %if.then305

if.then305:                                       ; preds = %NF_HOOK.exit
  %149 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rt6i_idev, align 4
  %cmp308.not = icmp eq ptr %150, null
  br i1 %cmp308.not, label %if.then305.do.body342_crit_edge, label %do.body317, !prof !85

if.then305.do.body342_crit_edge:                  ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body342

do.body317:                                       ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable()
  %ipv6327 = getelementptr inbounds %struct.inet6_dev, ptr %150, i32 0, i32 33, i32 1
  %151 = ptrtoint ptr %ipv6327 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ipv6327, align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = ptrtoint ptr %cpu199 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %cpu199, align 4
  %arrayidx331 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx331, align 4
  %add332 = add i32 %157, %153
  %158 = inttoptr i32 %add332 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %158, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx334 = getelementptr [37 x i64], ptr %158, i32 0, i32 14
  %159 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx334, align 8
  %add335 = add i64 %160, 1
  store i64 %add335, ptr %arrayidx334, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %158, i32 0, i32 1, i32 0, i32 1
  %161 = call ptr @llvm.returnaddress(i32 0) #10
  %162 = ptrtoint ptr %161 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %162) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %163 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %164, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  br label %do.body342

do.body342:                                       ; preds = %do.body317, %if.then305.do.body342_crit_edge
  call fastcc void @local_bh_disable()
  %165 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ipv6_statistics, align 4
  %167 = ptrtoint ptr %166 to i32
  %168 = ptrtoint ptr %cpu199 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cpu199, align 4
  %arrayidx356 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %169
  %170 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx356, align 4
  %add357 = add i32 %171, %167
  %172 = inttoptr i32 %add357 to ptr
  %syncp358 = getelementptr inbounds %struct.ipstats_mib, ptr %172, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp358)
  %arrayidx360 = getelementptr [37 x i64], ptr %172, i32 0, i32 14
  %173 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx360, align 8
  %add361 = add i64 %174, 1
  store i64 %add361, ptr %arrayidx360, align 8
  %dep_map.i.i535 = getelementptr inbounds %struct.ipstats_mib, ptr %172, i32 0, i32 1, i32 0, i32 1
  %175 = call ptr @llvm.returnaddress(i32 0) #10
  %176 = ptrtoint ptr %175 to i32
  call void @lock_release(ptr noundef %dep_map.i.i535, i32 noundef %176) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %177 = ptrtoint ptr %syncp358 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %syncp358, align 4
  %inc.i.i.i536 = add i32 %178, 1
  store i32 %inc.i.i.i536, ptr %syncp358, align 4
  call fastcc void @local_bh_enable()
  call fastcc void @rcu_read_unlock()
  br label %error_check

if.end367:                                        ; preds = %NF_HOOK.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rcu_read_unlock()
  br label %cleanup

error:                                            ; preds = %if.then38, %if.end21.error_crit_edge
  %rt6i_idev369 = getelementptr inbounds %struct.rt6_info, ptr %8, i32 0, i32 6
  %179 = ptrtoint ptr %rt6i_idev369 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rt6i_idev369, align 4
  %cmp370.not = icmp eq ptr %180, null
  br i1 %cmp370.not, label %error.do.body405_crit_edge, label %do.body379, !prof !85

error.do.body405_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body405

do.body379:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @local_bh_disable()
  %ipv6389 = getelementptr inbounds %struct.inet6_dev, ptr %180, i32 0, i32 33, i32 1
  %181 = ptrtoint ptr %ipv6389 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ipv6389, align 4
  %183 = ptrtoint ptr %182 to i32
  %184 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i537 = and i32 %184, -16384
  %185 = inttoptr i32 %and.i537 to ptr
  %cpu392 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %cpu392 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %cpu392, align 4
  %arrayidx393 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %187
  %188 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx393, align 4
  %add394 = add i32 %189, %183
  %190 = inttoptr i32 %add394 to ptr
  %syncp395 = getelementptr inbounds %struct.ipstats_mib, ptr %190, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp395)
  %arrayidx397 = getelementptr [37 x i64], ptr %190, i32 0, i32 14
  %191 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %arrayidx397, align 8
  %add398 = add i64 %192, 1
  store i64 %add398, ptr %arrayidx397, align 8
  %dep_map.i.i538 = getelementptr inbounds %struct.ipstats_mib, ptr %190, i32 0, i32 1, i32 0, i32 1
  %193 = call ptr @llvm.returnaddress(i32 0) #10
  %194 = ptrtoint ptr %193 to i32
  call void @lock_release(ptr noundef %dep_map.i.i538, i32 noundef %194) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %195 = ptrtoint ptr %syncp395 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %syncp395, align 4
  %inc.i.i.i539 = add i32 %196, 1
  store i32 %inc.i.i.i539, ptr %syncp395, align 4
  call fastcc void @local_bh_enable()
  br label %do.body405

do.body405:                                       ; preds = %do.body379, %error.do.body405_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics415 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 30, i32 1
  %197 = ptrtoint ptr %ipv6_statistics415 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ipv6_statistics415, align 4
  %199 = ptrtoint ptr %198 to i32
  %200 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i540 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i540 to ptr
  %cpu418 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %cpu418 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cpu418, align 4
  %arrayidx419 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %203
  %204 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx419, align 4
  %add420 = add i32 %205, %199
  %206 = inttoptr i32 %add420 to ptr
  %syncp421 = getelementptr inbounds %struct.ipstats_mib, ptr %206, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp421)
  %arrayidx423 = getelementptr [37 x i64], ptr %206, i32 0, i32 14
  %207 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %arrayidx423, align 8
  %add424 = add i64 %208, 1
  store i64 %add424, ptr %arrayidx423, align 8
  %dep_map.i.i541 = getelementptr inbounds %struct.ipstats_mib, ptr %206, i32 0, i32 1, i32 0, i32 1
  %209 = call ptr @llvm.returnaddress(i32 0) #10
  %210 = ptrtoint ptr %209 to i32
  call void @lock_release(ptr noundef %dep_map.i.i541, i32 noundef %210) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %211 = ptrtoint ptr %syncp421 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %syncp421, align 4
  %inc.i.i.i542 = add i32 %212, 1
  store i32 %inc.i.i.i542, ptr %syncp421, align 4
  call fastcc void @local_bh_enable()
  br label %error_check

error_check:                                      ; preds = %do.body405, %do.body342
  %213 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %214)
  %cmp430 = icmp eq i32 %214, -105
  br i1 %cmp430, label %land.lhs.true, label %error_check.if.end435_crit_edge

error_check.if.end435_crit_edge:                  ; preds = %error_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end435

land.lhs.true:                                    ; preds = %error_check
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %215 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %215)
  %bf.load432 = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load432)
  %tobool433.not = icmp sgt i16 %bf.load432, -1
  br i1 %tobool433.not, label %if.then434, label %land.lhs.true.if.end435_crit_edge

land.lhs.true.if.end435_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end435

if.then434:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %216 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %err, align 4
  br label %if.end435

if.end435:                                        ; preds = %if.then434, %land.lhs.true.if.end435_crit_edge, %error_check.if.end435_crit_edge
  %217 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end435, %if.end367, %l3mdev_ip6_out.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -90, %if.then ], [ %218, %if.end435 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %l3mdev_ip6_out.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end367 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw6_getfrag(ptr noundef %from, ptr noundef %to, i32 noundef %offset, i32 noundef %len, i32 noundef %odd, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hlen = getelementptr inbounds %struct.raw6_frag_vec, ptr %from, i32 0, i32 1
  %0 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp sgt i32 %1, %offset
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  %sub = sub i32 %1, %offset
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %ip_summed, align 8
  %4 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp3 = icmp eq i16 %4, 1536
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %c = getelementptr inbounds %struct.raw6_frag_vec, ptr %from, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %c, i32 %offset
  %5 = call ptr @memcpy(ptr %to, ptr %add.ptr, i32 %2)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %c6 = getelementptr inbounds %struct.raw6_frag_vec, ptr %from, i32 0, i32 2
  %add.ptr8 = getelementptr i8, ptr %c6, i32 %offset
  %call = tail call i32 @csum_partial_copy_nocheck(ptr noundef %add.ptr8, ptr noundef %to, i32 noundef %2) #10
  %and.i.i = and i32 %odd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #10
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add1.i.i, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %add = add i32 %2, %offset
  %add.ptr10 = getelementptr i8, ptr %to, i32 %2
  %sub11 = sub i32 %len, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %tobool.not = icmp eq i32 %sub11, 0
  br i1 %tobool.not, label %if.end.cleanup18_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup18

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %offset.addr.0 = phi i32 [ %add, %if.end.if.end14_crit_edge ], [ %offset, %entry.if.end14_crit_edge ]
  %len.addr.0 = phi i32 [ %sub11, %if.end.if.end14_crit_edge ], [ %len, %entry.if.end14_crit_edge ]
  %odd.addr.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ %odd, %entry.if.end14_crit_edge ]
  %to.addr.0 = phi ptr [ %add.ptr10, %if.end.if.end14_crit_edge ], [ %to, %entry.if.end14_crit_edge ]
  %10 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hlen, align 4
  %sub16 = sub i32 %offset.addr.0, %11
  %12 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %from, align 4
  %call17 = tail call i32 @ip_generic_getfrag(ptr noundef %13, ptr noundef %to.addr.0, i32 noundef %sub16, i32 noundef %len.addr.0, i32 noundef %odd.addr.0, ptr noundef %skb) #10
  br label %cleanup18

cleanup18:                                        ; preds = %if.end14, %if.end.cleanup18_crit_edge
  %retval.1 = phi i32 [ %call17, %if.end14 ], [ 0, %if.end.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rawv6_push_pending_frames(ptr noundef %sk, ptr noundef %fl6, ptr nocapture noundef readonly %rp) unnamed_addr #0 align 64 {
entry:
  %csum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %csum) #10
  %0 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %csum, align 2, !annotation !84
  %checksum = getelementptr inbounds %struct.raw6_sock, ptr %rp, i32 0, i32 1
  %1 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %checksum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.send_crit_edge, label %if.end

entry.send_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %send

if.end:                                           ; preds = %entry
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %3 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i102 = icmp eq ptr %4, %sk_write_queue
  %tobool1.not114 = icmp eq ptr %4, null
  %tobool1.not = or i1 %cmp.i102, %tobool1.not114
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %offset4 = getelementptr inbounds %struct.raw6_sock, ptr %rp, i32 0, i32 2
  %5 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset4, align 4
  %length = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 8
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp.not = icmp slt i32 %6, %sub
  br i1 %cmp.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  br label %out

if.end7:                                          ; preds = %if.end3
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp10 = icmp eq i32 %10, 1
  br i1 %cmp10, label %if.then11, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %11 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %skb.0115 = load ptr, ptr %sk_write_queue, align 8
  %cmp14.not116 = icmp eq ptr %skb.0115, %sk_write_queue
  br i1 %cmp14.not116, label %for.cond.preheader.if.end27_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  br label %if.end27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %skb.0120 = phi ptr [ %skb.0, %for.inc.for.body_crit_edge ], [ %skb.0115, %for.cond.preheader.for.body_crit_edge ]
  %csum_skb.0119 = phi ptr [ %csum_skb.1, %for.inc.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %tmp_csum.0118 = phi i32 [ %add1.i, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %offset.0117 = phi i32 [ %offset.1, %for.inc.for.body_crit_edge ], [ %6, %for.cond.preheader.for.body_crit_edge ]
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb.0120, i32 0, i32 15, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %add.i = add i32 %17, %tmp_csum.0118
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp.i = icmp ult i32 %add.i, %17
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %tobool16.not = icmp eq ptr %csum_skb.0119, null
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb.0120, i32 0, i32 6
  %18 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len19, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0120, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0120, i32 0, i32 15, i32 0, i32 19
  %22 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i103 = zext i16 %23 to i32
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %conv.i.i103
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0120, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub21 = add i32 %sub.ptr.sub.i.neg, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0117, i32 %sub21)
  %cmp22.not = icmp slt i32 %offset.0117, %sub21
  %sub24 = select i1 %cmp22.not, i32 0, i32 %sub21
  %spec.select = sub i32 %offset.0117, %sub24
  %spec.select100 = select i1 %cmp22.not, ptr %skb.0120, ptr null
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %for.body.for.inc_crit_edge
  %offset.1 = phi i32 [ %offset.0117, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end18 ]
  %csum_skb.1 = phi ptr [ %csum_skb.0119, %for.body.for.inc_crit_edge ], [ %spec.select100, %if.end18 ]
  %26 = ptrtoint ptr %skb.0120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %skb.0 = load ptr, ptr %skb.0120, align 8
  %cmp14.not = icmp eq ptr %skb.0, %sk_write_queue
  br i1 %cmp14.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %if.then11, %for.cond.preheader.if.end27_crit_edge
  %skb.1 = phi ptr [ %4, %if.then11 ], [ null, %for.cond.preheader.if.end27_crit_edge ], [ %csum_skb.1, %for.inc.if.end27_crit_edge ]
  %offset.2 = phi i32 [ %6, %if.then11 ], [ %6, %for.cond.preheader.if.end27_crit_edge ], [ %offset.1, %for.inc.if.end27_crit_edge ]
  %tmp_csum.1 = phi i32 [ %14, %if.then11 ], [ 0, %for.cond.preheader.if.end27_crit_edge ], [ %add1.i, %for.inc.if.end27_crit_edge ]
  %head.i.i104 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i104, align 8
  %transport_header.i.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 19
  %29 = ptrtoint ptr %transport_header.i.i105 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i105, align 2
  %conv.i.i106 = zext i16 %30 to i32
  %add.ptr.i.i107 = getelementptr i8, ptr %28, i32 %conv.i.i106
  %data.i108 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %31 = ptrtoint ptr %data.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i108, align 4
  %sub.ptr.lhs.cast.i109 = ptrtoint ptr %add.ptr.i.i107 to i32
  %sub.ptr.rhs.cast.i110 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i111 = sub i32 %sub.ptr.lhs.cast.i109, %sub.ptr.rhs.cast.i110
  %add = add i32 %sub.ptr.sub.i111, %offset.2
  %call29 = call i32 @skb_copy_bits(ptr noundef %skb.1, i32 noundef %add, ptr noundef nonnull %csum, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void @ip6_flush_pending_frames(ptr noundef %sk) #10
  br label %out

if.end32:                                         ; preds = %if.end27
  %33 = ptrtoint ptr %csum to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %csum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool33.not = icmp eq i16 %34, 0
  br i1 %tobool33.not, label %if.end32.if.end39_crit_edge, label %if.then36, !prof !80

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i101 = zext i16 %34 to i32
  %neg.i = xor i32 %conv.i101, -1
  %add.i.i = add i32 %tmp_csum.1, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %tmp_csum.2 = phi i32 [ %add1.i.i, %if.then36 ], [ %tmp_csum.1, %if.end32.if.end39_crit_edge ]
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %35 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flowic_proto, align 2
  %conv.i112 = zext i8 %36 to i32
  %call.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %8, i32 noundef %conv.i112, i32 noundef %tmp_csum.2) #10
  %37 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #13, !srcloc !87
  %neg.i.i = xor i32 %37, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i113 = trunc i32 %shr.i.i to i16
  %38 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i113, ptr %csum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i113)
  %cmp41 = icmp eq i16 %conv.i.i113, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end39
  %39 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %40)
  %cmp46 = icmp eq i8 %40, 17
  br i1 %cmp46, label %if.then48, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %csum, align 2
  br label %do.body

do.body:                                          ; preds = %if.then48, %land.lhs.true.do.body_crit_edge, %if.end39.do.body_crit_edge
  %call50 = call i32 @skb_store_bits(ptr noundef %skb.1, i32 noundef %add, ptr noundef nonnull %csum, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body.send_crit_edge, label %do.body59, !prof !80

do.body.send_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %send

do.body59:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/raw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 610, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

send:                                             ; preds = %do.body.send_crit_edge, %entry.send_crit_edge
  %call66 = call i32 @ip6_push_pending_frames(ptr noundef %sk) #10
  br label %out

out:                                              ; preds = %send, %if.then31, %if.then6, %if.end.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then6 ], [ %call29, %if.then31 ], [ %call66, %send ], [ 0, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %csum) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !85

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
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
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #10
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %5 = tail call i32 @llvm.read_register.i32(metadata !69) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %14 = tail call i32 @llvm.read_register.i32(metadata !69) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !69) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %33 = tail call i32 @llvm.read_register.i32(metadata !69) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !80

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #10
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %outdev) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10, i32 3), ptr blockaddress(@nf_hook, %if.end)) #10
          to label %cleanup [label %if.end], !srcloc !102

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.12, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_hook.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 232, ptr noundef nonnull @.str.2) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #10
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
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #10
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %13 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_push_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_rxpmtu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_kill_datagram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #10
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #10
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw6_init_net(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @raw6_seq_ops, i32 noundef 12, ptr noundef nonnull @raw_v6_hashinfo) #10
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raw6_exit_net(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.18, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raw_seq_start(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_seq_stop(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @raw_seq_next(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw6_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.19) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.3, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_num, align 2
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 8
  %bucket = getelementptr inbounds %struct.raw_iter_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bucket, align 4
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_backlog.i.i, align 4
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %seq, ptr noundef %v, i16 noundef zeroext %2, i16 noundef zeroext 0, i32 noundef %8, i32 noundef %6) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/raw.c", i32 65, i32 10}
!2 = !{ptr @raw_v6_hashinfo, !3, !"raw_v6_hashinfo", i1 false, i1 false}
!3 = !{!"../net/ipv6/raw.c", i32 64, i32 21}
!4 = !{ptr @__ksymtab_raw_v6_hashinfo, !5, !"__ksymtab_raw_v6_hashinfo", i1 false, i1 false}
!5 = !{!"../net/ipv6/raw.c", i32 67, i32 1}
!6 = !{ptr @__ksymtab___raw_v6_lookup, !7, !"__ksymtab___raw_v6_lookup", i1 false, i1 false}
!7 = !{!"../net/ipv6/raw.c", i32 103, i32 1}
!8 = !{ptr @__ksymtab_rawv6_mh_filter_register, !9, !"__ksymtab_rawv6_mh_filter_register", i1 false, i1 false}
!9 = !{!"../net/ipv6/raw.c", i32 138, i32 1}
!10 = !{ptr @__ksymtab_rawv6_mh_filter_unregister, !11, !"__ksymtab_rawv6_mh_filter_unregister", i1 false, i1 false}
!11 = !{!"../net/ipv6/raw.c", i32 146, i32 1}
!12 = !{ptr @rawv6_prot, !13, !"rawv6_prot", i1 false, i1 false}
!13 = !{!"../net/ipv6/raw.c", i32 1233, i32 14}
!14 = !{ptr @inet6_sockraw_ops, !15, !"inet6_sockraw_ops", i1 false, i1 false}
!15 = !{!"../net/ipv6/raw.c", i32 1312, i32 24}
!16 = !{ptr @mh_filter, !17, !"mh_filter", i1 false, i1 false}
!17 = !{!"../net/ipv6/raw.c", i32 131, i32 27}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/ipv6/raw.c", i32 201, i32 13}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/net/ipv6.h", i32 379, i32 8}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @raw6_net_ops, !60, !"raw6_net_ops", i1 false, i1 false}
!60 = !{!"../net/ipv6/raw.c", i32 1295, i32 33}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv6/raw.c", i32 1283, i32 28}
!63 = !{ptr @raw6_seq_ops, !64, !"raw6_seq_ops", i1 false, i1 false}
!64 = !{!"../net/ipv6/raw.c", i32 1274, i32 36}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv6/raw.c", i32 1264, i32 17}
!67 = !{ptr @rawv6_protosw, !68, !"rawv6_protosw", i1 false, i1 false}
!68 = !{!"../net/ipv6/raw.c", i32 1337, i32 28}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2159285502}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2148365569}
!82 = !{i64 2148280033, i64 2148280065, i64 2148280094, i64 2148280128, i64 2148280159, i64 2148280182}
!83 = !{i64 2149301849}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 2148276038, i64 2148276064, i64 2148276093, i64 2148276127, i64 2148276158, i64 2148276181}
!87 = !{i64 6914173}
!88 = !{i64 5179931}
!89 = !{i64 5180128}
!90 = !{i64 2152665361}
!91 = !{i64 2159413571, i64 2159413851, i64 2159414185, i64 2159414519}
!92 = !{i64 2159422426, i64 2159422706, i64 2159423040, i64 2159423374}
!93 = !{i64 2152684376, i64 2152684401}
!94 = !{i64 2159372191, i64 2159372471, i64 2159372805, i64 2159373139}
!95 = !{i64 2159381658, i64 2159381938, i64 2159382272, i64 2159382606}
!96 = !{i64 2152685057, i64 2152685082}
!97 = !{i64 2159393281, i64 2159393561, i64 2159393895, i64 2159394229}
!98 = !{i64 2159404633, i64 2159404913, i64 2159405247, i64 2159405581}
!99 = !{i64 2148278503, i64 2148278529, i64 2148278558, i64 2148278592, i64 2148278623, i64 2148278646}
!100 = !{i64 2149352339}
!101 = !{i64 2149352605}
!102 = !{i64 2148757853, i64 2148757858, i64 2148757871, i64 2148757915, i64 2148757949, i64 2148757970}
!103 = !{i64 759774, i64 759798, i64 759819, i64 759836, i64 759853}
!104 = !{i64 2148361449}
!105 = !{i64 2148276758, i64 2148276790, i64 2148276819, i64 2148276853, i64 2148276884, i64 2148276907}
!106 = !{i64 2148361678}
!107 = !{i64 668519, i64 668580}
!108 = !{i64 671251}
!109 = !{i64 671536}
!110 = !{i64 2149992307}
!111 = !{i64 2159305128, i64 2159305607, i64 2159305165, i64 2159305221, i64 2159305255, i64 2159305279, i64 2159305320, i64 2159305341, i64 2159305369, i64 2159305403}
!112 = !{i64 2149883989}
!113 = !{i64 2149888921}
!114 = !{i64 2149910633}
!115 = !{i64 2149915525}
!116 = !{i64 2149991982}
