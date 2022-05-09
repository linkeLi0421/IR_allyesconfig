; ModuleID = '/llk/IR_all_yes/net/ipv6/udp.c_pt.bc'
source_filename = "../net/ipv6/udp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__udp6_lib_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc___udp6_lib_lookup\09\09\09\09"
module asm "\09.long\09__crc___udp6_lib_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp6_lib_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+udp6_lib_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_udp6_lib_lookup\09\09\09\09"
module asm "\09.long\09__crc_udp6_lib_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_lib_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_lib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udpv6_encap_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_udpv6_encap_enable\09\09\09\09"
module asm "\09.long\09__crc_udpv6_encap_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udpv6_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22udpv6_encap_enable\22\09\09\09\09\09"
module asm "__kstrtabns_udpv6_encap_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udp6_seq_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_udp6_seq_ops\09\09\09\09"
module asm "\09.long\09__crc_udp6_seq_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp6_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22udp6_seq_ops\22\09\09\09\09\09"
module asm "__kstrtabns_udp6_seq_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.147 }
%struct.atomic_t = type { i32 }
%union.anon.147 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.udp_seq_afinfo = type { i16, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.166, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.166 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_key_false_deferred = type { %struct.static_key_false, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.167, [0 x i32], %union.anon.168, i16, i16, %union.anon.169, %struct.refcount_struct, [0 x i32], %union.anon.170 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { %struct.hlist_node }
%union.anon.169 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.170 = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.80, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.anon.2 = type { i16, i16 }
%struct.udp_hslot = type { %struct.hlist_head, i32, %struct.spinlock, [4 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.171, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.172, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.173, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.171 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.172 = type { ptr }
%union.anon.173 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.195 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.201, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.165, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.163 }
%union.anon.4 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.165 = type { ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ip6_tnl_encap_ops = type { ptr, ptr, ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.72, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.72 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.75, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.75 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.40 = type { i16, i16 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.203, i32, i32, ptr }
%union.anon.203 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.anon.55 = type { i16, i16 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.udp_iter_state = type { %struct.seq_net_private, i32, ptr }
%struct.seq_net_private = type { ptr, ptr }
%struct.bpf_sk_lookup_kern = type { i16, i16, i16, i16, %struct.anon.207, %struct.anon.208, ptr, i32, i8 }
%struct.anon.207 = type { i32, i32 }
%struct.anon.208 = type { ptr, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { ptr, %union.anon.119 }
%union.anon.119 = type { i64 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { %struct.anon.116, [0 x %struct.sock_filter] }
%struct.anon.116 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }

@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@bpf_sk_lookup_enabled = external dso_local global %struct.static_key_false, align 4
@__kstrtab___udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___udp6_lib_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp6_lib_lookup to i32), ptr @__kstrtab___udp6_lib_lookup, ptr @__kstrtabns___udp6_lib_lookup }, section "___ksymtab_gpl+__udp6_lib_lookup", align 4
@udp_table = external dso_local global %struct.udp_table, align 4
@__kstrtab_udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_lib_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_lib_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_lib_lookup to i32), ptr @__kstrtab_udp6_lib_lookup, ptr @__kstrtabns_udp6_lib_lookup }, section "___ksymtab_gpl+udp6_lib_lookup", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv6/udp.c\00", [17 x i8] zeroinitializer }, align 32
@udpv6_encap_needed_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_udpv6_encap_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_udpv6_encap_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_udpv6_encap_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udpv6_encap_enable to i32), ptr @__kstrtab_udpv6_encap_enable, ptr @__kstrtabns_udpv6_encap_enable }, section "___ksymtab+udpv6_encap_enable", align 4
@__udp6_lib_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__udp6_lib_rcv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__udp6_lib_rcv\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UDP%sv6: short packet: From [%pI6c]:%u %d/%d to [%pI6c]:%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-Lite\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@udpv6_sendmsg.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str, ptr @.str.9, i8 1, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"udpv6_sendmsg\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"udp cork app bug 2\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [164 x i8], [60 x i8] } { [164 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", [60 x i8] zeroinitializer }, align 32
@udp6_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @udp_seq_start, ptr @udp_seq_stop, ptr @udp_seq_next, ptr @udp6_seq_show }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_udp6_seq_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp6_seq_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_udp6_seq_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp6_seq_ops to i32), ptr @__kstrtab_udp6_seq_ops, ptr @__kstrtabns_udp6_seq_ops }, section "___ksymtab+udp6_seq_ops", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@udp6_seq_afinfo = internal global { %struct.udp_seq_afinfo, [24 x i8] } { %struct.udp_seq_afinfo { i16 10, ptr @udp_table }, [24 x i8] zeroinitializer }, align 32
@udp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@sysctl_udp_mem = external dso_local global [3 x i32], align 4
@udpv6_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @udp_lib_close, ptr @udpv6_pre_connect, ptr @ip6_datagram_connect, ptr @udp_disconnect, ptr null, ptr @udp_ioctl, ptr @udp_init_sock, ptr @udpv6_destroy_sock, ptr null, ptr @udpv6_setsockopt, ptr @udpv6_getsockopt, ptr null, ptr @udpv6_sendmsg, ptr @udpv6_recvmsg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip6_datagram_release_cb, ptr @udp_lib_hash, ptr @udp_lib_unhash, ptr @udp_v6_rehash, ptr @udp_v6_get_port, ptr @udp_lib_unhash, ptr @udp_bpf_update_proto, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udp_memory_allocated, ptr null, ptr null, ptr @sysctl_udp_mem, ptr null, ptr null, i32 1384, i32 1388, i32 0, i8 0, ptr null, i32 1536, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.166 { ptr @udp_table }, ptr null, [32 x i8] c"UDPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @udp_abort }, [36 x i8] zeroinitializer }, align 32
@udpv6_protocol = internal global { %struct.inet6_protocol, [44 x i8] } { %struct.inet6_protocol { ptr @udp_v6_early_demux, ptr @udp_v6_early_demux, ptr @udpv6_rcv, ptr @udpv6_err, i32 3 }, [44 x i8] zeroinitializer }, align 32
@udpv6_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 17, ptr @udpv6_prot, ptr @inet6_dgram_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@udp6_lib_lookup2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@udp6_ehashfn.udp6_ehash_secret = internal global i32 0, section ".data..read_mostly", align 4
@udp6_ehashfn.udp_ipv6_hash_secret = internal global i32 0, section ".data..read_mostly", align 4
@udp6_ehashfn.___done = internal global i8 0, section ".data.once", align 1
@udp6_ehashfn.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@udp6_ehashfn.___done.13 = internal global i8 0, section ".data.once", align 1
@udp6_ehashfn.___once_key.14 = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@reuseport_has_conns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/net/sock_reuseport.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@bpf_sk_lookup_run_v6.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@ip6tun_encaps = external dso_local global [8 x ptr], align 4
@__udp6_lib_err_encap_no_sk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@udpv6_queue_rcv_one_skb.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str, ptr @.str.27, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"udpv6_queue_rcv_one_skb\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UDPLITE6: partial coverage %d while full coverage %d requested\0A\00", [32 x i8] zeroinitializer }, align 32
@udpv6_queue_rcv_one_skb.descriptor.28 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.26, ptr @.str, ptr @.str.29, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UDPLITE6: coverage %d too small, need min %d\0A\00", [50 x i8] zeroinitializer }, align 32
@udp_post_segment_fix_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/udp.h\00", [46 x i8] zeroinitializer }, align 32
@__udp6_lib_mcast_deliver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__udp6_lib_mcast_deliver.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@udp6_csum_zero_error.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.32, ptr @.str, ptr @.str.33, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"udp6_csum_zero_error\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"IPv6: udp checksum is 0 for [%pI6c]:%u->[%pI6c]:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@txopt_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/ipv6.h\00", [45 x i8] zeroinitializer }, align 32
@udp_v6_early_demux.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__udp6_lib_demux_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inet6_dgram_ops = external dso_local constant %struct.proto_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 137]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967191]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967191]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 136]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 136]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 450, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"udpv6_encap_needed_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 455, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 961, i32 7 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1007, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1559, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1676, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"udp6_seq_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1688, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1703, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"udp6_seq_afinfo\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1696, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"udpv6_prot\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1717, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"udpv6_protocol\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1663, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"udpv6_protosw\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1749, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 177, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 70, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 72, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [32 x i8] c"../include/net/sock_reuseport.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 52, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 695, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1487, i32 14 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 271, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 230, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 214, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 313, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1011, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 306, i32 9 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 721, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 726, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"../include/net/udp.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 500, i32 2 }
@___asan_gen_.153 = private constant [18 x i8] c"../net/ipv6/udp.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 806, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"../include/net/ipv6.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 379, i32 8 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab___udp6_lib_lookup, ptr @__ksymtab_udp6_lib_lookup, ptr @__ksymtab_udp6_seq_ops, ptr @__ksymtab_udpv6_encap_enable, ptr @.str, ptr @udpv6_encap_needed_key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @udp6_seq_ops, ptr @.str.11, ptr @udp6_seq_afinfo, ptr @udpv6_prot, ptr @udpv6_protocol, ptr @udpv6_protosw, ptr @.str.12, ptr @udp6_ehashfn.___once_key, ptr @udp6_ehashfn.___once_key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_encap_needed_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp6_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp6_seq_afinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp6_ehashfn.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp6_ehashfn.___once_key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp_v6_get_port(ptr noundef %sk, i16 noundef zeroext %snum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %conv = zext i16 %snum to i32
  %call1 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %1, ptr noundef nonnull @in6addr_any, i32 noundef %conv)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %call3 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %1, ptr noundef %skc_v6_rcv_saddr, i32 noundef 0)
  %conv4 = trunc i32 %call3 to i16
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 1
  %arrayidx = getelementptr [2 x i16], ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv4, ptr %arrayidx, align 2
  %call8 = tail call i32 @udp_lib_get_port(ptr noundef %sk, i16 noundef zeroext %snum, i32 noundef %call1) #11
  ret i32 %call8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipv6_portaddr_hash(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %addr6, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %0 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash_mix.i, align 8
  %2 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr6, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %5, %3
  %arrayidx4.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %7
  %arrayidx7.i = getelementptr [4 x i32], ptr %addr6, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add1.i = add i32 %1, -559038733
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #11
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add1.i, %sub.i.i
  %or.i52.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #11
  %sub5.i.i = sub i32 %xor3.i.i, %or.i52.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i53.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #11
  %sub8.i.i = sub i32 %xor6.i.i, %or.i53.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i54.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #11
  %sub11.i.i = sub i32 %xor9.i.i, %or.i54.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i55.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #11
  %sub14.i.i = sub i32 %xor12.i.i, %or.i55.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i56.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #11
  %sub17.i.i = sub i32 %xor15.i.i, %or.i56.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i57.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i, i32 %sub17.i.i, i32 24) #11
  %sub20.i.i = sub i32 %xor18.i.i, %or.i57.i.i
  br label %if.end9

if.else:                                          ; preds = %entry
  %xor.i = xor i32 %7, 65535
  %or5.i18 = or i32 %xor.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i18)
  %cmp.i19 = icmp eq i32 %or5.i18, 0
  br i1 %cmp.i19, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add1.i20 = add i32 %1, -559038733
  %add.i.i = add i32 %9, %add1.i20
  %or.i.i.i21 = tail call i32 @llvm.fshl.i32(i32 %add1.i20, i32 %add1.i20, i32 14) #11
  %sub.i.i22 = sub i32 0, %or.i.i.i21
  %xor3.i.i23 = xor i32 %add.i.i, %sub.i.i22
  %or.i52.i.i24 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i22, i32 %sub.i.i22, i32 11) #11
  %sub5.i.i25 = sub i32 %xor3.i.i23, %or.i52.i.i24
  %xor6.i.i26 = xor i32 %sub5.i.i25, %add1.i20
  %or.i53.i.i27 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i25, i32 %sub5.i.i25, i32 25) #11
  %sub8.i.i28 = sub i32 %xor6.i.i26, %or.i53.i.i27
  %xor9.i.i29 = xor i32 %sub8.i.i28, %sub.i.i22
  %or.i54.i.i30 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i28, i32 %sub8.i.i28, i32 16) #11
  %sub11.i.i31 = sub i32 %xor9.i.i29, %or.i54.i.i30
  %xor12.i.i32 = xor i32 %sub11.i.i31, %sub5.i.i25
  %or.i55.i.i33 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i31, i32 %sub11.i.i31, i32 4) #11
  %sub14.i.i34 = sub i32 %xor12.i.i32, %or.i55.i.i33
  %xor15.i.i35 = xor i32 %sub14.i.i34, %sub8.i.i28
  %or.i56.i.i36 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i34, i32 %sub14.i.i34, i32 14) #11
  %sub17.i.i37 = sub i32 %xor15.i.i35, %or.i56.i.i36
  %xor18.i.i38 = xor i32 %sub17.i.i37, %sub11.i.i31
  %or.i57.i.i39 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i37, i32 %sub17.i.i37, i32 24) #11
  %sub20.i.i40 = sub i32 %xor18.i.i38, %or.i57.i.i39
  br label %if.end9

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add1.i41 = add i32 %1, -559038721
  %add2.i = add i32 %3, %add1.i41
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %add4.i = add i32 %11, %add1.i41
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %13, %add1.i41
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #11
  %xor.i42 = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i42
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i42, i32 %xor.i42, i32 6) #11
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i42, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #11
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #11
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #11
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #11
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add27.i = add i32 %xor22.i, %add23.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %add36.i = add i32 %add23.i, %15
  %xor37.i = xor i32 %xor26.i, %add27.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add27.i, i32 %add27.i, i32 14) #11
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #11
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add27.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #11
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #11
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #11
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #11
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #11
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4, %if.then
  %hash.0 = phi i32 [ %sub20.i.i, %if.then ], [ %sub20.i.i40, %if.then4 ], [ %sub57.i, %if.else6 ]
  %xor = xor i32 %hash.0, %port
  ret i32 %xor
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_get_port(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udp_v6_rehash(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_num, align 2
  %conv = zext i16 %4 to i32
  %call4 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %1, ptr noundef %skc_v6_rcv_saddr, i32 noundef %conv)
  %conv5 = trunc i32 %call4 to i16
  tail call void @udp_lib_rehash(ptr noundef %sk, i16 noundef zeroext %conv5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_lib_rehash(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__udp6_lib_lookup(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif, i32 noundef %sdif, ptr noundef readonly %udptable, ptr noundef %skb) #0 align 64 {
entry:
  %sk.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %dport to i32
  %call = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef %daddr, i32 noundef %conv)
  %mask = getelementptr inbounds %struct.udp_table, ptr %udptable, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %and = and i32 %1, %call
  %hash21 = getelementptr inbounds %struct.udp_table, ptr %udptable, i32 0, i32 1
  %2 = ptrtoint ptr %hash21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash21, align 4
  %arrayidx = getelementptr %struct.udp_hslot, ptr %3, i32 %and
  %call3 = tail call fastcc ptr @udp6_lib_lookup2(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i32 noundef %conv, i32 noundef %dif, i32 noundef %sdif, ptr noundef %arrayidx, ptr noundef %skb)
  %tobool.not.i = icmp eq ptr %call3, null
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true.done_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_sk_lookup_enabled, ptr blockaddress(@__udp6_lib_lookup, %if.then10)) #11
          to label %if.end15 [label %if.then10], !srcloc !122

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sk.i) #11
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %sk.i, align 4, !annotation !123
  %cmp.not.i = icmp eq ptr %udptable, @udp_table
  br i1 %cmp.not.i, label %if.end.i, label %udp6_lookup_run_bpf.exit.thread

udp6_lookup_run_bpf.exit.thread:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk.i) #11
  br label %if.end15

if.end.i:                                         ; preds = %if.then10
  %call.i = call fastcc zeroext i1 @bpf_sk_lookup_run_v6(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif, ptr noundef nonnull %sk.i) #11
  br i1 %call.i, label %if.end.i.udp6_lookup_run_bpf.exit_crit_edge, label %lor.lhs.false.i

if.end.i.udp6_lookup_run_bpf.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_lookup_run_bpf.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %7 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  %cmp.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %lor.lhs.false.i.udp6_lookup_run_bpf.exit_crit_edge, label %if.end3.i

lor.lhs.false.i.udp6_lookup_run_bpf.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_lookup_run_bpf.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %skc_reuseport.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %skc_reuseport.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %skc_reuseport.i.i, align 1
  %10 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i16.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i16.i, label %if.end3.i.udp6_lookup_run_bpf.exit_crit_edge, label %land.lhs.true.i.i

if.end3.i.udp6_lookup_run_bpf.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_lookup_run_bpf.exit

land.lhs.true.i.i:                                ; preds = %if.end3.i
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.not.i.i = icmp eq i8 %12, 1
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.udp6_lookup_run_bpf.exit_crit_edge, label %lookup_reuseport.exit.i

land.lhs.true.i.i.udp6_lookup_run_bpf.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_lookup_run_bpf.exit

lookup_reuseport.exit.i:                          ; preds = %land.lhs.true.i.i
  %call.i.i = tail call fastcc i32 @udp6_ehashfn(ptr noundef %net, ptr noundef %daddr, i16 noundef zeroext %dport, ptr noundef %saddr, i16 noundef zeroext %sport) #11
  %call5.i.i = tail call ptr @reuseport_select_sock(ptr noundef nonnull %8, i32 noundef %call.i.i, ptr noundef %skb, i32 noundef 8) #11
  %tobool5.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not.i, label %lookup_reuseport.exit.i.udp6_lookup_run_bpf.exit_crit_edge, label %if.then6.i

lookup_reuseport.exit.i.udp6_lookup_run_bpf.exit_crit_edge: ; preds = %lookup_reuseport.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_lookup_run_bpf.exit

if.then6.i:                                       ; preds = %lookup_reuseport.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %sk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %sk.i, align 4
  br label %udp6_lookup_run_bpf.exit

udp6_lookup_run_bpf.exit:                         ; preds = %if.then6.i, %lookup_reuseport.exit.i.udp6_lookup_run_bpf.exit_crit_edge, %land.lhs.true.i.i.udp6_lookup_run_bpf.exit_crit_edge, %if.end3.i.udp6_lookup_run_bpf.exit_crit_edge, %lor.lhs.false.i.udp6_lookup_run_bpf.exit_crit_edge, %if.end.i.udp6_lookup_run_bpf.exit_crit_edge
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0.i66 = load ptr, ptr %sk.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk.i) #11
  %tobool12.not = icmp ne ptr %retval.0.i66, null
  %tobool.not.i.not = xor i1 %tobool.not.i, true
  %brmerge = select i1 %tobool12.not, i1 true, i1 %tobool.not.i.not
  %retval.0.i66.mux = select i1 %tobool12.not, ptr %retval.0.i66, ptr %call3
  br i1 %brmerge, label %udp6_lookup_run_bpf.exit.done_crit_edge, label %udp6_lookup_run_bpf.exit.if.end18_crit_edge

udp6_lookup_run_bpf.exit.if.end18_crit_edge:      ; preds = %udp6_lookup_run_bpf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

udp6_lookup_run_bpf.exit.done_crit_edge:          ; preds = %udp6_lookup_run_bpf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end15:                                         ; preds = %udp6_lookup_run_bpf.exit.thread, %if.end
  br i1 %tobool.not.i, label %if.end15.if.end18_crit_edge, label %if.end15.done_crit_edge

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %udp6_lookup_run_bpf.exit.if.end18_crit_edge
  %call20 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef nonnull @in6addr_any, i32 noundef %conv)
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and22 = and i32 %16, %call20
  %17 = ptrtoint ptr %hash21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash21, align 4
  %arrayidx24 = getelementptr %struct.udp_hslot, ptr %18, i32 %and22
  %call26 = tail call fastcc ptr @udp6_lib_lookup2(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef nonnull @in6addr_any, i32 noundef %conv, i32 noundef %dif, i32 noundef %sdif, ptr noundef %arrayidx24, ptr noundef %skb)
  br label %done

done:                                             ; preds = %if.end18, %if.end15.done_crit_edge, %udp6_lookup_run_bpf.exit.done_crit_edge, %land.lhs.true.done_crit_edge
  %result.0 = phi ptr [ %call3, %if.end15.done_crit_edge ], [ %call26, %if.end18 ], [ %call3, %land.lhs.true.done_crit_edge ], [ %retval.0.i66.mux, %udp6_lookup_run_bpf.exit.done_crit_edge ]
  %cmp.i67 = icmp ugt ptr %result.0, inttoptr (i32 -4096 to ptr)
  %.result.0 = select i1 %cmp.i67, ptr null, ptr %result.0
  ret ptr %.result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @udp6_lib_lookup2(ptr noundef readonly %net, ptr nocapture noundef readonly %saddr, i16 noundef zeroext %sport, ptr nocapture noundef readonly %daddr, i32 noundef %hnum, i32 noundef %dif, i32 noundef %sdif, ptr noundef %hslot2, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b63 = load i1, ptr @udp6_lib_lookup2.__warned, align 1
  br i1 %.b63, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @udp6_lib_lookup2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 177, ptr noundef nonnull @.str.12) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %hslot2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hslot2, align 8
  %tobool10.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -24
  %tobool12.not8086 = icmp eq ptr %add.ptr, null
  %tobool12.not80 = or i1 %tobool10.not, %tobool12.not8086
  br i1 %tobool12.not80, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %conv = trunc i32 %hnum to i16
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %arrayidx6.i82.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %arrayidx11.i86.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %arrayidx17.i90.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %sysctl_udp_l3mdev_accept.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdif)
  %tobool1.not.i.i.i = icmp eq i32 %sdif, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sk.083 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr39, %for.inc.for.body_crit_edge ]
  %result.082 = phi ptr [ null, %for.body.lr.ph ], [ %result.1, %for.inc.for.body_crit_edge ]
  %badness.081 = phi i32 [ -1, %for.body.lr.ph ], [ %badness.1, %for.inc.for.body_crit_edge ]
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %net
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %for.body.compute_score.exit_crit_edge

for.body.compute_score.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %conv)
  %cmp.not.i = icmp eq i16 %6, %conv
  br i1 %cmp.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.compute_score.exit_crit_edge

lor.lhs.false.i.compute_score.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %cmp10.not.i = icmp eq i16 %8, 10
  br i1 %cmp10.not.i, label %if.end.i, label %lor.lhs.false7.i.compute_score.exit_crit_edge

lor.lhs.false7.i.compute_score.exit_crit_edge:    ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

if.end.i:                                         ; preds = %lor.lhs.false7.i
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 11
  %9 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr, align 4
  %xor.i.i = xor i32 %12, %10
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 11, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i.i, align 4
  %15 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %16, %14
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 11, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i.i, align 4
  %19 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %20, %18
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 11, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx15.i.i, align 4
  %23 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %24, %22
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i76.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i76.i, label %if.end15.i, label %if.end.i.compute_score.exit_crit_edge

if.end.i.compute_score.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

if.end15.i:                                       ; preds = %if.end.i
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool19.not.i = icmp eq i16 %27, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end30.i_crit_edge, label %if.then20.i

if.end15.i.if.end30.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %sport)
  %cmp26.not.i = icmp eq i16 %27, %sport
  br i1 %cmp26.not.i, label %if.then20.i.if.end30.i_crit_edge, label %if.then20.i.compute_score.exit_crit_edge

if.then20.i.compute_score.exit_crit_edge:         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

if.then20.i.if.end30.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then20.i.if.end30.i_crit_edge, %if.end15.i.if.end30.i_crit_edge
  %score.0.i = phi i32 [ 0, %if.end15.i.if.end30.i_crit_edge ], [ 1, %if.then20.i.if.end30.i_crit_edge ]
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 10
  %28 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 10, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i77.i = or i32 %31, %29
  %arrayidx4.i78.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 10, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx4.i78.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i78.i, align 4
  %or5.i.i = or i32 %or.i77.i, %33
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %sk.083, i32 0, i32 10, i32 0, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i79.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i79.i, label %if.end30.i.if.end40.i_crit_edge, label %if.then33.i

if.end30.i.if.end40.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then33.i:                                      ; preds = %if.end30.i
  %36 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saddr, align 4
  %xor.i80.i = xor i32 %37, %29
  %38 = ptrtoint ptr %arrayidx6.i82.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6.i82.i, align 4
  %xor7.i83.i = xor i32 %39, %31
  %or.i84.i = or i32 %xor7.i83.i, %xor.i80.i
  %40 = ptrtoint ptr %arrayidx11.i86.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11.i86.i, align 4
  %xor12.i87.i = xor i32 %41, %33
  %or13.i88.i = or i32 %or.i84.i, %xor12.i87.i
  %42 = ptrtoint ptr %arrayidx17.i90.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.i90.i, align 4
  %xor18.i91.i = xor i32 %43, %35
  %or19.i92.i = or i32 %or13.i88.i, %xor18.i91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i92.i)
  %cmp.i93.i = icmp eq i32 %or19.i92.i, 0
  br i1 %cmp.i93.i, label %if.end38.i, label %if.then33.i.compute_score.exit_crit_edge

if.then33.i.compute_score.exit_crit_edge:         ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

if.end38.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc39.i = add nuw nsw i32 %score.0.i, 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end38.i, %if.end30.i.if.end40.i_crit_edge
  %score.1.i = phi i32 [ %score.0.i, %if.end30.i.if.end40.i_crit_edge ], [ %inc39.i, %if.end38.i ]
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 6
  %44 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i.i, label %udp_sk_bound_dev_eq.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %dif)
  %cmp.i.i.i = icmp eq i32 %45, %dif
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sdif)
  %cmp4.i.i.i = icmp eq i32 %45, %sdif
  %spec.select9.i.i.i = or i1 %cmp.i.i.i, %cmp4.i.i.i
  br i1 %spec.select9.i.i.i, label %if.end.i.i.i.if.end45.i_crit_edge, label %if.end.i.i.i.compute_score.exit_crit_edge

if.end.i.i.i.compute_score.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

if.end.i.i.i.if.end45.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

udp_sk_bound_dev_eq.exit.i:                       ; preds = %if.end40.i
  %46 = ptrtoint ptr %sysctl_udp_l3mdev_accept.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sysctl_udp_l3mdev_accept.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i.i = icmp ne i8 %47, 0
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.i.i
  br i1 %spec.select.i.i.i, label %udp_sk_bound_dev_eq.exit.i.if.end45.i_crit_edge, label %udp_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge

udp_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge: ; preds = %udp_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compute_score.exit

udp_sk_bound_dev_eq.exit.i.if.end45.i_crit_edge:  ; preds = %udp_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %udp_sk_bound_dev_eq.exit.i.if.end45.i_crit_edge, %if.end.i.i.i.if.end45.i_crit_edge
  %not.tobool.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  %inc50.i = zext i1 %not.tobool.not.i.i.i to i32
  %spec.select.i = add nuw nsw i32 %score.1.i, %inc50.i
  %48 = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 18
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %54)
  %cmp54.i = icmp eq i32 %50, %54
  %inc57.i = zext i1 %cmp54.i to i32
  %score.3.i = add nuw nsw i32 %spec.select.i, %inc57.i
  br label %compute_score.exit

compute_score.exit:                               ; preds = %if.end45.i, %udp_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge, %if.end.i.i.i.compute_score.exit_crit_edge, %if.then33.i.compute_score.exit_crit_edge, %if.then20.i.compute_score.exit_crit_edge, %if.end.i.compute_score.exit_crit_edge, %lor.lhs.false7.i.compute_score.exit_crit_edge, %lor.lhs.false.i.compute_score.exit_crit_edge, %for.body.compute_score.exit_crit_edge
  %retval.0.i = phi i32 [ %score.3.i, %if.end45.i ], [ -1, %lor.lhs.false7.i.compute_score.exit_crit_edge ], [ -1, %lor.lhs.false.i.compute_score.exit_crit_edge ], [ -1, %for.body.compute_score.exit_crit_edge ], [ -1, %if.end.i.compute_score.exit_crit_edge ], [ -1, %if.then20.i.compute_score.exit_crit_edge ], [ -1, %if.then33.i.compute_score.exit_crit_edge ], [ -1, %udp_sk_bound_dev_eq.exit.i.compute_score.exit_crit_edge ], [ -1, %if.end.i.i.i.compute_score.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %badness.081)
  %cmp = icmp sgt i32 %retval.0.i, %badness.081
  br i1 %cmp, label %if.then15, label %compute_score.exit.for.inc_crit_edge

compute_score.exit.for.inc_crit_edge:             ; preds = %compute_score.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then15:                                        ; preds = %compute_score.exit
  %skc_reuseport.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 5
  %55 = ptrtoint ptr %skc_reuseport.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i = load i8, ptr %skc_reuseport.i, align 1
  %56 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.then15.for.inc_crit_edge, label %land.lhs.true.i

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then15
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 4
  %57 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp.not.i66 = icmp eq i8 %58, 1
  br i1 %cmp.not.i66, label %land.lhs.true.i.for.inc_crit_edge, label %lookup_reuseport.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lookup_reuseport.exit:                            ; preds = %land.lhs.true.i
  %call.i = tail call fastcc i32 @udp6_ehashfn(ptr noundef %net, ptr noundef %daddr, i16 noundef zeroext %conv, ptr noundef %saddr, i16 noundef zeroext %sport) #11
  %call5.i = tail call ptr @reuseport_select_sock(ptr noundef nonnull %sk.083, i32 noundef %call.i, ptr noundef %skb, i32 noundef 8) #11
  %tobool17.not = icmp eq ptr %call5.i, null
  br i1 %tobool17.not, label %lookup_reuseport.exit.for.inc_crit_edge, label %land.lhs.true18

lookup_reuseport.exit.for.inc_crit_edge:          ; preds = %lookup_reuseport.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true18:                                  ; preds = %lookup_reuseport.exit
  %59 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %land.lhs.true18.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true18.rcu_read_lock.exit.i_crit_edge:   ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true18
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true18.rcu_read_lock.exit.i_crit_edge
  %sk_reuseport_cb.i = getelementptr inbounds %struct.sock, ptr %sk.083, i32 0, i32 83
  %63 = ptrtoint ptr %sk_reuseport_cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %sk_reuseport_cb.i, align 8
  %call.i68 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i70:                                ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i70.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i70.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i70
  %.b1.i = load i1, ptr @reuseport_has_conns.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i71

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i71:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @reuseport_has_conns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 52, ptr noundef nonnull @.str.2) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i71, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i70.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %64, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end19.i_crit_edge, label %if.end13.i

do.end7.i.if.end19.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end13.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %has_conns14.i = getelementptr inbounds %struct.sock_reuseport, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %has_conns14.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load15.i = load i8, ptr %has_conns14.i, align 4
  %66 = and i8 %bf.load15.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool17.i = icmp ne i8 %66, 0
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end13.i, %do.end7.i.if.end19.i_crit_edge
  %ret.0.off0.i = phi i1 [ %tobool17.i, %if.end13.i ], [ false, %do.end7.i.if.end19.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2.i, label %if.end19.i.reuseport_has_conns.exit_crit_edge, label %land.lhs.true.i5.i

if.end19.i.reuseport_has_conns.exit_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reuseport_has_conns.exit

land.lhs.true.i5.i:                               ; preds = %if.end19.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reuseport_has_conns.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reuseport_has_conns.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %reuseport_has_conns.exit

reuseport_has_conns.exit:                         ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.reuseport_has_conns.exit_crit_edge, %land.lhs.true.i5.i.reuseport_has_conns.exit_crit_edge, %if.end19.i.reuseport_has_conns.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %67 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i9.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %ret.0.off0.i, label %reuseport_has_conns.exit.for.inc_crit_edge, label %reuseport_has_conns.exit.cleanup_crit_edge

reuseport_has_conns.exit.cleanup_crit_edge:       ; preds = %reuseport_has_conns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

reuseport_has_conns.exit.for.inc_crit_edge:       ; preds = %reuseport_has_conns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %reuseport_has_conns.exit.for.inc_crit_edge, %lookup_reuseport.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.then15.for.inc_crit_edge, %compute_score.exit.for.inc_crit_edge
  %badness.1 = phi i32 [ %badness.081, %compute_score.exit.for.inc_crit_edge ], [ %retval.0.i, %lookup_reuseport.exit.for.inc_crit_edge ], [ %retval.0.i, %reuseport_has_conns.exit.for.inc_crit_edge ], [ %retval.0.i, %land.lhs.true.i.for.inc_crit_edge ], [ %retval.0.i, %if.then15.for.inc_crit_edge ]
  %result.1 = phi ptr [ %result.082, %compute_score.exit.for.inc_crit_edge ], [ %sk.083, %lookup_reuseport.exit.for.inc_crit_edge ], [ %call5.i, %reuseport_has_conns.exit.for.inc_crit_edge ], [ %sk.083, %land.lhs.true.i.for.inc_crit_edge ], [ %sk.083, %if.then15.for.inc_crit_edge ]
  %71 = getelementptr inbounds %struct.sock_common, ptr %sk.083, i32 0, i32 7
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %71, align 8
  %tobool35.not = icmp eq ptr %73, null
  %add.ptr39 = getelementptr i8, ptr %73, i32 -24
  %tobool12.not87 = icmp eq ptr %add.ptr39, null
  %tobool12.not = or i1 %tobool35.not, %tobool12.not87
  br i1 %tobool12.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %reuseport_has_conns.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %result.1, %for.inc.cleanup_crit_edge ], [ %call5.i, %reuseport_has_conns.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udp6_lib_lookup_skb(ptr noundef readonly %skb, i16 noundef zeroext %sport, i16 noundef zeroext %dport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %4 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 8
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i = icmp eq i16 %11, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge, label %entry.inet6_sdif.exit_crit_edge, label %if.then.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call4 = tail call ptr @__udp6_lib_lookup(ptr noundef %8, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %cond.i, i32 noundef %retval.0.i, ptr noundef nonnull @udp_table, ptr noundef null)
  ret ptr %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udp6_lib_lookup(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__udp6_lib_lookup(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %dif, i32 noundef 0, ptr noundef nonnull @udp_table, ptr noundef null)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %2 = phi i32 [ %1, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !127

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #11
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %call
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit, %entry.if.end_crit_edge
  %sk.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  ret ptr %sk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %noblock, i32 noundef %flags, ptr noundef %addr_len) #0 align 64 {
entry:
  %gso_size.i = alloca i32, align 4
  %off = alloca i32, align 4
  %err = alloca i32, align 4
  %__unused_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !123
  %and = and i32 %flags, 2
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %6)
  %cmp = icmp eq i16 %6, 136
  %and3 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @ipv6_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #11
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %rxpmtu = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 20
  %7 = ptrtoint ptr %rxpmtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxpmtu, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %rxopt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %9 = ptrtoint ptr %rxopt to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %rxopt, align 4
  %10 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @ipv6_recv_rxpmtu(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #11
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %sk_peek_off.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 27
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %skc_net.i525 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %reader_queue = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 17
  br label %try_again

try_again:                                        ; preds = %if.end401, %if.end10
  br i1 %tobool.not.i, label %try_again.sk_peek_offset.exit_crit_edge, label %do.end.i, !prof !127

try_again.sk_peek_offset.exit_crit_edge:          ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_peek_offset.exit

do.end.i:                                         ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sk_peek_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_peek_off.i, align 8
  br label %sk_peek_offset.exit

sk_peek_offset.exit:                              ; preds = %do.end.i, %try_again.sk_peek_offset.exit_crit_edge
  %retval.0.i521 = phi i32 [ %12, %do.end.i ], [ 0, %try_again.sk_peek_offset.exit_crit_edge ]
  %13 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i521, ptr %off, align 4
  %call12 = call ptr @__skb_recv_udp(ptr noundef %sk, i32 noundef %flags, i32 noundef %noblock, ptr noundef nonnull %off, ptr noundef nonnull %err) #11
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %sk_peek_offset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err, align 4
  br label %cleanup

if.end15:                                         ; preds = %sk_peek_offset.exit
  %cond.in.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 6
  %16 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i522 = load i32, ptr %cond.in.i, align 4
  %17 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %off, align 4
  %sub = sub i32 %cond.i522, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp17 = icmp ult i32 %sub, %len
  br i1 %cmp17, label %if.end15.if.end25_crit_edge, label %if.else

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i522, i32 %len)
  %cmp21 = icmp ugt i32 %cond.i522, %len
  br i1 %cmp21, label %if.then23, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_flags, align 4
  %or = or i32 %20, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %copied.0 = phi i32 [ %len, %if.then23 ], [ %len, %if.else.if.end25_crit_edge ], [ %sub, %if.end15.if.end25_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %22)
  %cmp27 = icmp eq i16 %22, 2048
  %23 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %24)
  %cmp32 = icmp eq i16 %24, 136
  %25 = ptrtoint ptr %skc_net.i525 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skc_net.i525, align 4
  br i1 %cmp27, label %cond.true, label %cond.false39

cond.true:                                        ; preds = %if.end25
  br i1 %cmp32, label %cond.true34, label %cond.false

cond.true34:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_statistics = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 9
  br label %cond.end52

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %udp_statistics = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 4
  br label %cond.end52

cond.false39:                                     ; preds = %if.end25
  br i1 %cmp32, label %cond.true44, label %cond.false47

cond.true44:                                      ; preds = %cond.false39
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 10
  br label %cond.end52

cond.false47:                                     ; preds = %cond.false39
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 5
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false47, %cond.true44, %cond.false, %cond.true34
  %cond53.in = phi ptr [ %udplite_statistics, %cond.true34 ], [ %udp_statistics, %cond.false ], [ %udplite_stats_in6, %cond.true44 ], [ %udp_stats_in6, %cond.false47 ]
  %27 = ptrtoint ptr %cond53.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %cond53 = load ptr, ptr %cond53.in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %copied.0, i32 %cond.i522)
  %cmp54 = icmp uge i32 %copied.0, %cond.i522
  %or.cond = and i1 %tobool.not.i, %cmp54
  br i1 %or.cond, label %lor.lhs.false57, label %cond.end52.if.then62_crit_edge

cond.end52.if.then62_crit_edge:                   ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

lor.lhs.false57:                                  ; preds = %cond.end52
  br i1 %cmp, label %land.lhs.true59, label %lor.lhs.false57.lor.lhs.false73_crit_edge

lor.lhs.false57.lor.lhs.false73_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false73

land.lhs.true59:                                  ; preds = %lor.lhs.false57
  %partial_cov = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3, i32 26
  %28 = ptrtoint ptr %partial_cov to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %partial_cov, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool61.not = icmp eq i8 %29, 0
  br i1 %tobool61.not, label %land.lhs.true59.lor.lhs.false73_crit_edge, label %land.lhs.true59.if.then62_crit_edge

land.lhs.true59.if.then62_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

land.lhs.true59.lor.lhs.false73_crit_edge:        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false73

if.then62:                                        ; preds = %land.lhs.true59.if.then62_crit_edge, %cond.end52.if.then62_crit_edge
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %31 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %31)
  %cmp.i.i = icmp ne i16 %31, 1
  %32 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i.i = icmp eq i16 %32, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then62.if.then76_crit_edge

if.then62.if.then76_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.rhs.i.i:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %31)
  %cmp12.i.i = icmp eq i16 %31, 3
  br i1 %cmp12.i.i, label %udp_skb_csum_unnecessary.exit, label %lor.rhs.i.i.lor.rhs_crit_edge

lor.rhs.i.i.lor.rhs_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

udp_skb_csum_unnecessary.exit:                    ; preds = %lor.rhs.i.i
  %33 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %conv.i.i.i = zext i16 %35 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %phi.cmp.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %phi.cmp.i, label %udp_skb_csum_unnecessary.exit.if.then76_crit_edge, label %udp_skb_csum_unnecessary.exit.lor.rhs_crit_edge

udp_skb_csum_unnecessary.exit.lor.rhs_crit_edge:  ; preds = %udp_skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

udp_skb_csum_unnecessary.exit.if.then76_crit_edge: ; preds = %udp_skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.rhs:                                          ; preds = %udp_skb_csum_unnecessary.exit.lor.rhs_crit_edge, %lor.rhs.i.i.lor.rhs_crit_edge
  %cscov.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3, i32 24
  %40 = ptrtoint ptr %cscov.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cscov.i, align 8
  %conv.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cond.in.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv.i)
  %cmp.i = icmp eq i32 %43, %conv.i
  br i1 %cmp.i, label %cond.true.i526, label %cond.false.i

cond.true.i526:                                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %call12) #11
  br label %lor.end

cond.false.i:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call zeroext i16 @__skb_checksum_complete_head(ptr noundef nonnull %call12, i32 noundef %conv.i) #11
  br label %lor.end

lor.end:                                          ; preds = %cond.false.i, %cond.true.i526
  %cond.in.i527 = phi i16 [ %call.i, %cond.true.i526 ], [ %call7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in.i527)
  %tobool66.not = icmp eq i16 %cond.in.i527, 0
  br i1 %tobool66.not, label %lor.end.if.then76_crit_edge, label %lor.end.csum_copy_err_crit_edge

lor.end.csum_copy_err_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_copy_err

lor.end.if.then76_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.lhs.false73:                                  ; preds = %land.lhs.true59.lor.lhs.false73_crit_edge, %lor.lhs.false57.lor.lhs.false73_crit_edge
  %ip_summed.i.i528 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15
  %44 = ptrtoint ptr %ip_summed.i.i528 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i529 = load i16, ptr %ip_summed.i.i528, align 8
  %bf.lshr.i.i530 = lshr i16 %bf.load.i.i529, 9
  %45 = and i16 %bf.lshr.i.i530, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %45)
  %cmp.i.i531 = icmp ne i16 %45, 1
  %46 = and i16 %bf.load.i.i529, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i.i532 = icmp eq i16 %46, 0
  %or.cond.i.i533 = select i1 %cmp.i.i531, i1 %tobool.not.i.i532, i1 false
  br i1 %or.cond.i.i533, label %lor.rhs.i.i535, label %lor.lhs.false73.if.then76_crit_edge

lor.lhs.false73.if.then76_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

lor.rhs.i.i535:                                   ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %45)
  %cmp12.i.i534 = icmp eq i16 %45, 3
  br i1 %cmp12.i.i534, label %udp_skb_csum_unnecessary.exit545, label %lor.rhs.i.i535.if.else83_crit_edge

lor.rhs.i.i535.if.else83_crit_edge:               ; preds = %lor.rhs.i.i535
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83

udp_skb_csum_unnecessary.exit545:                 ; preds = %lor.rhs.i.i535
  %47 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 8
  %conv.i.i.i536 = zext i16 %49 to i32
  %data.i.i.i.i537 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i.i537 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i.i537, align 4
  %head.i.i.i.i538 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i.i538 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i.i538, align 8
  %sub.ptr.lhs.cast.i.i.i.i539 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i.i.i540 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.neg.i.i.i541 = sub i32 %conv.i.i.i536, %sub.ptr.lhs.cast.i.i.i.i539
  %sub.i.i.i542 = add i32 %sub.ptr.sub.i.neg.i.i.i541, %sub.ptr.rhs.cast.i.i.i.i540
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i542)
  %phi.cmp.i543 = icmp sgt i32 %sub.i.i.i542, -1
  br i1 %phi.cmp.i543, label %udp_skb_csum_unnecessary.exit545.if.then76_crit_edge, label %udp_skb_csum_unnecessary.exit545.if.else83_crit_edge

udp_skb_csum_unnecessary.exit545.if.else83_crit_edge: ; preds = %udp_skb_csum_unnecessary.exit545
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else83

udp_skb_csum_unnecessary.exit545.if.then76_crit_edge: ; preds = %udp_skb_csum_unnecessary.exit545
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then76:                                        ; preds = %udp_skb_csum_unnecessary.exit545.if.then76_crit_edge, %lor.lhs.false73.if.then76_crit_edge, %lor.end.if.then76_crit_edge, %udp_skb_csum_unnecessary.exit.if.then76_crit_edge, %if.then62.if.then76_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i546 = icmp eq i32 %55, 0
  %56 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %off, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  br i1 %tobool.i.not.i546, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %cmp9.i.i.i = icmp slt i32 %copied.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then78
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_to_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !127

land.rhs16.i.i.i.copy_to_iter.exit.i_crit_edge:   ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 19
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 %57
  call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %copied.0, i1 noundef zeroext true) #11
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef %add.ptr.i, i32 noundef %copied.0, ptr noundef %msg_iter) #11
  br label %copy_to_iter.exit.i

copy_to_iter.exit.i:                              ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_to_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_to_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %copied.0)
  %cmp.i547 = icmp eq i32 %retval.0.i.i, %copied.0
  br i1 %cmp.i547, label %copy_to_iter.exit.i.copy_linear_skb.exit_crit_edge, label %if.end.i

copy_to_iter.exit.i.copy_linear_skb.exit_crit_edge: ; preds = %copy_to_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_linear_skb.exit

if.end.i:                                         ; preds = %copy_to_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #11
  br label %copy_linear_skb.exit

copy_linear_skb.exit:                             ; preds = %if.end.i, %copy_to_iter.exit.i.copy_linear_skb.exit_crit_edge
  %retval.0.i548 = phi i32 [ -14, %if.end.i ], [ 0, %copy_to_iter.exit.i.copy_linear_skb.exit_crit_edge ]
  %60 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i548, ptr %err, align 4
  br label %if.end89

if.else80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %call.i549 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call12, i32 noundef %57, ptr noundef %msg_iter, i32 noundef %copied.0) #11
  %61 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i549, ptr %err, align 4
  br label %if.end89

if.else83:                                        ; preds = %udp_skb_csum_unnecessary.exit545.if.else83_crit_edge, %lor.rhs.i.i535.if.else83_crit_edge
  %62 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %off, align 4
  %call84 = call i32 @skb_copy_and_csum_datagram_msg(ptr noundef nonnull %call12, i32 noundef %63, ptr noundef %msg) #11
  %64 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call84, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call84)
  %cmp85 = icmp eq i32 %call84, -22
  br i1 %cmp85, label %if.else83.csum_copy_err_crit_edge, label %if.else83.if.end89_crit_edge

if.else83.if.end89_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.else83.csum_copy_err_crit_edge:                ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_copy_err

if.end89:                                         ; preds = %if.else83.if.end89_crit_edge, %if.else80, %copy_linear_skb.exit
  %65 = phi i32 [ %retval.0.i548, %copy_linear_skb.exit ], [ %call.i549, %if.else80 ], [ %call84, %if.else83.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool90.not = icmp eq i32 %65, 0
  br i1 %tobool90.not, label %if.end146, label %if.then94, !prof !127

if.then94:                                        ; preds = %if.end89
  br i1 %tobool.not.i, label %if.then96, label %if.then94.if.end145_crit_edge

if.then94.if.end145_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then96:                                        ; preds = %if.then94
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #11
  %66 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #11, !srcloc !128
  %67 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %arrayidx = getelementptr [10 x i32], ptr %cond53, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx to i32
  %69 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i550 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i550 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu, align 4
  %arrayidx114 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx114, align 4
  %add = add i32 %74, %68
  %75 = inttoptr i32 %add to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add115 = add i32 %77, 1
  store i32 %add115, ptr %75, align 4
  %78 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i551 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i551)
  %tobool126.not = icmp eq i32 %and.i.i551, 0
  br i1 %tobool126.not, label %if.then135, label %if.then96.do.end138_crit_edge, !prof !131

if.then96.do.end138_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

if.then135:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %if.then96.do.end138_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #11, !srcloc !132
  br label %if.end145

if.end145:                                        ; preds = %do.end138, %if.then94.if.end145_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #11
  %79 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %err, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.end89
  br i1 %tobool.not.i, label %do.body150, label %if.end146.if.end209_crit_edge

if.end146.if.end209_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

do.body150:                                       ; preds = %if.end146
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %arrayidx173 = getelementptr [10 x i32], ptr %cond53, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx173 to i32
  %83 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i552 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i552 to ptr
  %cpu176 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu176 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu176, align 4
  %arrayidx177 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx177, align 4
  %add178 = add i32 %88, %82
  %89 = inttoptr i32 %add178 to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add179 = add i32 %91, 1
  store i32 %add179, ptr %89, align 4
  %92 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i553 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i553)
  %tobool190.not = icmp eq i32 %and.i.i553, 0
  br i1 %tobool190.not, label %if.then199, label %do.body150.do.end202_crit_edge, !prof !131

do.body150.do.end202_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end202

if.then199:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end202

do.end202:                                        ; preds = %if.then199, %do.body150.do.end202_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #11, !srcloc !132
  br label %if.end209

if.end209:                                        ; preds = %do.end202, %if.end146.if.end209_crit_edge
  %93 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %and.i554 = and i32 %95, 133120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i554)
  %tobool.not.i555 = icmp eq i32 %and.i554, 0
  br i1 %tobool.not.i555, label %lor.lhs.false.i, label %if.end209.if.then.i_crit_edge

if.end209.if.then.i_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end209
  %sk_tsflags.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %96 = ptrtoint ptr %sk_tsflags.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %sk_tsflags.i, align 8
  %98 = and i16 %97, 80
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool2.not.i = icmp eq i16 %98, 0
  br i1 %tobool2.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end209.if.then.i_crit_edge
  call void @__sock_recv_ts_and_drops(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call12) #11
  br label %sock_recv_ts_and_drops.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %93, align 4
  %101 = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i556 = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i556, label %if.else6.i, label %if.then5.i, !prof !127

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %102, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %104) #11
  br label %sock_recv_ts_and_drops.exit

if.else6.i:                                       ; preds = %if.else.i
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %105 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sk_stamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1000000000, i64 %106)
  %cmp.i557 = icmp eq i64 %106, -1000000000
  br i1 %cmp.i557, label %if.then14.i, label %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, !prof !131

if.else6.i.sock_recv_ts_and_drops.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_recv_ts_and_drops.exit

if.then14.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef 0) #11
  br label %sock_recv_ts_and_drops.exit

sock_recv_ts_and_drops.exit:                      ; preds = %if.then14.i, %if.else6.i.sock_recv_ts_and_drops.exit_crit_edge, %if.then5.i, %if.then.i
  %107 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %msg, align 8
  %tobool210.not = icmp eq ptr %108, null
  br i1 %tobool210.not, label %sock_recv_ts_and_drops.exit.if.end244_crit_edge, label %if.then211

sock_recv_ts_and_drops.exit.if.end244_crit_edge:  ; preds = %sock_recv_ts_and_drops.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244

if.then211:                                       ; preds = %sock_recv_ts_and_drops.exit
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 10, ptr %108, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 18
  %110 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 19
  %112 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i558 = zext i16 %113 to i32
  %add.ptr.i.i = getelementptr i8, ptr %111, i32 %conv.i.i558
  %114 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i, align 2
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %108, i32 0, i32 1
  %116 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %sin6_port, align 2
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %108, i32 0, i32 2
  %117 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %sin6_flowinfo, align 4
  br i1 %cmp27, label %if.then219, label %if.else221

if.then219:                                       ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 20
  %120 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i560 = zext i16 %121 to i32
  %add.ptr.i.i561 = getelementptr i8, ptr %119, i32 %conv.i.i560
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i561, i32 0, i32 8
  %122 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %saddr, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %108, i32 0, i32 3
  %124 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %sin6_addr, align 4
  %arrayidx1.i.i.i = getelementptr %struct.sockaddr_in6, ptr %108, i32 0, i32 3, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sockaddr_in6, ptr %108, i32 0, i32 3, i32 0, i32 0, i32 2
  %126 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.sockaddr_in6, ptr %108, i32 0, i32 3, i32 0, i32 0, i32 3
  %127 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %123, ptr %arrayidx1.i1.i.i, align 4
  br label %if.end229

if.else221:                                       ; preds = %if.then211
  %sin6_addr222 = getelementptr inbounds %struct.sockaddr_in6, ptr %108, i32 0, i32 3
  %128 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i563 = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 20
  %130 = ptrtoint ptr %network_header.i.i563 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i.i563, align 4
  %conv.i.i564 = zext i16 %131 to i32
  %add.ptr.i.i565 = getelementptr i8, ptr %129, i32 %conv.i.i564
  %saddr224 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i565, i32 0, i32 5
  %132 = call ptr @memcpy(ptr %sin6_addr222, ptr %saddr224, i32 16)
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3, i32 16
  %133 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %flags.i, align 8
  %135 = and i16 %134, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool.i.not.i566 = icmp eq i16 %135, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 3
  %cond.in.i567 = select i1 %tobool.i.not.i566, ptr %cb.i, ptr %skb_iif.i
  %136 = ptrtoint ptr %cond.in.i567 to i32
  call void @__asan_load4_noabort(i32 %136)
  %cond.i568 = load i32, ptr %cond.in.i567, align 8
  %call.i569 = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr222) #11
  %and.i.i570 = and i32 %call.i569, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i570)
  %tobool.not.i.i571 = icmp eq i32 %and.i.i570, 0
  br i1 %tobool.not.i.i571, label %lor.rhs.i.i572, label %if.else221.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge

if.else221.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

lor.rhs.i.i572:                                   ; preds = %if.else221
  %and1.i.i = and i32 %call.i569, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i569, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i, label %lor.rhs.i.i572.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, label %lor.rhs.i.i572.if.end229_crit_edge

lor.rhs.i.i572.if.end229_crit_edge:               ; preds = %lor.rhs.i.i572
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

lor.rhs.i.i572.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i572
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

__ipv6_addr_needs_scope_id.exit.thread.i:         ; preds = %lor.rhs.i.i572.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, %if.else221.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge
  br label %if.end229

if.end229:                                        ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i, %lor.rhs.i.i572.if.end229_crit_edge, %if.then219
  %.sink = phi i32 [ 0, %if.then219 ], [ %cond.i568, %__ipv6_addr_needs_scope_id.exit.thread.i ], [ 0, %lor.rhs.i.i572.if.end229_crit_edge ]
  %sin6_scope_id228 = getelementptr inbounds %struct.sockaddr_in6, ptr %108, i32 0, i32 4
  %137 = ptrtoint ptr %sin6_scope_id228 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.sink, ptr %sin6_scope_id228, align 4
  %138 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 28, ptr %addr_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__unused_flags) #11
  %139 = ptrtoint ptr %__unused_flags to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %__unused_flags, align 4, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 15), ptr blockaddress(@udpv6_recvmsg, %if.then240)) #11
          to label %if.end242 [label %if.then240], !srcloc !122

if.then240:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %call241 = call i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef %sk, ptr noundef nonnull %108, i32 noundef 15, ptr noundef null, ptr noundef nonnull %__unused_flags) #11
  call void @release_sock(ptr noundef %sk) #11
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.end229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__unused_flags) #11
  br label %if.end244

if.end244:                                        ; preds = %if.end242, %sock_recv_ts_and_drops.exit.if.end244_crit_edge
  %gro_enabled = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %140 = ptrtoint ptr %gro_enabled to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load246 = load i8, ptr %gro_enabled, align 1
  %141 = and i8 %bf.load246, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool249.not = icmp eq i8 %141, 0
  br i1 %tobool249.not, label %if.end244.if.end251_crit_edge, label %if.then250

if.end244.if.end251_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

if.then250:                                       ; preds = %if.end244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gso_size.i) #11
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12, i32 0, i32 17
  %142 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %143, i32 0, i32 8
  %144 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %gso_type.i, align 8
  %and.i573 = and i32 %145, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i573)
  %tobool.not.i574 = icmp eq i32 %and.i573, 0
  br i1 %tobool.not.i574, label %if.then250.udp_cmsg_recv.exit_crit_edge, label %if.then.i576

if.then250.udp_cmsg_recv.exit_crit_edge:          ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp_cmsg_recv.exit

if.then.i576:                                     ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #13
  %gso_size2.i = getelementptr inbounds %struct.skb_shared_info, ptr %143, i32 0, i32 4
  %146 = ptrtoint ptr %gso_size2.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %gso_size2.i, align 4
  %conv.i575 = zext i16 %147 to i32
  %148 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv.i575, ptr %gso_size.i, align 4
  %call3.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 17, i32 noundef 104, i32 noundef 4, ptr noundef nonnull %gso_size.i) #11
  br label %udp_cmsg_recv.exit

udp_cmsg_recv.exit:                               ; preds = %if.then.i576, %if.then250.udp_cmsg_recv.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gso_size.i) #11
  br label %if.end251

if.end251:                                        ; preds = %udp_cmsg_recv.exit, %if.end244.if.end251_crit_edge
  %rxopt252 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 9
  %149 = ptrtoint ptr %rxopt252 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %rxopt252, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool253.not = icmp eq i16 %150, 0
  br i1 %tobool253.not, label %if.end251.if.end255_crit_edge, label %if.then254

if.end251.if.end255_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.then254:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip6_datagram_recv_common_ctl(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call12) #11
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %if.end251.if.end255_crit_edge
  br i1 %cmp27, label %if.then257, label %if.else261

if.then257:                                       ; preds = %if.end255
  %cmsg_flags = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 4
  %151 = ptrtoint ptr %cmsg_flags to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cmsg_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool258.not = icmp eq i16 %152, 0
  br i1 %tobool258.not, label %if.then257.if.end266_crit_edge, label %if.then259

if.then257.if.end266_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end266

if.then259:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %off, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %msg, ptr noundef %sk, ptr noundef nonnull %call12, i32 noundef 8, i32 noundef %154) #11
  br label %if.end266

if.else261:                                       ; preds = %if.end255
  %155 = ptrtoint ptr %rxopt252 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %rxopt252, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool263.not = icmp eq i16 %156, 0
  br i1 %tobool263.not, label %if.else261.if.end266_crit_edge, label %if.then264

if.else261.if.end266_crit_edge:                   ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end266

if.then264:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip6_datagram_recv_specific_ctl(ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %call12) #11
  br label %if.end266

if.end266:                                        ; preds = %if.then264, %if.else261.if.end266_crit_edge, %if.then259, %if.then257.if.end266_crit_edge
  %and267 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and267)
  %tobool268.not = icmp eq i32 %and267, 0
  %spec.select = select i1 %tobool268.not, i32 %copied.0, i32 %cond.i522
  %157 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %spec.select, ptr %err, align 4
  %sub273 = sub i32 0, %spec.select
  %spec.select586 = select i1 %tobool.not.i, i32 %spec.select, i32 %sub273
  call void @skb_consume_udp(ptr noundef %sk, ptr noundef nonnull %call12, i32 noundef %spec.select586) #11
  %158 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %err, align 4
  br label %cleanup

csum_copy_err:                                    ; preds = %if.else83.csum_copy_err_crit_edge, %lor.end.csum_copy_err_crit_edge
  %call278 = call i32 @__sk_queue_drop_skb(ptr noundef %sk, ptr noundef %reader_queue, ptr noundef nonnull %call12, i32 noundef %flags, ptr noundef nonnull @udp_skb_destructor) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %do.body282, label %csum_copy_err.if.end401_crit_edge

csum_copy_err.if.end401_crit_edge:                ; preds = %csum_copy_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end401

do.body282:                                       ; preds = %csum_copy_err
  %160 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %arrayidx305 = getelementptr [10 x i32], ptr %cond53, i32 0, i32 7
  %161 = ptrtoint ptr %arrayidx305 to i32
  %162 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i578 = and i32 %162, -16384
  %163 = inttoptr i32 %and.i578 to ptr
  %cpu308 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %cpu308 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cpu308, align 4
  %arrayidx309 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %165
  %166 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx309, align 4
  %add310 = add i32 %167, %161
  %168 = inttoptr i32 %add310 to ptr
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %add311 = add i32 %170, 1
  store i32 %add311, ptr %168, align 4
  %171 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i579 = and i32 %171, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i579)
  %tobool322.not = icmp eq i32 %and.i.i579, 0
  br i1 %tobool322.not, label %if.then331, label %do.body282.do.end334_crit_edge, !prof !131

do.body282.do.end334_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end334

if.then331:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end334

do.end334:                                        ; preds = %if.then331, %do.body282.do.end334_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %160) #11, !srcloc !132
  %172 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %arrayidx365 = getelementptr [10 x i32], ptr %cond53, i32 0, i32 3
  %173 = ptrtoint ptr %arrayidx365 to i32
  %174 = ptrtoint ptr %cpu308 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cpu308, align 4
  %arrayidx369 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx369, align 4
  %add370 = add i32 %177, %173
  %178 = inttoptr i32 %add370 to ptr
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 4
  %add371 = add i32 %180, 1
  store i32 %add371, ptr %178, align 4
  %181 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i580 = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i580)
  %tobool382.not = icmp eq i32 %and.i.i580, 0
  br i1 %tobool382.not, label %if.then391, label %do.end334.do.end394_crit_edge, !prof !131

do.end334.do.end394_crit_edge:                    ; preds = %do.end334
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end394

if.then391:                                       ; preds = %do.end334
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end394

do.end394:                                        ; preds = %if.then391, %do.end334.do.end394_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %172) #11, !srcloc !132
  br label %if.end401

if.end401:                                        ; preds = %do.end394, %csum_copy_err.if.end401_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call12, i32 noundef 0) #11
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 450, i32 noundef 0) #11
  %call.i581 = call i32 @__cond_resched() #11
  %182 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_flags, align 4
  %and405 = and i32 %183, -33
  store i32 %and405, ptr %msg_flags, align 4
  br label %try_again

cleanup:                                          ; preds = %if.end266, %if.end145, %if.then14, %if.then8, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call9, %if.then8 ], [ %80, %if.end145 ], [ %159, %if.end266 ], [ %15, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_recv_rxpmtu(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_datagram_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_common_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_recv_specific_ctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_consume_udp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_queue_drop_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_skb_destructor(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udpv6_encap_enable() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @static_key_slow_inc(ptr noundef nonnull @udpv6_encap_needed_key) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__udp6_lib_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info, ptr noundef %udptable) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %saddr1 = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 5
  %flags.i = getelementptr inbounds %struct.inet6_skb_parm, ptr %opt, i32 0, i32 7
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags.i, align 4
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.seg6_get_daddr.exit_crit_edge, label %if.then.i

entry.seg6_get_daddr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_get_daddr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %srhoff.i = getelementptr inbounds %struct.inet6_skb_parm, ptr %opt, i32 0, i32 10
  %5 = ptrtoint ptr %srhoff.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %srhoff.i, align 2
  %conv1.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv1.i
  %segments.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr.i, i32 0, i32 7
  br label %seg6_get_daddr.exit

seg6_get_daddr.exit:                              ; preds = %if.then.i, %entry.seg6_get_daddr.exit_crit_edge
  %retval.0.i155 = phi ptr [ %segments.i, %if.then.i ], [ null, %entry.seg6_get_daddr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i155, null
  %daddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %1, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr %daddr2, ptr %retval.0.i155
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err, align 4, !annotation !123
  %8 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %13 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dest, align 2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %flags.i156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %17 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i156, align 8
  %19 = and i16 %18, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not.i = icmp eq i16 %19, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %20 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i157 = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i157, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge, label %seg6_get_daddr.exit.inet6_sdif.exit_crit_edge, label %if.then.i161

seg6_get_daddr.exit.inet6_sdif.exit_crit_edge:    ; preds = %seg6_get_daddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

if.then.i161:                                     ; preds = %seg6_get_daddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i161, %seg6_get_daddr.exit.inet6_sdif.exit_crit_edge
  %retval.0.i162 = phi i32 [ %22, %if.then.i161 ], [ 0, %seg6_get_daddr.exit.inet6_sdif.exit_crit_edge ]
  %call7 = tail call ptr @__udp6_lib_lookup(ptr noundef %12, ptr noundef %spec.select, i16 noundef zeroext %14, ptr noundef %saddr1, i16 noundef zeroext %16, i32 noundef %cond.i, i32 noundef %retval.0.i162, ptr noundef %udptable, ptr noundef null)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %inet6_sdif.exit.if.then_crit_edge, label %lor.lhs.false

inet6_sdif.exit.if.then_crit_edge:                ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %inet6_sdif.exit
  %encap_type = getelementptr inbounds %struct.udp_sock, ptr %call7, i32 0, i32 3
  %23 = ptrtoint ptr %encap_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %encap_type, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end52_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %inet6_sdif.exit.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udpv6_encap_needed_key, ptr blockaddress(@__udp6_lib_err, %if.then15)) #11
          to label %if.end20 [label %if.then15], !srcloc !122

if.then15:                                        ; preds = %if.then
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i.i, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %transport_header.i.i.i, align 2
  %sub.ptr.rhs.cast.i63.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i64.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.rhs.cast.i63.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i64.i to i16
  store i16 %conv.i.i, ptr %network_header.i.i.i, align 4
  %33 = trunc i32 %offset to i16
  %conv1.i.i = add i16 %conv.i.i, %33
  store i16 %conv1.i.i, ptr %transport_header.i.i.i, align 2
  br i1 %tobool8.not, label %if.end7.i, label %if.then.i164

if.then.i164:                                     ; preds = %if.then15
  %encap_err_lookup.i = getelementptr inbounds %struct.udp_sock, ptr %call7, i32 0, i32 12
  %34 = ptrtoint ptr %encap_err_lookup.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %encap_err_lookup.i, align 4
  %tobool3.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i, label %if.then.i164.__udp6_lib_err_encap.exit_crit_edge, label %land.lhs.true.i165

if.then.i164.__udp6_lib_err_encap.exit_crit_edge: ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp6_lib_err_encap.exit

land.lhs.true.i165:                               ; preds = %if.then.i164
  %call4.i = tail call i32 %35(ptr noundef nonnull %call7, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i165.__udp6_lib_err_encap.exit_crit_edge, label %land.lhs.true.i165.for.body.i.i.preheader_crit_edge

land.lhs.true.i165.for.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

land.lhs.true.i165.__udp6_lib_err_encap.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp6_lib_err_encap.exit

if.end7.i:                                        ; preds = %if.then15
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr, align 2
  %38 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dest, align 2
  %40 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i156, align 8
  %42 = and i16 %41, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.i.not.i.i = icmp eq i16 %42, 0
  %cond.in.i.i = select i1 %tobool.i.not.i.i, ptr %cb.i, ptr %skb_iif.i
  %43 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 8
  %call9.i = tail call ptr @__udp6_lib_lookup(ptr noundef %12, ptr noundef %daddr2, i16 noundef zeroext %37, ptr noundef %saddr1, i16 noundef zeroext %39, i32 noundef %cond.i.i, i32 noundef 0, ptr noundef %udptable, ptr noundef %skb) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end7.i.for.body.i.i.preheader_crit_edge, label %if.then11.i

if.end7.i.for.body.i.i.preheader_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

if.then11.i:                                      ; preds = %if.end7.i
  %encap_err_lookup17.i = getelementptr inbounds %struct.udp_sock, ptr %call9.i, i32 0, i32 12
  %44 = ptrtoint ptr %encap_err_lookup17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %encap_err_lookup17.i, align 4
  %tobool18.not.i = icmp eq ptr %45, null
  br i1 %tobool18.not.i, label %if.then11.i.for.body.i.i.preheader_crit_edge, label %lor.lhs.false.i

if.then11.i.for.body.i.i.preheader_crit_edge:     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

lor.lhs.false.i:                                  ; preds = %if.then11.i
  %call19.i = tail call i32 %45(ptr noundef nonnull %call9.i, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.__udp6_lib_err_encap.exit_crit_edge, label %lor.lhs.false.i.for.body.i.i.preheader_crit_edge

lor.lhs.false.i.for.body.i.i.preheader_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.preheader

lor.lhs.false.i.__udp6_lib_err_encap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp6_lib_err_encap.exit

for.body.i.i.preheader:                           ; preds = %lor.lhs.false.i.for.body.i.i.preheader_crit_edge, %if.then11.i.for.body.i.i.preheader_crit_edge, %if.end7.i.for.body.i.i.preheader_crit_edge, %land.lhs.true.i165.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr @ip6tun_encaps, i32 0, i32 %i.027.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i166 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %tobool.not.i.i = icmp eq i32 %call.i.i166, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.body.i.i.do.end7.i.i_crit_edge

for.body.i.i.do.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__udp6_lib_err_encap_no_sk.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__udp6_lib_err_encap_no_sk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 476, ptr noundef nonnull @.str.2) #11
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %for.body.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %47, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.for.inc.i.i_crit_edge, label %if.end11.i.i

do.end7.i.i.for.inc.i.i_crit_edge:                ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %do.end7.i.i
  %err_handler.i.i = getelementptr inbounds %struct.ip6_tnl_encap_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %err_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %err_handler.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %49, null
  br i1 %tobool12.not.i.i, label %if.end11.i.i.for.inc.i.i_crit_edge, label %land.lhs.true13.i.i

if.end11.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true13.i.i:                              ; preds = %if.end11.i.i
  %call14.i.i = tail call i32 %49(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true13.i.i.__udp6_lib_err_encap.exit_crit_edge, label %land.lhs.true13.i.i.for.inc.i.i_crit_edge

land.lhs.true13.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true13.i.i.__udp6_lib_err_encap.exit_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp6_lib_err_encap.exit

for.inc.i.i:                                      ; preds = %land.lhs.true13.i.i.for.inc.i.i_crit_edge, %if.end11.i.i.for.inc.i.i_crit_edge, %do.end7.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.inc.i.i.__udp6_lib_err_encap.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.__udp6_lib_err_encap.exit_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp6_lib_err_encap.exit

__udp6_lib_err_encap.exit:                        ; preds = %for.inc.i.i.__udp6_lib_err_encap.exit_crit_edge, %land.lhs.true13.i.i.__udp6_lib_err_encap.exit_crit_edge, %lor.lhs.false.i.__udp6_lib_err_encap.exit_crit_edge, %land.lhs.true.i165.__udp6_lib_err_encap.exit_crit_edge, %if.then.i164.__udp6_lib_err_encap.exit_crit_edge
  %sk.addr.1.i = phi ptr [ %call7, %if.then.i164.__udp6_lib_err_encap.exit_crit_edge ], [ %call9.i, %lor.lhs.false.i.__udp6_lib_err_encap.exit_crit_edge ], [ %call7, %land.lhs.true.i165.__udp6_lib_err_encap.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.i.i.__udp6_lib_err_encap.exit_crit_edge ], [ null, %land.lhs.true13.i.i.__udp6_lib_err_encap.exit_crit_edge ]
  %conv.i.i55.i = zext i16 %32 to i32
  %add.ptr.i.i56.i = getelementptr i8, ptr %26, i32 %conv.i.i55.i
  %sub.ptr.lhs.cast.i58.i = ptrtoint ptr %add.ptr.i.i56.i to i32
  %sub.ptr.sub.i60.i = sub i32 %sub.ptr.lhs.cast.i58.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i.i = zext i16 %28 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i70.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i.i71.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i72.i = sub i32 %sub.ptr.lhs.cast.i.i70.i, %sub.ptr.rhs.cast.i.i71.i
  %conv.i.i73.i = trunc i32 %sub.ptr.sub.i.i72.i to i16
  %54 = trunc i32 %sub.ptr.sub.i60.i to i16
  %conv1.i75.i = add i16 %conv.i.i73.i, %54
  %55 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv1.i75.i, ptr %transport_header.i.i.i, align 2
  %56 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i83.i = add i16 %conv.i.i73.i, %56
  %57 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv1.i83.i, ptr %network_header.i.i.i, align 4
  %tobool17.not = icmp eq ptr %sk.addr.1.i, null
  br i1 %tobool17.not, label %__udp6_lib_err_encap.exit.cleanup_crit_edge, label %__udp6_lib_err_encap.exit.if.end20_crit_edge

__udp6_lib_err_encap.exit.if.end20_crit_edge:     ; preds = %__udp6_lib_err_encap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

__udp6_lib_err_encap.exit.cleanup_crit_edge:      ; preds = %__udp6_lib_err_encap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %__udp6_lib_err_encap.exit.if.end20_crit_edge, %if.then
  %sk.0 = phi ptr [ %sk.addr.1.i, %__udp6_lib_err_encap.exit.if.end20_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then ]
  %cmp.i = icmp ugt ptr %sk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end20.if.end52_crit_edge

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then22:                                        ; preds = %if.end20
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %8, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 80
  %60 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %if.then22.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i168

if.then22.__in6_dev_get.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

lor.lhs.false.i168:                               ; preds = %if.then22
  %call2.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i167 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i167, label %land.lhs.true.i169, label %lor.lhs.false.i168.__in6_dev_get.exit_crit_edge

lor.lhs.false.i168.__in6_dev_get.exit_crit_edge:  ; preds = %lor.lhs.false.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

land.lhs.true.i169:                               ; preds = %lor.lhs.false.i168
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i169.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i169.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i169
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i170

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

if.then.i170:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 313, ptr noundef nonnull @.str.2) #11
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i170, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i169.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i168.__in6_dev_get.exit_crit_edge, %if.then22.__in6_dev_get.exit_crit_edge
  %cmp.not = icmp eq ptr %61, null
  br i1 %cmp.not, label %__in6_dev_get.exit.if.end32_crit_edge, label %if.then31, !prof !131

__in6_dev_get.exit.if.end32_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %61, i32 0, i32 33, i32 2
  %62 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx = getelementptr [6 x %struct.atomic_t], ptr %63, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #11, !srcloc !128
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %__in6_dev_get.exit.if.end32_crit_edge
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 30, i32 13
  %65 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx41 = getelementptr [6 x i32], ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx41 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx44, align 4
  %add = add i32 %73, %67
  %74 = inttoptr i32 %add to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add45 = add i32 %76, 1
  store i32 %add45, ptr %74, align 4
  %77 = ptrtoint ptr %sk.0 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end20.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge
  %sk.1 = phi ptr [ %call7, %lor.lhs.false.if.end52_crit_edge ], [ %sk.0, %if.end20.if.end52_crit_edge ]
  %tunnel.0.off0 = phi i1 [ false, %lor.lhs.false.if.end52_crit_edge ], [ true, %if.end20.if.end52_crit_edge ]
  %call53 = call i32 @icmpv6_err_convert(i8 noundef zeroext %type, i8 noundef zeroext %code, ptr noundef nonnull %err) #11
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 4
  %78 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i171 = zext i8 %79 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i171
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i172 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i172, label %if.end52.inet6_sk.exit_crit_edge, label %cond.true.i

if.end52.inet6_sk.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk.1, i32 0, i32 1
  %80 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.end52.inet6_sk.exit_crit_edge
  %cond.i173 = phi ptr [ %81, %cond.true.i ], [ null, %if.end52.inet6_sk.exit_crit_edge ]
  %82 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %inet6_sk.exit.if.end78_crit_edge [
    i8 2, label %if.then58
    i8 -119, label %if.then71
  ]

inet6_sk.exit.if.end78_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then58:                                        ; preds = %inet6_sk.exit
  %83 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i.i174 = zext i8 %84 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i174
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i175 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i175, label %if.then58.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then58.inet6_sk.exit.i_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk.1, i32 0, i32 1
  %85 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then58.inet6_sk.exit.i_crit_edge
  %cond.i.i176 = phi ptr [ %86, %cond.true.i.i ], [ null, %if.then58.inet6_sk.exit.i_crit_edge ]
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i176, i32 0, i32 10
  %87 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i = load i16, ptr %pmtudisc.i, align 2
  %88 = and i16 %bf.load.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %88)
  %cmp.not.i = icmp eq i16 %88, 4096
  br i1 %cmp.not.i, label %inet6_sk.exit.i.cleanup_crit_edge, label %land.rhs.i

inet6_sk.exit.i.cleanup_crit_edge:                ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i:                                       ; preds = %inet6_sk.exit.i
  %89 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i12.i = zext i8 %90 to i32
  %shl.i.i13.i = shl nuw i32 1, %conv.i.i12.i
  %and.i.i14.i = and i32 %shl.i.i13.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14.i)
  %tobool.i.not.i15.i = icmp eq i32 %and.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge, label %cond.true.i17.i

land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_sk_accept_pmtu.exit

cond.true.i17.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i16.i = getelementptr inbounds %struct.inet_sock, ptr %sk.1, i32 0, i32 1
  %91 = ptrtoint ptr %pinet6.i16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pinet6.i16.i, align 8
  br label %ip6_sk_accept_pmtu.exit

ip6_sk_accept_pmtu.exit:                          ; preds = %cond.true.i17.i, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge
  %cond.i18.i = phi ptr [ %92, %cond.true.i17.i ], [ null, %land.rhs.i.ip6_sk_accept_pmtu.exit_crit_edge ]
  %pmtudisc3.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18.i, i32 0, i32 10
  %93 = ptrtoint ptr %pmtudisc3.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load4.i = load i16, ptr %pmtudisc3.i, align 2
  %94 = and i16 %bf.load4.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %94)
  %cmp8.i.not = icmp eq i16 %94, 5120
  br i1 %cmp8.i.not, label %ip6_sk_accept_pmtu.exit.cleanup_crit_edge, label %if.end67.thread

ip6_sk_accept_pmtu.exit.cleanup_crit_edge:        ; preds = %ip6_sk_accept_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end67.thread:                                  ; preds = %ip6_sk_accept_pmtu.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip6_sk_update_pmtu(ptr noundef %skb, ptr noundef %sk.1, i32 noundef %info) #11
  %pmtudisc = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i173, i32 0, i32 10
  %95 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load = load i16, ptr %pmtudisc, align 2
  %96 = and i16 %bf.load, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp63.not = icmp eq i16 %96, 0
  %spec.select154 = select i1 %cmp63.not, i32 %call53, i32 1
  br label %if.end78

if.then71:                                        ; preds = %inet6_sk.exit
  br i1 %tunnel.0.off0, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 9
  %97 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %skc_net.i, align 4
  %99 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %flags.i156, align 8
  %101 = and i16 %100, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.i.not.i178 = icmp eq i16 %101, 0
  %cond.in.i181 = select i1 %tobool.i.not.i178, ptr %cb.i, ptr %skb_iif.i
  %102 = ptrtoint ptr %cond.in.i181 to i32
  call void @__asan_load4_noabort(i32 %102)
  %cond.i182 = load i32, ptr %cond.in.i181, align 8
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 34
  %103 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sk_mark, align 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 55
  %105 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %105)
  %.unpack = load i32, ptr %sk_uid, align 4
  %106 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  call void @ip6_redirect(ptr noundef %skb, ptr noundef %98, i32 noundef %cond.i182, i32 noundef %104, [1 x i32] %106) #11
  br label %cleanup

if.else76:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip6_sk_redirect(ptr noundef %skb, ptr noundef %sk.1) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end67.thread, %inet6_sk.exit.if.end78_crit_edge
  %harderr.0186 = phi i32 [ %spec.select154, %if.end67.thread ], [ %call53, %inet6_sk.exit.if.end78_crit_edge ]
  br i1 %tunnel.0.off0, label %if.end78.cleanup_crit_edge, label %if.end81

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end81:                                         ; preds = %if.end78
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i173, i32 0, i32 10
  %107 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load82 = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load82)
  %tobool84.not = icmp sgt i16 %bf.load82, -1
  br i1 %tobool84.not, label %if.then85, label %if.else93

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %harderr.0186)
  %tobool86.not = icmp eq i32 %harderr.0186, 0
  br i1 %tobool86.not, label %if.then85.cleanup_crit_edge, label %lor.lhs.false87

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false87:                                  ; preds = %if.then85
  %108 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp89.not = icmp eq i8 %109, 1
  br i1 %cmp89.not, label %lor.lhs.false87.if.end96_crit_edge, label %lor.lhs.false87.cleanup_crit_edge

lor.lhs.false87.cleanup_crit_edge:                ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false87.if.end96_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.else93:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %err, align 4
  %112 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %dest, align 2
  %add.ptr95 = getelementptr %struct.udphdr, ptr %add.ptr, i32 1
  call void @ipv6_icmp_error(ptr noundef %sk.1, ptr noundef %skb, i32 noundef %111, i16 noundef zeroext %113, i32 noundef %info, ptr noundef %add.ptr95) #11
  br label %if.end96

if.end96:                                         ; preds = %if.else93, %lor.lhs.false87.if.end96_crit_edge
  %114 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %err, align 4
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk.1, i32 0, i32 51
  %116 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef %sk.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %lor.lhs.false87.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.else76, %if.then73, %ip6_sk_accept_pmtu.exit.cleanup_crit_edge, %inet6_sk.exit.i.cleanup_crit_edge, %if.end32, %__udp6_lib_err_encap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %if.end32 ], [ 0, %__udp6_lib_err_encap.exit.cleanup_crit_edge ], [ 0, %if.then85.cleanup_crit_edge ], [ 0, %lor.lhs.false87.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %if.else76 ], [ 0, %ip6_sk_accept_pmtu.exit.cleanup_crit_edge ], [ 0, %if.end96 ], [ 0, %inet6_sk.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__udp6_lib_rcv(ptr noundef %skb, ptr noundef %udptable, i32 noundef %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !131

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp3.i = icmp ult i32 %6, 8
  br i1 %cmp3.i, label %if.end.i.do.body244_crit_edge, label %pskb_may_pull.exit, !prof !131

if.end.i.do.body244_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body244

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body244_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_may_pull.exit.do.body244_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body244

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
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
  %saddr3 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr5 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i385 = zext i16 %14 to i32
  %add.ptr.i.i386 = getelementptr i8, ptr %10, i32 %conv.i.i385
  %len = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i386, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len, align 2
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp ult i32 %18, %conv
  br i1 %cmp, label %if.end.do.body160_crit_edge, label %if.end10

if.end.do.body160_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %proto)
  %cmp11 = icmp eq i32 %proto, 17
  br i1 %cmp11, label %if.then13, label %if.end10.if.end36_crit_edge

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp14 = icmp eq i16 %16, 0
  %spec.select = select i1 %cmp14, i32 %18, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select)
  %cmp19 = icmp ult i32 %spec.select, 8
  br i1 %cmp19, label %if.then13.do.body160_crit_edge, label %if.end22

if.then13.do.body160_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160

if.end22:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %18)
  %cmp24 = icmp ult i32 %spec.select, %18
  br i1 %cmp24, label %pskb_trim_rcsum.exit, label %if.end22.if.end36_crit_edge

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

pskb_trim_rcsum.exit:                             ; preds = %if.end22
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %spec.select) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end29, label %pskb_trim_rcsum.exit.do.body160_crit_edge

pskb_trim_rcsum.exit.do.body160_crit_edge:        ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body160

if.end29:                                         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i392 = zext i16 %22 to i32
  %add.ptr.i.i393 = getelementptr i8, ptr %20, i32 %conv.i.i392
  %saddr31 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i393, i32 0, i32 5
  %daddr33 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i393, i32 0, i32 6
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i400 = zext i16 %24 to i32
  %add.ptr.i.i401 = getelementptr i8, ptr %20, i32 %conv.i.i400
  br label %if.end36

if.end36:                                         ; preds = %if.end29, %if.end22.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %uh.0 = phi ptr [ %add.ptr.i.i401, %if.end29 ], [ %add.ptr.i.i386, %if.end22.if.end36_crit_edge ], [ %add.ptr.i.i386, %if.end10.if.end36_crit_edge ]
  %daddr.0 = phi ptr [ %daddr33, %if.end29 ], [ %daddr5, %if.end22.if.end36_crit_edge ], [ %daddr5, %if.end10.if.end36_crit_edge ]
  %saddr.0 = phi ptr [ %saddr31, %if.end29 ], [ %saddr3, %if.end22.if.end36_crit_edge ], [ %saddr3, %if.end10.if.end36_crit_edge ]
  %call37 = tail call i32 @udp6_csum_init(ptr noundef %skb, ptr noundef %uh.0, i32 noundef %proto) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.do.body184_crit_edge

if.end36.do.body184_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body184

if.end40:                                         ; preds = %if.end36
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end77, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %destructor.i.i, align 4
  %cmp.i.i = icmp eq ptr %29, @sock_pfree
  br i1 %cmp.i.i, label %if.then1.i, label %if.then.i.if.then43_crit_edge

if.then.i.if.then43_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then1.i:                                       ; preds = %if.then.i
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %31 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then1.i.sk_is_refcounted.exit.i_crit_edge, label %lor.rhs.i.i

if.then1.i.sk_is_refcounted.exit.i_crit_edge:     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_is_refcounted.exit.i

lor.rhs.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i3.not.i.i = icmp eq i32 %35, 0
  br label %sk_is_refcounted.exit.i

sk_is_refcounted.exit.i:                          ; preds = %lor.rhs.i.i, %if.then1.i.sk_is_refcounted.exit.i_crit_edge
  %36 = phi i1 [ true, %if.then1.i.sk_is_refcounted.exit.i_crit_edge ], [ %tobool.i3.not.i.i, %lor.rhs.i.i ]
  %frombool.i = zext i1 %36 to i8
  br label %if.then43

if.then43:                                        ; preds = %sk_is_refcounted.exit.i, %if.then.i.if.then43_crit_edge
  %refcounted.0 = phi i8 [ %frombool.i, %sk_is_refcounted.exit.i ], [ 1, %if.then.i.if.then43_crit_edge ]
  %37 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %destructor.i.i, align 4
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %25, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i403 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i403, label %if.then43.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then43.skb_dst.exit_crit_edge:                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then43
  %call.i404 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404)
  %tobool1.not.i = icmp eq i32 %call.i404, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !131

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then43.skb_dst.exit_crit_edge
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 8
  %and25.i = and i32 %43, -2
  %44 = inttoptr i32 %and25.i to ptr
  %sk_rx_dst = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 1
  %45 = ptrtoint ptr %sk_rx_dst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %sk_rx_dst, align 8
  %call46 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true, label %skb_dst.exit.do.end55_crit_edge

skb_dst.exit.do.end55_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

land.lhs.true:                                    ; preds = %skb_dst.exit
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true.do.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true
  %.b378 = load i1, ptr @__udp6_lib_rcv.__warned, align 1
  br i1 %.b378, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__udp6_lib_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 961, ptr noundef nonnull @.str.2) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true.do.end55_crit_edge, %skb_dst.exit.do.end55_crit_edge
  %cmp57.not = icmp eq ptr %46, %44
  br i1 %cmp57.not, label %do.end55.if.end62_crit_edge, label %if.then61, !prof !127

do.end55.if.end62_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then61:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @udp6_sk_rx_dst_set(ptr noundef nonnull %27, ptr noundef %44)
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %do.end55.if.end62_crit_edge
  %check = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 3
  %47 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool63.not = icmp eq i16 %48, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %if.end71.thread

land.lhs.true64:                                  ; preds = %if.end62
  %no_check6_rx = getelementptr inbounds %struct.udp_sock, ptr %27, i32 0, i32 4
  %49 = ptrtoint ptr %no_check6_rx to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %no_check6_rx, align 1
  %50 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool66.not = icmp eq i8 %50, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true64.udp6_unicast_rcv_skb.exit_crit_edge

land.lhs.true64.udp6_unicast_rcv_skb.exit_crit_edge: ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_unicast_rcv_skb.exit

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.0)
  %tobool68.not = icmp eq i8 %refcounted.0, 0
  br i1 %tobool68.not, label %if.then67.report_csum_error_crit_edge, label %if.then69

if.then67.report_csum_error_crit_edge:            ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_csum_error

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sock_put(ptr noundef nonnull %27)
  br label %report_csum_error

if.end71.thread:                                  ; preds = %if.end62
  %convert_csum.i.i427 = getelementptr inbounds %struct.inet_sock, ptr %27, i32 0, i32 14
  %51 = ptrtoint ptr %convert_csum.i.i427 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %convert_csum.i.i427, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.i.not.i428 = icmp eq i8 %52, 0
  br i1 %tobool.i.not.i428, label %if.end71.thread.udp6_unicast_rcv_skb.exit_crit_edge, label %land.lhs.true1.i

if.end71.thread.udp6_unicast_rcv_skb.exit_crit_edge: ; preds = %if.end71.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_unicast_rcv_skb.exit

land.lhs.true1.i:                                 ; preds = %if.end71.thread
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 46
  %53 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %54)
  %cmp.i = icmp eq i16 %54, 136
  br i1 %cmp.i, label %land.lhs.true1.i.udp6_unicast_rcv_skb.exit_crit_edge, label %do.body.i

land.lhs.true1.i.udp6_unicast_rcv_skb.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_unicast_rcv_skb.exit

do.body.i:                                        ; preds = %land.lhs.true1.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %55 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %56 = and i16 %bf.load.i.i, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %56)
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %if.then5.i, label %do.body.i.udp6_unicast_rcv_skb.exit_crit_edge

do.body.i.udp6_unicast_rcv_skb.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp6_unicast_rcv_skb.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %60 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %61 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %59, i32 %conv.i.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i.i, align 4
  %call.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i.i, ptr noundef %daddr.i.i, i32 noundef %63, i32 noundef 17, i32 noundef 0) #11
  %64 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #14, !srcloc !133
  %65 = xor i32 %64, -1
  %neg.i.i = lshr i32 %65, 16
  %66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %neg.i.i, ptr %66, align 8
  %68 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i20.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i20.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 1024
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  br label %udp6_unicast_rcv_skb.exit

udp6_unicast_rcv_skb.exit:                        ; preds = %if.then5.i, %do.body.i.udp6_unicast_rcv_skb.exit_crit_edge, %land.lhs.true1.i.udp6_unicast_rcv_skb.exit_crit_edge, %if.end71.thread.udp6_unicast_rcv_skb.exit_crit_edge, %land.lhs.true64.udp6_unicast_rcv_skb.exit_crit_edge
  %call8.i = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef nonnull %27, ptr noundef %skb) #11
  %69 = tail call i32 @llvm.smax.i32(i32 %call8.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %refcounted.0)
  %tobool73.not = icmp eq i8 %refcounted.0, 0
  br i1 %tobool73.not, label %udp6_unicast_rcv_skb.exit.cleanup304_crit_edge, label %if.then74

udp6_unicast_rcv_skb.exit.cleanup304_crit_edge:   ; preds = %udp6_unicast_rcv_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup304

if.then74:                                        ; preds = %udp6_unicast_rcv_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sock_put(ptr noundef nonnull %27)
  br label %cleanup304

if.end77:                                         ; preds = %if.end40
  %70 = ptrtoint ptr %daddr.0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %daddr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %71)
  %cmp.i409 = icmp ugt i32 %71, -16777217
  br i1 %cmp.i409, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__udp6_lib_mcast_deliver(ptr noundef %4, ptr noundef %skb, ptr noundef %saddr.0, ptr noundef %daddr.0, ptr noundef %udptable, i32 noundef %proto)
  br label %cleanup304

if.end81:                                         ; preds = %if.end77
  %72 = ptrtoint ptr %uh.0 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %uh.0, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 1
  %74 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dest, align 2
  %call82 = tail call fastcc ptr @__udp6_lib_lookup_skb(ptr noundef %skb, i16 noundef zeroext %73, i16 noundef zeroext %75, ptr noundef %udptable)
  %tobool83.not = icmp eq ptr %call82, null
  %check98 = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 3
  %76 = ptrtoint ptr %check98 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %check98, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool99.not = icmp eq i16 %77, 0
  br i1 %tobool83.not, label %if.end97, label %if.then84

if.then84:                                        ; preds = %if.end81
  br i1 %tobool99.not, label %land.lhs.true87, label %if.then84.if.end95_crit_edge

if.then84.if.end95_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true87:                                  ; preds = %if.then84
  %no_check6_rx89 = getelementptr inbounds %struct.udp_sock, ptr %call82, i32 0, i32 4
  %78 = ptrtoint ptr %no_check6_rx89 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load90 = load i8, ptr %no_check6_rx89, align 1
  %79 = and i8 %bf.load90, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool93.not = icmp eq i8 %79, 0
  br i1 %tobool93.not, label %land.lhs.true87.report_csum_error_crit_edge, label %land.lhs.true87.if.end95_crit_edge

land.lhs.true87.if.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

land.lhs.true87.report_csum_error_crit_edge:      ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_csum_error

if.end95:                                         ; preds = %land.lhs.true87.if.end95_crit_edge, %if.then84.if.end95_crit_edge
  %call96 = tail call fastcc i32 @udp6_unicast_rcv_skb(ptr noundef nonnull %call82, ptr noundef %skb, ptr noundef %uh.0)
  br label %cleanup304

if.end97:                                         ; preds = %if.end81
  br i1 %tobool99.not, label %if.end97.report_csum_error_crit_edge, label %if.end101

if.end97.report_csum_error_crit_edge:             ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_csum_error

if.end101:                                        ; preds = %if.end97
  %call102 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.do.body244_crit_edge, label %if.end105

if.end101.do.body244_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body244

if.end105:                                        ; preds = %if.end101
  %call106 = tail call fastcc i32 @udp_lib_checksum_complete(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body110, label %if.end105.do.body184_crit_edge

if.end105.do.body184_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body184

do.body110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp111 = icmp eq i32 %proto, 136
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 5
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 10
  %udp_stats_in6.sink = select i1 %cmp111, ptr %udplite_stats_in6, ptr %udp_stats_in6
  %80 = ptrtoint ptr %udp_stats_in6.sink to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udp_stats_in6.sink, align 4
  %arrayidx146 = getelementptr [10 x i32], ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %arrayidx146 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i411 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i411 to ptr
  %cpu149 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %cpu149 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cpu149, align 4
  %arrayidx150 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %86
  %87 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %88, %82
  %89 = inttoptr i32 %add151 to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add152 = add i32 %91, 1
  store i32 %add152, ptr %89, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 4, i32 noundef 0, ptr noundef null, ptr noundef %cb.i) #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup304

do.body160:                                       ; preds = %pskb_trim_rcsum.exit.do.body160_crit_edge, %if.then13.do.body160_crit_edge, %if.end.do.body160_crit_edge
  %ulen.1 = phi i32 [ %conv, %if.end.do.body160_crit_edge ], [ %spec.select, %if.then13.do.body160_crit_edge ], [ %spec.select, %pskb_trim_rcsum.exit.do.body160_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__udp6_lib_rcv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__udp6_lib_rcv, %land.lhs.true170)) #11
          to label %do.body244 [label %land.lhs.true170], !srcloc !122

land.lhs.true170:                                 ; preds = %do.body160
  %call171 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %land.lhs.true170.do.body244_crit_edge, label %if.then173

land.lhs.true170.do.body244_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body244

if.then173:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp174 = icmp eq i32 %proto, 136
  %cond = select i1 %cmp174, ptr @.str.6, ptr @.str.7
  %92 = ptrtoint ptr %add.ptr.i.i386 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %add.ptr.i.i386, align 2
  %conv177 = zext i16 %93 to i32
  %94 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i, align 4
  %dest179 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i386, i32 0, i32 1
  %96 = ptrtoint ptr %dest179 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %dest179, align 2
  %conv180 = zext i16 %97 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__udp6_lib_rcv.descriptor, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, ptr noundef %saddr3, i32 noundef %conv177, i32 noundef %ulen.1, i32 noundef %95, ptr noundef %daddr5, i32 noundef %conv180) #11
  br label %do.body244

report_csum_error:                                ; preds = %if.end97.report_csum_error_crit_edge, %land.lhs.true87.report_csum_error_crit_edge, %if.then69, %if.then67.report_csum_error_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udp6_csum_zero_error.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__udp6_lib_rcv, %land.lhs.true.i412)) #11
          to label %do.body184 [label %land.lhs.true.i412], !srcloc !122

land.lhs.true.i412:                               ; preds = %report_csum_error
  %call3.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i412.do.body184_crit_edge, label %if.then.i414

land.lhs.true.i412.do.body184_crit_edge:          ; preds = %land.lhs.true.i412
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body184

if.then.i414:                                     ; preds = %land.lhs.true.i412
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %head.i.i, align 8
  %100 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i413 = zext i16 %101 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %99, i32 %conv.i.i.i413
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %102 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i14.i = zext i16 %103 to i32
  %add.ptr.i.i15.i = getelementptr i8, ptr %99, i32 %conv.i.i14.i
  %104 = ptrtoint ptr %add.ptr.i.i15.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i15.i, align 2
  %conv.i = zext i16 %105 to i32
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i15.i, i32 0, i32 1
  %106 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %dest.i, align 2
  %conv9.i = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udp6_csum_zero_error.descriptor, ptr noundef nonnull @.str.33, ptr noundef %saddr.i, i32 noundef %conv.i, ptr noundef %daddr.i, i32 noundef %conv9.i) #11
  br label %do.body184

do.body184:                                       ; preds = %if.then.i414, %land.lhs.true.i412.do.body184_crit_edge, %report_csum_error, %if.end105.do.body184_crit_edge, %if.end36.do.body184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp185 = icmp eq i32 %proto, 136
  br i1 %cmp185, label %do.body244.thread, label %do.body244.thread435

do.body244.thread:                                ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6201 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 10
  %108 = ptrtoint ptr %udplite_stats_in6201 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udplite_stats_in6201, align 4
  %arrayidx203 = getelementptr [10 x i32], ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %arrayidx203 to i32
  %111 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i416 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i416 to ptr
  %cpu206 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %cpu206 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cpu206, align 4
  %arrayidx207 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx207, align 4
  %add208 = add i32 %116, %110
  %117 = inttoptr i32 %add208 to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add209 = add i32 %119, 1
  store i32 %add209, ptr %117, align 4
  br label %if.then247

do.body244.thread435:                             ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6228 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 5
  %120 = ptrtoint ptr %udp_stats_in6228 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %udp_stats_in6228, align 4
  %arrayidx230 = getelementptr [10 x i32], ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %arrayidx230 to i32
  %123 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i417 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i417 to ptr
  %cpu233 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %cpu233 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu233, align 4
  %arrayidx234 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %128, %122
  %129 = inttoptr i32 %add235 to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add236 = add i32 %131, 1
  store i32 %add236, ptr %129, align 4
  br label %if.else274

do.body244:                                       ; preds = %if.then173, %land.lhs.true170.do.body244_crit_edge, %do.body160, %if.end101.do.body244_crit_edge, %pskb_may_pull.exit.do.body244_crit_edge, %if.end.i.do.body244_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp245 = icmp eq i32 %proto, 136
  br i1 %cmp245, label %do.body244.if.then247_crit_edge, label %do.body244.if.else274_crit_edge

do.body244.if.else274_crit_edge:                  ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else274

do.body244.if.then247_crit_edge:                  ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then247

if.then247:                                       ; preds = %do.body244.if.then247_crit_edge, %do.body244.thread
  %udplite_stats_in6261 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 10
  br label %do.end303

if.else274:                                       ; preds = %do.body244.if.else274_crit_edge, %do.body244.thread435
  %udp_stats_in6288 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 5
  br label %do.end303

do.end303:                                        ; preds = %if.else274, %if.then247
  %udp_stats_in6288.sink = phi ptr [ %udp_stats_in6288, %if.else274 ], [ %udplite_stats_in6261, %if.then247 ]
  %132 = ptrtoint ptr %udp_stats_in6288.sink to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %udp_stats_in6288.sink, align 4
  %arrayidx290 = getelementptr [10 x i32], ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %arrayidx290 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i419 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i419 to ptr
  %cpu293 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %cpu293 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cpu293, align 4
  %arrayidx294 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx294, align 4
  %add295 = add i32 %140, %134
  %141 = inttoptr i32 %add295 to ptr
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %add296 = add i32 %143, 1
  store i32 %add296, ptr %141, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup304

cleanup304:                                       ; preds = %do.end303, %do.body110, %if.end95, %if.then79, %if.then74, %udp6_unicast_rcv_skb.exit.cleanup304_crit_edge
  %retval.1 = phi i32 [ 0, %do.end303 ], [ 0, %if.then79 ], [ %call96, %if.end95 ], [ 0, %do.body110 ], [ %69, %if.then74 ], [ %69, %udp6_unicast_rcv_skb.exit.cleanup304_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp6_csum_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp6_sk_rx_dst_set(ptr noundef %sk, ptr noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @udp_sk_rx_dst_set(ptr noundef %sk, ptr noundef %dst) #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %sernum.i = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %sernum.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sernum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.rt6_get_cookie.exit_crit_edge

if.then.rt6_get_cookie.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt6_get_cookie.exit

if.end.i:                                         ; preds = %if.then
  %2 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %from2.i = getelementptr inbounds %struct.rt6_info, ptr %dst, i32 0, i32 1
  %6 = ptrtoint ptr %from2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %from2.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 306, ptr noundef nonnull @.str.2) #11
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %7, null
  br i1 %tobool14.not.i, label %do.end12.i.if.end17.i_crit_edge, label %if.then15.i

do.end12.i.if.end17.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %do.end12.i
  %fib6_node.i.i = getelementptr inbounds %struct.fib6_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fib6_node.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fib6_node.i.i, align 4
  %call.i24.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i, label %if.then15.i.do.end7.i.i_crit_edge

if.then15.i.do.end7.i.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true.i26.i:                              ; preds = %if.then15.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i26.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i26.i.do.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i26.i
  %.b1.i.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i27.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i.i

if.then.i27.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 284, ptr noundef nonnull @.str.2) #11
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i27.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i26.i.do.end7.i.i_crit_edge, %if.then15.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %9, null
  br i1 %tobool9.not.i.i, label %do.end7.i.i.if.end17.i_crit_edge, label %do.end13.i.i

do.end7.i.i.if.end17.i_crit_edge:                 ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %fn_sernum.i.i = getelementptr inbounds %struct.fib6_node, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %fn_sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fn_sernum.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end13.i.i, %do.end7.i.i.if.end17.i_crit_edge, %do.end12.i.if.end17.i_crit_edge
  %cookie.1.i = phi i32 [ 0, %do.end12.i.if.end17.i_crit_edge ], [ 0, %do.end7.i.i.if.end17.i_crit_edge ], [ %11, %do.end13.i.i ]
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i28.i, label %if.end17.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

if.end17.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %if.end17.i
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %if.end17.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %12 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i35.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %rt6_get_cookie.exit

rt6_get_cookie.exit:                              ; preds = %rcu_read_unlock.exit.i, %if.then.rt6_get_cookie.exit_crit_edge
  %retval.0.i = phi i32 [ %cookie.1.i, %rcu_read_unlock.exit.i ], [ %1, %if.then.rt6_get_cookie.exit_crit_edge ]
  %sk_rx_dst_cookie = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 3
  %16 = ptrtoint ptr %sk_rx_dst_cookie to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %sk_rx_dst_cookie, align 8
  br label %if.end

if.end:                                           ; preds = %rt6_get_cookie.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !136
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !127

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @sk_free(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp6_unicast_rcv_skb(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %uh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %convert_csum.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 14
  %0 = ptrtoint ptr %convert_csum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %convert_csum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %check = getelementptr inbounds %struct.udphdr, ptr %uh, i32 0, i32 3
  %2 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true1

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true1:                                   ; preds = %land.lhs.true
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %4 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %5)
  %cmp = icmp eq i16 %5, 136
  br i1 %cmp, label %land.lhs.true1.if.end7_crit_edge, label %do.body

land.lhs.true1.if.end7_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.body:                                          ; preds = %land.lhs.true1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %7 = and i16 %bf.load.i, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %if.then5, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %14, i32 noundef 17, i32 noundef 0) #11
  %15 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #14, !srcloc !133
  %16 = xor i32 %15, -1
  %neg.i = lshr i32 %16, 16
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %neg.i, ptr %17, align 8
  %19 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i20 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i20, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body.if.end7_crit_edge, %land.lhs.true1.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb)
  %20 = tail call i32 @llvm.smax.i32(i32 %call8, i32 0)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__udp6_lib_mcast_deliver(ptr noundef readonly %net, ptr noundef %skb, ptr noundef %saddr, ptr noundef %daddr, ptr nocapture noundef readonly %udptable, i32 noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dest, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %udptable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udptable, align 4
  %mask.i = getelementptr inbounds %struct.udp_table, ptr %udptable, i32 0, i32 2
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %10 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_mix.i.i.i, align 8
  %add.i.i = add i32 %11, %conv
  %and.i.i = and i32 %add.i.i, %9
  %arrayidx.i = getelementptr %struct.udp_hslot, ptr %7, i32 %and.i.i
  %count = getelementptr %struct.udp_hslot, ptr %7, i32 %and.i.i, i32 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp = icmp sgt i32 %13, 10
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 8
  %16 = and i16 %15, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i.not.i = icmp eq i16 %16, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %17 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge, label %entry.inet6_sdif.exit_crit_edge, label %if.then.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  br i1 %cmp, label %if.then, label %inet6_sdif.exit.if.end_crit_edge

inet6_sdif.exit.if.end_crit_edge:                 ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef nonnull @in6addr_any, i32 noundef %conv)
  %and = and i32 %call6, %9
  %call8 = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %net, ptr noundef %daddr, i32 noundef %conv)
  %and10 = and i32 %call8, %9
  br label %start_lookup

start_lookup:                                     ; preds = %for.end.start_lookup_crit_edge, %if.then
  %hash2_any.0 = phi i32 [ %and, %if.then ], [ %hash2_any.1, %for.end.start_lookup_crit_edge ]
  %hash2.0 = phi i32 [ %and10, %if.then ], [ %hash2_any.1, %for.end.start_lookup_crit_edge ]
  %first.0 = phi ptr [ null, %if.then ], [ %first.2.lcssa, %for.end.start_lookup_crit_edge ]
  %hash211 = getelementptr inbounds %struct.udp_table, ptr %udptable, i32 0, i32 1
  %20 = ptrtoint ptr %hash211 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hash211, align 4
  %arrayidx = getelementptr %struct.udp_hslot, ptr %21, i32 %hash2.0
  br label %if.end

if.end:                                           ; preds = %start_lookup, %inet6_sdif.exit.if.end_crit_edge
  %hash2_any.1 = phi i32 [ %hash2_any.0, %start_lookup ], [ 0, %inet6_sdif.exit.if.end_crit_edge ]
  %hash2.1 = phi i32 [ %hash2.0, %start_lookup ], [ 0, %inet6_sdif.exit.if.end_crit_edge ]
  %offset.0.neg = phi i32 [ -24, %start_lookup ], [ -84, %inet6_sdif.exit.if.end_crit_edge ]
  %hslot.0 = phi ptr [ %arrayidx, %start_lookup ], [ %arrayidx.i, %inet6_sdif.exit.if.end_crit_edge ]
  %first.1 = phi ptr [ %first.0, %start_lookup ], [ null, %inet6_sdif.exit.if.end_crit_edge ]
  %22 = ptrtoint ptr %hslot.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hslot.0, align 8
  %call14 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end.do.end23_crit_edge

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true:                                    ; preds = %if.end
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__udp6_lib_mcast_deliver.__warned, align 1
  br i1 %.b2, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__udp6_lib_mcast_deliver.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 839, ptr noundef nonnull @.str.2) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %if.end.do.end23_crit_edge
  %cmp25.not13 = icmp eq ptr %23, null
  br i1 %cmp25.not13, label %do.end23.for.end_crit_edge, label %land.rhs.lr.ph

do.end23.for.end_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %do.end23
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %sysctl_udp_l3mdev_accept.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not.i.i.i = icmp eq i32 %retval.0.i, 0
  %arrayidx6.i14.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %arrayidx11.i18.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %arrayidx17.i22.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 5
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 10
  br label %land.rhs

land.rhs:                                         ; preds = %do.end183.land.rhs_crit_edge, %land.rhs.lr.ph
  %first.215 = phi ptr [ %first.1, %land.rhs.lr.ph ], [ %first.3, %do.end183.land.rhs_crit_edge ]
  %node.014 = phi ptr [ %23, %land.rhs.lr.ph ], [ %118, %do.end183.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.014, i32 %offset.0.neg
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 9
  %26 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %net
  br i1 %cmp.i.not.i, label %if.end.i, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %land.rhs
  %28 = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %5)
  %cmp.not.i = icmp eq i16 %30, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 3
  %31 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %32)
  %cmp10.not.i = icmp eq i16 %32, 10
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %33 = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool16.not.i = icmp eq i16 %35, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %25)
  %cmp22.not.i = icmp eq i16 %35, %25
  %or.cond.i = or i1 %tobool16.not.i, %cmp22.not.i
  br i1 %or.cond.i, label %lor.lhs.false24.i, label %lor.lhs.false12.i.for.inc_crit_edge

lor.lhs.false12.i.for.inc_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false24.i:                                ; preds = %lor.lhs.false12.i
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 10
  %36 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 10, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %39, %37
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 10, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %41
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 10, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i1.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i1.i, label %lor.lhs.false24.i.lor.lhs.false31.i_crit_edge, label %land.lhs.true27.i

lor.lhs.false24.i.lor.lhs.false31.i_crit_edge:    ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false31.i

land.lhs.true27.i:                                ; preds = %lor.lhs.false24.i
  %44 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr, align 4
  %xor.i.i = xor i32 %45, %37
  %46 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %47, %39
  %or.i3.i = or i32 %xor7.i.i, %xor.i.i
  %48 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %49, %41
  %or13.i.i = or i32 %or.i3.i, %xor12.i.i
  %50 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %51, %43
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i4.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i4.i, label %land.lhs.true27.i.lor.lhs.false31.i_crit_edge, label %land.lhs.true27.i.for.inc_crit_edge

land.lhs.true27.i.for.inc_crit_edge:              ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true27.i.lor.lhs.false31.i_crit_edge:    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false31.i

lor.lhs.false31.i:                                ; preds = %land.lhs.true27.i.lor.lhs.false31.i_crit_edge, %lor.lhs.false24.i.lor.lhs.false31.i_crit_edge
  %skc_bound_dev_if.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 6
  %52 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %udp_sk_bound_dev_eq.exit.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %cond.i)
  %cmp.i.i.i = icmp eq i32 %53, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %retval.0.i)
  %cmp4.i.i.i = icmp eq i32 %53, %retval.0.i
  %spec.select9.i.i.i = or i1 %cmp.i.i.i, %cmp4.i.i.i
  br i1 %spec.select9.i.i.i, label %if.end.i.i.i.lor.lhs.false34.i_crit_edge, label %if.end.i.i.i.for.inc_crit_edge

if.end.i.i.i.for.inc_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i.lor.lhs.false34.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false34.i

udp_sk_bound_dev_eq.exit.i:                       ; preds = %lor.lhs.false31.i
  %54 = ptrtoint ptr %sysctl_udp_l3mdev_accept.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sysctl_udp_l3mdev_accept.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i.i = icmp ne i8 %55, 0
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.i.i
  br i1 %spec.select.i.i.i, label %udp_sk_bound_dev_eq.exit.i.lor.lhs.false34.i_crit_edge, label %udp_sk_bound_dev_eq.exit.i.for.inc_crit_edge

udp_sk_bound_dev_eq.exit.i.for.inc_crit_edge:     ; preds = %udp_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

udp_sk_bound_dev_eq.exit.i.lor.lhs.false34.i_crit_edge: ; preds = %udp_sk_bound_dev_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false34.i

lor.lhs.false34.i:                                ; preds = %udp_sk_bound_dev_eq.exit.i.lor.lhs.false34.i_crit_edge, %if.end.i.i.i.lor.lhs.false34.i_crit_edge
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr, i32 0, i32 11
  %56 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %arrayidx2.i5.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 11, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx2.i5.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i5.i, align 4
  %or.i6.i = or i32 %59, %57
  %arrayidx4.i7.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 11, i32 0, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx4.i7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx4.i7.i, align 4
  %or5.i8.i = or i32 %or.i6.i, %61
  %arrayidx7.i9.i = getelementptr %struct.sock_common, ptr %add.ptr, i32 0, i32 11, i32 0, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx7.i9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx7.i9.i, align 4
  %or8.i10.i = or i32 %or5.i8.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i10.i)
  %cmp.i11.i = icmp eq i32 %or8.i10.i, 0
  br i1 %cmp.i11.i, label %lor.lhs.false34.i.__udp_v6_is_mcast_sock.exit_crit_edge, label %land.lhs.true37.i

lor.lhs.false34.i.__udp_v6_is_mcast_sock.exit_crit_edge: ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp_v6_is_mcast_sock.exit

land.lhs.true37.i:                                ; preds = %lor.lhs.false34.i
  %64 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %daddr, align 4
  %xor.i12.i = xor i32 %65, %57
  %66 = ptrtoint ptr %arrayidx6.i14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx6.i14.i, align 4
  %xor7.i15.i = xor i32 %67, %59
  %or.i16.i = or i32 %xor7.i15.i, %xor.i12.i
  %68 = ptrtoint ptr %arrayidx11.i18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx11.i18.i, align 4
  %xor12.i19.i = xor i32 %69, %61
  %or13.i20.i = or i32 %or.i16.i, %xor12.i19.i
  %70 = ptrtoint ptr %arrayidx17.i22.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx17.i22.i, align 4
  %xor18.i23.i = xor i32 %71, %63
  %or19.i24.i = or i32 %or13.i20.i, %xor18.i23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i24.i)
  %cmp.i25.i = icmp eq i32 %or19.i24.i, 0
  br i1 %cmp.i25.i, label %land.lhs.true37.i.__udp_v6_is_mcast_sock.exit_crit_edge, label %land.lhs.true37.i.for.inc_crit_edge

land.lhs.true37.i.for.inc_crit_edge:              ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true37.i.__udp_v6_is_mcast_sock.exit_crit_edge: ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__udp_v6_is_mcast_sock.exit

__udp_v6_is_mcast_sock.exit:                      ; preds = %land.lhs.true37.i.__udp_v6_is_mcast_sock.exit_crit_edge, %lor.lhs.false34.i.__udp_v6_is_mcast_sock.exit_crit_edge
  %call43.i = tail call zeroext i1 @inet6_mc_check(ptr noundef %add.ptr, ptr noundef %daddr, ptr noundef %saddr) #11
  br i1 %call43.i, label %if.end32, label %__udp_v6_is_mcast_sock.exit.for.inc_crit_edge

__udp_v6_is_mcast_sock.exit.for.inc_crit_edge:    ; preds = %__udp_v6_is_mcast_sock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %__udp_v6_is_mcast_sock.exit
  %72 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool33.not = icmp eq i16 %73, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true34:                                  ; preds = %if.end32
  %no_check6_rx = getelementptr inbounds %struct.udp_sock, ptr %add.ptr, i32 0, i32 4
  %74 = ptrtoint ptr %no_check6_rx to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load = load i8, ptr %no_check6_rx, align 1
  %75 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool36.not = icmp eq i8 %75, 0
  br i1 %tobool36.not, label %land.lhs.true34.for.inc_crit_edge, label %land.lhs.true34.if.end38_crit_edge

land.lhs.true34.if.end38_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end38:                                         ; preds = %land.lhs.true34.if.end38_crit_edge, %if.end32.if.end38_crit_edge
  %tobool39.not = icmp eq ptr %first.215, null
  br i1 %tobool39.not, label %if.end38.for.inc_crit_edge, label %if.end41

if.end38.for.inc_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end41:                                         ; preds = %if.end38
  %call42 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then47, label %if.end162, !prof !131

if.then47:                                        ; preds = %if.end41
  %sk_drops = getelementptr inbounds %struct.sock, ptr %add.ptr, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #11, !srcloc !128
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %add.ptr, i32 0, i32 46
  %77 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %78)
  %cmp50 = icmp eq i16 %78, 136
  %udplite_stats_in6.udp_stats_in6 = select i1 %cmp50, ptr %udplite_stats_in6, ptr %udp_stats_in6
  %79 = ptrtoint ptr %udplite_stats_in6.udp_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udplite_stats_in6.udp_stats_in6, align 4
  %arrayidx63 = getelementptr [10 x i32], ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %arrayidx63 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx66, align 4
  %add = add i32 %87, %81
  %88 = inttoptr i32 %add to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %add67 = add i32 %90, 1
  store i32 %add67, ptr %88, align 4
  %91 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %92)
  %cmp103 = icmp eq i16 %92, 136
  br i1 %cmp103, label %if.then105, label %if.else132

if.then105:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %udplite_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %udplite_stats_in6, align 4
  %arrayidx121 = getelementptr [10 x i32], ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx121 to i32
  %96 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i8 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i8 to ptr
  %cpu124 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %cpu124 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu124, align 4
  %arrayidx125 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx125, align 4
  %add126 = add i32 %101, %95
  %102 = inttoptr i32 %add126 to ptr
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %add127 = add i32 %104, 1
  store i32 %add127, ptr %102, align 4
  br label %for.inc

if.else132:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %udp_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %udp_stats_in6, align 4
  %arrayidx148 = getelementptr [10 x i32], ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx148 to i32
  %108 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i9 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i9 to ptr
  %cpu151 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %cpu151 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu151, align 4
  %arrayidx152 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx152, align 4
  %add153 = add i32 %113, %107
  %114 = inttoptr i32 %add153 to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %add154 = add i32 %116, 1
  store i32 %add154, ptr %114, align 4
  br label %for.inc

if.end162:                                        ; preds = %if.end41
  %call163 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %add.ptr, ptr noundef nonnull %call42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp sgt i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end162.for.inc_crit_edge

if.end162.for.inc_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef nonnull %call42) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then166, %if.end162.for.inc_crit_edge, %if.else132, %if.then105, %if.end38.for.inc_crit_edge, %land.lhs.true34.for.inc_crit_edge, %__udp_v6_is_mcast_sock.exit.for.inc_crit_edge, %land.lhs.true37.i.for.inc_crit_edge, %udp_sk_bound_dev_eq.exit.i.for.inc_crit_edge, %if.end.i.i.i.for.inc_crit_edge, %land.lhs.true27.i.for.inc_crit_edge, %lor.lhs.false12.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %first.3 = phi ptr [ %first.215, %if.then105 ], [ %first.215, %if.else132 ], [ %first.215, %if.then166 ], [ %first.215, %if.end162.for.inc_crit_edge ], [ %first.215, %land.lhs.true34.for.inc_crit_edge ], [ %first.215, %__udp_v6_is_mcast_sock.exit.for.inc_crit_edge ], [ %add.ptr, %if.end38.for.inc_crit_edge ], [ %first.215, %land.rhs.for.inc_crit_edge ], [ %first.215, %lor.lhs.false12.i.for.inc_crit_edge ], [ %first.215, %land.lhs.true37.i.for.inc_crit_edge ], [ %first.215, %udp_sk_bound_dev_eq.exit.i.for.inc_crit_edge ], [ %first.215, %land.lhs.true27.i.for.inc_crit_edge ], [ %first.215, %lor.lhs.false.i.for.inc_crit_edge ], [ %first.215, %if.end.i.for.inc_crit_edge ], [ %first.215, %if.end.i.i.i.for.inc_crit_edge ]
  %117 = ptrtoint ptr %node.014 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %node.014, align 4
  %call173 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %land.lhs.true175, label %for.inc.do.end183_crit_edge

for.inc.do.end183_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183

land.lhs.true175:                                 ; preds = %for.inc
  %call176 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %land.lhs.true175.do.end183_crit_edge, label %land.lhs.true178

land.lhs.true175.do.end183_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183

land.lhs.true178:                                 ; preds = %land.lhs.true175
  %.b3011 = load i1, ptr @__udp6_lib_mcast_deliver.__warned.31, align 1
  br i1 %.b3011, label %land.lhs.true178.do.end183_crit_edge, label %if.then180

land.lhs.true178.do.end183_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183

if.then180:                                       ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__udp6_lib_mcast_deliver.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 839, ptr noundef nonnull @.str.2) #11
  br label %do.end183

do.end183:                                        ; preds = %if.then180, %land.lhs.true178.do.end183_crit_edge, %land.lhs.true175.do.end183_crit_edge, %for.inc.do.end183_crit_edge
  %cmp25.not = icmp eq ptr %118, null
  br i1 %cmp25.not, label %do.end183.for.end_crit_edge, label %do.end183.land.rhs_crit_edge

do.end183.land.rhs_crit_edge:                     ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.end183.for.end_crit_edge:                      ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.end183.for.end_crit_edge, %do.end23.for.end_crit_edge
  %first.2.lcssa = phi ptr [ %first.1, %do.end23.for.end_crit_edge ], [ %first.3, %do.end183.for.end_crit_edge ]
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_cmp4(i32 %hash2.1, i32 %hash2_any.1)
  %cmp187.not = icmp eq i32 %hash2.1, %hash2_any.1
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp187.not
  br i1 %or.cond, label %if.end190, label %for.end.start_lookup_crit_edge

for.end.start_lookup_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %start_lookup

if.end190:                                        ; preds = %for.end
  %tobool191.not = icmp eq ptr %first.2.lcssa, null
  br i1 %tobool191.not, label %if.else198, label %if.then192

if.then192:                                       ; preds = %if.end190
  %call193 = tail call fastcc i32 @udpv6_queue_rcv_skb(ptr noundef nonnull %first.2.lcssa, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194 = icmp sgt i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.then192.if.end259_crit_edge

if.then192.if.end259_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

if.then196:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end259

if.else198:                                       ; preds = %if.end190
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %proto)
  %cmp200 = icmp eq i32 %proto, 136
  br i1 %cmp200, label %if.then202, label %if.else229

if.then202:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6216 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 10
  %119 = ptrtoint ptr %udplite_stats_in6216 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %udplite_stats_in6216, align 4
  %arrayidx218 = getelementptr [10 x i32], ptr %120, i32 0, i32 8
  %121 = ptrtoint ptr %arrayidx218 to i32
  %122 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i10 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i10 to ptr
  %cpu221 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %cpu221 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cpu221, align 4
  %arrayidx222 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx222, align 4
  %add223 = add i32 %127, %121
  %128 = inttoptr i32 %add223 to ptr
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %add224 = add i32 %130, 1
  store i32 %add224, ptr %128, align 4
  br label %if.end259

if.else229:                                       ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6243 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 5
  %131 = ptrtoint ptr %udp_stats_in6243 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %udp_stats_in6243, align 4
  %arrayidx245 = getelementptr [10 x i32], ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %arrayidx245 to i32
  %134 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i11 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i11 to ptr
  %cpu248 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %cpu248 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cpu248, align 4
  %arrayidx249 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx249, align 4
  %add250 = add i32 %139, %133
  %140 = inttoptr i32 %add250 to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %add251 = add i32 %142, 1
  store i32 %add251, ptr %140, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.else229, %if.then202, %if.then196, %if.then192.if.end259_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__udp6_lib_lookup_skb(ptr noundef %skb, i16 noundef zeroext %sport, i16 noundef zeroext %dport, ptr noundef %udptable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %4 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nd_net.i, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 8
  %11 = and i16 %10, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not.i = icmp eq i16 %11, 0
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cond.in.i = select i1 %tobool.i.not.i, ptr %cb.i, ptr %skb_iif.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %tobool.not.i = icmp eq ptr %skb, null
  %brmerge = select i1 %tobool.not.i, i1 true, i1 %tobool.i.not.i
  br i1 %brmerge, label %entry.inet6_sdif.exit_crit_edge, label %if.then.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call4 = tail call ptr @__udp6_lib_lookup(ptr noundef %8, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %cond.i, i32 noundef %retval.0.i, ptr noundef %udptable, ptr noundef %skb)
  ret ptr %call4
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %sk, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %sk, null
  br i1 %tobool1.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %sk_policy.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 18
  %5 = ptrtoint ptr %sk_policy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_policy.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #11
  br label %xfrm_policy_check.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %7 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %policy_default.i.i.i, align 16
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %10 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %12 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_policy_check.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !131

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i.i = load i32, ptr %15, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %19 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %17, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool12.not.i.i = icmp ult i32 %19, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.lor.rhs.i.i_crit_edge:           ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !131

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i11.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i, align 4
  %25 = and i16 %24, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool16.not.i.i = icmp eq i16 %25, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, label %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_policy_check.exit

skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge:         ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %skb_dst.exit12.i.i.lor.rhs.i.i_crit_edge, %skb_dst.exit.i.i.lor.rhs.i.i_crit_edge
  %call18.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.i.i = icmp ne i32 %call18.i.i, 0
  %phi.cast1.i.i = zext i1 %tobool19.i.i to i32
  br label %xfrm_policy_check.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i13.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !131

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr35.i.i = load i32, ptr %26, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %30 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %28, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %tobool21.not.i.i = icmp ult i32 %30, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs28.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !131

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 8
  %and25.i33.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags24.i.i, align 4
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool27.not.i.i = icmp eq i16 %36, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, label %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_policy_check.exit

skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge:       ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs28.i.i

lor.rhs28.i.i:                                    ; preds = %skb_dst.exit34.i.i.lor.rhs28.i.i_crit_edge, %skb_dst.exit23.i.i.lor.rhs28.i.i_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef %sk, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i = icmp ne i32 %call30.i.i, 0
  %phi.cast.i.i = zext i1 %tobool31.i.i to i32
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %lor.rhs28.i.i, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, %lor.rhs.i.i, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ 1, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge ], [ 1, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast1.i.i, %lor.rhs.i.i ], [ 1, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast.i.i, %lor.rhs28.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp_lib_checksum_complete(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %1 = and i16 %bf.lshr.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp ne i16 %1, 1
  %2 = and i16 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %lor.rhs.i, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp12.i = icmp eq i16 %1, 3
  br i1 %cmp12.i, label %skb_csum_unnecessary.exit, label %lor.rhs.i.land.rhs_crit_edge

lor.rhs.i.land.rhs_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

skb_csum_unnecessary.exit:                        ; preds = %lor.rhs.i
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %conv.i.i = zext i16 %5 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not = icmp slt i32 %sub.i.i, 0
  br i1 %tobool.not, label %skb_csum_unnecessary.exit.land.rhs_crit_edge, label %skb_csum_unnecessary.exit.land.end_crit_edge

skb_csum_unnecessary.exit.land.end_crit_edge:     ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

skb_csum_unnecessary.exit.land.rhs_crit_edge:     ; preds = %skb_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %skb_csum_unnecessary.exit.land.rhs_crit_edge, %lor.rhs.i.land.rhs_crit_edge
  %cscov.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %cscov.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cscov.i, align 8
  %conv.i = zext i16 %11 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp.i4 = icmp eq i32 %13, %conv.i
  br i1 %cmp.i4, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #11
  br label %__udp_lib_checksum_complete.exit

cond.false.i:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %skb, i32 noundef %conv.i) #11
  br label %__udp_lib_checksum_complete.exit

__udp_lib_checksum_complete.exit:                 ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i16 [ %call.i, %cond.true.i ], [ %call7.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in.i)
  %tobool2 = icmp ne i16 %cond.in.i, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %__udp_lib_checksum_complete.exit, %skb_csum_unnecessary.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %14 = phi i32 [ 0, %skb_csum_unnecessary.exit.land.end_crit_edge ], [ %phi.cast, %__udp_lib_checksum_complete.exit ], [ 0, %entry.land.end_crit_edge ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %opt_space = alloca %struct.ipv6_txoptions, align 4
  %final = alloca %struct.in6_addr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  %ipc6 = alloca %struct.ipcm6_cookie, align 8
  %sin = alloca %struct.sockaddr_in, align 4
  %__unused_flags = alloca i32, align 4
  %cork = alloca %struct.inet_cork_full, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %opt_space) #11
  %0 = call ptr @memset(ptr %opt_space, i32 255, i32 36)
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %3 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %4, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #11
  %7 = call ptr @memset(ptr %final, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %8 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ipc6) #11
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_namelen, align 4
  %corkflag = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 2
  %11 = ptrtoint ptr %corkflag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %corkflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.rhs, label %inet6_sk.exit.lor.end_crit_edge

inet6_sk.exit.lor.end_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_flags, align 4
  %and = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %inet6_sk.exit.lor.end_crit_edge
  %15 = phi i1 [ true, %inet6_sk.exit.lor.end_crit_edge ], [ %tobool7, %lor.rhs ]
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %16 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %17)
  %cmp = icmp eq i16 %17, 136
  %18 = call ptr @memset(ptr %ipc6, i32 0, i32 16)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 16
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 18
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 20
  %.compoundliteral.sroa.41.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 22
  %21 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc6, i32 23
  %22 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 9)
  %gso_size = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 6
  %23 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load volatile i16, ptr %gso_size, align 4
  %25 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %26 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sk_tsflags, align 8
  %tsflags = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 2
  %28 = ptrtoint ptr %tsflags to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %tsflags, align 4
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %29 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_mark, align 8
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %31 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mark, align 8
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp16 = icmp ult i32 %10, 2
  br i1 %cmp16, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %6, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %33, label %if.end.cleanup_crit_edge [
    i16 10, label %sw.bb
    i16 2, label %if.end.do_udp_sendmsg_crit_edge
    i16 0, label %sw.bb31
  ]

if.end.do_udp_sendmsg_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_udp_sendmsg

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %10)
  %cmp20 = icmp slt i32 %10, 24
  br i1 %cmp20, label %sw.bb.cleanup_crit_edge, label %if.end23

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %sw.bb
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %6, i32 0, i32 3
  %35 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %38, %36
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %40
  %arrayidx7.i = getelementptr %struct.sockaddr_in6, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end23
  %43 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cond.i, align 4
  %arrayidx2.i796 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx2.i796 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx2.i796, align 4
  %or.i797 = or i32 %46, %44
  %arrayidx4.i798 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx4.i798 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i798, align 4
  %xor.i = xor i32 %48, 65535
  %or5.i799 = or i32 %or.i797, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i799)
  %cmp.i800 = icmp eq i32 %or5.i799, 0
  br i1 %cmp.i800, label %if.then28, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %sin6_addr, align 4
  %50 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx2.i, align 4
  %51 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65535, ptr %arrayidx4.i, align 4
  %52 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2130706433, ptr %arrayidx7.i, align 4
  br label %if.end44

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %msg, align 8
  %54 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %msg_namelen, align 4
  br label %if.end63

if.else:                                          ; preds = %lor.end
  %pending = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 1
  %55 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool34.not = icmp eq i32 %56, 0
  br i1 %tobool34.not, label %if.then35, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then35:                                        ; preds = %if.else
  %57 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp37.not = icmp eq i8 %58, 1
  br i1 %cmp37.not, label %if.end40, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.then28, %land.lhs.true.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %daddr.0 = phi ptr [ %sin6_addr, %if.then28 ], [ %sin6_addr, %land.lhs.true.if.end44_crit_edge ], [ %sin6_addr, %if.end23.if.end44_crit_edge ], [ %skc_v6_daddr, %if.end40 ]
  %tobool45.not = icmp eq ptr %daddr.0, null
  br i1 %tobool45.not, label %if.end44.if.end63_crit_edge, label %if.then46

if.end44.if.end63_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then46:                                        ; preds = %if.end44
  %59 = ptrtoint ptr %daddr.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %daddr.0, align 4
  %arrayidx2.i801 = getelementptr [4 x i32], ptr %daddr.0, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx2.i801 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx2.i801, align 4
  %or.i802 = or i32 %62, %60
  %arrayidx4.i803 = getelementptr [4 x i32], ptr %daddr.0, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx4.i803 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.i803, align 4
  %xor.i804 = xor i32 %64, 65535
  %or5.i805 = or i32 %or.i802, %xor.i804
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i805)
  %cmp.i806 = icmp eq i32 %or5.i805, 0
  br i1 %cmp.i806, label %if.then48, label %if.then46.if.end63_crit_edge

if.then46.if.end63_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then48:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %65 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  %66 = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  %67 = getelementptr inbounds i8, ptr %sin, i32 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 -1, ptr %67, align 4
  %69 = ptrtoint ptr %sin to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 2, ptr %sin, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %cond.in.in = select i1 %tobool15.not, ptr %70, ptr %sin6_port
  %71 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %71)
  %cond.in787 = load i16, ptr %cond.in.in, align 2
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %cond.in787, ptr %65, align 2
  %arrayidx = getelementptr [4 x i32], ptr %daddr.0, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %66, align 4
  %76 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %sin, ptr %msg, align 8
  %77 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 16, ptr %msg_namelen, align 4
  br label %do_udp_sendmsg

do_udp_sendmsg:                                   ; preds = %if.then48, %if.end.do_udp_sendmsg_crit_edge
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %78 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %79 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool58.not = icmp eq i8 %79, 0
  br i1 %tobool58.not, label %if.end60, label %do_udp_sendmsg.cleanup_crit_edge

do_udp_sendmsg.cleanup_crit_edge:                 ; preds = %do_udp_sendmsg
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end60:                                         ; preds = %do_udp_sendmsg
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 @udp_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #11
  br label %cleanup

if.end63:                                         ; preds = %if.then46.if.end63_crit_edge, %if.end44.if.end63_crit_edge, %if.else.if.end63_crit_edge, %sw.bb31
  %sin6.0864 = phi ptr [ %6, %if.then46.if.end63_crit_edge ], [ %6, %if.end44.if.end63_crit_edge ], [ null, %sw.bb31 ], [ null, %if.else.if.end63_crit_edge ]
  %addr_len.0863 = phi i32 [ %10, %if.then46.if.end63_crit_edge ], [ %10, %if.end44.if.end63_crit_edge ], [ 0, %sw.bb31 ], [ %10, %if.else.if.end63_crit_edge ]
  %pending64 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 1
  %80 = ptrtoint ptr %pending64 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pending64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp65 = icmp eq i32 %81, 2
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %call68 = tail call i32 @udp_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len) #11
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483639, i32 %len)
  %cmp70 = icmp ugt i32 %len, 2147483639
  br i1 %cmp70, label %if.end69.cleanup_crit_edge, label %if.end73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  %cond75 = select i1 %cmp, ptr @udplite_getfrag, ptr @ip_generic_getfrag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool77.not = icmp eq i32 %81, 0
  br i1 %tobool77.not, label %if.end73.if.end96_crit_edge, label %if.then78

if.end73.if.end96_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then78:                                        ; preds = %if.end73
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %82 = ptrtoint ptr %pending64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pending64, align 8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %83, label %if.then93 [
    i32 0, label %if.end95
    i32 10, label %if.then78.do_append_data_crit_edge
  ], !prof !138

if.then78.do_append_data_crit_edge:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_append_data

if.then93:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %sk) #11
  br label %cleanup

if.end95:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @release_sock(ptr noundef %sk) #11
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end73.if.end96_crit_edge
  %add = add nuw nsw i32 %len, 8
  %85 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %tobool97.not = icmp eq ptr %sin6.0864, null
  br i1 %tobool97.not, label %if.else150, label %if.then98

if.then98:                                        ; preds = %if.end96
  %sin6_port99 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 1
  %86 = ptrtoint ptr %sin6_port99 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %sin6_port99, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp101 = icmp eq i16 %87, 0
  br i1 %cmp101, label %if.then98.cleanup_crit_edge, label %if.end104

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end104:                                        ; preds = %if.then98
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %88 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %uli, align 4
  %sin6_addr106 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3
  %sndflow = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %89 = ptrtoint ptr %sndflow to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load107 = load i16, ptr %sndflow, align 2
  %90 = and i16 %bf.load107, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool110.not = icmp eq i16 %90, 0
  br i1 %tobool110.not, label %if.end104.if.end124_crit_edge, label %if.then111

if.end104.if.end124_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then111:                                       ; preds = %if.end104
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 2
  %91 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sin6_flowinfo, align 4
  %and112 = and i32 %92, 268435455
  %flowlabel113 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %93 = ptrtoint ptr %flowlabel113 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and112, ptr %flowlabel113, align 8
  %and115 = and i32 %92, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then111.if.end124_crit_edge, label %if.then117

if.then111.if.end124_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then117:                                       ; preds = %if.then111
  %call119 = tail call fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %and112)
  %cmp.i807 = icmp ugt ptr %call119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i807, label %if.then117.cleanup_crit_edge, label %if.then117.if.end124_crit_edge

if.then117.if.end124_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end124:                                        ; preds = %if.then117.if.end124_crit_edge, %if.then111.if.end124_crit_edge, %if.end104.if.end124_crit_edge
  %flowlabel.0 = phi ptr [ %call119, %if.then117.if.end124_crit_edge ], [ null, %if.then111.if.end124_crit_edge ], [ null, %if.end104.if.end124_crit_edge ]
  %94 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp128 = icmp eq i8 %95, 1
  br i1 %cmp128, label %land.lhs.true130, label %if.end124.if.end138_crit_edge

if.end124.if.end138_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

land.lhs.true130:                                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  %skc_v6_daddr132 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %96 = ptrtoint ptr %sin6_addr106 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sin6_addr106, align 4
  %98 = ptrtoint ptr %skc_v6_daddr132 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %skc_v6_daddr132, align 4
  %xor.i808 = xor i32 %99, %97
  %arrayidx4.i809 = getelementptr %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3, i32 0, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx4.i809 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx4.i809, align 4
  %arrayidx6.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %103, %101
  %or.i810 = or i32 %xor7.i, %xor.i808
  %arrayidx9.i = getelementptr %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3, i32 0, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %107, %105
  %or13.i = or i32 %or.i810, %xor12.i
  %arrayidx15.i = getelementptr %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3, i32 0, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %110 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %111, %109
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i811 = icmp eq i32 %or19.i, 0
  %spec.select = select i1 %cmp.i811, ptr %skc_v6_daddr132, ptr %sin6_addr106
  br label %if.end138

if.end138:                                        ; preds = %land.lhs.true130, %if.end124.if.end138_crit_edge
  %daddr.1 = phi ptr [ %sin6_addr106, %if.end124.if.end138_crit_edge ], [ %spec.select, %land.lhs.true130 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %addr_len.0863)
  %cmp139 = icmp ugt i32 %addr_len.0863, 27
  br i1 %cmp139, label %land.lhs.true141, label %if.end138.if.end166thread-pre-split_crit_edge

if.end138.if.end166thread-pre-split_crit_edge:    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166thread-pre-split

land.lhs.true141:                                 ; preds = %if.end138
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 4
  %112 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool142.not = icmp eq i32 %113, 0
  br i1 %tobool142.not, label %land.lhs.true141.if.end166thread-pre-split_crit_edge, label %land.lhs.true143

land.lhs.true141.if.end166thread-pre-split_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166thread-pre-split

land.lhs.true143:                                 ; preds = %land.lhs.true141
  %call144 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr.1) #11
  %and.i = and i32 %call144, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %land.lhs.true143.if.then147_crit_edge

land.lhs.true143.if.then147_crit_edge:            ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147

lor.rhs.i:                                        ; preds = %land.lhs.true143
  %and1.i812 = and i32 %call144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i812)
  %tobool2.not.i = icmp ne i32 %and1.i812, 0
  %and3.i = and i32 %call144, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %or.cond885 = and i1 %tobool2.not.i, %tobool4.i
  br i1 %or.cond885, label %lor.rhs.i.if.then147_crit_edge, label %lor.rhs.i.if.end166thread-pre-split_crit_edge

lor.rhs.i.if.end166thread-pre-split_crit_edge:    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166thread-pre-split

lor.rhs.i.if.then147_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147

if.then147:                                       ; preds = %lor.rhs.i.if.then147_crit_edge, %land.lhs.true143.if.then147_crit_edge
  %114 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sin6_scope_id, align 4
  %116 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %fl6, align 8
  br label %if.end166

if.else150:                                       ; preds = %if.end96
  %117 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp154.not = icmp eq i8 %118, 1
  br i1 %cmp154.not, label %if.end157, label %if.else150.cleanup_crit_edge

if.else150.cleanup_crit_edge:                     ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end157:                                        ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #13
  %119 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %119, align 4
  %uli161 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %122 = ptrtoint ptr %uli161 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %uli161, align 4
  %skc_v6_daddr164 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %123 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flow_label, align 4
  %flowlabel165 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %125 = ptrtoint ptr %flowlabel165 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %flowlabel165, align 8
  br label %if.end166thread-pre-split

if.end166thread-pre-split:                        ; preds = %if.end157, %lor.rhs.i.if.end166thread-pre-split_crit_edge, %land.lhs.true141.if.end166thread-pre-split_crit_edge, %if.end138.if.end166thread-pre-split_crit_edge
  %flowlabel.1.ph = phi ptr [ null, %if.end157 ], [ %flowlabel.0, %if.end138.if.end166thread-pre-split_crit_edge ], [ %flowlabel.0, %land.lhs.true141.if.end166thread-pre-split_crit_edge ], [ %flowlabel.0, %lor.rhs.i.if.end166thread-pre-split_crit_edge ]
  %daddr.2.ph = phi ptr [ %skc_v6_daddr164, %if.end157 ], [ %daddr.1, %if.end138.if.end166thread-pre-split_crit_edge ], [ %daddr.1, %land.lhs.true141.if.end166thread-pre-split_crit_edge ], [ %daddr.1, %lor.rhs.i.if.end166thread-pre-split_crit_edge ]
  %126 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr = load i32, ptr %fl6, align 8
  br label %if.end166

if.end166:                                        ; preds = %if.end166thread-pre-split, %if.then147
  %127 = phi i32 [ %.pr, %if.end166thread-pre-split ], [ %115, %if.then147 ]
  %flowlabel.1 = phi ptr [ %flowlabel.1.ph, %if.end166thread-pre-split ], [ %flowlabel.0, %if.then147 ]
  %daddr.2 = phi ptr [ %daddr.2.ph, %if.end166thread-pre-split ], [ %daddr.1, %if.then147 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool169.not = icmp eq i32 %127, 0
  br i1 %tobool169.not, label %if.then170, label %if.end174thread-pre-split

if.then170:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %128 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %skc_bound_dev_if, align 4
  %130 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %fl6, align 8
  br label %if.end174

if.end174thread-pre-split:                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr867 = load i32, ptr %fl6, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.end174thread-pre-split, %if.then170
  %132 = phi i32 [ %.pr867, %if.end174thread-pre-split ], [ %129, %if.then170 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool177.not = icmp eq i32 %132, 0
  br i1 %tobool177.not, label %if.then178, label %if.end174.if.end181_crit_edge

if.end174.if.end181_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %ipi6_ifindex = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %ipi6_ifindex to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ipi6_ifindex, align 4
  %135 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %fl6, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.then178, %if.end174.if.end181_crit_edge
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %136 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sk_uid, align 4
  %138 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %flowic_uid, align 4
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %139 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool183.not = icmp eq i32 %140, 0
  br i1 %tobool183.not, label %if.end181.if.then217_crit_edge, label %if.then184

if.end181.if.then217_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then217

if.then184:                                       ; preds = %if.end181
  %141 = call ptr @memset(ptr %opt_space, i32 0, i32 36)
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 1
  %142 = ptrtoint ptr %tot_len to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 36, ptr %tot_len, align 4
  %opt185 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %143 = ptrtoint ptr %opt185 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %opt_space, ptr %opt185, align 8
  %call187 = call i32 @udp_cmsg_send(ptr noundef %sk, ptr noundef %msg, ptr noundef %.compoundliteral.sroa.4.0..sroa_idx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp sgt i32 %call187, 0
  br i1 %cmp188, label %if.then190, label %if.then184.if.end193_crit_edge

if.then184.if.end193_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then190:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #13
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %144 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %skc_net.i, align 4
  %call192 = call i32 @ip6_datagram_send_ctl(ptr noundef %145, ptr noundef %sk, ptr noundef %msg, ptr noundef nonnull %fl6, ptr noundef nonnull %ipc6) #11
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.then184.if.end193_crit_edge
  %err.0 = phi i32 [ %call192, %if.then190 ], [ %call187, %if.then184.if.end193_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp194 = icmp slt i32 %err.0, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @fl6_sock_release(ptr noundef %flowlabel.1)
  br label %cleanup

if.end197:                                        ; preds = %if.end193
  %flowlabel198 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %146 = ptrtoint ptr %flowlabel198 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flowlabel198, align 8
  %and199 = and i32 %147, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp ne i32 %and199, 0
  %tobool202.not = icmp eq ptr %flowlabel.1, null
  %or.cond = and i1 %tobool202.not, %tobool200.not
  br i1 %or.cond, label %if.then203, label %if.end197.if.end209_crit_edge

if.end197.if.end209_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then203:                                       ; preds = %if.end197
  %call205 = call fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %147)
  %cmp.i813 = icmp ugt ptr %call205, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i813, label %if.then203.cleanup_crit_edge, label %if.then203.if.end209_crit_edge

if.then203.if.end209_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then203.cleanup_crit_edge:                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end209:                                        ; preds = %if.then203.if.end209_crit_edge, %if.end197.if.end209_crit_edge
  %flowlabel.2 = phi ptr [ %call205, %if.then203.if.end209_crit_edge ], [ %flowlabel.1, %if.end197.if.end209_crit_edge ]
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 3
  %148 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %opt_nflen, align 2
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_space, i32 0, i32 2
  %150 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %opt_flen, align 4
  %or786 = or i16 %151, %149
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or786)
  %tobool212.not = icmp eq i16 %or786, 0
  br i1 %tobool212.not, label %if.end209.if.then217_crit_edge, label %if.end209.if.end219_crit_edge

if.end209.if.end219_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.end209.if.then217_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then217

if.then217:                                       ; preds = %if.end209.if.then217_crit_edge, %if.end181.if.then217_crit_edge
  %connected.1.off0.ph = phi i1 [ %tobool97.not, %if.end181.if.then217_crit_edge ], [ false, %if.end209.if.then217_crit_edge ]
  %flowlabel.3.ph = phi ptr [ %flowlabel.1, %if.end181.if.then217_crit_edge ], [ %flowlabel.2, %if.end209.if.then217_crit_edge ]
  %call218 = call fastcc ptr @txopt_get(ptr noundef %cond.i)
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.end209.if.end219_crit_edge
  %flowlabel.3874 = phi ptr [ %flowlabel.3.ph, %if.then217 ], [ %flowlabel.2, %if.end209.if.end219_crit_edge ]
  %connected.1.off0872 = phi i1 [ %connected.1.off0.ph, %if.then217 ], [ false, %if.end209.if.end219_crit_edge ]
  %opt_to_free.0 = phi ptr [ %call218, %if.then217 ], [ null, %if.end209.if.end219_crit_edge ]
  %opt.1 = phi ptr [ %call218, %if.then217 ], [ %opt_space, %if.end209.if.end219_crit_edge ]
  %tobool220.not = icmp eq ptr %flowlabel.3874, null
  br i1 %tobool220.not, label %if.end219.if.end223_crit_edge, label %if.then221

if.end219.if.end223_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.then221:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  %call222 = call ptr @fl6_merge_options(ptr noundef nonnull %opt_space, ptr noundef nonnull %flowlabel.3874, ptr noundef %opt.1) #11
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %if.end219.if.end223_crit_edge
  %opt.2 = phi ptr [ %call222, %if.then221 ], [ %opt.1, %if.end219.if.end223_crit_edge ]
  %call224 = call ptr @ipv6_fixup_options(ptr noundef nonnull %opt_space, ptr noundef %opt.2) #11
  %opt225 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %152 = ptrtoint ptr %opt225 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call224, ptr %opt225, align 8
  %153 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %sk_protocol, align 4
  %conv227 = trunc i16 %154 to i8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %155 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv227, ptr %flowic_proto, align 2
  %156 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %158 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %flowic_mark, align 8
  %daddr232 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %159 = call ptr @memcpy(ptr %daddr232, ptr %daddr.2, i32 16)
  %saddr233 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %160 = ptrtoint ptr %saddr233 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %saddr233, align 8
  %arrayidx2.i814 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx2.i814 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx2.i814, align 4
  %or.i815 = or i32 %163, %161
  %arrayidx4.i816 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %164 = ptrtoint ptr %arrayidx4.i816 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx4.i816, align 8
  %or5.i817 = or i32 %or.i815, %165
  %arrayidx7.i818 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %166 = ptrtoint ptr %arrayidx7.i818 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx7.i818, align 4
  %or8.i819 = or i32 %or5.i817, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i819)
  %cmp.i820 = icmp eq i32 %or8.i819, 0
  br i1 %cmp.i820, label %land.lhs.true236, label %if.end223.if.end242_crit_edge

if.end223.if.end242_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

land.lhs.true236:                                 ; preds = %if.end223
  %168 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %cond.i, align 4
  %arrayidx2.i821 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 1
  %170 = ptrtoint ptr %arrayidx2.i821 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx2.i821, align 4
  %or.i822 = or i32 %171, %169
  %arrayidx4.i823 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 2
  %172 = ptrtoint ptr %arrayidx4.i823 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx4.i823, align 4
  %or5.i824 = or i32 %or.i822, %173
  %arrayidx7.i825 = getelementptr [4 x i32], ptr %cond.i, i32 0, i32 3
  %174 = ptrtoint ptr %arrayidx7.i825 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx7.i825, align 4
  %or8.i826 = or i32 %or5.i824, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i826)
  %cmp.i827 = icmp eq i32 %or8.i826, 0
  br i1 %cmp.i827, label %land.lhs.true236.if.end242_crit_edge, label %if.then239

land.lhs.true236.if.end242_crit_edge:             ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.then239:                                       ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #13
  %176 = call ptr @memcpy(ptr %saddr233, ptr %cond.i, i32 16)
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %land.lhs.true236.if.end242_crit_edge, %if.end223.if.end242_crit_edge
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %177 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %inet_sport, align 8
  %uli243 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %sport = getelementptr inbounds %struct.anon.40, ptr %uli243, i32 0, i32 1
  %179 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %sport, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 12), ptr blockaddress(@udpv6_sendmsg, %l_yes.i)) #11
          to label %if.end293 [label %l_yes.i], !srcloc !122

l_yes.i:                                          ; preds = %if.end242
  br i1 %connected.1.off0872, label %l_yes.i.if.end293_crit_edge, label %if.then255

l_yes.i.if.end293_crit_edge:                      ; preds = %l_yes.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end293

if.then255:                                       ; preds = %l_yes.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__unused_flags) #11
  %180 = ptrtoint ptr %__unused_flags to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %__unused_flags, align 4, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 12), ptr blockaddress(@udpv6_sendmsg, %if.then267)) #11
          to label %if.end270 [label %if.then267], !srcloc !122

if.then267:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #13
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %call269 = call i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef %sk, ptr noundef %sin6.0864, i32 noundef 12, ptr noundef %saddr233, ptr noundef nonnull %__unused_flags) #11
  call void @release_sock(ptr noundef %sk) #11
  br label %if.end270

if.end270:                                        ; preds = %if.then267, %if.then255
  %__ret.0 = phi i32 [ %call269, %if.then267 ], [ 0, %if.then255 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__unused_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool272.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool272.not, label %if.end274, label %if.end270.out_no_dst_crit_edge

if.end270.out_no_dst_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_no_dst

if.end274:                                        ; preds = %if.end270
  br i1 %tobool97.not, label %if.end274.if.end293_crit_edge, label %if.then276

if.end274.if.end293_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end293

if.then276:                                       ; preds = %if.end274
  %sin6_addr277 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3
  %181 = ptrtoint ptr %sin6_addr277 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sin6_addr277, align 4
  %arrayidx2.i828 = getelementptr %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3, i32 0, i32 0, i32 1
  %183 = ptrtoint ptr %arrayidx2.i828 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx2.i828, align 4
  %or.i829 = or i32 %184, %182
  %arrayidx4.i830 = getelementptr %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 3, i32 0, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx4.i830 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx4.i830, align 4
  %xor.i831 = xor i32 %186, 65535
  %or5.i832 = or i32 %or.i829, %xor.i831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i832)
  %cmp.i833 = icmp eq i32 %or5.i832, 0
  br i1 %cmp.i833, label %if.then276.out_no_dst_crit_edge, label %if.end280

if.then276.out_no_dst_crit_edge:                  ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_no_dst

if.end280:                                        ; preds = %if.then276
  %sin6_port281 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.0864, i32 0, i32 1
  %187 = ptrtoint ptr %sin6_port281 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %sin6_port281, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %cmp283 = icmp eq i16 %188, 0
  br i1 %cmp283, label %if.end280.out_no_dst_crit_edge, label %if.end286

if.end280.out_no_dst_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_no_dst

if.end286:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %uli243 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %uli243, align 4
  %190 = call ptr @memcpy(ptr %daddr232, ptr %sin6_addr277, i32 16)
  br label %if.end293

if.end293:                                        ; preds = %if.end286, %if.end274.if.end293_crit_edge, %l_yes.i.if.end293_crit_edge, %if.end242
  %191 = ptrtoint ptr %daddr232 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %daddr232, align 8
  %arrayidx2.i834 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 1
  %193 = ptrtoint ptr %arrayidx2.i834 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx2.i834, align 4
  %or.i835 = or i32 %194, %192
  %arrayidx4.i836 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 2
  %195 = ptrtoint ptr %arrayidx4.i836 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx4.i836, align 8
  %or5.i837 = or i32 %or.i835, %196
  %arrayidx7.i838 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 3
  %197 = ptrtoint ptr %arrayidx7.i838 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx7.i838, align 4
  %or8.i839 = or i32 %or5.i837, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i839)
  %cmp.i840 = icmp eq i32 %or8.i839, 0
  br i1 %cmp.i840, label %if.then296, label %if.end293.if.end300_crit_edge

if.end293.if.end300_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end300

if.then296:                                       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx299 = getelementptr inbounds [16 x i8], ptr %daddr232, i32 0, i32 15
  %199 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %arrayidx299, align 1
  br label %if.end300

if.end300:                                        ; preds = %if.then296, %if.end293.if.end300_crit_edge
  %call301 = call ptr @fl6_update_dst(ptr noundef nonnull %fl6, ptr noundef %call224, ptr noundef nonnull %final) #11
  %tobool302.not = icmp eq ptr %call301, null
  %spec.select788 = select i1 %tobool302.not, i1 %connected.1.off0872, i1 false
  %200 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool307.not = icmp eq i32 %201, 0
  br i1 %tobool307.not, label %land.lhs.true308, label %if.end300.if.end323_crit_edge

if.end300.if.end323_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

land.lhs.true308:                                 ; preds = %if.end300
  %202 = ptrtoint ptr %daddr232 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %daddr232, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %203)
  %cmp.i841 = icmp ugt i32 %203, -16777217
  br i1 %cmp.i841, label %if.then312, label %if.then319

if.then312:                                       ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  %204 = ptrtoint ptr %mcast_oif to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %mcast_oif, align 4
  %206 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %fl6, align 8
  br label %if.end323

if.then319:                                       ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #13
  %ucast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 7
  %207 = ptrtoint ptr %ucast_oif to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %ucast_oif, align 4
  %209 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %fl6, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then319, %if.then312, %if.end300.if.end323_crit_edge
  %connected.3.off0 = phi i1 [ %spec.select788, %if.then319 ], [ false, %if.then312 ], [ %spec.select788, %if.end300.if.end323_crit_edge ]
  call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef nonnull %fl6) #11
  %210 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %cmp326 = icmp slt i16 %211, 0
  br i1 %cmp326, label %if.then328, label %if.end323.if.end332_crit_edge

if.end323.if.end332_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end332

if.then328:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  %tclass329 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %212 = ptrtoint ptr %tclass329 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %tclass329, align 1
  %conv330 = zext i8 %213 to i16
  %214 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv330, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  br label %if.end332

if.end332:                                        ; preds = %if.then328, %if.end323.if.end332_crit_edge
  %215 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 2
  %conv334886 = zext i16 %216 to i32
  %flowlabel335 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %217 = ptrtoint ptr %flowlabel335 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flowlabel335, align 8
  %shl.i = shl i32 %conv334886, 20
  %or.i842 = or i32 %shl.i, %218
  store i32 %or.i842, ptr %flowlabel335, align 8
  %call339 = call ptr @ip6_sk_dst_lookup_flow(ptr noundef %sk, ptr noundef nonnull %fl6, ptr noundef %call301, i1 noundef zeroext %connected.3.off0) #11
  %cmp.i843 = icmp ugt ptr %call339, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i843, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #13
  %219 = ptrtoint ptr %call339 to i32
  br label %out

if.end343:                                        ; preds = %if.end332
  %220 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %cmp345 = icmp slt i16 %221, 0
  br i1 %cmp345, label %if.then347, label %if.end343.if.end351_crit_edge

if.end343.if.end351_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end351

if.then347:                                       ; preds = %if.end343
  %222 = ptrtoint ptr %daddr232 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %daddr232, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %223)
  %cmp.i.i = icmp ugt i32 %223, -16777217
  %mcast_hops.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %224 = ptrtoint ptr %mcast_hops.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %bf.load.i = load i32, ptr %mcast_hops.i, align 4
  %bf.shl.i = shl i32 %bf.load.i, 16
  %hlimit.0.in.i = select i1 %cmp.i.i, i32 %bf.shl.i, i32 %bf.load.i
  %hlimit.0.i = ashr i32 %hlimit.0.in.i, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hlimit.0.in.i)
  %cmp.i844 = icmp slt i32 %hlimit.0.in.i, 0
  br i1 %cmp.i844, label %if.then6.i, label %if.then347.ip6_sk_dst_hoplimit.exit_crit_edge

if.then347.ip6_sk_dst_hoplimit.exit_crit_edge:    ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_sk_dst_hoplimit.exit

if.then6.i:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = call i32 @ip6_dst_hoplimit(ptr noundef %call339) #11
  br label %ip6_sk_dst_hoplimit.exit

ip6_sk_dst_hoplimit.exit:                         ; preds = %if.then6.i, %if.then347.ip6_sk_dst_hoplimit.exit_crit_edge
  %hlimit.1.i = phi i32 [ %call7.i, %if.then6.i ], [ %hlimit.0.i, %if.then347.ip6_sk_dst_hoplimit.exit_crit_edge ]
  %conv349 = trunc i32 %hlimit.1.i to i16
  %225 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv349, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  br label %if.end351

if.end351:                                        ; preds = %ip6_sk_dst_hoplimit.exit, %if.end343.if.end351_crit_edge
  %msg_flags352 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %226 = ptrtoint ptr %msg_flags352 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %msg_flags352, align 4
  %and353 = and i32 %227, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353)
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %if.end351.back_from_confirm_crit_edge, label %do_confirm

if.end351.back_from_confirm_crit_edge:            ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #13
  br label %back_from_confirm

back_from_confirm:                                ; preds = %if.end593.back_from_confirm_crit_edge, %if.end351.back_from_confirm_crit_edge
  br i1 %15, label %if.end366, label %if.then358

if.then358:                                       ; preds = %back_from_confirm
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %cork) #11
  %228 = call ptr @memset(ptr %cork, i32 255, i32 136)
  %229 = ptrtoint ptr %msg_flags352 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %msg_flags352, align 4
  %call360 = call ptr @ip6_make_skb(ptr noundef %sk, ptr noundef nonnull %cond75, ptr noundef %msg, i32 noundef %add, i32 noundef 8, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %call339, i32 noundef %230, ptr noundef nonnull %cork) #11
  %231 = ptrtoint ptr %call360 to i32
  %tobool.not.i845 = icmp eq ptr %call360, null
  %cmp.i846 = icmp ugt ptr %call360, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i845, %cmp.i846
  br i1 %spec.select.i, label %if.then358.if.end365_crit_edge, label %if.then363

if.then358.if.end365_crit_edge:                   ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end365

if.then363:                                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #13
  %call364 = call fastcc i32 @udp_v6_send_skb(ptr noundef nonnull %call360, ptr noundef nonnull %fl6, ptr noundef nonnull %cork)
  br label %if.end365

if.end365:                                        ; preds = %if.then363, %if.then358.if.end365_crit_edge
  %err.1 = phi i32 [ %231, %if.then358.if.end365_crit_edge ], [ %call364, %if.then363 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %cork) #11
  br label %out

if.end366:                                        ; preds = %back_from_confirm
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %232 = ptrtoint ptr %pending64 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pending64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool368.not = icmp eq i32 %233, 0
  br i1 %tobool368.not, label %if.end395, label %if.then375, !prof !127

if.then375:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  call void @release_sock(ptr noundef %sk) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udpv6_sendmsg.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udpv6_sendmsg, %land.lhs.true388)) #11
          to label %out [label %land.lhs.true388], !srcloc !122

land.lhs.true388:                                 ; preds = %if.then375
  %call389 = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389)
  %tobool390.not = icmp eq i32 %call389, 0
  br i1 %tobool390.not, label %land.lhs.true388.out_crit_edge, label %if.then391

land.lhs.true388.out_crit_edge:                   ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then391:                                       ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udpv6_sendmsg.descriptor, ptr noundef nonnull @.str.9) #11
  br label %out

if.end395:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  %234 = ptrtoint ptr %pending64 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 10, ptr %pending64, align 8
  br label %do_append_data

do_append_data:                                   ; preds = %if.end395, %if.then78.do_append_data_crit_edge
  %ulen.0 = phi i32 [ %add, %if.end395 ], [ %len, %if.then78.do_append_data_crit_edge ]
  %dst.0 = phi ptr [ %call339, %if.end395 ], [ null, %if.then78.do_append_data_crit_edge ]
  %flowlabel.4 = phi ptr [ %flowlabel.3874, %if.end395 ], [ null, %if.then78.do_append_data_crit_edge ]
  %opt_to_free.1 = phi ptr [ %opt_to_free.0, %if.end395 ], [ null, %if.then78.do_append_data_crit_edge ]
  %235 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %cmp398 = icmp slt i8 %236, 0
  br i1 %cmp398, label %if.then400, label %do_append_data.if.end407_crit_edge

do_append_data.if.end407_crit_edge:               ; preds = %do_append_data
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407

if.then400:                                       ; preds = %do_append_data
  call void @__sanitizer_cov_trace_pc() #13
  %dontfrag401 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %237 = ptrtoint ptr %dontfrag401 to i32
  call void @__asan_load2_noabort(i32 %237)
  %bf.load402 = load i16, ptr %dontfrag401, align 2
  %238 = trunc i16 %bf.load402 to i8
  %239 = lshr i8 %238, 5
  %conv405 = and i8 %239, 1
  %240 = ptrtoint ptr %.compoundliteral.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv405, ptr %.compoundliteral.sroa.41.0..sroa_idx.i, align 2
  br label %if.end407

if.end407:                                        ; preds = %if.then400, %do_append_data.if.end407_crit_edge
  %len408 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 5
  %241 = ptrtoint ptr %len408 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %len408, align 2
  %243 = trunc i32 %ulen.0 to i16
  %conv411 = add i16 %242, %243
  store i16 %conv411, ptr %len408, align 2
  %msg_flags414 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %244 = ptrtoint ptr %msg_flags414 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %msg_flags414, align 4
  br i1 %15, label %cond.end418, label %cond.end418.thread

cond.end418:                                      ; preds = %if.end407
  %or415 = or i32 %245, 32768
  %call420 = call i32 @ip6_append_data(ptr noundef %sk, ptr noundef nonnull %cond75, ptr noundef %msg, i32 noundef %ulen.0, i32 noundef 8, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %dst.0, i32 noundef %or415) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %if.else427, label %cond.end418.if.then422_crit_edge

cond.end418.if.then422_crit_edge:                 ; preds = %cond.end418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then422

cond.end418.thread:                               ; preds = %if.end407
  %call420880 = call i32 @ip6_append_data(ptr noundef %sk, ptr noundef nonnull %cond75, ptr noundef %msg, i32 noundef %ulen.0, i32 noundef 8, ptr noundef nonnull %ipc6, ptr noundef nonnull %fl6, ptr noundef %dst.0, i32 noundef %245) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420880)
  %tobool421.not881 = icmp eq i32 %call420880, 0
  br i1 %tobool421.not881, label %if.then425, label %cond.end418.thread.if.then422_crit_edge

cond.end418.thread.if.then422_crit_edge:          ; preds = %cond.end418.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then422

if.then422:                                       ; preds = %cond.end418.thread.if.then422_crit_edge, %cond.end418.if.then422_crit_edge
  %call420882 = phi i32 [ %call420880, %cond.end418.thread.if.then422_crit_edge ], [ %call420, %cond.end418.if.then422_crit_edge ]
  %246 = ptrtoint ptr %pending64 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %pending64, align 8
  %248 = zext i32 %247 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %247, label %if.then2.i [
    i32 2, label %if.then.i
    i32 0, label %if.then422.if.end440_crit_edge
  ]

if.then422.if.end440_crit_edge:                   ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end440

if.then.i:                                        ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #13
  call void @udp_flush_pending_frames(ptr noundef %sk) #11
  br label %if.end440

if.then2.i:                                       ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #13
  %249 = ptrtoint ptr %len408 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 0, ptr %len408, align 2
  %250 = ptrtoint ptr %pending64 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %pending64, align 8
  call void @ip6_flush_pending_frames(ptr noundef %sk) #11
  br label %if.end440

if.then425:                                       ; preds = %cond.end418.thread
  call void @__sanitizer_cov_trace_pc() #13
  %call426 = call i32 @udp_v6_push_pending_frames(ptr noundef %sk)
  br label %if.end440

if.else427:                                       ; preds = %cond.end418
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %251 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i847.not = icmp eq ptr %252, %sk_write_queue
  br i1 %cmp.i847.not, label %if.then436, label %if.else427.if.end455_crit_edge, !prof !131

if.else427.if.end455_crit_edge:                   ; preds = %if.else427
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end455

if.then436:                                       ; preds = %if.else427
  call void @__sanitizer_cov_trace_pc() #13
  %253 = ptrtoint ptr %pending64 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %pending64, align 8
  br label %if.end455

if.end440:                                        ; preds = %if.then425, %if.then2.i, %if.then.i, %if.then422.if.end440_crit_edge
  %err.2 = phi i32 [ %call426, %if.then425 ], [ %call420882, %if.then422.if.end440_crit_edge ], [ %call420882, %if.then.i ], [ %call420882, %if.then2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp441 = icmp sgt i32 %err.2, 0
  br i1 %cmp441, label %if.then443, label %if.end440.if.end455_crit_edge

if.end440.if.end455_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end455

if.then443:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #13
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %254 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %254)
  %bf.load444 = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load444)
  %tobool447.not = icmp sgt i16 %bf.load444, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %err.2)
  %cmp449.not = icmp eq i32 %err.2, 2
  %255 = select i1 %tobool447.not, i1 true, i1 %cmp449.not
  %cond454 = select i1 %255, i32 0, i32 -105
  br label %if.end455

if.end455:                                        ; preds = %if.then443, %if.end440.if.end455_crit_edge, %if.then436, %if.else427.if.end455_crit_edge
  %err.3 = phi i32 [ %cond454, %if.then443 ], [ %err.2, %if.end440.if.end455_crit_edge ], [ 0, %if.then436 ], [ 0, %if.else427.if.end455_crit_edge ]
  call void @release_sock(ptr noundef %sk) #11
  br label %out

out:                                              ; preds = %if.end593.out_crit_edge, %if.end455, %if.then391, %land.lhs.true388.out_crit_edge, %if.then375, %if.end365, %if.then341
  %err.4 = phi i32 [ %err.3, %if.end455 ], [ %219, %if.then341 ], [ %err.1, %if.end365 ], [ -22, %if.then391 ], [ -22, %land.lhs.true388.out_crit_edge ], [ 0, %if.end593.out_crit_edge ], [ -22, %if.then375 ]
  %dst.1 = phi ptr [ %dst.0, %if.end455 ], [ null, %if.then341 ], [ %call339, %if.end365 ], [ %call339, %if.then391 ], [ %call339, %land.lhs.true388.out_crit_edge ], [ %call339, %if.end593.out_crit_edge ], [ %call339, %if.then375 ]
  %flowlabel.5 = phi ptr [ %flowlabel.4, %if.end455 ], [ %flowlabel.3874, %if.then341 ], [ %flowlabel.3874, %if.end365 ], [ %flowlabel.3874, %if.then391 ], [ %flowlabel.3874, %land.lhs.true388.out_crit_edge ], [ %flowlabel.3874, %if.end593.out_crit_edge ], [ %flowlabel.3874, %if.then375 ]
  %opt_to_free.2 = phi ptr [ %opt_to_free.1, %if.end455 ], [ %opt_to_free.0, %if.then341 ], [ %opt_to_free.0, %if.end365 ], [ %opt_to_free.0, %if.then391 ], [ %opt_to_free.0, %land.lhs.true388.out_crit_edge ], [ %opt_to_free.0, %if.end593.out_crit_edge ], [ %opt_to_free.0, %if.then375 ]
  call void @dst_release(ptr noundef %dst.1) #11
  br label %out_no_dst

out_no_dst:                                       ; preds = %out, %if.end280.out_no_dst_crit_edge, %if.then276.out_no_dst_crit_edge, %if.end270.out_no_dst_crit_edge
  %err.5 = phi i32 [ %err.4, %out ], [ %__ret.0, %if.end270.out_no_dst_crit_edge ], [ -524, %if.then276.out_no_dst_crit_edge ], [ -22, %if.end280.out_no_dst_crit_edge ]
  %flowlabel.6 = phi ptr [ %flowlabel.5, %out ], [ %flowlabel.3874, %if.end270.out_no_dst_crit_edge ], [ %flowlabel.3874, %if.then276.out_no_dst_crit_edge ], [ %flowlabel.3874, %if.end280.out_no_dst_crit_edge ]
  %opt_to_free.3 = phi ptr [ %opt_to_free.2, %out ], [ %opt_to_free.0, %if.end270.out_no_dst_crit_edge ], [ %opt_to_free.0, %if.then276.out_no_dst_crit_edge ], [ %opt_to_free.0, %if.end280.out_no_dst_crit_edge ]
  %tobool.not.i848 = icmp eq ptr %flowlabel.6, null
  br i1 %tobool.not.i848, label %out_no_dst.fl6_sock_release.exit_crit_edge, label %if.then.i849

out_no_dst.fl6_sock_release.exit_crit_edge:       ; preds = %out_no_dst
  call void @__sanitizer_cov_trace_pc() #13
  br label %fl6_sock_release.exit

if.then.i849:                                     ; preds = %out_no_dst
  call void @__sanitizer_cov_trace_pc() #13
  %users.i = getelementptr inbounds %struct.ip6_flowlabel, ptr %flowlabel.6, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #11
  %256 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #11, !srcloc !139
  br label %fl6_sock_release.exit

fl6_sock_release.exit:                            ; preds = %if.then.i849, %out_no_dst.fl6_sock_release.exit_crit_edge
  %tobool.not.i850 = icmp eq ptr %opt_to_free.3, null
  br i1 %tobool.not.i850, label %fl6_sock_release.exit.txopt_put.exit_crit_edge, label %land.lhs.true.i

fl6_sock_release.exit.txopt_put.exit_crit_edge:   ; preds = %fl6_sock_release.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %txopt_put.exit

land.lhs.true.i:                                  ; preds = %fl6_sock_release.exit
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt_to_free.3, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !135
  call void @llvm.prefetch.p0(ptr nonnull %opt_to_free.3, i32 1, i32 3, i32 1) #11
  %257 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %opt_to_free.3, ptr nonnull %opt_to_free.3, i32 1, ptr nonnull elementtype(i32) %opt_to_free.3) #11, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %257, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %opt_to_free.3, i32 noundef 3) #11
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt_to_free.3, i32 0, i32 8
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #11
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %fl6_sock_release.exit.txopt_put.exit_crit_edge
  %258 = zext i32 %err.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %err.5, label %lor.lhs.false [
    i32 0, label %txopt_put.exit.cleanup_crit_edge
    i32 -105, label %txopt_put.exit.do.body464_crit_edge
  ]

txopt_put.exit.do.body464_crit_edge:              ; preds = %txopt_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body464

txopt_put.exit.cleanup_crit_edge:                 ; preds = %txopt_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %txopt_put.exit
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %259 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %flags, align 4
  %263 = and i32 %262, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool462.not = icmp eq i32 %263, 0
  br i1 %tobool462.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body464_crit_edge

lor.lhs.false.do.body464_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body464

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body464:                                       ; preds = %lor.lhs.false.do.body464_crit_edge, %txopt_put.exit.do.body464_crit_edge
  %264 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11
  %skc_net.i851 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %265 = ptrtoint ptr %skc_net.i851 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %skc_net.i851, align 4
  br i1 %cmp, label %do.body468, label %do.body523

do.body468:                                       ; preds = %do.body464
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %266, i32 0, i32 30, i32 10
  %267 = ptrtoint ptr %udplite_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %udplite_stats_in6, align 4
  %arrayidx486 = getelementptr [10 x i32], ptr %268, i32 0, i32 6
  %269 = ptrtoint ptr %arrayidx486 to i32
  %270 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i852 = and i32 %270, -16384
  %271 = inttoptr i32 %and.i852 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %271, i32 0, i32 3
  %272 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %cpu, align 4
  %arrayidx489 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %273
  %274 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx489, align 4
  %add490 = add i32 %275, %269
  %276 = inttoptr i32 %add490 to ptr
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %276, align 4
  %add491 = add i32 %278, 1
  store i32 %add491, ptr %276, align 4
  %279 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i853 = and i32 %279, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i853)
  %tobool502.not = icmp eq i32 %and.i.i853, 0
  br i1 %tobool502.not, label %if.then511, label %do.body468.do.end514_crit_edge, !prof !131

do.body468.do.end514_crit_edge:                   ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end514

if.then511:                                       ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end514

do.end514:                                        ; preds = %if.then511, %do.body468.do.end514_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %264) #11, !srcloc !132
  br label %cleanup

do.body523:                                       ; preds = %do.body464
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %266, i32 0, i32 30, i32 5
  %280 = ptrtoint ptr %udp_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %udp_stats_in6, align 4
  %arrayidx548 = getelementptr [10 x i32], ptr %281, i32 0, i32 6
  %282 = ptrtoint ptr %arrayidx548 to i32
  %283 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i855 = and i32 %283, -16384
  %284 = inttoptr i32 %and.i855 to ptr
  %cpu551 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 3
  %285 = ptrtoint ptr %cpu551 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %cpu551, align 4
  %arrayidx552 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %286
  %287 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx552, align 4
  %add553 = add i32 %288, %282
  %289 = inttoptr i32 %add553 to ptr
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  %add554 = add i32 %291, 1
  store i32 %add554, ptr %289, align 4
  %292 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i856 = and i32 %292, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i856)
  %tobool565.not = icmp eq i32 %and.i.i856, 0
  br i1 %tobool565.not, label %if.then574, label %do.body523.do.end577_crit_edge, !prof !131

do.body523.do.end577_crit_edge:                   ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end577

if.then574:                                       ; preds = %do.body523
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end577

do.end577:                                        ; preds = %if.then574, %do.body523.do.end577_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %264) #11, !srcloc !132
  br label %cleanup

do_confirm:                                       ; preds = %if.end351
  %and589 = and i32 %227, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589)
  %tobool590.not = icmp eq i32 %and589, 0
  br i1 %tobool590.not, label %do_confirm.if.end593_crit_edge, label %if.then591

do_confirm.if.end593_crit_edge:                   ; preds = %do_confirm
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end593

if.then591:                                       ; preds = %do_confirm
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call339, i32 0, i32 1
  %293 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ops.i, align 4
  %confirm_neigh.i = getelementptr inbounds %struct.dst_ops, ptr %294, i32 0, i32 15
  %295 = ptrtoint ptr %confirm_neigh.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %confirm_neigh.i, align 4
  %tobool.not.i857 = icmp eq ptr %296, null
  br i1 %tobool.not.i857, label %if.then591.if.end593_crit_edge, label %if.then.i858

if.then591.if.end593_crit_edge:                   ; preds = %if.then591
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end593

if.then.i858:                                     ; preds = %if.then591
  call void @__sanitizer_cov_trace_pc() #13
  call void %296(ptr noundef %call339, ptr noundef %daddr232) #11
  br label %if.end593

if.end593:                                        ; preds = %if.then.i858, %if.then591.if.end593_crit_edge, %do_confirm.if.end593_crit_edge
  %297 = ptrtoint ptr %msg_flags352 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %msg_flags352, align 4
  %and595 = and i32 %298, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and595)
  %tobool596.not = icmp ne i32 %and595, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool598.not = icmp eq i32 %len, 0
  %or.cond789 = and i1 %tobool598.not, %tobool596.not
  br i1 %or.cond789, label %if.end593.out_crit_edge, label %if.end593.back_from_confirm_crit_edge

if.end593.back_from_confirm_crit_edge:            ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #13
  br label %back_from_confirm

if.end593.out_crit_edge:                          ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

cleanup:                                          ; preds = %do.end577, %do.end514, %lor.lhs.false.cleanup_crit_edge, %txopt_put.exit.cleanup_crit_edge, %if.then203.cleanup_crit_edge, %if.then196, %if.else150.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %if.then93, %if.end69.cleanup_crit_edge, %if.then67, %if.end60, %do_udp_sendmsg.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end60 ], [ %call68, %if.then67 ], [ -97, %if.then93 ], [ %err.0, %if.then196 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -89, %if.then35.cleanup_crit_edge ], [ -101, %do_udp_sendmsg.cleanup_crit_edge ], [ -90, %if.end69.cleanup_crit_edge ], [ -22, %if.then98.cleanup_crit_edge ], [ -22, %if.then117.cleanup_crit_edge ], [ -89, %if.else150.cleanup_crit_edge ], [ -22, %if.then203.cleanup_crit_edge ], [ %len, %txopt_put.exit.cleanup_crit_edge ], [ %err.5, %do.end514 ], [ %err.5, %do.end577 ], [ %err.5, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ipc6) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %opt_space) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sendmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_getfrag(ptr noundef %from, ptr noundef %to, i32 noundef %offset, i32 noundef %len, i32 noundef %odd, ptr nocapture noundef readnone %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %from, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %entry
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !127

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %len, i1 noundef zeroext false) #11
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %to, i32 noundef %len, ptr noundef %msg_iter) #11
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge, label %if.end.i, !prof !127

copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge: ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter_full.exit

if.end.i:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #11
  br label %copy_from_iter_full.exit

copy_from_iter_full.exit:                         ; preds = %if.end.i, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge
  %cond = phi i32 [ 0, %copy_from_iter.exit.i.copy_from_iter_full.exit_crit_edge ], [ -14, %if.end.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fl6_sock_lookup(ptr noundef %sk, i32 noundef %label) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipv6_flowlabel_exclusive, ptr blockaddress(@fl6_sock_lookup, %do.end)) #11
          to label %return [label %do.end], !srcloc !122

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
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @__fl6_sock_lookup(ptr noundef %sk, i32 noundef %label) #11
  %tobool7.not = icmp eq ptr %call6, null
  %spec.select = select i1 %tobool7.not, ptr inttoptr (i32 -2 to ptr), ptr %call6
  br label %return

return:                                           ; preds = %if.then, %do.end.return_crit_edge, %entry
  %retval.0 = phi ptr [ null, %do.end.return_crit_edge ], [ null, %entry ], [ %spec.select, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_cmsg_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fl6_sock_release(ptr noundef %fl) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %fl, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %users = getelementptr inbounds %struct.ip6_flowlabel, ptr %fl, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #11, !srcloc !139
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @txopt_get(ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %opt1 = getelementptr inbounds %struct.ipv6_pinfo, ptr %np, i32 0, i32 18
  %4 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %opt1, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @txopt_get.__warned, align 1
  br i1 %.b19, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @txopt_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 379, ptr noundef nonnull @.str.2) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end15_crit_edge, label %if.then11

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i20 = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 %11, i32 %add.i.i.i20, ptr nonnull elementtype(i32) %5) #11, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !127

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 0) #11
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %. = select i1 %tobool12.i.i.i.not, ptr null, ptr %5
  br label %if.end15

if.end15:                                         ; preds = %refcount_inc_not_zero.exit, %do.end8.if.end15_crit_edge
  %opt.0 = phi ptr [ null, %do.end8.if.end15_crit_edge ], [ %., %refcount_inc_not_zero.exit ]
  %call.i21 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i21, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end15
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %18 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %opt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_merge_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_fixup_options(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_make_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp_v6_send_skb(ptr noundef %skb, ptr noundef %fl6, ptr nocapture noundef readonly %cork) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %4)
  %cmp = icmp eq i16 %4, 136
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len2, align 4
  %sub = add i32 %sub.ptr.sub.i.neg, %12
  %sub3 = add i32 %sub, -8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %sport = getelementptr inbounds %struct.anon.40, ptr %uli, i32 0, i32 1
  %13 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sport, align 2
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr.i.i, align 2
  %16 = ptrtoint ptr %uli to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %uli, align 4
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %dest, align 2
  %conv6 = trunc i32 %sub to i16
  %len7 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6, ptr %len7, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %check, align 2
  %gso_size = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 10
  %21 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %if.end55, label %if.then

if.then:                                          ; preds = %entry
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %24 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %26 to i32
  %conv10 = zext i16 %22 to i32
  %sub.i = add nuw nsw i32 %conv10, 8
  %add = add nuw nsw i32 %sub.i, %conv.i
  %add11 = sub nsw i32 %add, %conv1.i
  %fragsize = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 3
  %27 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fragsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %28)
  %cmp12 = icmp ugt i32 %add11, %28
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup353

if.end:                                           ; preds = %if.then
  %mul = shl nuw nsw i32 %conv10, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %mul)
  %cmp17 = icmp sgt i32 %sub3, %mul
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup353

if.end20:                                         ; preds = %if.end
  %no_check6_tx = getelementptr inbounds %struct.udp_sock, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %no_check6_tx to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %no_check6_tx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup353

if.end24:                                         ; preds = %if.end20
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load25 = load i16, ptr %ip_summed, align 8
  %31 = and i16 %bf.load25, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %31)
  %cmp28.not = icmp ne i16 %31, 1536
  %brmerge = select i1 %cmp28.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end24.if.then35_crit_edge, label %lor.lhs.false31

if.end24.if.then35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

lor.lhs.false31:                                  ; preds = %if.end24
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false31.skb_dst.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false31.skb_dst.exit_crit_edge:           ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false31
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !131

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %lor.lhs.false31.skb_dst.exit_crit_edge
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 8
  %and25.i = and i32 %36, -2
  %37 = inttoptr i32 %and25.i to ptr
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfrm.i, align 4
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.end36, label %skb_dst.exit.if.then35_crit_edge

skb_dst.exit.if.then35_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then35:                                        ; preds = %skb_dst.exit.if.then35_crit_edge, %if.end24.if.then35_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup353

if.end36:                                         ; preds = %skb_dst.exit
  %40 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %gso_size, align 2
  %conv38 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %conv38)
  %cmp39 = icmp sgt i32 %sub3, %conv38
  br i1 %cmp39, label %if.then41, label %if.end36.csum_partial_crit_edge

if.end36.csum_partial_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_partial

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %gso_size44 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %gso_size44 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %41, ptr %gso_size44, align 4
  %45 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 131072, ptr %gso_type, align 8
  %47 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %gso_size, align 2
  %conv47 = zext i16 %48 to i32
  %add48 = add i32 %sub, -9
  %sub49 = add i32 %add48, %conv47
  %div = sdiv i32 %sub49, %conv47
  %conv52 = trunc i32 %div to i16
  %49 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv52, ptr %gso_segs, align 2
  br label %csum_partial

if.end55:                                         ; preds = %entry
  br i1 %cmp, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end55
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %0, align 4
  %53 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i.i, align 8
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i = zext i16 %56 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 %conv.i.i.i
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %59 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len2, align 4
  %sub.i423 = sub i32 %60, %sub.ptr.sub.i.i
  %pcflag.i = getelementptr inbounds %struct.udp_sock, ptr %52, i32 0, i32 9
  %61 = ptrtoint ptr %pcflag.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pcflag.i, align 2
  %63 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i424 = icmp eq i8 %63, 0
  br i1 %tobool.not.i424, label %if.then57.udplite_csum.exit_crit_edge, label %land.lhs.true.i425

if.then57.udplite_csum.exit_crit_edge:            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %udplite_csum.exit

land.lhs.true.i425:                               ; preds = %if.then57
  %pcslen.i = getelementptr inbounds %struct.udp_sock, ptr %52, i32 0, i32 7
  %64 = ptrtoint ptr %pcslen.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pcslen.i, align 2
  %conv3.i = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i423, i32 %conv3.i)
  %cmp.i = icmp sgt i32 %sub.i423, %conv3.i
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i425.udplite_csum.exit_crit_edge

land.lhs.true.i425.udplite_csum.exit_crit_edge:   ; preds = %land.lhs.true.i425
  call void @__sanitizer_cov_trace_pc() #13
  br label %udplite_csum.exit

if.then.i:                                        ; preds = %land.lhs.true.i425
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp7.not.i = icmp eq i16 %65, 0
  %spec.select.i = select i1 %cmp7.not.i, i32 %sub.i423, i32 %conv3.i
  %len14.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %len14.i, align 2
  br label %udplite_csum.exit

udplite_csum.exit:                                ; preds = %if.then.i, %land.lhs.true.i425.udplite_csum.exit_crit_edge, %if.then57.udplite_csum.exit_crit_edge
  %len.1.i = phi i32 [ %spec.select.i, %if.then.i ], [ %sub.i423, %land.lhs.true.i425.udplite_csum.exit_crit_edge ], [ %sub.i423, %if.then57.udplite_csum.exit_crit_edge ]
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %67 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %call16.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i, i32 noundef %len.1.i, i32 noundef 0) #11
  br label %if.end82

if.else:                                          ; preds = %if.end55
  %no_check6_tx60 = getelementptr inbounds %struct.udp_sock, ptr %2, i32 0, i32 4
  %68 = ptrtoint ptr %no_check6_tx60 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load61 = load i8, ptr %no_check6_tx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load61)
  %tobool63.not = icmp sgt i8 %bf.load61, -1
  %ip_summed69 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %69 = ptrtoint ptr %ip_summed69 to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load70 = load i16, ptr %ip_summed69, align 8
  br i1 %tobool63.not, label %if.else68, label %if.then64

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear67 = and i16 %bf.load70, -1537
  %70 = ptrtoint ptr %ip_summed69 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %bf.clear67, ptr %ip_summed69, align 8
  br label %send

if.else68:                                        ; preds = %if.else
  %71 = and i16 %bf.load70, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %71)
  %cmp75 = icmp eq i16 %71, 1536
  br i1 %cmp75, label %if.else68.csum_partial_crit_edge, label %if.else78

if.else68.csum_partial_crit_edge:                 ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %csum_partial

csum_partial:                                     ; preds = %if.else68.csum_partial_crit_edge, %if.then41, %if.end36.csum_partial_crit_edge
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %72 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i.i, align 8
  %74 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i428 = zext i16 %75 to i32
  %add.ptr.i.i.i429 = getelementptr i8, ptr %73, i32 %conv.i.i.i428
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %76 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %frag_list.i, align 8
  %tobool.not.i430 = icmp eq ptr %79, null
  br i1 %tobool.not.i430, label %if.then.i431, label %if.else.i

if.then.i431:                                     ; preds = %csum_partial
  call void @__sanitizer_cov_trace_pc() #13
  %80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %75, ptr %80, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.55, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 6, ptr %csum_offset.i, align 2
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub, i32 noundef 17, i32 noundef 0) #11
  %83 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #14, !srcloc !133
  %neg.i.i.i = xor i32 %83, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i2.i = trunc i32 %shr.i.i.i to i16
  %neg.i = xor i16 %conv.i.i2.i, -1
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i429, i32 0, i32 3
  %84 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %neg.i, ptr %check.i, align 2
  br label %send

if.else.i:                                        ; preds = %csum_partial
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i433 = ptrtoint ptr %add.ptr.i.i.i429 to i32
  %sub.ptr.rhs.cast.i.i434 = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i435 = sub i32 %sub.ptr.lhs.cast.i.i433, %sub.ptr.rhs.cast.i.i434
  %87 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len2, align 4
  %sub.i436 = sub i32 %88, %sub.ptr.sub.i.i435
  %call8.i = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i435, i32 noundef %sub.i436, i32 noundef 0) #11
  %89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call8.i, ptr %89, align 8
  %ip_summed.i437 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %91 = ptrtoint ptr %ip_summed.i437 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load.i438 = load i16, ptr %ip_summed.i437, align 8
  %bf.clear.i439 = and i16 %bf.load.i438, -1537
  store i16 %bf.clear.i439, ptr %ip_summed.i437, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else.i
  %frags.0.i = phi ptr [ %79, %if.else.i ], [ %96, %do.body.i.do.body.i_crit_edge ]
  %csum.0.i = phi i32 [ %call8.i, %if.else.i ], [ %add1.i.i, %do.body.i.do.body.i_crit_edge ]
  %92 = getelementptr inbounds %struct.sk_buff, ptr %frags.0.i, i32 0, i32 15, i32 0, i32 5
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %add.i.i = add i32 %94, %csum.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %94)
  %cmp.i.i = icmp ult i32 %add.i.i, %94
  %conv.i.i440 = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i440
  %95 = ptrtoint ptr %frags.0.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %frags.0.i, align 8
  %tobool10.not.i = icmp eq ptr %96, null
  br i1 %tobool10.not.i, label %do.end.i442, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i442:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i7.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub, i32 noundef 17, i32 noundef %add1.i.i) #11
  %97 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i7.i) #14, !srcloc !133
  %neg.i.i8.i = xor i32 %97, -1
  %shr.i.i9.i = lshr i32 %neg.i.i8.i, 16
  %conv.i.i10.i = trunc i32 %shr.i.i9.i to i16
  %check12.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i429, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i10.i)
  %cmp.i441 = icmp eq i16 %conv.i.i10.i, 0
  %spec.store.select.i = select i1 %cmp.i441, i16 -1, i16 %conv.i.i10.i
  %98 = ptrtoint ptr %check12.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %spec.store.select.i, ptr %check12.i, align 2
  br label %send

if.else78:                                        ; preds = %if.else68
  %99 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i, align 8
  %101 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %transport_header.i.i, align 2
  %conv.i10.i = zext i16 %102 to i32
  %add.ptr.i.i445 = getelementptr i8, ptr %100, i32 %conv.i10.i
  %103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %call1.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i445, i32 noundef 8, i32 noundef %105) #11
  %end.i.i446 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %106 = ptrtoint ptr %end.i.i446 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i446, align 4
  %frag_list.i447 = getelementptr inbounds %struct.skb_shared_info, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %frag_list.i447 to i32
  call void @__asan_load4_noabort(i32 %108)
  %skb.addr.011.i = load ptr, ptr %frag_list.i447, align 8
  %tobool.not12.i = icmp eq ptr %skb.addr.011.i, null
  br i1 %tobool.not12.i, label %if.else78.if.end82_crit_edge, label %if.else78.for.body.i_crit_edge

if.else78.for.body.i_crit_edge:                   ; preds = %if.else78
  br label %for.body.i

if.else78.if.end82_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else78.for.body.i_crit_edge
  %skb.addr.014.i = phi ptr [ %skb.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %skb.addr.011.i, %if.else78.for.body.i_crit_edge ]
  %csum.013.i = phi i32 [ %add1.i.i451, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.else78.for.body.i_crit_edge ]
  %109 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.014.i, i32 0, i32 15, i32 0, i32 5
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %add.i.i448 = add i32 %111, %csum.013.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i448, i32 %111)
  %cmp.i.i449 = icmp ult i32 %add.i.i448, %111
  %conv.i.i450 = zext i1 %cmp.i.i449 to i32
  %add1.i.i451 = add i32 %add.i.i448, %conv.i.i450
  %112 = ptrtoint ptr %skb.addr.014.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %skb.addr.0.i = load ptr, ptr %skb.addr.014.i, align 8
  %tobool.not.i452 = icmp eq ptr %skb.addr.0.i, null
  br i1 %tobool.not.i452, label %for.body.i.if.end82_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end82_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.end82:                                         ; preds = %for.body.i.if.end82_crit_edge, %if.else78.if.end82_crit_edge, %udplite_csum.exit
  %csum.0 = phi i32 [ %call16.i, %udplite_csum.exit ], [ %call1.i, %if.else78.if.end82_crit_edge ], [ %add1.i.i451, %for.body.i.if.end82_crit_edge ]
  %saddr83 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr84 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %113 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flowic_proto, align 2
  %conv.i453 = zext i8 %114 to i32
  %call.i454 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr83, ptr noundef %daddr84, i32 noundef %sub, i32 noundef %conv.i453, i32 noundef %csum.0) #11
  %115 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i454) #14, !srcloc !133
  %neg.i.i = xor i32 %115, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i455 = trunc i32 %shr.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i455)
  %cmp89 = icmp eq i16 %conv.i.i455, 0
  %spec.store.select = select i1 %cmp89, i16 -1, i16 %conv.i.i455
  %116 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %spec.store.select, ptr %check, align 2
  br label %send

send:                                             ; preds = %if.end82, %do.end.i442, %if.then.i431, %if.then64
  %call94 = tail call i32 @ip6_send_skb(ptr noundef %skb) #11
  %117 = zext i32 %call94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call94, label %send.cleanup353_crit_edge [
    i32 0, label %do.body219
    i32 -105, label %land.lhs.true
  ]

send.cleanup353_crit_edge:                        ; preds = %send
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup353

land.lhs.true:                                    ; preds = %send
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %118 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i456 = zext i8 %119 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i456
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.inet6_sk.exit_crit_edge, label %cond.true.i

land.lhs.true.inet6_sk.exit_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 1
  %120 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %land.lhs.true.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %121, %cond.true.i ], [ null, %land.lhs.true.inet6_sk.exit_crit_edge ]
  %recverr = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %122 = ptrtoint ptr %recverr to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load100 = load i16, ptr %recverr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load100)
  %tobool102.not = icmp sgt i16 %bf.load100, -1
  br i1 %tobool102.not, label %do.body, label %inet6_sk.exit.cleanup353_crit_edge

inet6_sk.exit.cleanup353_crit_edge:               ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup353

do.body:                                          ; preds = %inet6_sk.exit
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %124 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %skc_net.i, align 4
  br i1 %cmp, label %do.body107, label %do.body153

do.body107:                                       ; preds = %do.body
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %125, i32 0, i32 30, i32 10
  %126 = ptrtoint ptr %udplite_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %udplite_stats_in6, align 4
  %arrayidx = getelementptr [10 x i32], ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %arrayidx to i32
  %129 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i457 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i457 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cpu, align 4
  %arrayidx124 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx124, align 4
  %add125 = add i32 %134, %128
  %135 = inttoptr i32 %add125 to ptr
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %add126 = add i32 %137, 1
  store i32 %add126, ptr %135, align 4
  %138 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i458 = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i458)
  %tobool137.not = icmp eq i32 %and.i.i458, 0
  br i1 %tobool137.not, label %if.then141, label %do.body107.do.end144_crit_edge, !prof !131

do.body107.do.end144_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144

if.then141:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %do.body107.do.end144_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #11, !srcloc !132
  br label %cleanup353

do.body153:                                       ; preds = %do.body
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %125, i32 0, i32 30, i32 5
  %139 = ptrtoint ptr %udp_stats_in6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %udp_stats_in6, align 4
  %arrayidx178 = getelementptr [10 x i32], ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %arrayidx178 to i32
  %142 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i460 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i460 to ptr
  %cpu181 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %cpu181 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cpu181, align 4
  %arrayidx182 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx182, align 4
  %add183 = add i32 %147, %141
  %148 = inttoptr i32 %add183 to ptr
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %add184 = add i32 %150, 1
  store i32 %add184, ptr %148, align 4
  %151 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i461 = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i461)
  %tobool195.not = icmp eq i32 %and.i.i461, 0
  br i1 %tobool195.not, label %if.then204, label %do.body153.do.end207_crit_edge, !prof !131

do.body153.do.end207_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end207

if.then204:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end207

do.end207:                                        ; preds = %if.then204, %do.body153.do.end207_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #11, !srcloc !132
  br label %cleanup353

do.body219:                                       ; preds = %send
  %152 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11
  %skc_net.i462 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %153 = ptrtoint ptr %skc_net.i462 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %skc_net.i462, align 4
  br i1 %cmp, label %do.body223, label %do.body287

do.body223:                                       ; preds = %do.body219
  %udplite_stats_in6247 = getelementptr inbounds %struct.net, ptr %154, i32 0, i32 30, i32 10
  %155 = ptrtoint ptr %udplite_stats_in6247 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %udplite_stats_in6247, align 4
  %arrayidx249 = getelementptr [10 x i32], ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %arrayidx249 to i32
  %158 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i463 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i463 to ptr
  %cpu252 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %cpu252 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cpu252, align 4
  %arrayidx253 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %161
  %162 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx253, align 4
  %add254 = add i32 %163, %157
  %164 = inttoptr i32 %add254 to ptr
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %add255 = add i32 %166, 1
  store i32 %add255, ptr %164, align 4
  %167 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i464 = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i464)
  %tobool266.not = icmp eq i32 %and.i.i464, 0
  br i1 %tobool266.not, label %if.then275, label %do.body223.do.end278_crit_edge, !prof !131

do.body223.do.end278_crit_edge:                   ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end278

if.then275:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end278

do.end278:                                        ; preds = %if.then275, %do.body223.do.end278_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %152) #11, !srcloc !132
  br label %cleanup353

do.body287:                                       ; preds = %do.body219
  %udp_stats_in6311 = getelementptr inbounds %struct.net, ptr %154, i32 0, i32 30, i32 5
  %168 = ptrtoint ptr %udp_stats_in6311 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %udp_stats_in6311, align 4
  %arrayidx313 = getelementptr [10 x i32], ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %arrayidx313 to i32
  %171 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i466 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i466 to ptr
  %cpu316 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %cpu316 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu316, align 4
  %arrayidx317 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx317, align 4
  %add318 = add i32 %176, %170
  %177 = inttoptr i32 %add318 to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add319 = add i32 %179, 1
  store i32 %add319, ptr %177, align 4
  %180 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i467 = and i32 %180, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i467)
  %tobool330.not = icmp eq i32 %and.i.i467, 0
  br i1 %tobool330.not, label %if.then339, label %do.body287.do.end342_crit_edge, !prof !131

do.body287.do.end342_crit_edge:                   ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end342

if.then339:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end342

do.end342:                                        ; preds = %if.then339, %do.body287.do.end342_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %152) #11, !srcloc !132
  br label %cleanup353

cleanup353:                                       ; preds = %do.end342, %do.end278, %do.end207, %do.end144, %inet6_sk.exit.cleanup353_crit_edge, %send.cleanup353_crit_edge, %if.then35, %if.then23, %if.then19, %if.then14
  %retval.1 = phi i32 [ -105, %inet6_sk.exit.cleanup353_crit_edge ], [ 0, %do.end278 ], [ 0, %do.end342 ], [ %call94, %send.cleanup353_crit_edge ], [ 0, %do.end207 ], [ 0, %do.end144 ], [ -22, %if.then14 ], [ -22, %if.then19 ], [ -22, %if.then23 ], [ -5, %if.then35 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_append_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_v6_push_pending_frames(ptr noundef %sk) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %pending = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @udp_push_pending_frames(ptr noundef %sk) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1
  %2 = call ptr @memcpy(ptr %fl6, ptr %fl, i32 88)
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %4 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.ip6_finish_skb.exit_crit_edge, label %cond.true.i.i

if.end.ip6_finish_skb.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_finish_skb.exit

cond.true.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %5 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pinet6.i.i, align 8
  br label %ip6_finish_skb.exit

ip6_finish_skb.exit:                              ; preds = %cond.true.i.i, %if.end.ip6_finish_skb.exit_crit_edge
  %cond.i.i = phi ptr [ %6, %cond.true.i.i ], [ null, %if.end.ip6_finish_skb.exit_crit_edge ]
  %cork.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %cork2.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 21
  %call3.i = tail call ptr @__ip6_make_skb(ptr noundef %sk, ptr noundef %sk_write_queue.i, ptr noundef %cork.i, ptr noundef %cork2.i) #11
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %ip6_finish_skb.exit.out_crit_edge, label %if.end5

ip6_finish_skb.exit.out_crit_edge:                ; preds = %ip6_finish_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %ip6_finish_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call fastcc i32 @udp_v6_send_skb(ptr noundef nonnull %call3.i, ptr noundef nonnull %fl6, ptr noundef %cork.i)
  br label %out

out:                                              ; preds = %if.end5, %ip6_finish_skb.exit.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end5 ], [ 0, %ip6_finish_skb.exit.out_crit_edge ]
  %len = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %len, align 2
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pending, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udpv6_destroy_sock(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %or.i.i = or i32 %2, 1
  store i32 %or.i.i, ptr %0, align 4
  %pending.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 1
  %3 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pending.i, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %4, label %if.then2.i [
    i32 2, label %if.then.i
    i32 0, label %entry.udp_v6_flush_pending_frames.exit_crit_edge
  ]

entry.udp_v6_flush_pending_frames.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp_v6_flush_pending_frames.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @udp_flush_pending_frames(ptr noundef %sk) #11
  br label %udp_v6_flush_pending_frames.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %len.i, align 2
  %7 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pending.i, align 8
  tail call void @ip6_flush_pending_frames(ptr noundef %sk) #11
  br label %udp_v6_flush_pending_frames.exit

udp_v6_flush_pending_frames.exit:                 ; preds = %if.then2.i, %if.then.i, %entry.udp_v6_flush_pending_frames.exit_crit_edge
  tail call void @release_sock(ptr noundef %sk) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udpv6_encap_needed_key, ptr blockaddress(@udpv6_destroy_sock, %if.then)) #11
          to label %if.end14 [label %if.then], !srcloc !122

if.then:                                          ; preds = %udp_v6_flush_pending_frames.exit
  %encap_type = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 3
  %8 = ptrtoint ptr %encap_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %encap_type, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then.if.end10_crit_edge, label %if.then5

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.then
  %encap_destroy7 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 13
  %10 = ptrtoint ptr %encap_destroy7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %encap_destroy7, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then5.if.end10_crit_edge, label %if.then9

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %11(ptr noundef %sk) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %encap_enabled = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %encap_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %encap_enabled, align 1
  %13 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @static_key_slow_dec(ptr noundef nonnull @udpv6_encap_needed_key) #11
  tail call void @udp_encap_disable() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge, %udp_v6_flush_pending_frames.exit
  tail call void @inet6_destroy_sock(ptr noundef %sk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_encap_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %level, label %if.end [
    i32 17, label %entry.if.then_crit_edge
    i32 136, label %entry.if.then_crit_edge17
  ]

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge17
  %call = tail call i32 @udp_lib_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen, ptr noundef nonnull @udp_v6_push_pending_frames) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @ipv6_setsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %level, label %if.end [
    i32 17, label %entry.if.then_crit_edge
    i32 136, label %entry.if.then_crit_edge10
  ]

entry.if.then_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge10
  %call = tail call i32 @udp_lib_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @ipv6_getsockopt(ptr noundef %sk, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_lib_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp6_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.10) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %bucket1 = getelementptr inbounds %struct.udp_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bucket1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bucket1, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %v, i32 0, i32 6
  %4 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inet_sport, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %forward_deficit.i = getelementptr inbounds %struct.udp_sock, ptr %v, i32 0, i32 18
  %11 = ptrtoint ptr %forward_deficit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %forward_deficit.i, align 8
  %sub.i = sub i32 %10, %12
  tail call void @__ip6_dgram_sock_seq_show(ptr noundef %seq, ptr noundef %v, i16 noundef zeroext %5, i16 noundef zeroext %8, i32 noundef %sub.i, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip6_dgram_sock_seq_show(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_seq_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_seq_stop(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp_seq_next(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp6_proc_init(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @udp6_seq_ops, i32 noundef 16, ptr noundef nonnull @udp6_seq_afinfo) #11
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udp6_proc_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_lib_close(ptr noundef %sk, i32 noundef %timeout) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sk_common_release(ptr noundef %sk) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udpv6_pre_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #0 align 64 {
entry:
  %__unused_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %uaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp1 = icmp eq i16 %1, 2
  br i1 %cmp1, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %2 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end5, label %if.then3.return_crit_edge

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @udp_pre_connect(ptr noundef %sk, ptr noundef %uaddr, i32 noundef %addr_len) #11
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %addr_len)
  %cmp7 = icmp slt i32 %addr_len, 24
  br i1 %cmp7, label %if.end6.return_crit_edge, label %if.end10

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__unused_flags) #11
  %4 = ptrtoint ptr %__unused_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %__unused_flags, align 4, !annotation !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 8), ptr blockaddress(@udpv6_pre_connect, %if.then15)) #11
          to label %if.end17 [label %if.then15], !srcloc !122

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #11
  %call16 = call i32 @__cgroup_bpf_run_filter_sock_addr(ptr noundef %sk, ptr noundef %uaddr, i32 noundef 8, ptr noundef null, ptr noundef nonnull %__unused_flags) #11
  call void @release_sock(ptr noundef %sk) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10
  %__ret.0 = phi i32 [ %call16, %if.then15 ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__unused_flags) #11
  br label %return

return:                                           ; preds = %if.end17, %if.end6.return_crit_edge, %if.end5, %if.then3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ %__ret.0, %if.end17 ], [ -22, %entry.return_crit_edge ], [ -97, %if.then3.return_crit_edge ], [ -22, %if.end6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_disconnect(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_init_sock(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_datagram_release_cb(ptr noundef) #3

; Function Attrs: inlinehint noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_lib_hash(ptr nocapture noundef readnone %sk) #5 align 64 {
entry:
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/udp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #11, !srcloc !140
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_lib_unhash(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_bpf_update_proto(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_abort(ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv6_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @udpv6_protosw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %out_udpv6_protocol

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %out_udpv6_protocol, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %out_udpv6_protocol ], [ 0, %if.end.out_crit_edge ]
  ret i32 %ret.0

out_udpv6_protocol:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #11
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udpv6_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @udpv6_protosw) #11
  %call = tail call i32 @inet6_del_protocol(ptr noundef nonnull @udpv6_protocol, i8 noundef zeroext 17) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp6_ehashfn(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %laddr, i16 noundef zeroext %lport, ptr nocapture noundef readonly %faddr, i16 noundef zeroext %fport) unnamed_addr #0 align 64 {
entry:
  %___flags = alloca i32, align 4
  %___flags31 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udp6_ehashfn.___once_key, ptr blockaddress(@udp6_ehashfn, %if.then)) #11
          to label %if.end13 [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #11
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !123
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp6_ehashfn.___done, ptr noundef nonnull %___flags) #11
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !131

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @get_random_bytes(ptr noundef nonnull @udp6_ehashfn.udp6_ehash_secret, i32 noundef 4) #11
  call void @__do_once_done(ptr noundef nonnull @udp6_ehashfn.___done, ptr noundef nonnull @udp6_ehashfn.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udp6_ehashfn.___once_key.14, ptr blockaddress(@udp6_ehashfn, %if.then30)) #11
          to label %if.end43 [label %if.then30], !srcloc !141

if.then30:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags31) #11
  %1 = ptrtoint ptr %___flags31 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %___flags31, align 4, !annotation !123
  %call32 = call zeroext i1 @__do_once_start(ptr noundef nonnull @udp6_ehashfn.___done.13, ptr noundef nonnull %___flags31) #11
  br i1 %call32, label %if.then41, label %if.then30.if.end42_crit_edge, !prof !131

if.then30.if.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then41:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  call void @get_random_bytes(ptr noundef nonnull @udp6_ehashfn.udp_ipv6_hash_secret, i32 noundef 4) #11
  call void @__do_once_done(ptr noundef nonnull @udp6_ehashfn.___done.13, ptr noundef nonnull @udp6_ehashfn.___once_key.14, ptr noundef nonnull %___flags31, ptr noundef null) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then30.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags31) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  %arrayidx = getelementptr [4 x i32], ptr %laddr, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr @udp6_ehashfn.udp_ipv6_hash_secret, align 4
  %5 = ptrtoint ptr %faddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %faddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %xor.i = xor i32 %8, %6
  %arrayidx4.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %faddr, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  %add1.i.i = add i32 %4, -559038725
  %add.i.i.i = add i32 %xor.i, %add1.i.i
  %add1.i.i.i = add i32 %10, %add1.i.i
  %add2.i.i.i = add i32 %12, %add1.i.i
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #11
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #11
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %13 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_mix.i, align 8
  %conv.i = zext i16 %lport to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %conv1.i = zext i16 %fport to i32
  %or.i = or i32 %shl.i, %conv1.i
  %add1.i.i56 = add i32 %add1.i.i, %14
  %add.i.i.i57 = add i32 %add1.i.i56, %3
  %add1.i.i.i58 = add i32 %sub20.i.i.i, %add1.i.i56
  %add2.i.i.i59 = add i32 %or.i, %add1.i.i56
  %xor.i.i.i60 = xor i32 %add1.i.i.i58, %add2.i.i.i59
  %or.i.i.i.i61 = call i32 @llvm.fshl.i32(i32 %add1.i.i.i58, i32 %add1.i.i.i58, i32 14) #11
  %sub.i.i.i62 = sub i32 %xor.i.i.i60, %or.i.i.i.i61
  %xor3.i.i.i63 = xor i32 %sub.i.i.i62, %add.i.i.i57
  %or.i52.i.i.i64 = call i32 @llvm.fshl.i32(i32 %sub.i.i.i62, i32 %sub.i.i.i62, i32 11) #11
  %sub5.i.i.i65 = sub i32 %xor3.i.i.i63, %or.i52.i.i.i64
  %xor6.i.i.i66 = xor i32 %sub5.i.i.i65, %add1.i.i.i58
  %or.i53.i.i.i67 = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i65, i32 %sub5.i.i.i65, i32 25) #11
  %sub8.i.i.i68 = sub i32 %xor6.i.i.i66, %or.i53.i.i.i67
  %xor9.i.i.i69 = xor i32 %sub8.i.i.i68, %sub.i.i.i62
  %or.i54.i.i.i70 = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i68, i32 %sub8.i.i.i68, i32 16) #11
  %sub11.i.i.i71 = sub i32 %xor9.i.i.i69, %or.i54.i.i.i70
  %xor12.i.i.i72 = xor i32 %sub11.i.i.i71, %sub5.i.i.i65
  %or.i55.i.i.i73 = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i71, i32 %sub11.i.i.i71, i32 4) #11
  %sub14.i.i.i74 = sub i32 %xor12.i.i.i72, %or.i55.i.i.i73
  %xor15.i.i.i75 = xor i32 %sub14.i.i.i74, %sub8.i.i.i68
  %or.i56.i.i.i76 = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i74, i32 %sub14.i.i.i74, i32 14) #11
  %sub17.i.i.i77 = sub i32 %xor15.i.i.i75, %or.i56.i.i.i76
  %xor18.i.i.i78 = xor i32 %sub17.i.i.i77, %sub11.i.i.i71
  %or.i57.i.i.i79 = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i77, i32 %sub17.i.i.i77, i32 24) #11
  %sub20.i.i.i80 = sub i32 %xor18.i.i.i78, %or.i57.i.i.i79
  ret i32 %sub20.i.i.i80
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_select_sock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bpf_sk_lookup_run_v6(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %ifindex, ptr nocapture noundef writeonly %psk) unnamed_addr #4 align 64 {
entry:
  %ctx = alloca %struct.bpf_sk_lookup_kern, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 44, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @bpf_sk_lookup_run_v6.__warned, align 1
  br i1 %.b4, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bpf_sk_lookup_run_v6.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 1487, ptr noundef nonnull @.str.2) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end64_crit_edge, label %if.then11

do.end8.if.end64_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ctx) #11
  %6 = getelementptr inbounds i8, ptr %ctx, i32 24
  %7 = call ptr @memset(ptr %6, i32 255, i32 12)
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 10, ptr %ctx, align 4
  %protocol12 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %protocol12 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 17, ptr %protocol12, align 2
  %sport13 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 2
  %10 = ptrtoint ptr %sport13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sport, ptr %sport13, align 4
  %dport14 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 3
  %11 = ptrtoint ptr %dport14 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %dport, ptr %dport14, align 2
  %v4 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %v4 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %v4, align 4
  %v6 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %v6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %saddr, ptr %v6, align 4
  %daddr16 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %daddr16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %daddr, ptr %daddr16, align 4
  %selected_sk17 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 6
  %ingress_ifindex = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %ingress_ifindex to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ifindex, ptr %ingress_ifindex, align 4
  %no_reuseport18 = getelementptr inbounds %struct.bpf_sk_lookup_kern, ptr %ctx, i32 0, i32 8
  tail call void @migrate_disable() #11
  %items = getelementptr inbounds %struct.bpf_prog_array, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %items, align 8
  %tobool24.not16 = icmp eq ptr %17, null
  br i1 %tobool24.not16, label %if.then11.while.end_crit_edge, label %if.then11.while.body_crit_edge

if.then11.while.body_crit_edge:                   ; preds = %if.then11
  br label %while.body

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %if.then11.while.body_crit_edge
  %18 = phi ptr [ %91, %if.end45.while.body_crit_edge ], [ %17, %if.then11.while.body_crit_edge ]
  %_all_pass.020 = phi i8 [ %_all_pass.1, %if.end45.while.body_crit_edge ], [ 1, %if.then11.while.body_crit_edge ]
  %_no_reuseport.0.off019 = phi i1 [ %_no_reuseport.1.off0, %if.end45.while.body_crit_edge ], [ false, %if.then11.while.body_crit_edge ]
  %_selected_sk.018 = phi ptr [ %_selected_sk.1, %if.end45.while.body_crit_edge ], [ null, %if.then11.while.body_crit_edge ]
  %_item.017 = phi ptr [ %incdec.ptr, %if.end45.while.body_crit_edge ], [ %items, %if.then11.while.body_crit_edge ]
  %19 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %_selected_sk.018, ptr %selected_sk17, align 4
  %frombool = zext i1 %_no_reuseport.0.off019 to i8
  %20 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %no_reuseport18, align 4
  call void @__cant_migrate(ptr noundef nonnull @.str.19, i32 noundef 613) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_sk_lookup_run_v6, %if.then.i.i)) #11
          to label %if.else.i.i [label %if.then.i.i], !srcloc !122

if.then.i.i:                                      ; preds = %while.body
  %call3.i.i = call i64 @sched_clock() #11
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = call i32 %22(ptr noundef nonnull %ctx, ptr noundef %insnsi.i.i) #11
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_off() #11
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %35 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %39 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i5 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i5 to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, ptrtoint (ptr @lockdep_recursion to i32)
  %45 = inttoptr i32 %add.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !143
  %48 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i7.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool20.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %52 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %56 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i9.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %60 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %63, ptrtoint (ptr @hardirqs_enabled to i32)
  %64 = inttoptr i32 %add47.i.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  %67 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i12.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool54.not.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %71 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 3, i32 0, i32 1
  %73 = call ptr @llvm.returnaddress(i32 0) #11
  %74 = ptrtoint ptr %73 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %74) #11
  %75 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %32, align 8
  %inc.i.i.i = add i64 %76, 1
  store i64 %inc.i.i.i, ptr %32, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %32, i32 0, i32 1
  %call13.i.i = call i64 @sched_clock() #11
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %77 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i6 = add i64 %conv.i.i.i, %78
  store i64 %add.i.i.i6, ptr %nsecs.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %74) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %79 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i.i4.i.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !131

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #11, !srcloc !132
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %18, i32 0, i32 9
  %82 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = call i32 %83(ptr noundef nonnull %ctx, ptr noundef %insnsi15.i.i) #11
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %84 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %ret.0.i.i, label %bpf_prog_run.exit.if.end45_crit_edge [
    i32 1, label %land.lhs.true30
    i32 0, label %land.lhs.true40
  ]

bpf_prog_run.exit.if.end45_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true30:                                  ; preds = %bpf_prog_run.exit
  %85 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %selected_sk17, align 4
  %tobool32.not = icmp eq ptr %86, null
  br i1 %tobool32.not, label %land.lhs.true30.if.end45_crit_edge, label %if.then33

land.lhs.true30.if.end45_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %no_reuseport18, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool36 = icmp ne i8 %88, 0
  br label %if.end45

land.lhs.true40:                                  ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #13
  %89 = and i8 %_all_pass.020, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool41.not = icmp eq i8 %89, 0
  %spec.store.select = select i1 %tobool41.not, i8 %_all_pass.020, i8 0
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true40, %if.then33, %land.lhs.true30.if.end45_crit_edge, %bpf_prog_run.exit.if.end45_crit_edge
  %_selected_sk.1 = phi ptr [ %86, %if.then33 ], [ %_selected_sk.018, %land.lhs.true40 ], [ %_selected_sk.018, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_selected_sk.018, %land.lhs.true30.if.end45_crit_edge ]
  %_no_reuseport.1.off0 = phi i1 [ %tobool36, %if.then33 ], [ %_no_reuseport.0.off019, %land.lhs.true40 ], [ %_no_reuseport.0.off019, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_no_reuseport.0.off019, %land.lhs.true30.if.end45_crit_edge ]
  %_all_pass.1 = phi i8 [ %_all_pass.020, %if.then33 ], [ %spec.store.select, %land.lhs.true40 ], [ %_all_pass.020, %bpf_prog_run.exit.if.end45_crit_edge ], [ %_all_pass.020, %land.lhs.true30.if.end45_crit_edge ]
  %incdec.ptr = getelementptr %struct.bpf_prog_array_item, ptr %_item.017, i32 1
  %90 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %incdec.ptr, align 8
  %tobool24.not = icmp eq ptr %91, null
  br i1 %tobool24.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.then11.while.end_crit_edge
  %_selected_sk.0.lcssa = phi ptr [ null, %if.then11.while.end_crit_edge ], [ %_selected_sk.1, %if.end45.while.end_crit_edge ]
  %_no_reuseport.0.off0.lcssa = phi i1 [ false, %if.then11.while.end_crit_edge ], [ %_no_reuseport.1.off0, %if.end45.while.end_crit_edge ]
  %_all_pass.0.lcssa = phi i8 [ 1, %if.then11.while.end_crit_edge ], [ %_all_pass.1, %if.end45.while.end_crit_edge ]
  %92 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %_selected_sk.0.lcssa, ptr %selected_sk17, align 4
  %frombool49 = zext i1 %_no_reuseport.0.off0.lcssa to i8
  %93 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %frombool49, ptr %no_reuseport18, align 4
  call void @migrate_enable() #11
  %94 = and i8 %_all_pass.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool51.not = icmp ne i8 %94, 0
  %tobool53 = icmp ne ptr %_selected_sk.0.lcssa, null
  %spec.select = select i1 %tobool51.not, i1 true, i1 %tobool53
  br i1 %spec.select, label %if.then56, label %while.end.if.end63_crit_edge

while.end.if.end63_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %selected_sk17 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %selected_sk17, align 4
  %97 = ptrtoint ptr %no_reuseport18 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %no_reuseport18, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool59 = icmp ne i8 %98, 0
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %while.end.if.end63_crit_edge
  %no_reuseport.0 = phi i1 [ %tobool59, %if.then56 ], [ false, %while.end.if.end63_crit_edge ]
  %selected_sk.0 = phi ptr [ %96, %if.then56 ], [ inttoptr (i32 -111 to ptr), %while.end.if.end63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ctx) #11
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %do.end8.if.end64_crit_edge
  %no_reuseport.1.off0 = phi i1 [ %no_reuseport.0, %if.end63 ], [ false, %do.end8.if.end64_crit_edge ]
  %selected_sk.1 = phi ptr [ %selected_sk.0, %if.end63 ], [ null, %do.end8.if.end64_crit_edge ]
  %call.i7 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i7, label %if.end64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.end64.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.end64
  %call1.i8 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.end64.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %99 = call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i.i.i14 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %103 = ptrtoint ptr %psk to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %selected_sk.1, ptr %psk, align 4
  ret i1 %no_reuseport.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %sk, i64 noundef %kt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sk_stamp_seq = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64
  %lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #11
  %0 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 64, i32 0, i32 0, i32 1
  %2 = tail call ptr @llvm.returnaddress(i32 0) #11
  %3 = ptrtoint ptr %2 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %3) #11
  %sk_stamp = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 63
  %4 = ptrtoint ptr %sk_stamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %kt, ptr %sk_stamp, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %5 = ptrtoint ptr %sk_stamp_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_stamp_seq, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %sk_stamp_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @udp_sk_rx_dst_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udpv6_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not.i = icmp eq i16 %3, 0
  br i1 %tobool.i.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %accept_udp_l4.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %accept_udp_l4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %accept_udp_l4.i, align 1
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %and8.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end5.i.if.then_crit_edge, label %land.lhs.true10.i

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true10.i:                                ; preds = %if.end5.i
  %accept_udp_fraglist.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %8 = ptrtoint ptr %accept_udp_fraglist.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load12.i = load i8, ptr %accept_udp_fraglist.i, align 1
  %9 = and i8 %bf.load12.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not.i = icmp eq i8 %9, 0
  br i1 %tobool15.not.i, label %land.lhs.true10.i.if.end_crit_edge, label %land.lhs.true10.i.if.then_crit_edge

land.lhs.true10.i.if.then_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true10.i.if.end_crit_edge:               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true10.i.if.then_crit_edge, %if.end5.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i, align 4
  %add.i = sub i32 %17, %sub.ptr.sub.i
  store i32 %add.i, ptr %len1.i, align 4
  %call6 = tail call fastcc ptr @udp_rcv_segment(ptr noundef %sk, ptr noundef %skb)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %next.057.sink = phi ptr [ %19, %for.inc.for.body_crit_edge ], [ %call6, %if.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %next.057.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next.057.sink, align 8
  %head.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %next.057.sink, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i44, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %next.057.sink, i32 0, i32 15, i32 0, i32 19
  %22 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i45 = zext i16 %23 to i32
  %add.ptr.i.i46 = getelementptr i8, ptr %21, i32 %conv.i.i45
  %data.i47 = getelementptr inbounds %struct.sk_buff, ptr %next.057.sink, i32 0, i32 19
  %24 = ptrtoint ptr %data.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i47, align 4
  %sub.ptr.lhs.cast.i48 = ptrtoint ptr %add.ptr.i.i46 to i32
  %sub.ptr.rhs.cast.i49 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i50 = sub i32 %sub.ptr.lhs.cast.i48, %sub.ptr.rhs.cast.i49
  %len1.i51 = getelementptr inbounds %struct.sk_buff, ptr %next.057.sink, i32 0, i32 6
  %26 = ptrtoint ptr %len1.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1.i51, align 4
  %sub.i = sub i32 %27, %sub.ptr.sub.i50
  store i32 %sub.i, ptr %len1.i51, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %next.057.sink, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %29)
  %cmp.i = icmp ult i32 %sub.i, %29
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !131

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !149
  unreachable

__skb_pull.exit:                                  ; preds = %for.body
  %add.ptr.i53 = getelementptr i8, ptr %25, i32 %sub.ptr.sub.i50
  %30 = ptrtoint ptr %data.i47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i53, ptr %data.i47, align 4
  tail call fastcc void @udp_post_segment_fix_csum(ptr noundef nonnull %next.057.sink)
  %call12 = tail call fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %sk, ptr noundef nonnull %next.057.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp sgt i32 %call12, 0
  br i1 %cmp, label %if.then13, label %__skb_pull.exit.for.inc_crit_edge

__skb_pull.exit.for.inc_crit_edge:                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then13:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  %31 = getelementptr inbounds %struct.anon.46, ptr %next.057.sink, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 127
  %34 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nd_net.i, align 4
  tail call void @ip6_protocol_deliver_rcu(ptr noundef %35, ptr noundef nonnull %next.057.sink, i32 noundef %call12, i1 noundef zeroext true) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %__skb_pull.exit.for.inc_crit_edge
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udpv6_queue_rcv_one_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %0 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %1)
  %cmp = icmp eq i16 %1, 136
  %call2 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.do.body225_crit_edge, label %if.end

entry.do.body225_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udpv6_encap_needed_key, ptr blockaddress(@udpv6_queue_rcv_one_skb, %land.lhs.true)) #11
          to label %if.end78 [label %land.lhs.true], !srcloc !122

land.lhs.true:                                    ; preds = %if.end
  %encap_type = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %encap_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encap_type, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end78_crit_edge, label %if.then9

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then9:                                         ; preds = %land.lhs.true
  %encap_rcv11 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 11
  %4 = ptrtoint ptr %encap_rcv11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %encap_rcv11, align 16
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then9.if.end78_crit_edge, label %if.then13

if.then9.if.end78_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then13:                                        ; preds = %if.then9
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %7 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.i.i = icmp ne i16 %7, 1
  %8 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i.i = icmp eq i16 %8, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

lor.rhs.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp12.i.i = icmp eq i16 %7, 3
  br i1 %cmp12.i.i, label %skb_csum_unnecessary.exit.i, label %lor.rhs.i.i.land.rhs.i_crit_edge

lor.rhs.i.i.land.rhs.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

skb_csum_unnecessary.exit.i:                      ; preds = %lor.rhs.i.i
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %conv.i.i.i = zext i16 %11 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.land.rhs.i_crit_edge, label %skb_csum_unnecessary.exit.i.if.end17_crit_edge

skb_csum_unnecessary.exit.i.if.end17_crit_edge:   ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

skb_csum_unnecessary.exit.i.land.rhs.i_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %skb_csum_unnecessary.exit.i.land.rhs.i_crit_edge, %lor.rhs.i.i.land.rhs.i_crit_edge
  %cscov.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %cscov.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cscov.i.i, align 8
  %conv.i.i = zext i16 %17 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i.i)
  %cmp.i4.i = icmp eq i32 %19, %conv.i.i
  br i1 %cmp.i4.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i331 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #11
  br label %udp_lib_checksum_complete.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %skb, i32 noundef %conv.i.i) #11
  br label %udp_lib_checksum_complete.exit

udp_lib_checksum_complete.exit:                   ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.in.i.i = phi i16 [ %call.i.i331, %cond.true.i.i ], [ %call7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in.i.i)
  %tobool2.i.not = icmp eq i16 %cond.in.i.i, 0
  br i1 %tobool2.i.not, label %udp_lib_checksum_complete.exit.if.end17_crit_edge, label %udp_lib_checksum_complete.exit.do.body164_crit_edge

udp_lib_checksum_complete.exit.do.body164_crit_edge: ; preds = %udp_lib_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body164

udp_lib_checksum_complete.exit.if.end17_crit_edge: ; preds = %udp_lib_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %udp_lib_checksum_complete.exit.if.end17_crit_edge, %skb_csum_unnecessary.exit.i.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %call18 = tail call i32 %5(ptr noundef %sk, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %do.body22, label %if.end17.if.end78_crit_edge

if.end17.if.end78_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 30, i32 10
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 30, i32 5
  %udplite_stats_in6.sink = select i1 %cmp, ptr %udplite_stats_in6, ptr %udp_stats_in6
  %22 = ptrtoint ptr %udplite_stats_in6.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udplite_stats_in6.sink, align 4
  %arrayidx = getelementptr [10 x i32], ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx38, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add39 = add i32 %33, 1
  store i32 %add39, ptr %31, align 4
  %sub = sub i32 0, %call18
  br label %cleanup286

if.end78:                                         ; preds = %if.end17.if.end78_crit_edge, %if.then9.if.end78_crit_edge, %land.lhs.true.if.end78_crit_edge, %if.end
  %pcflag = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 9
  %34 = ptrtoint ptr %pcflag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pcflag, align 2
  %36 = and i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool80.not = icmp eq i8 %36, 0
  br i1 %tobool80.not, label %if.end78.if.end147_crit_edge, label %land.lhs.true81

if.end78.if.end147_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

land.lhs.true81:                                  ; preds = %if.end78
  %partial_cov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %37 = ptrtoint ptr %partial_cov to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %partial_cov, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool83.not = icmp eq i8 %38, 0
  br i1 %tobool83.not, label %land.lhs.true81.if.end147_crit_edge, label %if.then84

land.lhs.true81.if.end147_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then84:                                        ; preds = %land.lhs.true81
  %pcrlen = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 8
  %39 = ptrtoint ptr %pcrlen to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pcrlen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp86 = icmp eq i16 %40, 0
  br i1 %cmp86, label %do.body89, label %if.end111

do.body89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udpv6_queue_rcv_one_skb.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udpv6_queue_rcv_one_skb, %land.lhs.true101)) #11
          to label %do.body225 [label %land.lhs.true101], !srcloc !122

land.lhs.true101:                                 ; preds = %do.body89
  %call102 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true101.do.body225_crit_edge, label %if.then104

land.lhs.true101.do.body225_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  %cscov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %41 = ptrtoint ptr %cscov to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cscov, align 8
  %conv107 = zext i16 %42 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udpv6_queue_rcv_one_skb.descriptor, ptr noundef nonnull @.str.27, i32 noundef %conv107, i32 noundef %44) #11
  br label %do.body225

if.end111:                                        ; preds = %if.then84
  %cscov114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %45 = ptrtoint ptr %cscov114 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cscov114, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %40)
  %cmp118 = icmp ult i16 %46, %40
  br i1 %cmp118, label %do.body121, label %if.end111.if.end147_crit_edge

if.end111.if.end147_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

do.body121:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udpv6_queue_rcv_one_skb.descriptor.28, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udpv6_queue_rcv_one_skb, %land.lhs.true133)) #11
          to label %do.body225 [label %land.lhs.true133], !srcloc !122

land.lhs.true133:                                 ; preds = %do.body121
  %call134 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %land.lhs.true133.do.body225_crit_edge, label %if.then136

land.lhs.true133.do.body225_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225

if.then136:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %cscov114 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %cscov114, align 8
  %conv140 = zext i16 %48 to i32
  %49 = ptrtoint ptr %pcrlen to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pcrlen, align 8
  %conv142 = zext i16 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udpv6_queue_rcv_one_skb.descriptor.28, ptr noundef nonnull @.str.29, i32 noundef %conv140, i32 noundef %conv142) #11
  br label %do.body225

if.end147:                                        ; preds = %if.end111.if.end147_crit_edge, %land.lhs.true81.if.end147_crit_edge, %if.end78.if.end147_crit_edge
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %sk_backlog) #11, !srcloc !150
  %sk_filter = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 16
  %51 = ptrtoint ptr %sk_filter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %sk_filter, align 4
  %tobool153.not = icmp eq ptr %52, null
  br i1 %tobool153.not, label %if.end147.if.end158_crit_edge, label %land.lhs.true154

if.end147.if.end158_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

land.lhs.true154:                                 ; preds = %if.end147
  %ip_summed.i.i334 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %53 = ptrtoint ptr %ip_summed.i.i334 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i.i335 = load i16, ptr %ip_summed.i.i334, align 8
  %bf.lshr.i.i336 = lshr i16 %bf.load.i.i335, 9
  %54 = and i16 %bf.lshr.i.i336, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp.i.i337 = icmp ne i16 %54, 1
  %55 = and i16 %bf.load.i.i335, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i.i338 = icmp eq i16 %55, 0
  %or.cond.i.i339 = select i1 %cmp.i.i337, i1 %tobool.not.i.i338, i1 false
  br i1 %or.cond.i.i339, label %lor.rhs.i.i341, label %land.lhs.true154.if.end158_crit_edge

land.lhs.true154.if.end158_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

lor.rhs.i.i341:                                   ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %54)
  %cmp12.i.i340 = icmp eq i16 %54, 3
  br i1 %cmp12.i.i340, label %skb_csum_unnecessary.exit.i350, label %lor.rhs.i.i341.land.rhs.i355_crit_edge

lor.rhs.i.i341.land.rhs.i355_crit_edge:           ; preds = %lor.rhs.i.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i355

skb_csum_unnecessary.exit.i350:                   ; preds = %lor.rhs.i.i341
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 8
  %conv.i.i.i342 = zext i16 %58 to i32
  %data.i.i.i.i343 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i.i343, align 4
  %head.i.i.i.i344 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %61 = ptrtoint ptr %head.i.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i.i.i344, align 8
  %sub.ptr.lhs.cast.i.i.i.i345 = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i.i.i346 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.neg.i.i.i347 = sub i32 %conv.i.i.i342, %sub.ptr.lhs.cast.i.i.i.i345
  %sub.i.i.i348 = add i32 %sub.ptr.sub.i.neg.i.i.i347, %sub.ptr.rhs.cast.i.i.i.i346
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i348)
  %tobool.not.i349 = icmp slt i32 %sub.i.i.i348, 0
  br i1 %tobool.not.i349, label %skb_csum_unnecessary.exit.i350.land.rhs.i355_crit_edge, label %skb_csum_unnecessary.exit.i350.if.end158_crit_edge

skb_csum_unnecessary.exit.i350.if.end158_crit_edge: ; preds = %skb_csum_unnecessary.exit.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

skb_csum_unnecessary.exit.i350.land.rhs.i355_crit_edge: ; preds = %skb_csum_unnecessary.exit.i350
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i355

land.rhs.i355:                                    ; preds = %skb_csum_unnecessary.exit.i350.land.rhs.i355_crit_edge, %lor.rhs.i.i341.land.rhs.i355_crit_edge
  %cscov.i.i351 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %63 = ptrtoint ptr %cscov.i.i351 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cscov.i.i351, align 8
  %conv.i.i352 = zext i16 %64 to i32
  %len.i.i353 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %65 = ptrtoint ptr %len.i.i353 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i353, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv.i.i352)
  %cmp.i4.i354 = icmp eq i32 %66, %conv.i.i352
  br i1 %cmp.i4.i354, label %cond.true.i.i357, label %cond.false.i.i359

cond.true.i.i357:                                 ; preds = %land.rhs.i355
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i356 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #11
  br label %udp_lib_checksum_complete.exit364

cond.false.i.i359:                                ; preds = %land.rhs.i355
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i358 = tail call zeroext i16 @__skb_checksum_complete_head(ptr noundef %skb, i32 noundef %conv.i.i352) #11
  br label %udp_lib_checksum_complete.exit364

udp_lib_checksum_complete.exit364:                ; preds = %cond.false.i.i359, %cond.true.i.i357
  %cond.in.i.i360 = phi i16 [ %call.i.i356, %cond.true.i.i357 ], [ %call7.i.i358, %cond.false.i.i359 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.in.i.i360)
  %tobool2.i361.not = icmp eq i16 %cond.in.i.i360, 0
  br i1 %tobool2.i361.not, label %udp_lib_checksum_complete.exit364.if.end158_crit_edge, label %udp_lib_checksum_complete.exit364.do.body164_crit_edge

udp_lib_checksum_complete.exit364.do.body164_crit_edge: ; preds = %udp_lib_checksum_complete.exit364
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body164

udp_lib_checksum_complete.exit364.if.end158_crit_edge: ; preds = %udp_lib_checksum_complete.exit364
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.end158:                                        ; preds = %udp_lib_checksum_complete.exit364.if.end158_crit_edge, %skb_csum_unnecessary.exit.i350.if.end158_crit_edge, %land.lhs.true154.if.end158_crit_edge, %if.end147.if.end158_crit_edge
  %call159 = tail call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef %skb, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.do.body225_crit_edge

if.end158.do.body225_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body225

if.end162:                                        ; preds = %if.end158
  %csum_valid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %67 = ptrtoint ptr %csum_valid.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i = load i16, ptr %csum_valid.i, align 8
  %68 = and i16 %bf.load.i, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %if.then.i, label %if.end162.udp_csum_pull_header.exit_crit_edge

if.end162.udp_csum_pull_header.exit_crit_edge:    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %udp_csum_pull_header.exit

if.then.i:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %call.i = tail call i32 @csum_partial(ptr noundef %71, i32 noundef 8, i32 noundef %74) #11
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i, ptr %72, align 8
  br label %udp_csum_pull_header.exit

udp_csum_pull_header.exit:                        ; preds = %if.then.i, %if.end162.udp_csum_pull_header.exit_crit_edge
  %call5.i = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 8) #11
  %cscov.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %76 = ptrtoint ptr %cscov.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %cscov.i, align 8
  %sub.i = add i16 %77, -8
  store i16 %sub.i, ptr %cscov.i, align 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i365 = icmp eq i32 %80, 0
  br i1 %tobool.not.i365, label %udp_csum_pull_header.exit.skb_dst_drop.exit_crit_edge, label %if.then.i367

udp_csum_pull_header.exit.skb_dst_drop.exit_crit_edge: ; preds = %udp_csum_pull_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i367:                                     ; preds = %udp_csum_pull_header.exit
  %and.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i366 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i366, label %if.then.i.i, label %if.then.i367.refdst_drop.exit.i_crit_edge

if.then.i367.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #13
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i367
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %80, -2
  %81 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %81) #11
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i367.refdst_drop.exit.i_crit_edge
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %78, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %udp_csum_pull_header.exit.skb_dst_drop.exit_crit_edge
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %83 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %skc_v6_daddr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %86, %84
  %arrayidx4.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %88
  %arrayidx7.i.i = getelementptr %struct.sock_common, ptr %sk, i32 0, i32 10, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i368 = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i368, label %if.else.i, label %if.then.i369

if.then.i369:                                     ; preds = %skb_dst_drop.exit
  %91 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 21
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %94 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hash.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp.not.i.i = icmp eq i32 %93, %95
  br i1 %cmp.not.i.i, label %if.then.i369.sock_rps_save_rxhash.exit.i_crit_edge, label %if.then.i.i370, !prof !127

if.then.i369.sock_rps_save_rxhash.exit.i_crit_edge: ; preds = %if.then.i369
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_rps_save_rxhash.exit.i

if.then.i.i370:                                   ; preds = %if.then.i369
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %91, align 8
  br label %sock_rps_save_rxhash.exit.i

sock_rps_save_rxhash.exit.i:                      ; preds = %if.then.i.i370, %if.then.i369.sock_rps_save_rxhash.exit.i_crit_edge
  %sk_napi_id.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 14
  %97 = ptrtoint ptr %sk_napi_id.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %sk_napi_id.i.i, align 4
  %99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 11
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %101)
  %cmp.not.i409.i = icmp eq i32 %98, %101
  br i1 %cmp.not.i409.i, label %sock_rps_save_rxhash.exit.i.if.end.i.i_crit_edge, label %do.body5.i.i, !prof !127

sock_rps_save_rxhash.exit.i.if.end.i.i_crit_edge: ; preds = %sock_rps_save_rxhash.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %sock_rps_save_rxhash.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %sk_napi_id.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %101, ptr %sk_napi_id.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %sock_rps_save_rxhash.exit.i.if.end.i.i_crit_edge
  %queue_mapping.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %103 = ptrtoint ptr %queue_mapping.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %queue_mapping.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp.i.not.i.i.i.i = icmp eq i16 %104, 0
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i.i.sk_mark_napi_id.exit.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.sk_mark_napi_id.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_mark_napi_id.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  %sub.i.i.i.i.i = add i16 %104, -1
  %skc_rx_queue_mapping.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 17
  %105 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load volatile i16, ptr %skc_rx_queue_mapping.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %sub.i.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i16 %106, %sub.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then.i.i.i.i.sk_mark_napi_id.exit.i_crit_edge, label %do.body11.i.i.i.i, !prof !127

if.then.i.i.i.i.sk_mark_napi_id.exit.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_mark_napi_id.exit.i

do.body11.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %skc_rx_queue_mapping.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store volatile i16 %sub.i.i.i.i.i, ptr %skc_rx_queue_mapping.i.i.i.i, align 2
  br label %sk_mark_napi_id.exit.i

sk_mark_napi_id.exit.i:                           ; preds = %do.body11.i.i.i.i, %if.then.i.i.i.i.sk_mark_napi_id.exit.i_crit_edge, %if.end.i.i.sk_mark_napi_id.exit.i_crit_edge
  %108 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu1.i.i, align 4
  %112 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 18
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %111)
  %cmp.not.i410.i = icmp eq i32 %114, %111
  br i1 %cmp.not.i410.i, label %sk_mark_napi_id.exit.i.if.end.i_crit_edge, label %do.body7.i.i, !prof !127

sk_mark_napi_id.exit.i.if.end.i_crit_edge:        ; preds = %sk_mark_napi_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body7.i.i:                                     ; preds = %sk_mark_napi_id.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 %111, ptr %112, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %skb_dst_drop.exit
  %116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 11
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %sk_napi_id.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 14
  %119 = ptrtoint ptr %sk_napi_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %sk_napi_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i.i.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body4.i.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %sk_napi_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 %118, ptr %sk_napi_id.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body4.i.i.i, %if.else.i.if.end.i_crit_edge, %do.body7.i.i, %sk_mark_napi_id.exit.i.if.end.i_crit_edge
  %call1.i = tail call i32 @__udp_enqueue_schedule_skb(ptr noundef %sk, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.cleanup286_crit_edge

if.end.i.cleanup286_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup286

if.then2.i:                                       ; preds = %if.end.i
  %122 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %123)
  %cmp3.i = icmp eq i16 %123, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call1.i)
  %cmp5.i = icmp eq i32 %call1.i, -12
  %124 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %125 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skc_net.i.i, align 4
  br i1 %cmp5.i, label %do.body.i, label %do.body120.i

do.body.i:                                        ; preds = %if.then2.i
  br i1 %cmp3.i, label %do.body10.i, label %do.body55.i

do.body10.i:                                      ; preds = %do.body.i
  %udplite_stats_in6.i = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 30, i32 10
  %127 = ptrtoint ptr %udplite_stats_in6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %udplite_stats_in6.i, align 4
  %arrayidx.i = getelementptr [10 x i32], ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %arrayidx.i to i32
  %130 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i.i371 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i371 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu.i, align 4
  %arrayidx27.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx27.i, align 4
  %add.i = add i32 %135, %129
  %136 = inttoptr i32 %add.i to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %add28.i = add i32 %138, 1
  store i32 %add28.i, ptr %136, align 4
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i412.i = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i412.i)
  %tobool39.not.i = icmp eq i32 %and.i.i412.i, 0
  br i1 %tobool39.not.i, label %if.then43.i, label %do.body10.i.do.end46.i_crit_edge, !prof !131

do.body10.i.do.end46.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46.i

if.then43.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %do.body10.i.do.end46.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #11, !srcloc !132
  br label %do.body258.i

do.body55.i:                                      ; preds = %do.body.i
  %udp_stats_in6.i = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 30, i32 5
  %140 = ptrtoint ptr %udp_stats_in6.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %udp_stats_in6.i, align 4
  %arrayidx80.i = getelementptr [10 x i32], ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %arrayidx80.i to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i414.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i414.i to ptr
  %cpu83.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %cpu83.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cpu83.i, align 4
  %arrayidx84.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx84.i, align 4
  %add85.i = add i32 %148, %142
  %149 = inttoptr i32 %add85.i to ptr
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add86.i = add i32 %151, 1
  store i32 %add86.i, ptr %149, align 4
  %152 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i415.i = and i32 %152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i415.i)
  %tobool97.not.i = icmp eq i32 %and.i.i415.i, 0
  br i1 %tobool97.not.i, label %if.then106.i, label %do.body55.i.do.end109.i_crit_edge, !prof !131

do.body55.i.do.end109.i_crit_edge:                ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end109.i

if.then106.i:                                     ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end109.i

do.end109.i:                                      ; preds = %if.then106.i, %do.body55.i.do.end109.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #11, !srcloc !132
  br label %do.body322.i

do.body120.i:                                     ; preds = %if.then2.i
  br i1 %cmp3.i, label %do.body124.i, label %do.body188.i

do.body124.i:                                     ; preds = %do.body120.i
  %udplite_stats_in6148.i = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 30, i32 10
  %153 = ptrtoint ptr %udplite_stats_in6148.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %udplite_stats_in6148.i, align 4
  %arrayidx150.i = getelementptr [10 x i32], ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %arrayidx150.i to i32
  %156 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i417.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i417.i to ptr
  %cpu153.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %cpu153.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cpu153.i, align 4
  %arrayidx154.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %161, %155
  %162 = inttoptr i32 %add155.i to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %add156.i = add i32 %164, 1
  store i32 %add156.i, ptr %162, align 4
  %165 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i418.i = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i418.i)
  %tobool167.not.i = icmp eq i32 %and.i.i418.i, 0
  br i1 %tobool167.not.i, label %if.then176.i, label %do.body124.i.do.end179.i_crit_edge, !prof !131

do.body124.i.do.end179.i_crit_edge:               ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end179.i

if.then176.i:                                     ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end179.i

do.end179.i:                                      ; preds = %if.then176.i, %do.body124.i.do.end179.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #11, !srcloc !132
  br label %do.body258.i

do.body188.i:                                     ; preds = %do.body120.i
  %udp_stats_in6212.i = getelementptr inbounds %struct.net, ptr %126, i32 0, i32 30, i32 5
  %166 = ptrtoint ptr %udp_stats_in6212.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %udp_stats_in6212.i, align 4
  %arrayidx214.i = getelementptr [10 x i32], ptr %167, i32 0, i32 9
  %168 = ptrtoint ptr %arrayidx214.i to i32
  %169 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i420.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i420.i to ptr
  %cpu217.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %cpu217.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cpu217.i, align 4
  %arrayidx218.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx218.i, align 4
  %add219.i = add i32 %174, %168
  %175 = inttoptr i32 %add219.i to ptr
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %add220.i = add i32 %177, 1
  store i32 %add220.i, ptr %175, align 4
  %178 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i421.i = and i32 %178, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i421.i)
  %tobool231.not.i = icmp eq i32 %and.i.i421.i, 0
  br i1 %tobool231.not.i, label %if.then240.i, label %do.body188.i.do.end243.i_crit_edge, !prof !131

do.body188.i.do.end243.i_crit_edge:               ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end243.i

if.then240.i:                                     ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end243.i

do.end243.i:                                      ; preds = %if.then240.i, %do.body188.i.do.end243.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #11, !srcloc !132
  br label %do.body322.i

do.body258.i:                                     ; preds = %do.end179.i, %do.end46.i
  %179 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %180 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %skc_net.i.i, align 4
  %udplite_stats_in6282.i = getelementptr inbounds %struct.net, ptr %181, i32 0, i32 30, i32 10
  %182 = ptrtoint ptr %udplite_stats_in6282.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %udplite_stats_in6282.i, align 4
  %arrayidx284.i = getelementptr [10 x i32], ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %arrayidx284.i to i32
  %185 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i423.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i423.i to ptr
  %cpu287.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %cpu287.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cpu287.i, align 4
  %arrayidx288.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx288.i, align 4
  %add289.i = add i32 %190, %184
  %191 = inttoptr i32 %add289.i to ptr
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %add290.i = add i32 %193, 1
  store i32 %add290.i, ptr %191, align 4
  %194 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i424.i = and i32 %194, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i424.i)
  %tobool301.not.i = icmp eq i32 %and.i.i424.i, 0
  br i1 %tobool301.not.i, label %if.then310.i, label %do.body258.i.do.end313.i_crit_edge, !prof !131

do.body258.i.do.end313.i_crit_edge:               ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end313.i

if.then310.i:                                     ; preds = %do.body258.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end313.i

do.end313.i:                                      ; preds = %if.then310.i, %do.body258.i.do.end313.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %179) #11, !srcloc !132
  br label %do.end386.i

do.body322.i:                                     ; preds = %do.end243.i, %do.end109.i
  %195 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %196 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %skc_net.i.i, align 4
  %udp_stats_in6346.i = getelementptr inbounds %struct.net, ptr %197, i32 0, i32 30, i32 5
  %198 = ptrtoint ptr %udp_stats_in6346.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %udp_stats_in6346.i, align 4
  %arrayidx348.i = getelementptr [10 x i32], ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %arrayidx348.i to i32
  %201 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i426.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i426.i to ptr
  %cpu351.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %cpu351.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %cpu351.i, align 4
  %arrayidx352.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %204
  %205 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx352.i, align 4
  %add353.i = add i32 %206, %200
  %207 = inttoptr i32 %add353.i to ptr
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %207, align 4
  %add354.i = add i32 %209, 1
  store i32 %add354.i, ptr %207, align 4
  %210 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i427.i = and i32 %210, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i427.i)
  %tobool365.not.i = icmp eq i32 %and.i.i427.i, 0
  br i1 %tobool365.not.i, label %if.then374.i, label %do.body322.i.do.end377.i_crit_edge, !prof !131

do.body322.i.do.end377.i_crit_edge:               ; preds = %do.body322.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end377.i

if.then374.i:                                     ; preds = %do.body322.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end377.i

do.end377.i:                                      ; preds = %if.then374.i, %do.body322.i.do.end377.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %195) #11, !srcloc !132
  br label %do.end386.i

do.end386.i:                                      ; preds = %do.end377.i, %do.end313.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup286

do.body164:                                       ; preds = %udp_lib_checksum_complete.exit364.do.body164_crit_edge, %udp_lib_checksum_complete.exit.do.body164_crit_edge
  %skc_net.i373 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %211 = ptrtoint ptr %skc_net.i373 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %skc_net.i373, align 4
  br i1 %cmp, label %do.body225.thread, label %do.body225.thread394

do.body225.thread:                                ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  %udplite_stats_in6181 = getelementptr inbounds %struct.net, ptr %212, i32 0, i32 30, i32 10
  %213 = ptrtoint ptr %udplite_stats_in6181 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %udplite_stats_in6181, align 4
  %arrayidx183 = getelementptr [10 x i32], ptr %214, i32 0, i32 7
  %215 = ptrtoint ptr %arrayidx183 to i32
  %216 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i374 = and i32 %216, -16384
  %217 = inttoptr i32 %and.i374 to ptr
  %cpu186 = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %cpu186 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %cpu186, align 4
  %arrayidx187 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %219
  %220 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx187, align 4
  %add188 = add i32 %221, %215
  %222 = inttoptr i32 %add188 to ptr
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 4
  %add189 = add i32 %224, 1
  store i32 %add189, ptr %222, align 4
  br label %if.then227

do.body225.thread394:                             ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  %udp_stats_in6209 = getelementptr inbounds %struct.net, ptr %212, i32 0, i32 30, i32 5
  %225 = ptrtoint ptr %udp_stats_in6209 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %udp_stats_in6209, align 4
  %arrayidx211 = getelementptr [10 x i32], ptr %226, i32 0, i32 7
  %227 = ptrtoint ptr %arrayidx211 to i32
  %228 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i376 = and i32 %228, -16384
  %229 = inttoptr i32 %and.i376 to ptr
  %cpu214 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %cpu214 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cpu214, align 4
  %arrayidx215 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %231
  %232 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx215, align 4
  %add216 = add i32 %233, %227
  %234 = inttoptr i32 %add216 to ptr
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %234, align 4
  %add217 = add i32 %236, 1
  store i32 %add217, ptr %234, align 4
  br label %if.else255

do.body225:                                       ; preds = %if.end158.do.body225_crit_edge, %if.then136, %land.lhs.true133.do.body225_crit_edge, %do.body121, %if.then104, %land.lhs.true101.do.body225_crit_edge, %do.body89, %entry.do.body225_crit_edge
  br i1 %cmp, label %do.body225.if.then227_crit_edge, label %do.body225.if.else255_crit_edge

do.body225.if.else255_crit_edge:                  ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else255

do.body225.if.then227_crit_edge:                  ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then227

if.then227:                                       ; preds = %do.body225.if.then227_crit_edge, %do.body225.thread
  %skc_net.i377 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %237 = ptrtoint ptr %skc_net.i377 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %skc_net.i377, align 4
  %udplite_stats_in6242 = getelementptr inbounds %struct.net, ptr %238, i32 0, i32 30, i32 10
  br label %do.end285

if.else255:                                       ; preds = %do.body225.if.else255_crit_edge, %do.body225.thread394
  %skc_net.i379 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %239 = ptrtoint ptr %skc_net.i379 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %skc_net.i379, align 4
  %udp_stats_in6270 = getelementptr inbounds %struct.net, ptr %240, i32 0, i32 30, i32 5
  br label %do.end285

do.end285:                                        ; preds = %if.else255, %if.then227
  %udp_stats_in6270.sink = phi ptr [ %udp_stats_in6270, %if.else255 ], [ %udplite_stats_in6242, %if.then227 ]
  %241 = ptrtoint ptr %udp_stats_in6270.sink to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %udp_stats_in6270.sink, align 4
  %arrayidx272 = getelementptr [10 x i32], ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %arrayidx272 to i32
  %244 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i380 = and i32 %244, -16384
  %245 = inttoptr i32 %and.i380 to ptr
  %cpu275 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 3
  %246 = ptrtoint ptr %cpu275 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %cpu275, align 4
  %arrayidx276 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %247
  %248 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx276, align 4
  %add277 = add i32 %249, %243
  %250 = inttoptr i32 %add277 to ptr
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 4
  %add278 = add i32 %252, 1
  store i32 %add278, ptr %250, align 4
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #11
  %253 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 1, ptr elementtype(i32) %sk_drops) #11, !srcloc !128
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup286

cleanup286:                                       ; preds = %do.end285, %do.end386.i, %if.end.i.cleanup286_crit_edge, %do.body22
  %retval.3 = phi i32 [ -1, %do.end285 ], [ %sub, %do.body22 ], [ -1, %do.end386.i ], [ 0, %if.end.i.cleanup286_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @udp_rcv_segment(ptr noundef %sk, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %convert_csum.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 14
  %0 = ptrtoint ptr %convert_csum.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %convert_csum.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.i.not, i64 19, i64 1
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp, label %if.then2, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i16 %bf.load, 1536
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %call5 = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %spec.select, i1 noundef zeroext false) #11
  %tobool.not.i = icmp eq ptr %call5, null
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then7, label %if.end76

if.then7:                                         ; preds = %if.end4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv9 = zext i16 %7 to i32
  %sk_drops = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_drops, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops, ptr %sk_drops, i32 %conv9, ptr elementtype(i32) %sk_drops) #11, !srcloc !128
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !129
  %sk_protocol34 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol34 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 136, i16 %11)
  %cmp36 = icmp eq i16 %11, 136
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_net.i, align 4
  %udplite_stats_in6 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 10
  %udp_stats_in6 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 5
  %cond47.in = select i1 %cmp36, ptr %udplite_stats_in6, ptr %udp_stats_in6
  %14 = ptrtoint ptr %cond47.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond47 = load ptr, ptr %cond47.in, align 4
  %arrayidx = getelementptr [10 x i32], ptr %cond47, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !112) #11
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx50, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add51 = add i32 %24, %conv9
  store i32 %add51, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !130
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool62.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool62.not, label %if.then66, label %if.then7.do.end69_crit_edge, !prof !131

if.then7.do.end69_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

if.then66:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %if.then7.do.end69_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #11, !srcloc !132
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end69
  %retval.0 = phi ptr [ null, %do.end69 ], [ %call5, %if.end76 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_post_segment_fix_csum(ptr nocapture noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %partial_cov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %partial_cov to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %partial_cov, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b57 = load i1, ptr @udp_post_segment_fix_csum.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !127

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @udp_post_segment_fix_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 500, i32 noundef 9, ptr noundef null) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = trunc i32 %3 to i16
  %cscov = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %cscov to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %cscov, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %5 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %ip_summed, align 8
  %6 = and i16 %bf.load, 1537
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %if.then44, label %if.end28.if.end48_crit_edge

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then44:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i16 %bf.load, 1
  %8 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end28.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_protocol_deliver_rcu(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_enqueue_schedule_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet6_mc_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_send_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_flush_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_push_pending_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip6_make_skb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_pre_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_v6_early_demux(ptr noundef %skb) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  %tobool.not.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i, label %entry.inet6_sdif.exit_crit_edge, label %land.lhs.true.i

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 8
  %9 = and i16 %8, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not.i = icmp eq i16 %9, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.inet6_sdif.exit_crit_edge, label %if.then.i

land.lhs.true.i.inet6_sdif.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %land.lhs.true.i.inet6_sdif.exit_crit_edge, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %land.lhs.true.i.inet6_sdif.exit_crit_edge ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %inet6_sdif.exit.if.end_crit_edge, !prof !131

inet6_sdif.exit.if.end_crit_edge:                 ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp3.i = icmp ult i32 %19, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !131

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %inet6_sdif.exit.if.end_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 8192
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i61 = zext i16 %26 to i32
  %add.ptr.i.i62 = getelementptr i8, ptr %24, i32 %conv.i.i61
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i62, i32 0, i32 1
  %27 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dest, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i64 = zext i16 %30 to i32
  %add.ptr.i.i65 = getelementptr i8, ptr %24, i32 %conv.i.i64
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65, i32 0, i32 6
  %31 = ptrtoint ptr %add.ptr.i.i62 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i62, align 2
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i65, i32 0, i32 5
  %conv.i = zext i16 %28 to i32
  %call.i = tail call fastcc i32 @ipv6_portaddr_hash(ptr noundef %4, ptr noundef %daddr, i32 noundef %conv.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 2) to i32))
  %33 = load i32, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 2), align 4
  %and.i = and i32 %33, %call.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.udp_table, ptr @udp_table, i32 0, i32 1), align 4
  %arrayidx.i = getelementptr %struct.udp_hslot, ptr %34, i32 %and.i
  %conv1.i = zext i16 %32 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %call3.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i70 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i71, label %if.then6.do.end.i_crit_edge

if.then6.do.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i71:                                ; preds = %if.then6
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i71.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i71.do.end.i_crit_edge:             ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i71
  %.b84.i = load i1, ptr @__udp6_lib_demux_lookup.__warned, align 1
  br i1 %.b84.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i72

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i72:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__udp6_lib_demux_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1037, ptr noundef nonnull @.str.12) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i72, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i71.do.end.i_crit_edge, %if.then6.do.end.i_crit_edge
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %arrayidx.i, align 8
  %tobool13.not.i = icmp eq ptr %36, null
  %add.ptr.i = getelementptr i8, ptr %36, i32 -24
  %tobool15.not100.i = icmp eq ptr %add.ptr.i, null
  %tobool15.not.i = or i1 %tobool13.not.i, %tobool15.not100.i
  br i1 %tobool15.not.i, label %do.end.i.cleanup_crit_edge, label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %do.end.i
  %skc_state.i = getelementptr i8, ptr %36, i32 -6
  %37 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp.i = icmp eq i8 %38, 1
  br i1 %cmp.i, label %land.lhs.true18.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true18.i:                                ; preds = %for.body.i
  %39 = getelementptr i8, ptr %36, i32 -12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %or.i)
  %cmp20.i = icmp eq i32 %41, %or.i
  br i1 %cmp20.i, label %land.lhs.true22.i, label %land.lhs.true18.i.cleanup_crit_edge

land.lhs.true18.i.cleanup_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true22.i:                                ; preds = %land.lhs.true18.i
  %skc_family.i = getelementptr i8, ptr %36, i32 -8
  %42 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %43)
  %cmp25.i = icmp eq i16 %43, 10
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true22.i.cleanup_crit_edge

land.lhs.true22.i.cleanup_crit_edge:              ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %skc_v6_daddr.i = getelementptr i8, ptr %36, i32 16
  %44 = ptrtoint ptr %skc_v6_daddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %skc_v6_daddr.i, align 4
  %46 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saddr, align 4
  %xor.i.i = xor i32 %47, %45
  %arrayidx4.i.i = getelementptr i8, ptr %36, i32 20
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %51, %49
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr i8, ptr %36, i32 24
  %52 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %55, %53
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %36, i32 28
  %56 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %59, %57
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true31.i, label %land.lhs.true27.i.cleanup_crit_edge

land.lhs.true27.i.cleanup_crit_edge:              ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true31.i:                                ; preds = %land.lhs.true27.i
  %skc_v6_rcv_saddr.i = getelementptr i8, ptr %36, i32 32
  %60 = ptrtoint ptr %skc_v6_rcv_saddr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %skc_v6_rcv_saddr.i, align 4
  %62 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %daddr, align 4
  %xor.i85.i = xor i32 %63, %61
  %arrayidx4.i86.i = getelementptr i8, ptr %36, i32 36
  %64 = ptrtoint ptr %arrayidx4.i86.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.i86.i, align 4
  %arrayidx6.i87.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx6.i87.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx6.i87.i, align 4
  %xor7.i88.i = xor i32 %67, %65
  %or.i89.i = or i32 %xor7.i88.i, %xor.i85.i
  %arrayidx9.i90.i = getelementptr i8, ptr %36, i32 40
  %68 = ptrtoint ptr %arrayidx9.i90.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx9.i90.i, align 4
  %arrayidx11.i91.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx11.i91.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx11.i91.i, align 4
  %xor12.i92.i = xor i32 %71, %69
  %or13.i93.i = or i32 %or.i89.i, %xor12.i92.i
  %arrayidx15.i94.i = getelementptr i8, ptr %36, i32 44
  %72 = ptrtoint ptr %arrayidx15.i94.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx15.i94.i, align 4
  %arrayidx17.i95.i = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx17.i95.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx17.i95.i, align 4
  %xor18.i96.i = xor i32 %75, %73
  %or19.i97.i = or i32 %or13.i93.i, %xor18.i96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i97.i)
  %cmp.i98.i = icmp eq i32 %or19.i97.i, 0
  br i1 %cmp.i98.i, label %land.lhs.true35.i, label %land.lhs.true31.i.cleanup_crit_edge

land.lhs.true31.i.cleanup_crit_edge:              ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true35.i:                                ; preds = %land.lhs.true31.i
  %skc_bound_dev_if.i = getelementptr i8, ptr %36, i32 -4
  %76 = ptrtoint ptr %skc_bound_dev_if.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %skc_bound_dev_if.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %6)
  %cmp37.i = icmp eq i32 %77, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %retval.0.i)
  %cmp41.i = icmp eq i32 %77, %retval.0.i
  %or.cond.i = or i1 %cmp37.i, %cmp41.i
  br i1 %or.cond.i, label %land.lhs.true43.i, label %land.lhs.true35.i.cleanup_crit_edge

land.lhs.true35.i.cleanup_crit_edge:              ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true43.i:                                ; preds = %land.lhs.true35.i
  %skc_net.i.i = getelementptr i8, ptr %36, i32 12
  %78 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i99.not.i = icmp eq ptr %79, %4
  br i1 %cmp.i99.not.i, label %lor.lhs.false, label %land.lhs.true43.i.cleanup_crit_edge

land.lhs.true43.i.cleanup_crit_edge:              ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true43.i
  %skc_refcnt = getelementptr i8, ptr %36, i32 76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %80 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %lor.lhs.false
  %82 = phi i32 [ %81, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %83 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %82, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %84 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %86 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %85, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #11, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %85
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %87 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %88, 1
  %89 = or i32 %add5.i.i.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !127

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #11
  %90 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %91 = phi i32 [ %88, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool12.i.i.i.not = icmp eq i32 %91, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %if.end13

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %refcount_inc_not_zero.exit
  %92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i, ptr %92, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %94 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @sock_efree, ptr %destructor, align 4
  %sk_rx_dst = getelementptr i8, ptr %36, i32 88
  %95 = ptrtoint ptr %sk_rx_dst to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %sk_rx_dst, align 8
  %call15 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end13.do.end24_crit_edge

if.end13.do.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true:                                    ; preds = %if.end13
  %call17 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b57 = load i1, ptr @udp_v6_early_demux.__warned, align 1
  br i1 %.b57, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @udp_v6_early_demux.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1075, ptr noundef nonnull @.str.2) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %if.end13.do.end24_crit_edge
  %tobool26.not = icmp eq ptr %96, null
  br i1 %tobool26.not, label %do.end24.cleanup_crit_edge, label %if.then27

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %do.end24
  %obsolete.i = getelementptr inbounds %struct.dst_entry, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %obsolete.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %obsolete.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool.not.i74 = icmp eq i16 %98, 0
  br i1 %tobool.not.i74, label %if.then27.if.then31_crit_edge, label %if.end29

if.then27.if.then31_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end29:                                         ; preds = %if.then27
  %sk_rx_dst_cookie = getelementptr i8, ptr %36, i32 96
  %99 = ptrtoint ptr %sk_rx_dst_cookie to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sk_rx_dst_cookie, align 8
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %96, i32 0, i32 1
  %101 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i, align 4
  %check.i = getelementptr inbounds %struct.dst_ops, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %check.i, align 4
  %call.i75 = call ptr %104(ptr noundef nonnull %96, i32 noundef %100) #11
  %tobool30.not = icmp eq ptr %call.i75, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.end29.if.then31_crit_edge

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %if.then27.if.then31_crit_edge
  %dst.092 = phi ptr [ %call.i75, %if.end29.if.then31_crit_edge ], [ %96, %if.then27.if.then31_crit_edge ]
  %call.i78 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.rhs.i, label %if.then31.skb_dst_set_noref.exit_crit_edge

if.then31.skb_dst_set_noref.exit_crit_edge:       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %if.then31
  %call1.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i80, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !131

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_set_noref.exit

do.end.i80:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1043, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i80, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %if.then31.skb_dst_set_noref.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %105 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %106 = ptrtoint ptr %dst.092 to i32
  %or31.i = or i32 %106, 1
  %107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or31.i, ptr %107, align 8
  br label %cleanup

cleanup:                                          ; preds = %skb_dst_set_noref.exit, %if.end29.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %refcount_inc_not_zero.exit.cleanup_crit_edge, %land.lhs.true43.i.cleanup_crit_edge, %land.lhs.true35.i.cleanup_crit_edge, %land.lhs.true31.i.cleanup_crit_edge, %land.lhs.true27.i.cleanup_crit_edge, %land.lhs.true22.i.cleanup_crit_edge, %land.lhs.true18.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udpv6_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__udp6_lib_rcv(ptr noundef %skb, ptr noundef nonnull @udp_table, i32 noundef 17)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udpv6_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__udp6_lib_err(ptr noundef %skb, ptr noundef %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info, ptr noundef nonnull @udp_table)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !79, !80, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__ksymtab___udp6_lib_lookup, !1, !"__ksymtab___udp6_lib_lookup", i1 false, i1 false}
!1 = !{!"../net/ipv6/udp.c", i32 269, i32 1}
!2 = !{ptr @__ksymtab_udp6_lib_lookup, !3, !"__ksymtab_udp6_lib_lookup", i1 false, i1 false}
!3 = !{!"../net/ipv6/udp.c", i32 307, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/udp.c", i32 450, i32 2}
!6 = !{ptr @udpv6_encap_needed_key, !7, !"udpv6_encap_needed_key", i1 false, i1 false}
!7 = !{!"../net/ipv6/udp.c", i32 455, i32 1}
!8 = !{ptr @__ksymtab_udpv6_encap_enable, !9, !"__ksymtab_udpv6_encap_enable", i1 false, i1 false}
!9 = !{!"../net/ipv6/udp.c", i32 460, i32 1}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv6/udp.c", i32 589, i32 4}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/ipv6/udp.c", i32 961, i32 7}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/udp.c", i32 1007, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__udp6_lib_rcv.descriptor, !16, !"descriptor", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv6/udp.c", i32 1559, i32 3}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @udpv6_sendmsg.descriptor, !23, !"descriptor", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/udp.c", i32 1676, i32 17}
!28 = !{ptr @udp6_seq_ops, !29, !"udp6_seq_ops", i1 false, i1 false}
!29 = !{!"../net/ipv6/udp.c", i32 1688, i32 29}
!30 = !{ptr @__ksymtab_udp6_seq_ops, !31, !"__ksymtab_udp6_seq_ops", i1 false, i1 false}
!31 = !{!"../net/ipv6/udp.c", i32 1694, i32 1}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/udp.c", i32 1703, i32 28}
!34 = !{ptr @udpv6_prot, !35, !"udpv6_prot", i1 false, i1 false}
!35 = !{!"../net/ipv6/udp.c", i32 1717, i32 14}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/ipv6/udp.c", i32 177, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @udp6_ehashfn.udp6_ehash_secret, !40, !"udp6_ehash_secret", i1 false, i1 false}
!40 = !{!"../net/ipv6/udp.c", i32 65, i32 13}
!41 = !{ptr @udp6_ehashfn.udp_ipv6_hash_secret, !42, !"udp_ipv6_hash_secret", i1 false, i1 false}
!42 = !{!"../net/ipv6/udp.c", i32 66, i32 13}
!43 = !{ptr @udp6_ehashfn.___done, !44, !"___done", i1 false, i1 false}
!44 = !{!"../net/ipv6/udp.c", i32 70, i32 2}
!45 = !{ptr @udp6_ehashfn.___once_key, !44, !"___once_key", i1 false, i1 false}
!46 = !{ptr @udp6_ehashfn.___done.13, !47, !"___done", i1 false, i1 false}
!47 = !{!"../net/ipv6/udp.c", i32 72, i32 2}
!48 = !{ptr @udp6_ehashfn.___once_key.14, !47, !"___once_key", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/net/sock_reuseport.h", i32 52, i32 10}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/filter.h", i32 1487, i32 14}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../net/ipv6/udp.c", i32 476, i32 11}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!79 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/ipv6/udp.c", i32 721, i32 4}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @udpv6_queue_rcv_one_skb.descriptor, !83, !"descriptor", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv6/udp.c", i32 726, i32 4}
!88 = !{ptr @udpv6_queue_rcv_one_skb.descriptor.28, !87, !"descriptor", i1 false, i1 false}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/net/udp.h", i32 500, i32 2}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/ipv6/udp.c", i32 839, i32 2}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ipv6/udp.c", i32 806, i32 2}
!97 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @udp6_csum_zero_error.descriptor, !96, !"descriptor", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../include/net/ipv6.h", i32 379, i32 8}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @udp6_seq_afinfo, !103, !"udp6_seq_afinfo", i1 false, i1 false}
!103 = !{!"../net/ipv6/udp.c", i32 1696, i32 30}
!104 = !{ptr @udpv6_protocol, !105, !"udpv6_protocol", i1 false, i1 false}
!105 = !{!"../net/ipv6/udp.c", i32 1663, i32 30}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/ipv6/udp.c", i32 1075, i32 8}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/ipv6/udp.c", i32 1037, i32 2}
!110 = !{ptr @udpv6_protosw, !111, !"udpv6_protosw", i1 false, i1 false}
!111 = !{!"../net/ipv6/udp.c", i32 1749, i32 28}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2149306307, i64 2149306312, i64 2149306325, i64 2149306369, i64 2149306403, i64 2149306424}
!123 = !{!"auto-init"}
!124 = !{i64 2149736302}
!125 = !{i64 2149736568}
!126 = !{i64 1229514, i64 1229538, i64 1229559, i64 1229576, i64 1229593}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2148744981, i64 2148745007, i64 2148745036, i64 2148745070, i64 2148745101, i64 2148745124}
!129 = !{i64 1148681, i64 1148742}
!130 = !{i64 1151413}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 1151698}
!133 = !{i64 7631409}
!134 = !{i64 2157800966}
!135 = !{i64 2148834536}
!136 = !{i64 2148748976, i64 2148749008, i64 2148749037, i64 2148749071, i64 2148749102, i64 2148749125}
!137 = !{i64 2150297852}
!138 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!139 = !{i64 2148747446, i64 2148747472, i64 2148747501, i64 2148747535, i64 2148747566, i64 2148747589}
!140 = !{i64 2159082484, i64 2159082966, i64 2159082521, i64 2159082577, i64 2159082611, i64 2159082635, i64 2159082676, i64 2159082697, i64 2159082725, i64 2159082759}
!141 = !{i64 2149306710, i64 2149306715, i64 2149306736, i64 2149306780, i64 2149306814, i64 2149306835}
!142 = !{i64 2150104479}
!143 = !{i64 2150109411}
!144 = !{i64 2150131123}
!145 = !{i64 2150136015}
!146 = !{i64 2150216533}
!147 = !{i64 2150216858}
!148 = !{i8 0, i8 2}
!149 = !{i64 2155560201, i64 2155560689, i64 2155560238, i64 2155560294, i64 2155560328, i64 2155560352, i64 2155560393, i64 2155560414, i64 2155560442, i64 2155560476}
!150 = !{i64 1243269}
