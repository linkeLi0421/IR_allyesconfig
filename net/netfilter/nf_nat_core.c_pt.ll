; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_core.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_ct_nat_ext_add\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_nat_ext_add\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_nat_ext_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_nat_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_nat_ext_add\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_nat_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_nat_setup_info\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_setup_info\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_setup_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_setup_info:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_setup_info\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_setup_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_alloc_null_binding\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_alloc_null_binding\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_alloc_null_binding\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_alloc_null_binding:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_alloc_null_binding\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_alloc_null_binding:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_packet\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_packet\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_inet_fn\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_inet_fn\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_inet_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_inet_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_inet_fn\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_inet_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.nf_ct_helper_expectfn = type { %struct.list_head, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_nat_hook = type { ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.55 }
%union.anon.55 = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.136, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.136 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.hlist_head = type { ptr }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.anon.175 = type { %struct.nf_conntrack_man, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.132, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.132 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.122, i32, %struct.spinlock }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, ptr }
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
%struct.sk_buff = type { %union.anon.35, %union.anon.38, %union.anon.39, [48 x i8], %union.anon.40, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.42, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, ptr, %union.anon.37 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { ptr }
%union.anon.39 = type { i64 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.44, i32, i32, i32, i16, i16, %union.anon.46, i32, %union.anon.47, %union.anon.48, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.44 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.153, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.169, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.153 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.169 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nf_hook_entries = type { i16, [0 x %struct.nf_hook_entry] }
%struct.nf_hook_entry = type { ptr, ptr }
%struct.nf_conn_nat = type { %union.nf_conntrack_nat_help, i32 }
%union.nf_conntrack_nat_help = type { %struct.nf_nat_pptp }
%struct.nf_nat_pptp = type { i16, i16 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.nf_nat_hooks_net = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_nat_lookup_hook_priv = type { ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.nf_nat_proto_clean = type { i8, i8 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.anon.31 = type { i16, i16 }

@__kstrtab_nf_ct_nat_ext_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_nat_ext_add = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_nat_ext_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_nat_ext_add to i32), ptr @__kstrtab_nf_ct_nat_ext_add, ptr @__kstrtabns_nf_ct_nat_ext_add }, section "___ksymtab_gpl+nf_ct_nat_ext_add", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/netfilter/nf_nat_core.c\00", [36 x i8] zeroinitializer }, align 32
@nf_nat_locks = internal global { [1024 x %struct.spinlock], [11264 x i8] } zeroinitializer, align 32
@nf_nat_bysource = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_setup_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_setup_info = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_setup_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_setup_info to i32), ptr @__kstrtab_nf_nat_setup_info, ptr @__kstrtabns_nf_nat_setup_info }, section "___ksymtab+nf_nat_setup_info", align 4
@__kstrtab_nf_nat_alloc_null_binding = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_alloc_null_binding = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_alloc_null_binding = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_alloc_null_binding to i32), ptr @__kstrtab_nf_nat_alloc_null_binding, ptr @__kstrtabns_nf_nat_alloc_null_binding }, section "___ksymtab_gpl+nf_nat_alloc_null_binding", align 4
@__kstrtab_nf_nat_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_packet to i32), ptr @__kstrtab_nf_nat_packet, ptr @__kstrtabns_nf_nat_packet }, section "___ksymtab_gpl+nf_nat_packet", align 4
@nf_nat_inet_fn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_nat_inet_fn.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nf_nat\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nf_nat_inet_fn\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Already setup manip %s for ct %p (status bits 0x%lx)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nf_nat: Already setup manip %s for ct %p (status bits 0x%lx)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRC\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DST\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_nf_nat_inet_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_inet_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_inet_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_inet_fn to i32), ptr @__kstrtab_nf_nat_inet_fn, ptr @__kstrtabns_nf_nat_inet_fn }, section "___ksymtab_gpl+nf_nat_inet_fn", align 4
@nat_net_id = internal global i32 0, section ".data..read_mostly", align 4
@nf_nat_register_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_nat_register_fn.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_nat_proto_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nf_nat_proto_mutex, i64 52), ptr getelementptr (i8, ptr @nf_nat_proto_mutex, i64 52) }, ptr @nf_nat_proto_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nf_nat_register_fn.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_nat_unregister_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nat_extend = internal global %struct.nf_ct_ext_type { ptr @nf_nat_cleanup_conntrack, i32 1, i8 8, i8 4 }, section ".data..read_mostly", align 4
@follow_master_nat = internal global { %struct.nf_ct_helper_expectfn, [16 x i8] } { %struct.nf_ct_helper_expectfn { %struct.list_head zeroinitializer, ptr @.str.20, ptr @nf_nat_follow_master }, [16 x i8] zeroinitializer }, align 32
@nf_nat_hook = external dso_local global ptr, align 4
@nat_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nat_net_id, i32 104 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file614 = internal constant [33 x i8] c"nf_nat.file=net/netfilter/nf_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license615 = internal constant [19 x i8] c"nf_nat.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nf_nat__616_1196_nf_nat_init6 = internal global ptr @nf_nat_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_cleanup = internal global ptr @nf_nat_cleanup, section ".exitcall.exit", align 4
@get_unique_tuple.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_unique_tuple\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"get_unique_tuple: Found current src map\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nf_nat: get_unique_tuple: Found current src map\0A\00", [47 x i8] zeroinitializer }, align 32
@find_appropriate_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hash_by_src.___done = internal global i8 0, section ".data.once", align 1
@hash_by_src.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@nf_nat_hash_rnd = internal global { %struct.siphash_key_t, [16 x i8] } zeroinitializer, align 32
@nf_nat_htable_size = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nf_nat_proto_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_nat_proto_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nat-follow-master\00", [46 x i8] zeroinitializer }, align 32
@nf_conntrack_htable_size = external dso_local local_unnamed_addr global i32, align 4
@nf_nat_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nf_nat: Unable to register extension\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_nat_init\00", [20 x i8] zeroinitializer }, align 32
@nf_nat_init._entry_ptr = internal global ptr @nf_nat_init._entry, section ".printk_index", align 4
@nf_nat_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&nf_nat_locks[i]\00", [47 x i8] zeroinitializer }, align 32
@nat_hook = internal constant { %struct.nf_nat_hook, [20 x i8] } { %struct.nf_nat_hook { ptr @nfnetlink_parse_nat_setup, ptr @__nf_nat_decode_session, ptr @nf_nat_manip_pkt }, [20 x i8] zeroinitializer }, align 32
@nfnetlink_parse_nat_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nat_nla_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.55 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@protonat_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.55 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.55 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136]
@__sancov_gen_cov_switch_values.25 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 8, i64 6, i64 17, i64 33, i64 132, i64 136]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 591, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"nf_nat_locks\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 30, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 743, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 763, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"nf_nat_proto_mutex\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"follow_master_nat\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1000, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"nat_net_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1128, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 533, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 285, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 165, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"nf_nat_hash_rnd\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 37, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 45, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 695, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 723, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 32, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1001, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1157, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1162, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [9 x i8] c"nat_hook\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 1133, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"nat_nla_policy\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 888, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"protonat_nla_policy\00", align 1
@___asan_gen_.133 = private constant [31 x i8] c"../net/netfilter/nf_nat_core.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 853, i32 32 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_file614, ptr @__UNIQUE_ID_license615, ptr @__exitcall_nf_nat_cleanup, ptr @__initcall__kmod_nf_nat__616_1196_nf_nat_init6, ptr @__ksymtab_nf_ct_nat_ext_add, ptr @__ksymtab_nf_nat_alloc_null_binding, ptr @__ksymtab_nf_nat_inet_fn, ptr @__ksymtab_nf_nat_packet, ptr @__ksymtab_nf_nat_setup_info, ptr @nf_nat_cleanup, ptr @nf_nat_init._entry, ptr @nf_nat_init._entry_ptr, ptr @.str, ptr @nf_nat_locks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nf_nat_proto_mutex, ptr @follow_master_nat, ptr @nat_net_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hash_by_src.___once_key, ptr @nf_nat_hash_rnd, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @nf_nat_init.__key, ptr @.str.23, ptr @nat_hook, ptr @nat_nla_policy, ptr @protonat_nla_policy], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_locks to i32), i32 45056, i32 56320, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_proto_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @follow_master_nat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_by_src.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_hash_rnd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_hook to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_nla_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protonat_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_ct_nat_ext_add(ptr noundef %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_ct_ext_exist.exit.i.i.if.end_crit_edge:        ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 1, i32 noundef 2592) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ %call4, %if.then3 ], [ %add.ptr.i.i, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef %range, i32 noundef %maniptype) #0 align 64 {
entry:
  %curr_tuple = alloca %struct.nf_conntrack_tuple, align 4
  %new_tuple = alloca %struct.nf_conntrack_tuple, align 4
  %reply = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %curr_tuple) #12
  %2 = call ptr @memset(ptr %curr_tuple, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %new_tuple) #12
  %3 = call ptr @memset(ptr %new_tuple, i32 255, i32 40)
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup97_crit_edge

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype)
  %cmp.not = icmp eq i32 %maniptype, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maniptype)
  %7 = icmp ugt i32 %maniptype, 1
  br i1 %7, label %do.end, label %if.end.if.end17_crit_edge, !prof !109

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 592, i32 noundef 9, ptr noundef null) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 8
  %..i = select i1 %cmp.not, i32 128, i32 256
  %and2.i = and i32 %9, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool26.not = icmp eq i32 %and2.i, 0
  br i1 %tobool26.not, label %if.end58, label %do.end42, !prof !110

do.end42:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #12
  br label %cleanup97

if.end58:                                         ; preds = %if.end17
  %tuple = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %call59 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %curr_tuple, ptr noundef %tuple) #12
  call fastcc void @get_unique_tuple(ptr noundef nonnull %new_tuple, ptr noundef nonnull %curr_tuple, ptr noundef %range, ptr noundef %ct, i32 noundef %maniptype)
  %10 = ptrtoint ptr %new_tuple to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_tuple, align 4
  %12 = ptrtoint ptr %curr_tuple to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curr_tuple, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i.i.i = icmp eq i32 %11, %13
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end58.if.then61_crit_edge

if.end58.if.then61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i.i.i:                              ; preds = %if.end58
  %arrayidx2.i.i.i = getelementptr inbounds [4 x i32], ptr %new_tuple, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [4 x i32], ptr %curr_tuple, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp4.i.i.i = icmp eq i32 %15, %17
  br i1 %cmp4.i.i.i, label %land.lhs.true5.i.i.i, label %land.lhs.true.i.i.i.if.then61_crit_edge

land.lhs.true.i.i.i.if.then61_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %arrayidx6.i.i.i = getelementptr inbounds [4 x i32], ptr %new_tuple, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [4 x i32], ptr %curr_tuple, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp8.i.i.i = icmp eq i32 %19, %21
  br i1 %cmp8.i.i.i, label %nf_inet_addr_cmp.exit.i.i, label %land.lhs.true5.i.i.i.if.then61_crit_edge

land.lhs.true5.i.i.i.if.then61_crit_edge:         ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

nf_inet_addr_cmp.exit.i.i:                        ; preds = %land.lhs.true5.i.i.i
  %arrayidx9.i.i.i = getelementptr inbounds [4 x i32], ptr %new_tuple, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx10.i.i.i = getelementptr inbounds [4 x i32], ptr %curr_tuple, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp11.i.not.i.i = icmp eq i32 %23, %25
  br i1 %cmp11.i.not.i.i, label %land.lhs.true.i.i, label %nf_inet_addr_cmp.exit.i.i.if.then61_crit_edge

nf_inet_addr_cmp.exit.i.i.if.then61_crit_edge:    ; preds = %nf_inet_addr_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i.i:                                ; preds = %nf_inet_addr_cmp.exit.i.i
  %u.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_tuple, i32 0, i32 1
  %26 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %u.i.i, align 4
  %u5.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %curr_tuple, i32 0, i32 1
  %28 = ptrtoint ptr %u5.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %u5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp.i.i = icmp eq i16 %27, %29
  br i1 %cmp.i.i, label %__nf_ct_tuple_src_equal.exit.i, label %land.lhs.true.i.i.if.then61_crit_edge

land.lhs.true.i.i.if.then61_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

__nf_ct_tuple_src_equal.exit.i:                   ; preds = %land.lhs.true.i.i
  %l3num.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_tuple, i32 0, i32 2
  %30 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %l3num.i.i, align 2
  %l3num11.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %curr_tuple, i32 0, i32 2
  %32 = ptrtoint ptr %l3num11.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %l3num11.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp13.i.i = icmp eq i16 %31, %33
  br i1 %cmp13.i.i, label %land.rhs.i, label %__nf_ct_tuple_src_equal.exit.i.if.then61_crit_edge

__nf_ct_tuple_src_equal.exit.i.if.then61_crit_edge: ; preds = %__nf_ct_tuple_src_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.rhs.i:                                       ; preds = %__nf_ct_tuple_src_equal.exit.i
  %dst.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1
  %dst1.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1
  %34 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dst.i.i, align 4
  %36 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dst1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i.i4.i = icmp eq i32 %35, %37
  br i1 %cmp.i.i4.i, label %land.lhs.true.i.i8.i, label %land.rhs.i.if.then61_crit_edge

land.rhs.i.if.then61_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i.i8.i:                             ; preds = %land.rhs.i
  %arrayidx2.i.i5.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i.i5.i, align 4
  %arrayidx3.i.i6.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx3.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx3.i.i6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp4.i.i7.i = icmp eq i32 %39, %41
  br i1 %cmp4.i.i7.i, label %land.lhs.true5.i.i12.i, label %land.lhs.true.i.i8.i.if.then61_crit_edge

land.lhs.true.i.i8.i.if.then61_crit_edge:         ; preds = %land.lhs.true.i.i8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true5.i.i12.i:                           ; preds = %land.lhs.true.i.i8.i
  %arrayidx6.i.i9.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx6.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.i.i9.i, align 4
  %arrayidx7.i.i10.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1, i32 0, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx7.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.i.i10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp8.i.i11.i = icmp eq i32 %43, %45
  br i1 %cmp8.i.i11.i, label %nf_inet_addr_cmp.exit.i16.i, label %land.lhs.true5.i.i12.i.if.then61_crit_edge

land.lhs.true5.i.i12.i.if.then61_crit_edge:       ; preds = %land.lhs.true5.i.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

nf_inet_addr_cmp.exit.i16.i:                      ; preds = %land.lhs.true5.i.i12.i
  %arrayidx9.i.i13.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx9.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx9.i.i13.i, align 4
  %arrayidx10.i.i14.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1, i32 0, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx10.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx10.i.i14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp11.i.not.i15.i = icmp eq i32 %47, %49
  br i1 %cmp11.i.not.i15.i, label %land.lhs.true.i20.i, label %nf_inet_addr_cmp.exit.i16.i.if.then61_crit_edge

nf_inet_addr_cmp.exit.i16.i.if.then61_crit_edge:  ; preds = %nf_inet_addr_cmp.exit.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.lhs.true.i20.i:                              ; preds = %nf_inet_addr_cmp.exit.i16.i
  %u.i17.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %u.i17.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %u.i17.i, align 4
  %u5.i18.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %u5.i18.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %u5.i18.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp.i19.i = icmp eq i16 %51, %53
  br i1 %cmp.i19.i, label %nf_ct_tuple_equal.exit, label %land.lhs.true.i20.i.if.then61_crit_edge

land.lhs.true.i20.i.if.then61_crit_edge:          ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

nf_ct_tuple_equal.exit:                           ; preds = %land.lhs.true.i20.i
  %protonum.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %protonum.i.i, align 2
  %protonum11.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %curr_tuple, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %protonum11.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %protonum11.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp13.i21.i = icmp eq i8 %55, %57
  br i1 %cmp13.i21.i, label %nf_ct_tuple_equal.exit.if.end78_crit_edge, label %nf_ct_tuple_equal.exit.if.then61_crit_edge

nf_ct_tuple_equal.exit.if.then61_crit_edge:       ; preds = %nf_ct_tuple_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

nf_ct_tuple_equal.exit.if.end78_crit_edge:        ; preds = %nf_ct_tuple_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then61:                                        ; preds = %nf_ct_tuple_equal.exit.if.then61_crit_edge, %land.lhs.true.i20.i.if.then61_crit_edge, %nf_inet_addr_cmp.exit.i16.i.if.then61_crit_edge, %land.lhs.true5.i.i12.i.if.then61_crit_edge, %land.lhs.true.i.i8.i.if.then61_crit_edge, %land.rhs.i.if.then61_crit_edge, %__nf_ct_tuple_src_equal.exit.i.if.then61_crit_edge, %land.lhs.true.i.i.if.then61_crit_edge, %nf_inet_addr_cmp.exit.i.i.if.then61_crit_edge, %land.lhs.true5.i.i.i.if.then61_crit_edge, %land.lhs.true.i.i.i.if.then61_crit_edge, %if.end58.if.then61_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply) #12
  %58 = call ptr @memset(ptr %reply, i32 255, i32 40)
  %call62 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply, ptr noundef nonnull %new_tuple) #12
  call void @nf_conntrack_alter_reply(ptr noundef %ct, ptr noundef nonnull %reply) #12
  %59 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status.i, align 8
  %. = select i1 %cmp.not, i32 16, i32 32
  %or66 = or i32 %60, %.
  store i32 %or66, ptr %status.i, align 8
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %61 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i, label %if.then61.if.end78.critedge_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.then61.if.end78.critedge_crit_edge:            ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.critedge

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.then61
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.i.not.i.i = icmp eq i8 %64, 0
  %conv.i.i = zext i8 %64 to i32
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %conv.i.i
  %tobool69.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %nf_ct_ext_exist.exit.i.i.if.end78.critedge_crit_edge, label %nf_ct_ext_exist.exit.i.i129

nf_ct_ext_exist.exit.i.i.if.end78.critedge_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.critedge

nf_ct_ext_exist.exit.i.i129:                      ; preds = %nf_ct_ext_exist.exit.i.i
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.i.i.not.i.i128 = icmp eq i8 %66, 0
  %conv.i.i130 = zext i8 %66 to i32
  %add.ptr.i.i131 = getelementptr i8, ptr %62, i32 %conv.i.i130
  %tobool71.not = icmp eq ptr %add.ptr.i.i131, null
  %or.cond138 = select i1 %tobool.i.i.not.i.i128, i1 true, i1 %tobool71.not
  br i1 %or.cond138, label %if.then72, label %nf_ct_ext_exist.exit.i.i129.if.end78.critedge_crit_edge

nf_ct_ext_exist.exit.i.i129.if.end78.critedge_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.critedge

if.then72:                                        ; preds = %nf_ct_ext_exist.exit.i.i129
  %call.i = call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 2, i32 noundef 2592) #12
  %tobool74.not = icmp eq ptr %call.i, null
  br i1 %tobool74.not, label %cleanup, label %if.then72.if.end78.critedge_crit_edge

if.then72.if.end78.critedge_crit_edge:            ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.critedge

cleanup:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply) #12
  br label %cleanup97

if.end78.critedge:                                ; preds = %if.then72.if.end78.critedge_crit_edge, %nf_ct_ext_exist.exit.i.i129.if.end78.critedge_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end78.critedge_crit_edge, %if.then61.if.end78.critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply) #12
  br label %if.end78

if.end78:                                         ; preds = %if.end78.critedge, %nf_ct_tuple_equal.exit.if.end78_crit_edge
  %67 = zext i32 %maniptype to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %maniptype, label %if.end78.if.else93_crit_edge [
    i32 0, label %if.then80
    i32 1, label %if.then90
  ]

if.end78.if.else93_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else93

if.then80:                                        ; preds = %if.end78
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %tuple84 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %call85 = call fastcc i32 @hash_by_src(ptr noundef %1, ptr noundef %zone.i, ptr noundef %tuple84)
  %rem = and i32 %call85, 1023
  %arrayidx86 = getelementptr [1024 x %struct.spinlock], ptr @nf_nat_locks, i32 0, i32 %rem
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx86) #12
  %nat_bysource = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8
  %68 = load ptr, ptr @nf_nat_bysource, align 4
  %arrayidx87 = getelementptr %struct.hlist_head, ptr %68, i32 %call85
  %69 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx87, align 4
  %71 = ptrtoint ptr %nat_bysource to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %nat_bysource, align 4
  %pprev.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8, i32 1
  %72 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx87, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !111
  %73 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %nat_bysource, ptr %arrayidx87, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.then80.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then80.hlist_add_head_rcu.exit_crit_edge:      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %70, i32 0, i32 1
  %74 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %nat_bysource, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then80.hlist_add_head_rcu.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx86) #12
  br label %if.else93

if.then90:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status.i, align 8
  %or92 = or i32 %76, 256
  store i32 %or92, ptr %status.i, align 8
  br label %cleanup97

if.else93:                                        ; preds = %hlist_add_head_rcu.exit, %if.end78.if.else93_crit_edge
  %77 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %status.i, align 8
  %or95 = or i32 %78, 128
  store i32 %or95, ptr %status.i, align 8
  br label %cleanup97

cleanup97:                                        ; preds = %if.else93, %if.then90, %cleanup, %do.end42, %entry.cleanup97_crit_edge
  %retval.1 = phi i32 [ 0, %do.end42 ], [ 0, %cleanup ], [ 1, %entry.cleanup97_crit_edge ], [ 1, %if.else93 ], [ 1, %if.then90 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_tuple) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %curr_tuple) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_invert_tuple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_unique_tuple(ptr noundef %tuple, ptr noundef %orig_tuple, ptr noundef readonly %range, ptr noundef %ct, i32 noundef %maniptype) unnamed_addr #0 align 64 {
entry:
  %reply.i.i = alloca %struct.nf_conntrack_tuple, align 4
  %reply.i106 = alloca %struct.nf_conntrack_tuple, align 4
  %reply.i103 = alloca %struct.nf_conntrack_tuple, align 4
  %reply.i92 = alloca %struct.nf_conntrack_tuple, align 4
  %reply.i = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maniptype)
  %cmp = icmp eq i32 %maniptype, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range, align 4
  %and = and i32 %3, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call fastcc i32 @in_range(ptr noundef %orig_tuple, ptr noundef %range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply.i) #12
  %4 = call ptr @memset(ptr %reply.i, i32 255, i32 40)
  %call.i = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply.i, ptr noundef %orig_tuple) #12
  %call1.i = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %reply.i, ptr noundef %ct) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %if.then7, label %if.then4.if.end23_crit_edge

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %5 = call ptr @memcpy(ptr %tuple, ptr %orig_tuple, i32 40)
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call.i89 = tail call fastcc i32 @hash_by_src(ptr noundef %1, ptr noundef %zone.i, ptr noundef %orig_tuple) #12
  %call1.i90 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool.not.i = icmp eq i32 %call1.i90, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.do.end.i_crit_edge

if.else.do.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b62.i = load i1, ptr @find_appropriate_src.__warned, align 1
  br i1 %.b62.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_appropriate_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 285, ptr noundef nonnull @.str.13) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.else.do.end.i_crit_edge
  %6 = load ptr, ptr @nf_nat_bysource, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %6, i32 %call.i89
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -164
  %tobool13.not6974.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not69.i = or i1 %tobool11.not.i, %tobool13.not6974.i
  br i1 %tobool13.not69.i, label %do.end.i.if.end23_crit_edge, label %for.body.lr.ph.i

do.end.i.if.end23_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %protonum3.i.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %orig_tuple, i32 0, i32 1, i32 2
  %arrayidx3.i.i.i = getelementptr [4 x i32], ptr %orig_tuple, i32 0, i32 1
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr %orig_tuple, i32 0, i32 2
  %arrayidx10.i.i.i = getelementptr [4 x i32], ptr %orig_tuple, i32 0, i32 3
  %u11.i.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %orig_tuple, i32 0, i32 1
  %dir1.i.i1.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3, i32 2
  %dst.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %dst26.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %orig_tuple, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ct.070.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr43.i, %for.inc.i.for.body.i_crit_edge ]
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protonum.i.i, align 2
  %11 = ptrtoint ptr %protonum3.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protonum3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.i.i = icmp eq i8 %10, %12
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %tuple1.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %tuple1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tuple1.i.i, align 4
  %15 = ptrtoint ptr %orig_tuple to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig_tuple, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i.i.i = icmp eq i32 %14, %16
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx2.i.i.i = getelementptr %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp4.i.i.i = icmp eq i32 %18, %20
  br i1 %cmp4.i.i.i, label %land.lhs.true5.i.i.i, label %land.lhs.true.i.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %arrayidx6.i.i.i = getelementptr %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.i.i.i, align 4
  %23 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp8.i.i.i = icmp eq i32 %22, %24
  br i1 %cmp8.i.i.i, label %nf_inet_addr_cmp.exit.i.i, label %land.lhs.true5.i.i.i.for.inc.i_crit_edge

land.lhs.true5.i.i.i.for.inc.i_crit_edge:         ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

nf_inet_addr_cmp.exit.i.i:                        ; preds = %land.lhs.true5.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx9.i.i.i, align 4
  %27 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp11.i.not.i.i = icmp eq i32 %26, %28
  br i1 %cmp11.i.not.i.i, label %same_src.exit.i, label %nf_inet_addr_cmp.exit.i.i.for.inc.i_crit_edge

nf_inet_addr_cmp.exit.i.i.for.inc.i_crit_edge:    ; preds = %nf_inet_addr_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

same_src.exit.i:                                  ; preds = %nf_inet_addr_cmp.exit.i.i
  %u.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %u.i.i, align 4
  %31 = ptrtoint ptr %u11.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp13.i.not.i = icmp eq i16 %30, %32
  br i1 %cmp13.i.not.i, label %land.lhs.true16.i, label %same_src.exit.i.for.inc.i_crit_edge

same_src.exit.i.for.inc.i_crit_edge:              ; preds = %same_src.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true16.i:                                ; preds = %same_src.exit.i
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 7
  %33 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ct_net.i.i, align 4
  %cmp.i64.not.i = icmp eq ptr %34, %1
  br i1 %cmp.i64.not.i, label %land.lhs.true20.i, label %land.lhs.true16.i.for.inc.i_crit_edge

land.lhs.true16.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true20.i:                                ; preds = %land.lhs.true16.i
  %dir1.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %dir1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dir1.i.i.i.i, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true20.i.nf_ct_zone_id.exit.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true20.i.nf_ct_zone_id.exit.i.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_zone_id.exit.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  %zone.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 3
  %38 = ptrtoint ptr %zone.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %zone.i.i.i, align 2
  br label %nf_ct_zone_id.exit.i.i

nf_ct_zone_id.exit.i.i:                           ; preds = %cond.true.i.i.i, %land.lhs.true20.i.nf_ct_zone_id.exit.i.i_crit_edge
  %cond.i.i.i = phi i16 [ %39, %cond.true.i.i.i ], [ 0, %land.lhs.true20.i.nf_ct_zone_id.exit.i.i_crit_edge ]
  %40 = ptrtoint ptr %dir1.i.i1.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dir1.i.i1.i.i, align 1
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i.not.i2.i.i = icmp eq i8 %42, 0
  br i1 %tobool.i.not.i2.i.i, label %nf_ct_zone_id.exit.i.i.nf_ct_zone_equal.exit.i_crit_edge, label %cond.true.i3.i.i

nf_ct_zone_id.exit.i.i.nf_ct_zone_equal.exit.i_crit_edge: ; preds = %nf_ct_zone_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_zone_equal.exit.i

cond.true.i3.i.i:                                 ; preds = %nf_ct_zone_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %zone.i, align 2
  br label %nf_ct_zone_equal.exit.i

nf_ct_zone_equal.exit.i:                          ; preds = %cond.true.i3.i.i, %nf_ct_zone_id.exit.i.i.nf_ct_zone_equal.exit.i_crit_edge
  %cond.i4.i.i = phi i16 [ %44, %cond.true.i3.i.i ], [ 0, %nf_ct_zone_id.exit.i.i.nf_ct_zone_equal.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.i.i.i, i16 %cond.i4.i.i)
  %cmp.i65.i = icmp eq i16 %cond.i.i.i, %cond.i4.i.i
  br i1 %cmp.i65.i, label %if.then22.i, label %nf_ct_zone_equal.exit.i.for.inc.i_crit_edge

nf_ct_zone_equal.exit.i.for.inc.i_crit_edge:      ; preds = %nf_ct_zone_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i:                                      ; preds = %nf_ct_zone_equal.exit.i
  %tuple24.i = getelementptr %struct.nf_conn, ptr %ct.070.i, i32 0, i32 4, i32 1, i32 1
  %call25.i = tail call zeroext i1 @nf_ct_invert_tuple(ptr noundef %tuple, ptr noundef %tuple24.i) #12
  %45 = call ptr @memcpy(ptr %dst.i, ptr %dst26.i, i32 20)
  %call27.i = tail call fastcc i32 @in_range(ptr noundef %tuple, ptr noundef %range) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then22.i.for.inc.i_crit_edge, label %do.body

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %nf_ct_zone_equal.exit.i.for.inc.i_crit_edge, %land.lhs.true16.i.for.inc.i_crit_edge, %same_src.exit.i.for.inc.i_crit_edge, %nf_inet_addr_cmp.exit.i.i.for.inc.i_crit_edge, %land.lhs.true5.i.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %nat_bysource.i = getelementptr inbounds %struct.nf_conn, ptr %ct.070.i, i32 0, i32 8
  %46 = ptrtoint ptr %nat_bysource.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %nat_bysource.i, align 4
  %tobool39.not.i = icmp eq ptr %47, null
  %add.ptr43.i = getelementptr i8, ptr %47, i32 -164
  %tobool13.not75.i = icmp eq ptr %add.ptr43.i, null
  %tobool13.not.i = or i1 %tobool39.not.i, %tobool13.not75.i
  br i1 %tobool13.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.body:                                          ; preds = %if.then22.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_unique_tuple.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_unique_tuple, %if.then15)) #12
          to label %do.end [label %if.then15], !srcloc !112

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_unique_tuple.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply.i92) #12
  %48 = call ptr @memset(ptr %reply.i92, i32 255, i32 40)
  %call.i93 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply.i92, ptr noundef %tuple) #12
  %call1.i94 = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %reply.i92, ptr noundef %ct) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply.i92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool18.not = icmp eq i32 %call1.i94, 0
  br i1 %tobool18.not, label %do.end.cleanup_crit_edge, label %do.end.if.end23_crit_edge

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %do.end.if.end23_crit_edge, %for.inc.i.if.end23_crit_edge, %do.end.i.if.end23_crit_edge, %if.then4.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  %49 = call ptr @memcpy(ptr %tuple, ptr %orig_tuple, i32 40)
  %50 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %range, align 4
  %and.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i95 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i95, label %if.end23.find_best_ips_proto.exit_crit_edge, label %if.end.i

if.end23.find_best_ips_proto.exit_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_best_ips_proto.exit

if.end.i:                                         ; preds = %if.end23
  %dst.i96 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %var_ipp.0.i = select i1 %cmp, ptr %tuple, ptr %dst.i96
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %52 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %min_addr.i, align 4
  %54 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp.i.i97 = icmp eq i32 %53, %55
  br i1 %cmp.i.i97, label %land.lhs.true.i.i98, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i.i98:                              ; preds = %if.end.i
  %arrayidx2.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp4.i.i = icmp eq i32 %57, %59
  br i1 %cmp4.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i98.if.end7.i_crit_edge

land.lhs.true.i.i98.if.end7.i_crit_edge:          ; preds = %land.lhs.true.i.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i98
  %arrayidx6.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp8.i.i = icmp eq i32 %61, %63
  br i1 %cmp8.i.i, label %nf_inet_addr_cmp.exit.i, label %land.lhs.true5.i.i.if.end7.i_crit_edge

land.lhs.true5.i.i.if.end7.i_crit_edge:           ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

nf_inet_addr_cmp.exit.i:                          ; preds = %land.lhs.true5.i.i
  %arrayidx9.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp11.i.not.i = icmp eq i32 %65, %67
  br i1 %cmp11.i.not.i, label %if.then5.i, label %nf_inet_addr_cmp.exit.i.if.end7.i_crit_edge

nf_inet_addr_cmp.exit.i.if.end7.i_crit_edge:      ; preds = %nf_inet_addr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %nf_inet_addr_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = call ptr @memcpy(ptr %var_ipp.0.i, ptr %min_addr.i, i32 16)
  br label %find_best_ips_proto.exit

if.end7.i:                                        ; preds = %nf_inet_addr_cmp.exit.i.if.end7.i_crit_edge, %land.lhs.true5.i.i.if.end7.i_crit_edge, %land.lhs.true.i.i98.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %70)
  %cmp9.i = icmp eq i16 %70, 2
  %and17.i = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %cond.false.i, label %if.end7.i.cond.end.i_crit_edge

if.end7.i.cond.end.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %..i = select i1 %cmp9.i, i32 0, i32 3
  %arrayidx.i99 = getelementptr [4 x i32], ptr %dst.i96, i32 0, i32 %..i
  %71 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i99, align 4
  %73 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %zone.i, align 2
  %conv21.i = zext i16 %74 to i32
  %xor.i = xor i32 %72, %conv21.i
  %phi.bo.i = add i32 %xor.i, -559038721
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end7.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.false.i ], [ -559038721, %if.end7.i.cond.end.i_crit_edge ]
  %75 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tuple, align 4
  %add2.i.i = add i32 %76, %cond.i
  %arrayidx3.i84.i = getelementptr i32, ptr %tuple, i32 1
  %77 = ptrtoint ptr %arrayidx3.i84.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx3.i84.i, align 4
  %add4.i.i = add i32 %78, %cond.i
  %arrayidx5.i.i = getelementptr i32, ptr %tuple, i32 2
  %79 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %80, %cond.i
  %sub.i.i = sub i32 %add2.i.i, %add6.i.i
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %add6.i.i, i32 %add6.i.i, i32 4) #12
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add7.i.i = add i32 %add6.i.i, %add4.i.i
  %sub8.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #12
  %xor10.i.i = xor i32 %sub8.i.i, %or.i1.i.i
  %add11.i.i = add i32 %xor.i.i, %add7.i.i
  %sub12.i.i = sub i32 %add7.i.i, %xor10.i.i
  %or.i2.i.i = call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 8) #12
  %xor14.i.i = xor i32 %sub12.i.i, %or.i2.i.i
  %add15.i.i = add i32 %xor10.i.i, %add11.i.i
  %sub16.i.i = sub i32 %add11.i.i, %xor14.i.i
  %or.i3.i.i = call i32 @llvm.fshl.i32(i32 %xor14.i.i, i32 %xor14.i.i, i32 16) #12
  %xor18.i.i = xor i32 %sub16.i.i, %or.i3.i.i
  %add19.i.i = add i32 %xor14.i.i, %add15.i.i
  %sub20.i.i = sub i32 %add15.i.i, %xor18.i.i
  %or.i4.i.i = call i32 @llvm.fshl.i32(i32 %xor18.i.i, i32 %xor18.i.i, i32 19) #12
  %xor22.i.i = xor i32 %sub20.i.i, %or.i4.i.i
  %add23.i.i = add i32 %xor18.i.i, %add19.i.i
  %sub24.i.i = sub i32 %add19.i.i, %xor22.i.i
  %or.i5.i.i = call i32 @llvm.fshl.i32(i32 %xor22.i.i, i32 %xor22.i.i, i32 4) #12
  %xor26.i.i = xor i32 %sub24.i.i, %or.i5.i.i
  %add27.i.i = add i32 %xor22.i.i, %add23.i.i
  %add.ptr.i.i = getelementptr i32, ptr %tuple, i32 3
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i.i, align 4
  %add36.i.i = add i32 %add23.i.i, %82
  %xor37.i.i = xor i32 %xor26.i.i, %add27.i.i
  %or.i6.i.i = call i32 @llvm.fshl.i32(i32 %add27.i.i, i32 %add27.i.i, i32 14) #12
  %sub39.i.i = sub i32 %xor37.i.i, %or.i6.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i7.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #12
  %sub42.i.i = sub i32 %xor40.i.i, %or.i7.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add27.i.i
  %or.i8.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #12
  %sub45.i.i = sub i32 %xor43.i.i, %or.i8.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i9.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #12
  %sub48.i.i = sub i32 %xor46.i.i, %or.i9.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i10.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #12
  %sub51.i.i = sub i32 %xor49.i.i, %or.i10.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i11.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #12
  %sub54.i.i = sub i32 %xor52.i.i, %or.i11.i.i
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %or.i12.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #12
  %sub57.i.i = sub i32 %xor55.i.i, %or.i12.i.i
  %83 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %min_addr.i, align 4
  %85 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_addr.i, align 4
  %sub.i = sub i32 1, %84
  %add.i = add i32 %sub.i, %86
  %conv.i.i = zext i32 %sub57.i.i to i64
  %conv1.i.i = zext i32 %add.i to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add34.i = add i32 %84, %conv2.i.i
  %87 = ptrtoint ptr %var_ipp.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add34.i, ptr %var_ipp.0.i, align 4
  %88 = load i32, ptr %max_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i, i32 %88)
  %cmp39.not.i = icmp ne i32 %add34.i, %88
  %89 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %range, align 4
  %and44.i = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %cond.end.i.for.inc.i101_crit_edge

cond.end.i.for.inc.i101_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i101

if.then46.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %dst.i96 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dst.i96, align 4
  %xor50.i = xor i32 %92, %sub57.i.i
  br label %for.inc.i101

for.inc.i101:                                     ; preds = %if.then46.i, %cond.end.i.for.inc.i101_crit_edge
  %j.1.i = phi i32 [ %sub57.i.i, %cond.end.i.for.inc.i101_crit_edge ], [ %xor50.i, %if.then46.i ]
  br i1 %cmp9.i, label %for.inc.i101.find_best_ips_proto.exit_crit_edge, label %for.body.i100.1

for.inc.i101.find_best_ips_proto.exit_crit_edge:  ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_best_ips_proto.exit

for.body.i100.1:                                  ; preds = %for.inc.i101
  br i1 %cmp39.not.i, label %for.body.i100.1.if.end32.i.1_crit_edge, label %if.then26.i.1

for.body.i100.1.if.end32.i.1_crit_edge:           ; preds = %for.body.i100.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.1

if.then26.i.1:                                    ; preds = %for.body.i100.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx28.i.1 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx28.i.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx28.i.1, align 4
  %arrayidx30.i.1 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx30.i.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx30.i.1, align 4
  %sub.i.1 = sub i32 1, %94
  %add.i.1 = add i32 %sub.i.1, %96
  br label %if.end32.i.1

if.end32.i.1:                                     ; preds = %if.then26.i.1, %for.body.i100.1.if.end32.i.1_crit_edge
  %minip.0.i.1 = phi i32 [ %94, %if.then26.i.1 ], [ 0, %for.body.i100.1.if.end32.i.1_crit_edge ]
  %dist.0.i.1 = phi i32 [ %add.i.1, %if.then26.i.1 ], [ -1, %for.body.i100.1.if.end32.i.1_crit_edge ]
  %conv.i.i.1 = zext i32 %j.1.i to i64
  %conv1.i.i.1 = zext i32 %dist.0.i.1 to i64
  %mul.i.i.1 = mul nuw i64 %conv1.i.i.1, %conv.i.i.1
  %shr.i.i.1 = lshr i64 %mul.i.i.1, 32
  %conv2.i.i.1 = trunc i64 %shr.i.i.1 to i32
  %add34.i.1 = add i32 %minip.0.i.1, %conv2.i.i.1
  %arrayidx35.i.1 = getelementptr [4 x i32], ptr %var_ipp.0.i, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx35.i.1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add34.i.1, ptr %arrayidx35.i.1, align 4
  %arrayidx38.i.1 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx38.i.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx38.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i.1, i32 %99)
  %cmp39.not.i.1 = icmp ne i32 %add34.i.1, %99
  %spec.select.i.1 = select i1 %cmp39.not.i.1, i1 true, i1 %cmp39.not.i
  %100 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %range, align 4
  %and44.i.1 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.1)
  %tobool45.not.i.1 = icmp eq i32 %and44.i.1, 0
  br i1 %tobool45.not.i.1, label %if.then46.i.1, label %if.end32.i.1.for.body.i100.2_crit_edge

if.end32.i.1.for.body.i100.2_crit_edge:           ; preds = %if.end32.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i100.2

if.then46.i.1:                                    ; preds = %if.end32.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx49.i.1 = getelementptr %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 0, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx49.i.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx49.i.1, align 4
  %xor50.i.1 = xor i32 %103, %j.1.i
  br label %for.body.i100.2

for.body.i100.2:                                  ; preds = %if.then46.i.1, %if.end32.i.1.for.body.i100.2_crit_edge
  %j.1.i.1 = phi i32 [ %j.1.i, %if.end32.i.1.for.body.i100.2_crit_edge ], [ %xor50.i.1, %if.then46.i.1 ]
  br i1 %spec.select.i.1, label %for.body.i100.2.if.end32.i.2_crit_edge, label %if.then26.i.2

for.body.i100.2.if.end32.i.2_crit_edge:           ; preds = %for.body.i100.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.2

if.then26.i.2:                                    ; preds = %for.body.i100.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx28.i.2 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 2
  %104 = ptrtoint ptr %arrayidx28.i.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx28.i.2, align 4
  %arrayidx30.i.2 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 2
  %106 = ptrtoint ptr %arrayidx30.i.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx30.i.2, align 4
  %sub.i.2 = sub i32 1, %105
  %add.i.2 = add i32 %sub.i.2, %107
  br label %if.end32.i.2

if.end32.i.2:                                     ; preds = %if.then26.i.2, %for.body.i100.2.if.end32.i.2_crit_edge
  %minip.0.i.2 = phi i32 [ %105, %if.then26.i.2 ], [ 0, %for.body.i100.2.if.end32.i.2_crit_edge ]
  %dist.0.i.2 = phi i32 [ %add.i.2, %if.then26.i.2 ], [ -1, %for.body.i100.2.if.end32.i.2_crit_edge ]
  %conv.i.i.2 = zext i32 %j.1.i.1 to i64
  %conv1.i.i.2 = zext i32 %dist.0.i.2 to i64
  %mul.i.i.2 = mul nuw i64 %conv1.i.i.2, %conv.i.i.2
  %shr.i.i.2 = lshr i64 %mul.i.i.2, 32
  %conv2.i.i.2 = trunc i64 %shr.i.i.2 to i32
  %add34.i.2 = add i32 %minip.0.i.2, %conv2.i.i.2
  %arrayidx35.i.2 = getelementptr [4 x i32], ptr %var_ipp.0.i, i32 0, i32 2
  %108 = ptrtoint ptr %arrayidx35.i.2 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %add34.i.2, ptr %arrayidx35.i.2, align 4
  %arrayidx38.i.2 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 2
  %109 = ptrtoint ptr %arrayidx38.i.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx38.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34.i.2, i32 %110)
  %cmp39.not.i.2 = icmp ne i32 %add34.i.2, %110
  %spec.select.i.2 = select i1 %cmp39.not.i.2, i1 true, i1 %spec.select.i.1
  %111 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %range, align 4
  %and44.i.2 = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.2)
  %tobool45.not.i.2 = icmp eq i32 %and44.i.2, 0
  br i1 %tobool45.not.i.2, label %if.then46.i.2, label %if.end32.i.2.for.body.i100.3_crit_edge

if.end32.i.2.for.body.i100.3_crit_edge:           ; preds = %if.end32.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i100.3

if.then46.i.2:                                    ; preds = %if.end32.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx49.i.2 = getelementptr %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 0, i32 0, i32 2
  %113 = ptrtoint ptr %arrayidx49.i.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx49.i.2, align 4
  %xor50.i.2 = xor i32 %114, %j.1.i.1
  br label %for.body.i100.3

for.body.i100.3:                                  ; preds = %if.then46.i.2, %if.end32.i.2.for.body.i100.3_crit_edge
  %j.1.i.2 = phi i32 [ %j.1.i.1, %if.end32.i.2.for.body.i100.3_crit_edge ], [ %xor50.i.2, %if.then46.i.2 ]
  br i1 %spec.select.i.2, label %for.body.i100.3.if.end32.i.3_crit_edge, label %if.then26.i.3

for.body.i100.3.if.end32.i.3_crit_edge:           ; preds = %for.body.i100.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i.3

if.then26.i.3:                                    ; preds = %for.body.i100.3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx28.i.3 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 3
  %115 = ptrtoint ptr %arrayidx28.i.3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx28.i.3, align 4
  %arrayidx30.i.3 = getelementptr %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 3
  %117 = ptrtoint ptr %arrayidx30.i.3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx30.i.3, align 4
  %sub.i.3 = sub i32 1, %116
  %add.i.3 = add i32 %sub.i.3, %118
  br label %if.end32.i.3

if.end32.i.3:                                     ; preds = %if.then26.i.3, %for.body.i100.3.if.end32.i.3_crit_edge
  %minip.0.i.3 = phi i32 [ %116, %if.then26.i.3 ], [ 0, %for.body.i100.3.if.end32.i.3_crit_edge ]
  %dist.0.i.3 = phi i32 [ %add.i.3, %if.then26.i.3 ], [ -1, %for.body.i100.3.if.end32.i.3_crit_edge ]
  %conv.i.i.3 = zext i32 %j.1.i.2 to i64
  %conv1.i.i.3 = zext i32 %dist.0.i.3 to i64
  %mul.i.i.3 = mul nuw i64 %conv1.i.i.3, %conv.i.i.3
  %shr.i.i.3 = lshr i64 %mul.i.i.3, 32
  %conv2.i.i.3 = trunc i64 %shr.i.i.3 to i32
  %add34.i.3 = add i32 %minip.0.i.3, %conv2.i.i.3
  %arrayidx35.i.3 = getelementptr [4 x i32], ptr %var_ipp.0.i, i32 0, i32 3
  %119 = ptrtoint ptr %arrayidx35.i.3 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add34.i.3, ptr %arrayidx35.i.3, align 4
  %120 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %range, align 4
  %and44.i.3 = and i32 %121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.3)
  %tobool45.not.i.3 = icmp eq i32 %and44.i.3, 0
  br label %find_best_ips_proto.exit

find_best_ips_proto.exit:                         ; preds = %if.end32.i.3, %for.inc.i101.find_best_ips_proto.exit_crit_edge, %if.then5.i, %if.end23.find_best_ips_proto.exit_crit_edge
  %122 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %range, align 4
  %and25 = and i32 %123, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %find_best_ips_proto.exit.if.end53_crit_edge

find_best_ips_proto.exit.if.end53_crit_edge:      ; preds = %find_best_ips_proto.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then27:                                        ; preds = %find_best_ips_proto.exit
  %and29 = and i32 %123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else47, label %if.then31

if.then31:                                        ; preds = %if.then27
  %and33 = and i32 %123, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %if.then31.if.end53_crit_edge

if.then31.if.end53_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true35:                                  ; preds = %if.then31
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %protonum.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %124 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %protonum.i, align 2
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %125, label %land.lhs.true35.land.lhs.true37_crit_edge [
    i8 1, label %land.lhs.true35.sw.bb.i_crit_edge
    i8 58, label %land.lhs.true35.sw.bb.i_crit_edge136
    i8 47, label %land.lhs.true35.sw.bb13.i_crit_edge
    i8 6, label %land.lhs.true35.sw.bb13.i_crit_edge137
    i8 17, label %land.lhs.true35.sw.bb13.i_crit_edge138
    i8 -120, label %land.lhs.true35.sw.bb13.i_crit_edge139
    i8 33, label %land.lhs.true35.sw.bb13.i_crit_edge140
    i8 -124, label %land.lhs.true35.sw.bb13.i_crit_edge141
  ]

land.lhs.true35.sw.bb13.i_crit_edge141:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb13.i_crit_edge140:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb13.i_crit_edge139:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb13.i_crit_edge138:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb13.i_crit_edge137:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb13.i_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

land.lhs.true35.sw.bb.i_crit_edge136:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

land.lhs.true35.sw.bb.i_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

land.lhs.true35.land.lhs.true37_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true37

sw.bb.i:                                          ; preds = %land.lhs.true35.sw.bb.i_crit_edge, %land.lhs.true35.sw.bb.i_crit_edge136
  %u.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %127 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %u.i, align 4
  %129 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %min_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %130)
  %cmp.not.i = icmp ult i16 %128, %130
  br i1 %cmp.not.i, label %sw.bb.i.if.end53_crit_edge, label %sw.bb.i.l4proto_in_range.exit_crit_edge

sw.bb.i.l4proto_in_range.exit_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l4proto_in_range.exit

sw.bb.i.if.end53_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

sw.bb13.i:                                        ; preds = %land.lhs.true35.sw.bb13.i_crit_edge, %land.lhs.true35.sw.bb13.i_crit_edge137, %land.lhs.true35.sw.bb13.i_crit_edge138, %land.lhs.true35.sw.bb13.i_crit_edge139, %land.lhs.true35.sw.bb13.i_crit_edge140, %land.lhs.true35.sw.bb13.i_crit_edge141
  %u17.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %u19.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %port.0.in.i = select i1 %cmp, ptr %u17.i, ptr %u19.i
  %131 = ptrtoint ptr %port.0.in.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %port.0.i = load i16, ptr %port.0.in.i, align 4
  %132 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %min_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %port.0.i, i16 %133)
  %cmp22.not.i = icmp ult i16 %port.0.i, %133
  br i1 %cmp22.not.i, label %sw.bb13.i.if.end53_crit_edge, label %sw.bb13.i.l4proto_in_range.exit_crit_edge

sw.bb13.i.l4proto_in_range.exit_crit_edge:        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l4proto_in_range.exit

sw.bb13.i.if.end53_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

l4proto_in_range.exit:                            ; preds = %sw.bb13.i.l4proto_in_range.exit_crit_edge, %sw.bb.i.l4proto_in_range.exit_crit_edge
  %port.0.sink.i = phi i16 [ %128, %sw.bb.i.l4proto_in_range.exit_crit_edge ], [ %port.0.i, %sw.bb13.i.l4proto_in_range.exit_crit_edge ]
  %134 = ptrtoint ptr %max_proto to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %max_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %port.0.sink.i, i16 %135)
  %cmp27.i.not = icmp ugt i16 %port.0.sink.i, %135
  br i1 %cmp27.i.not, label %l4proto_in_range.exit.if.end53_crit_edge, label %l4proto_in_range.exit.land.lhs.true37_crit_edge

l4proto_in_range.exit.land.lhs.true37_crit_edge:  ; preds = %l4proto_in_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true37

l4proto_in_range.exit.if.end53_crit_edge:         ; preds = %l4proto_in_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true37:                                  ; preds = %l4proto_in_range.exit.land.lhs.true37_crit_edge, %land.lhs.true35.land.lhs.true37_crit_edge
  %136 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %min_proto, align 4
  %138 = ptrtoint ptr %max_proto to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %max_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %139)
  %cmp41 = icmp eq i16 %137, %139
  br i1 %cmp41, label %land.lhs.true37.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply.i103) #12
  %140 = call ptr @memset(ptr %reply.i103, i32 255, i32 40)
  %call.i104 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply.i103, ptr noundef %tuple) #12
  %call1.i105 = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %reply.i103, ptr noundef %ct) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply.i103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %tobool44.not = icmp eq i32 %call1.i105, 0
  br i1 %tobool44.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end53_crit_edge

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else47:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply.i106) #12
  %141 = call ptr @memset(ptr %reply.i106, i32 255, i32 40)
  %call.i107 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply.i106, ptr noundef %tuple) #12
  %call1.i108 = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %reply.i106, ptr noundef %ct) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply.i106) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool49.not = icmp eq i32 %call1.i108, 0
  br i1 %tobool49.not, label %if.else47.cleanup_crit_edge, label %if.else47.if.end53_crit_edge

if.else47.if.end53_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.else47.cleanup_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.else47.if.end53_crit_edge, %lor.lhs.false.if.end53_crit_edge, %l4proto_in_range.exit.if.end53_crit_edge, %sw.bb13.i.if.end53_crit_edge, %sw.bb.i.if.end53_crit_edge, %if.then31.if.end53_crit_edge, %find_best_ips_proto.exit.if.end53_crit_edge
  %protonum.i109 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %protonum.i109 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %protonum.i109, align 2
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %143, label %if.end53.cleanup_crit_edge [
    i8 1, label %if.end53.sw.bb.i113_crit_edge
    i8 58, label %if.end53.sw.bb.i113_crit_edge142
    i8 47, label %sw.bb8.i
    i8 17, label %if.end53.sw.bb35.i_crit_edge
    i8 -120, label %if.end53.sw.bb35.i_crit_edge143
    i8 6, label %if.end53.sw.bb35.i_crit_edge144
    i8 -124, label %if.end53.sw.bb35.i_crit_edge145
    i8 33, label %if.end53.sw.bb35.i_crit_edge146
  ]

if.end53.sw.bb35.i_crit_edge146:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end53.sw.bb35.i_crit_edge145:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end53.sw.bb35.i_crit_edge144:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end53.sw.bb35.i_crit_edge143:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end53.sw.bb35.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb35.i

if.end53.sw.bb.i113_crit_edge142:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i113

if.end53.sw.bb.i113_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i113

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i113:                                       ; preds = %if.end53.sw.bb.i113_crit_edge, %if.end53.sw.bb.i113_crit_edge142
  %u.i110 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %145 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %range, align 4
  %and.i111 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i112, label %sw.bb.i113.find_free_id.i_crit_edge, label %if.else.i

sw.bb.i113.find_free_id.i_crit_edge:              ; preds = %sw.bb.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_free_id.i

if.else.i:                                        ; preds = %sw.bb.i113
  call void @__sanitizer_cov_trace_pc() #14
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %147 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %min_proto.i, align 4
  %conv2.i = zext i16 %148 to i32
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %149 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %max_proto.i, align 2
  %conv4.i = zext i16 %150 to i32
  %sub.i114 = sub nsw i32 1, %conv2.i
  %add.i115 = add nsw i32 %sub.i114, %conv4.i
  br label %find_free_id.i

sw.bb8.i:                                         ; preds = %if.end53
  %master.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %151 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %master.i, align 4
  %tobool9.not.i = icmp eq ptr %152, null
  br i1 %tobool9.not.i, label %sw.bb8.i.cleanup_crit_edge, label %if.end11.i

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.i:                                       ; preds = %sw.bb8.i
  %u15.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %u18.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %keyptr.0.i = select i1 %cmp, ptr %u15.i, ptr %u18.i
  %153 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %range, align 4
  %and22.i = and i32 %154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end11.i.find_free_id.i_crit_edge, label %if.else25.i

if.end11.i.find_free_id.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_free_id.i

if.else25.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %min_proto26.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %155 = ptrtoint ptr %min_proto26.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %min_proto26.i, align 4
  %conv28.i = zext i16 %156 to i32
  %max_proto29.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %157 = ptrtoint ptr %max_proto29.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %max_proto29.i, align 2
  %conv31.i = zext i16 %158 to i32
  %sub32.i = sub nsw i32 1, %conv28.i
  %add33.i = add nsw i32 %sub32.i, %conv31.i
  br label %find_free_id.i

sw.bb35.i:                                        ; preds = %if.end53.sw.bb35.i_crit_edge, %if.end53.sw.bb35.i_crit_edge143, %if.end53.sw.bb35.i_crit_edge144, %if.end53.sw.bb35.i_crit_edge145, %if.end53.sw.bb35.i_crit_edge146
  %u40.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %u43.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %keyptr.1.i = select i1 %cmp, ptr %u40.i, ptr %u43.i
  %159 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %range, align 4
  %and46.i = and i32 %160, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.else69.i

if.then48.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maniptype)
  %cmp49.i = icmp eq i32 %maniptype, 1
  br i1 %cmp49.i, label %if.then48.i.cleanup_crit_edge, label %if.end52.i

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52.i:                                       ; preds = %if.then48.i
  %161 = ptrtoint ptr %keyptr.1.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %keyptr.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %162)
  %cmp54.i = icmp ult i16 %162, 1024
  br i1 %cmp54.i, label %if.then56.i, label %if.end52.i.find_free_id.i_crit_edge

if.end52.i.find_free_id.i_crit_edge:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_free_id.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %162)
  %cmp58.i = icmp ult i16 %162, 512
  %..i117 = select i1 %cmp58.i, i32 1, i32 600
  %.162.i = select i1 %cmp58.i, i32 511, i32 424
  br label %find_free_id.i

if.else69.i:                                      ; preds = %sw.bb35.i
  %min_proto70.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %163 = ptrtoint ptr %min_proto70.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %min_proto70.i, align 4
  %conv71.i = zext i16 %164 to i32
  %max_proto72.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %165 = ptrtoint ptr %max_proto72.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %max_proto72.i, align 2
  %conv73.i = zext i16 %166 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %164)
  %cmp74.i = icmp ult i16 %166, %164
  br i1 %cmp74.i, label %do.body.i, label %if.else69.i.if.end79.i_crit_edge, !prof !109

if.else69.i.if.end79.i_crit_edge:                 ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

do.body.i:                                        ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.body.i, %if.else69.i.if.end79.i_crit_edge
  %min.0.i = phi i32 [ %conv73.i, %do.body.i ], [ %conv71.i, %if.else69.i.if.end79.i_crit_edge ]
  %max.0.i = phi i32 [ %conv71.i, %do.body.i ], [ %conv73.i, %if.else69.i.if.end79.i_crit_edge ]
  %sub80.i = sub nsw i32 1, %min.0.i
  %add81.i = add nsw i32 %sub80.i, %max.0.i
  br label %find_free_id.i

find_free_id.i:                                   ; preds = %if.end79.i, %if.then56.i, %if.end52.i.find_free_id.i_crit_edge, %if.else25.i, %if.end11.i.find_free_id.i_crit_edge, %if.else.i, %sw.bb.i113.find_free_id.i_crit_edge
  %min.1.i = phi i32 [ %min.0.i, %if.end79.i ], [ %conv28.i, %if.else25.i ], [ %conv2.i, %if.else.i ], [ 0, %sw.bb.i113.find_free_id.i_crit_edge ], [ 1, %if.end11.i.find_free_id.i_crit_edge ], [ %..i117, %if.then56.i ], [ 1024, %if.end52.i.find_free_id.i_crit_edge ]
  %keyptr.2.i = phi ptr [ %keyptr.1.i, %if.end79.i ], [ %keyptr.0.i, %if.else25.i ], [ %u.i110, %if.else.i ], [ %u.i110, %sw.bb.i113.find_free_id.i_crit_edge ], [ %keyptr.0.i, %if.end11.i.find_free_id.i_crit_edge ], [ %keyptr.1.i, %if.then56.i ], [ %keyptr.1.i, %if.end52.i.find_free_id.i_crit_edge ]
  %range_size.0.i = phi i32 [ %add81.i, %if.end79.i ], [ %add33.i, %if.else25.i ], [ %add.i115, %if.else.i ], [ 65536, %sw.bb.i113.find_free_id.i_crit_edge ], [ 65535, %if.end11.i.find_free_id.i_crit_edge ], [ %.162.i, %if.then56.i ], [ 64512, %if.end52.i.find_free_id.i_crit_edge ]
  %167 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %range, align 4
  %and84.i = and i32 %168, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.else91.i, label %if.then86.i

if.then86.i:                                      ; preds = %find_free_id.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %keyptr.2.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %keyptr.2.i, align 2
  %conv87.i = zext i16 %170 to i32
  %base_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 5
  %171 = ptrtoint ptr %base_proto.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %base_proto.i, align 4
  %conv88.i = zext i16 %172 to i32
  %sub89.i = sub nsw i32 %conv87.i, %conv88.i
  br label %if.end93.i

if.else91.i:                                      ; preds = %find_free_id.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i118 = call i32 @prandom_u32() #12
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else91.i, %if.then86.i
  %off.0.in.i = phi i32 [ %sub89.i, %if.then86.i ], [ %call.i118, %if.else91.i ]
  %173 = call i32 @llvm.umin.i32(i32 %range_size.0.i, i32 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp98164.not.i129 = icmp eq i32 %173, 0
  br i1 %cmp98164.not.i129, label %if.end93.i.cleanup_crit_edge, label %if.end93.i.for.body.preheader.i_crit_edge

if.end93.i.for.body.preheader.i_crit_edge:        ; preds = %if.end93.i
  br label %for.body.preheader.i

if.end93.i.cleanup_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end113.i, %if.end93.i.for.body.preheader.i_crit_edge
  %off.1.in.i131 = phi i32 [ %call114.i, %if.end113.i ], [ %off.0.in.i, %if.end93.i.for.body.preheader.i_crit_edge ]
  %attempts.0.i130 = phi i32 [ %div161.i, %if.end113.i ], [ %173, %if.end93.i.for.body.preheader.i_crit_edge ]
  %off.1.i = trunc i32 %off.1.in.i131 to i16
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.inc.i121.for.body.i119_crit_edge, %for.body.preheader.i
  %off.2166.i = phi i16 [ %inc107.i, %for.inc.i121.for.body.i119_crit_edge ], [ %off.1.i, %for.body.preheader.i ]
  %i.0165.i = phi i32 [ %inc.i120, %for.inc.i121.for.body.i119_crit_edge ], [ 0, %for.body.preheader.i ]
  %conv100.i = zext i16 %off.2166.i to i32
  %rem.i = urem i32 %conv100.i, %range_size.0.i
  %add101.i = add i32 %rem.i, %min.1.i
  %conv102.i = trunc i32 %add101.i to i16
  %174 = ptrtoint ptr %keyptr.2.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv102.i, ptr %keyptr.2.i, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %reply.i.i) #12
  %175 = call ptr @memset(ptr %reply.i.i, i32 255, i32 40)
  %call.i.i = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %reply.i.i, ptr noundef %tuple) #12
  %call1.i.i = call i32 @nf_conntrack_tuple_taken(ptr noundef nonnull %reply.i.i, ptr noundef %ct) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %reply.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool104.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool104.not.i, label %for.body.i119.cleanup_crit_edge, label %for.inc.i121

for.body.i119.cleanup_crit_edge:                  ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i121:                                     ; preds = %for.body.i119
  %inc.i120 = add nuw nsw i32 %i.0165.i, 1
  %inc107.i = add i16 %off.2166.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i120, %attempts.0.i130
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i121.for.body.i119_crit_edge

for.inc.i121.for.body.i119_crit_edge:             ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i119

for.end.i:                                        ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_cmp4(i32 %attempts.0.i130, i32 %range_size.0.i)
  %cmp108.not.i = icmp uge i32 %attempts.0.i130, %range_size.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %attempts.0.i130)
  %cmp110.i = icmp ult i32 %attempts.0.i130, 16
  %or.cond.i = or i1 %cmp108.not.i, %cmp110.i
  br i1 %or.cond.i, label %for.end.i.cleanup_crit_edge, label %if.end113.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end113.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div161.i = lshr i32 %attempts.0.i130, 1
  %call114.i = call i32 @prandom_u32() #12
  br label %for.body.preheader.i

cleanup:                                          ; preds = %for.end.i.cleanup_crit_edge, %for.body.i119.cleanup_crit_edge, %if.end93.i.cleanup_crit_edge, %if.then48.i.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.else47.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_alter_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_by_src(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %zone, ptr nocapture noundef readonly %tuple) unnamed_addr #0 align 64 {
entry:
  %combined = alloca %struct.anon.175, align 8
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %combined) #12
  %0 = getelementptr inbounds %struct.anon.175, ptr %combined, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.175, ptr %combined, i32 0, i32 2
  %2 = getelementptr inbounds %struct.anon.175, ptr %combined, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @hash_by_src.___once_key, ptr blockaddress(@hash_by_src, %if.then)) #12
          to label %if.end13 [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #12
  %3 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %___flags, align 4, !annotation !114
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @hash_by_src.___done, ptr noundef nonnull %___flags) #12
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !109

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @get_random_bytes(ptr noundef nonnull @nf_nat_hash_rnd, i32 noundef 16) #12
  call void @__do_once_done(ptr noundef nonnull @hash_by_src.___done, ptr noundef nonnull @hash_by_src.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #12
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %4 = getelementptr inbounds i8, ptr %combined, i32 28
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %6 = call ptr @memcpy(ptr %combined, ptr %tuple, i32 20)
  %hash_mix.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %7 = ptrtoint ptr %hash_mix.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_mix.i, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protonum, align 2
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %1, align 8
  %dir = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp = icmp eq i8 %14, 3
  br i1 %cmp, label %if.then23, label %if.end13.if.end26_crit_edge

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %zone, align 2
  %conv24 = zext i16 %16 to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv24, ptr %2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end13.if.end26_crit_edge
  %call.i = call i64 @__siphash_unaligned(ptr noundef nonnull %combined, i32 noundef 32, ptr noundef nonnull @nf_nat_hash_rnd) #12
  %18 = load i32, ptr @nf_nat_htable_size, align 4
  %conv.i = and i64 %call.i, 4294967295
  %conv1.i = zext i32 %18 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %combined) #12
  ret i32 %conv2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_alloc_null_binding(ptr noundef %ct, i32 noundef %hooknum) #0 align 64 {
entry:
  %range.i = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hooknum to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %hooknum, label %cond.false.i [
    i32 4, label %entry.cond.true.i_crit_edge
    i32 1, label %entry.cond.true.i_crit_edge3
  ]

entry.cond.true.i_crit_edge3:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

cond.true.i:                                      ; preds = %entry.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge3
  %dst.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  %ip.sroa.7.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3
  br label %__nf_nat_alloc_null_binding.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tuple3.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %ip.sroa.7.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  br label %__nf_nat_alloc_null_binding.exit

__nf_nat_alloc_null_binding.exit:                 ; preds = %cond.false.i, %cond.true.i
  %ip.sroa.9.0.in.i = phi ptr [ %ip.sroa.9.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.9.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.8.0.in.i = phi ptr [ %ip.sroa.8.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.8.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.7.0.in.i = phi ptr [ %ip.sroa.7.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.7.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.0.0.in.i = phi ptr [ %dst.i, %cond.true.i ], [ %tuple3.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hooknum)
  %cmp1 = icmp ne i32 %hooknum, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hooknum)
  %cmp.not = icmp ne i32 %hooknum, 4
  %narrow = and i1 %cmp.not, %cmp1
  %1 = zext i1 %narrow to i32
  %2 = ptrtoint ptr %ip.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %ip.sroa.0.0.i = load i32, ptr %ip.sroa.0.0.in.i, align 4
  %3 = ptrtoint ptr %ip.sroa.7.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ip.sroa.7.0.i = load i32, ptr %ip.sroa.7.0.in.i, align 4
  %4 = ptrtoint ptr %ip.sroa.8.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ip.sroa.8.0.i = load i32, ptr %ip.sroa.8.0.in.i, align 4
  %5 = ptrtoint ptr %ip.sroa.9.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ip.sroa.9.0.i = load i32, ptr %ip.sroa.9.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i) #12
  %6 = getelementptr inbounds i8, ptr %range.i, i32 40
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %6, align 4, !annotation !114
  %8 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %range.i, align 4
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1
  %9 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ip.sroa.0.0.i, ptr %min_addr.i, align 4
  %ip.sroa.7.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %ip.sroa.7.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ip.sroa.7.0.i, ptr %ip.sroa.7.0.min_addr.sroa_idx.i, align 4
  %ip.sroa.8.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %ip.sroa.8.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ip.sroa.8.0.i, ptr %ip.sroa.8.0.min_addr.sroa_idx.i, align 4
  %ip.sroa.9.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %ip.sroa.9.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ip.sroa.9.0.i, ptr %ip.sroa.9.0.min_addr.sroa_idx.i, align 4
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2
  %13 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ip.sroa.0.0.i, ptr %max_addr.i, align 4
  %ip.sroa.7.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %ip.sroa.7.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ip.sroa.7.0.i, ptr %ip.sroa.7.0.max_addr.sroa_idx.i, align 4
  %ip.sroa.8.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %ip.sroa.8.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ip.sroa.8.0.i, ptr %ip.sroa.8.0.max_addr.sroa_idx.i, align 4
  %ip.sroa.9.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %ip.sroa.9.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ip.sroa.9.0.i, ptr %ip.sroa.9.0.max_addr.sroa_idx.i, align 4
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 3
  %17 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %min_proto.i, align 4
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 4
  %18 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %max_proto.i, align 2
  %call.i = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range.i, i32 noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_packet(ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %hooknum, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hooknum)
  %cmp.not = icmp ne i32 %hooknum, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hooknum)
  %cmp1 = icmp ne i32 %hooknum, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp2 = icmp ugt i32 %ctinfo, 2
  %cmp3.demorgan = and i1 %cmp.not, %cmp1
  %statusbit.0 = select i1 %cmp3.demorgan, i32 32, i32 16
  %xor = xor i32 %statusbit.0, 48
  %statusbit.1 = select i1 %cmp2, i32 %xor, i32 %statusbit.0
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, %statusbit.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = zext i1 %cmp3.demorgan to i32
  %cond = zext i1 %cmp2 to i32
  %call = tail call i32 @nf_nat_manip_pkt(ptr noundef %skb, ptr noundef %ct, i32 noundef %2, i32 noundef %cond) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %entry.if.end8_crit_edge
  %verdict.0 = phi i32 [ %call, %if.then7 ], [ 1, %entry.if.end8_crit_edge ]
  ret i32 %verdict.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_manip_pkt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_inet_fn(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #0 align 64 {
entry:
  %range.i.i = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.not = icmp ne i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp4 = icmp ne i8 %1, 1
  %2 = and i1 %cmp.not, %cmp4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %4, 7
  %and1.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup117_crit_edge, label %lor.lhs.false

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

lor.lhs.false:                                    ; preds = %entry
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup117_crit_edge

land.lhs.true.i.cleanup117_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.nfct_nat.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.nfct_nat.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfct_nat.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.i.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_nat.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_nat.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfct_nat.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i8 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  br label %nfct_nat.exit

nfct_nat.exit:                                    ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_nat.exit_crit_edge, %if.end.nfct_nat.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_nat.exit_crit_edge ], [ null, %if.end.nfct_nat.exit_crit_edge ]
  %14 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and.i, label %do.end93.critedge [
    i32 1, label %nfct_nat.exit.sw.bb_crit_edge
    i32 4, label %nfct_nat.exit.sw.bb_crit_edge203
    i32 2, label %nfct_nat.exit.sw.bb_crit_edge204
    i32 0, label %nfct_nat.exit.if.end99_crit_edge
    i32 3, label %nfct_nat.exit.if.end99_crit_edge205
  ]

nfct_nat.exit.if.end99_crit_edge205:              ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

nfct_nat.exit.if.end99_crit_edge:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

nfct_nat.exit.sw.bb_crit_edge204:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

nfct_nat.exit.sw.bb_crit_edge203:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

nfct_nat.exit.sw.bb_crit_edge:                    ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %nfct_nat.exit.sw.bb_crit_edge, %nfct_nat.exit.sw.bb_crit_edge203, %nfct_nat.exit.sw.bb_crit_edge204
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 8
  %..i = select i1 %2, i32 256, i32 128
  %and2.i = and i32 %16, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool10.not = icmp eq i32 %and2.i, 0
  br i1 %tobool10.not, label %if.then11, label %do.body53

if.then11:                                        ; preds = %sw.bb
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %priv, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.then11.do.end22_crit_edge

if.then11.do.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true:                                    ; preds = %if.then11
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b155 = load i1, ptr @nf_nat_inet_fn.__warned, align 1
  br i1 %.b155, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_nat_inet_fn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 743, ptr noundef nonnull @.str.1) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %if.then11.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %do.end22.null_bind_crit_edge, label %for.cond.preheader

do.end22.null_bind_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %null_bind

for.cond.preheader:                               ; preds = %do.end22
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp28191.not = icmp eq i16 %20, 0
  br i1 %cmp28191.not, label %for.cond.preheader.null_bind_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.null_bind_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %null_bind

for.cond:                                         ; preds = %if.end38
  %inc = add nuw nsw i32 %i.0192, 1
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %18, align 4
  %conv27 = zext i16 %22 to i32
  %cmp28 = icmp ult i32 %inc, %conv27
  br i1 %cmp28, label %for.cond.for.body_crit_edge, label %for.cond.null_bind_crit_edge

for.cond.null_bind_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %null_bind

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0192 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nf_hook_entries, ptr %18, i32 0, i32 1, i32 %i.0192
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %priv33 = getelementptr %struct.nf_hook_entries, ptr %18, i32 0, i32 1, i32 %i.0192, i32 1
  %25 = ptrtoint ptr %priv33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv33, align 4
  %call34 = tail call i32 %24(ptr noundef %26, ptr noundef %skb, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 1
  br i1 %cmp35.not, label %if.end38, label %for.body.cleanup117_crit_edge

for.body.cleanup117_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

if.end38:                                         ; preds = %for.body
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 8
  %and2.i161 = and i32 %28, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i161)
  %tobool40.not = icmp eq i32 %and2.i161, 0
  br i1 %tobool40.not, label %for.cond, label %if.end38.do_nat_crit_edge

if.end38.do_nat_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

null_bind:                                        ; preds = %for.cond.null_bind_crit_edge, %for.cond.preheader.null_bind_crit_edge, %do.end22.null_bind_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %state, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %30, label %cond.false.i.i [
    i8 4, label %null_bind.cond.true.i.i_crit_edge
    i8 1, label %null_bind.cond.true.i.i_crit_edge206
  ]

null_bind.cond.true.i.i_crit_edge206:             ; preds = %null_bind
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i.i

null_bind.cond.true.i.i_crit_edge:                ; preds = %null_bind
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i.i

cond.true.i.i:                                    ; preds = %null_bind.cond.true.i.i_crit_edge, %null_bind.cond.true.i.i_crit_edge206
  %dst.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1
  %ip.sroa.7.0.u3.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u3.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u3.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3
  br label %nf_nat_alloc_null_binding.exit

cond.false.i.i:                                   ; preds = %null_bind
  call void @__sanitizer_cov_trace_pc() #14
  %tuple3.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1
  %ip.sroa.7.0.u34.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u34.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u34.sroa_idx.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  br label %nf_nat_alloc_null_binding.exit

nf_nat_alloc_null_binding.exit:                   ; preds = %cond.false.i.i, %cond.true.i.i
  %ip.sroa.9.0.in.i.i = phi ptr [ %ip.sroa.9.0.u3.sroa_idx.i.i, %cond.true.i.i ], [ %ip.sroa.9.0.u34.sroa_idx.i.i, %cond.false.i.i ]
  %ip.sroa.8.0.in.i.i = phi ptr [ %ip.sroa.8.0.u3.sroa_idx.i.i, %cond.true.i.i ], [ %ip.sroa.8.0.u34.sroa_idx.i.i, %cond.false.i.i ]
  %ip.sroa.7.0.in.i.i = phi ptr [ %ip.sroa.7.0.u3.sroa_idx.i.i, %cond.true.i.i ], [ %ip.sroa.7.0.u34.sroa_idx.i.i, %cond.false.i.i ]
  %ip.sroa.0.0.in.i.i = phi ptr [ %dst.i.i, %cond.true.i.i ], [ %tuple3.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp1.i = icmp ne i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp.not.i = icmp ne i8 %30, 4
  %narrow.i = and i1 %cmp.not.i, %cmp1.i
  %32 = zext i1 %narrow.i to i32
  %33 = ptrtoint ptr %ip.sroa.0.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %ip.sroa.0.0.i.i = load i32, ptr %ip.sroa.0.0.in.i.i, align 4
  %34 = ptrtoint ptr %ip.sroa.7.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ip.sroa.7.0.i.i = load i32, ptr %ip.sroa.7.0.in.i.i, align 4
  %35 = ptrtoint ptr %ip.sroa.8.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %ip.sroa.8.0.i.i = load i32, ptr %ip.sroa.8.0.in.i.i, align 4
  %36 = ptrtoint ptr %ip.sroa.9.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %ip.sroa.9.0.i.i = load i32, ptr %ip.sroa.9.0.in.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i.i) #12
  %37 = getelementptr inbounds i8, ptr %range.i.i, i32 40
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65535, ptr %37, align 4, !annotation !114
  %39 = ptrtoint ptr %range.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %range.i.i, align 4
  %min_addr.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %min_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %ip.sroa.0.0.i.i, ptr %min_addr.i.i, align 4
  %ip.sroa.7.0.min_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %ip.sroa.7.0.min_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %ip.sroa.7.0.i.i, ptr %ip.sroa.7.0.min_addr.sroa_idx.i.i, align 4
  %ip.sroa.8.0.min_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %ip.sroa.8.0.min_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %ip.sroa.8.0.i.i, ptr %ip.sroa.8.0.min_addr.sroa_idx.i.i, align 4
  %ip.sroa.9.0.min_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %ip.sroa.9.0.min_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ip.sroa.9.0.i.i, ptr %ip.sroa.9.0.min_addr.sroa_idx.i.i, align 4
  %max_addr.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %max_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %ip.sroa.0.0.i.i, ptr %max_addr.i.i, align 4
  %ip.sroa.7.0.max_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 2, i32 0, i32 1
  %45 = ptrtoint ptr %ip.sroa.7.0.max_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %ip.sroa.7.0.i.i, ptr %ip.sroa.7.0.max_addr.sroa_idx.i.i, align 4
  %ip.sroa.8.0.max_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 2, i32 0, i32 2
  %46 = ptrtoint ptr %ip.sroa.8.0.max_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %ip.sroa.8.0.i.i, ptr %ip.sroa.8.0.max_addr.sroa_idx.i.i, align 4
  %ip.sroa.9.0.max_addr.sroa_idx.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %ip.sroa.9.0.max_addr.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %ip.sroa.9.0.i.i, ptr %ip.sroa.9.0.max_addr.sroa_idx.i.i, align 4
  %min_proto.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %min_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %min_proto.i.i, align 4
  %max_proto.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %max_proto.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %max_proto.i.i, align 2
  %call.i.i = call i32 @nf_nat_setup_info(ptr noundef nonnull %5, ptr noundef nonnull %range.i.i, i32 noundef %32) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp46.not = icmp eq i32 %call.i.i, 1
  br i1 %cmp46.not, label %nf_nat_alloc_null_binding.exit.do_nat_crit_edge, label %nf_nat_alloc_null_binding.exit.cleanup117_crit_edge

nf_nat_alloc_null_binding.exit.cleanup117_crit_edge: ; preds = %nf_nat_alloc_null_binding.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

nf_nat_alloc_null_binding.exit.do_nat_crit_edge:  ; preds = %nf_nat_alloc_null_binding.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

do.body53:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_nat_inet_fn.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_nat_inet_fn, %if.then59)) #12
          to label %do.end64 [label %if.then59], !srcloc !112

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %2, ptr @.str.7, ptr @.str.6
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_nat_inet_fn.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, ptr noundef nonnull %5, i32 noundef %51) #12
  br label %do.end64

do.end64:                                         ; preds = %if.then59, %do.body53
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %52 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %out, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %do.end64.do_nat_crit_edge, label %land.lhs.true.i163

do.end64.do_nat_crit_edge:                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

land.lhs.true.i163:                               ; preds = %do.end64
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %state, align 4
  %masq_index.i = getelementptr inbounds %struct.nf_conn_nat, ptr %retval.0.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %masq_index.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %masq_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool1.not.i = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp.i162 = icmp eq i8 %55, 4
  %or.cond.i = and i1 %cmp.i162, %tobool1.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp4.i = icmp ult i32 %and.i, 3
  %or.cond10.i = and i1 %cmp4.i, %or.cond.i
  br i1 %or.cond10.i, label %nf_nat_oif_changed.exit, label %land.lhs.true.i163.do_nat_crit_edge

land.lhs.true.i163.do_nat_crit_edge:              ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

nf_nat_oif_changed.exit:                          ; preds = %land.lhs.true.i163
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 17
  %58 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp7.i.not = icmp eq i32 %57, %59
  br i1 %cmp7.i.not, label %nf_nat_oif_changed.exit.do_nat_crit_edge, label %nf_nat_oif_changed.exit.oif_changed_crit_edge

nf_nat_oif_changed.exit.oif_changed_crit_edge:    ; preds = %nf_nat_oif_changed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %oif_changed

nf_nat_oif_changed.exit.do_nat_crit_edge:         ; preds = %nf_nat_oif_changed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

do.end93.critedge:                                ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 774, i32 noundef 9, ptr noundef null) #12
  br label %if.end99

if.end99:                                         ; preds = %do.end93.critedge, %nfct_nat.exit.if.end99_crit_edge, %nfct_nat.exit.if.end99_crit_edge205
  %out109 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %60 = ptrtoint ptr %out109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %out109, align 4
  %tobool.not.i164 = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i164, label %if.end99.do_nat_crit_edge, label %land.lhs.true.i171

if.end99.do_nat_crit_edge:                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

land.lhs.true.i171:                               ; preds = %if.end99
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %state, align 4
  %masq_index.i165 = getelementptr inbounds %struct.nf_conn_nat, ptr %retval.0.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %masq_index.i165 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %masq_index.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool1.not.i166 = icmp ne i32 %65, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %63)
  %cmp.i167 = icmp eq i8 %63, 4
  %or.cond.i168 = and i1 %cmp.i167, %tobool1.not.i166
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp4.i169 = icmp ult i32 %and.i, 3
  %or.cond10.i170 = and i1 %cmp4.i169, %or.cond.i168
  br i1 %or.cond10.i170, label %nf_nat_oif_changed.exit175, label %land.lhs.true.i171.do_nat_crit_edge

land.lhs.true.i171.do_nat_crit_edge:              ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

nf_nat_oif_changed.exit175:                       ; preds = %land.lhs.true.i171
  %ifindex.i172 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 17
  %66 = ptrtoint ptr %ifindex.i172 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ifindex.i172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp7.i173.not = icmp eq i32 %65, %67
  br i1 %cmp7.i173.not, label %nf_nat_oif_changed.exit175.do_nat_crit_edge, label %nf_nat_oif_changed.exit175.oif_changed_crit_edge

nf_nat_oif_changed.exit175.oif_changed_crit_edge: ; preds = %nf_nat_oif_changed.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %oif_changed

nf_nat_oif_changed.exit175.do_nat_crit_edge:      ; preds = %nf_nat_oif_changed.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_nat

do_nat:                                           ; preds = %nf_nat_oif_changed.exit175.do_nat_crit_edge, %land.lhs.true.i171.do_nat_crit_edge, %if.end99.do_nat_crit_edge, %nf_nat_oif_changed.exit.do_nat_crit_edge, %land.lhs.true.i163.do_nat_crit_edge, %do.end64.do_nat_crit_edge, %nf_nat_alloc_null_binding.exit.do_nat_crit_edge, %if.end38.do_nat_crit_edge
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp.not.i176 = icmp ne i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp1.i177 = icmp ne i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp2.i = icmp ugt i32 %and.i, 2
  %cmp3.demorgan.i = and i1 %cmp.not.i176, %cmp1.i177
  %statusbit.0.i = select i1 %cmp3.demorgan.i, i32 32, i32 16
  %xor.i = xor i32 %statusbit.0.i, 48
  %statusbit.1.i = select i1 %cmp2.i, i32 %xor.i, i32 %statusbit.0.i
  %status.i178 = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 5
  %70 = ptrtoint ptr %status.i178 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status.i178, align 8
  %and.i179 = and i32 %statusbit.1.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i180, label %do_nat.cleanup117_crit_edge, label %if.then7.i

do_nat.cleanup117_crit_edge:                      ; preds = %do_nat
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

if.then7.i:                                       ; preds = %do_nat
  call void @__sanitizer_cov_trace_pc() #14
  %72 = zext i1 %cmp3.demorgan.i to i32
  %cond.i = zext i1 %cmp2.i to i32
  %call.i = call i32 @nf_nat_manip_pkt(ptr noundef %skb, ptr noundef nonnull %5, i32 noundef %72, i32 noundef %cond.i) #12
  br label %cleanup117

oif_changed:                                      ; preds = %nf_nat_oif_changed.exit175.oif_changed_crit_edge, %nf_nat_oif_changed.exit.oif_changed_crit_edge
  %call116 = tail call zeroext i1 @nf_ct_kill_acct(ptr noundef nonnull %5, i32 noundef %and.i, ptr noundef %skb) #12
  br label %cleanup117

cleanup117:                                       ; preds = %oif_changed, %if.then7.i, %do_nat.cleanup117_crit_edge, %nf_nat_alloc_null_binding.exit.cleanup117_crit_edge, %for.body.cleanup117_crit_edge, %land.lhs.true.i.cleanup117_crit_edge, %entry.cleanup117_crit_edge
  %retval.1 = phi i32 [ 0, %oif_changed ], [ 1, %entry.cleanup117_crit_edge ], [ %call.i, %if.then7.i ], [ 1, %do_nat.cleanup117_crit_edge ], [ 1, %land.lhs.true.i.cleanup117_crit_edge ], [ %call.i.i, %nf_nat_alloc_null_binding.exit.cleanup117_crit_edge ], [ %call34, %for.body.cleanup117_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_kill_acct(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_register_fn(ptr noundef %net, i8 noundef zeroext %pf, ptr noundef %ops, ptr noundef %orig_nat_ops, i32 noundef %ops_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %hooknum1 = getelementptr inbounds %struct.nf_hook_ops, ptr %ops, i32 0, i32 5
  %1 = ptrtoint ptr %hooknum1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hooknum1, align 4
  %conv = zext i8 %pf to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %pf)
  %cmp = icmp ugt i8 %pf, 12
  br i1 %cmp, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b306 = load i1, ptr @nf_nat_register_fn.__already_done, align 1
  br i1 %.b306, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !110

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_nat_register_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1015, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %entry
  %arrayidx = getelementptr [13 x %struct.nf_nat_hooks_net], ptr %call, i32 0, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ops_count)
  %cmp42311.not = icmp eq i32 %ops_count, 0
  br i1 %cmp42311.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end40.for.body_crit_edge
  %i.0312 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %hooknum45 = getelementptr %struct.nf_hook_ops, ptr %orig_nat_ops, i32 %i.0312, i32 5
  %3 = ptrtoint ptr %hooknum45 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hooknum45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp46 = icmp eq i32 %4, %2
  br i1 %cmp46, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc, %ops_count
  br i1 %exitcond.not, label %for.inc.land.rhs60_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.land.rhs60_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs60

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end40.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end40.for.end_crit_edge ], [ %i.0312, %for.body.for.end_crit_edge ]
  %hooknum.0 = phi i32 [ %2, %if.end40.for.end_crit_edge ], [ %i.0312, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %ops_count)
  %cmp51 = icmp eq i32 %i.0.lcssa, %ops_count
  br i1 %cmp51, label %for.end.land.rhs60_crit_edge, label %if.end108

for.end.land.rhs60_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs60

land.rhs60:                                       ; preds = %for.end.land.rhs60_crit_edge, %for.inc.land.rhs60_crit_edge
  %.b302305 = load i1, ptr @nf_nat_register_fn.__already_done.8, align 1
  br i1 %.b302305, label %land.rhs60.cleanup_crit_edge, label %if.then71, !prof !110

land.rhs60.cleanup_crit_edge:                     ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_nat_register_fn.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end108:                                        ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_nat_proto_mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool109.not = icmp eq ptr %6, null
  br i1 %tobool109.not, label %if.then110, label %if.end108.if.end178_crit_edge

if.end108.if.end178_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

if.then110:                                       ; preds = %if.end108
  %users = getelementptr [13 x %struct.nf_nat_hooks_net], ptr %call, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp112.not = icmp eq i32 %8, 0
  br i1 %cmp112.not, label %if.then110.if.end135_crit_edge, label %do.end129, !prof !110

if.then110.if.end135_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

do.end129:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1032, i32 noundef 9, ptr noundef null) #12
  br label %if.end135

if.end135:                                        ; preds = %do.end129, %if.then110.if.end135_crit_edge
  %mul = mul i32 %ops_count, 24
  %call143 = tail call ptr @kmemdup(ptr noundef %orig_nat_ops, i32 noundef %mul, i32 noundef 3264) #12
  %tobool144.not = icmp eq ptr %call143, null
  br i1 %tobool144.not, label %if.then145, label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %if.end135
  br i1 %cmp42311.not, label %for.cond147.preheader.for.end162_crit_edge, label %for.cond147.preheader.for.body150_crit_edge

for.cond147.preheader.for.body150_crit_edge:      ; preds = %for.cond147.preheader
  br label %for.body150

for.cond147.preheader.for.end162_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

if.then145:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  br label %cleanup

for.body150:                                      ; preds = %if.then153.for.body150_crit_edge, %for.cond147.preheader.for.body150_crit_edge
  %i.1317 = phi i32 [ %inc161, %if.then153.for.body150_crit_edge ], [ 0, %for.cond147.preheader.for.body150_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 12) #15
  %tobool152.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool152.not, label %if.end156, label %if.then153

if.then153:                                       ; preds = %for.body150
  %priv155 = getelementptr %struct.nf_hook_ops, ptr %call143, i32 %i.1317, i32 2
  %10 = ptrtoint ptr %priv155 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %priv155, align 4
  %inc161 = add nuw i32 %i.1317, 1
  %exitcond323.not = icmp eq i32 %inc161, %ops_count
  br i1 %exitcond323.not, label %if.then153.for.end162_crit_edge, label %if.then153.for.body150_crit_edge

if.then153.for.body150_crit_edge:                 ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body150

if.then153.for.end162_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end162

if.end156:                                        ; preds = %for.body150
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1317)
  %tobool157.not320 = icmp eq i32 %i.1317, 0
  br i1 %tobool157.not320, label %if.end156.while.end_crit_edge, label %if.end156.while.body_crit_edge

if.end156.while.body_crit_edge:                   ; preds = %if.end156
  br label %while.body

if.end156.while.end_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end156.while.body_crit_edge
  %i.2321 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.1317, %if.end156.while.body_crit_edge ]
  %dec = add i32 %i.2321, -1
  %priv159 = getelementptr %struct.nf_hook_ops, ptr %call143, i32 %dec, i32 2
  %11 = ptrtoint ptr %priv159 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv159, align 4
  tail call void @kfree(ptr noundef %12) #12
  %tobool157.not = icmp eq i32 %dec, 0
  br i1 %tobool157.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end156.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call143) #12
  br label %cleanup

for.end162:                                       ; preds = %if.then153.for.end162_crit_edge, %for.cond147.preheader.for.end162_crit_edge
  %call163 = tail call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull %call143, i32 noundef %ops_count) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then166, label %if.end176

if.then166:                                       ; preds = %for.end162
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  br i1 %cmp42311.not, label %if.then166.for.end175_crit_edge, label %if.then166.for.body170_crit_edge

if.then166.for.body170_crit_edge:                 ; preds = %if.then166
  br label %for.body170

if.then166.for.end175_crit_edge:                  ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end175

for.body170:                                      ; preds = %for.body170.for.body170_crit_edge, %if.then166.for.body170_crit_edge
  %i.3319 = phi i32 [ %inc174, %for.body170.for.body170_crit_edge ], [ 0, %if.then166.for.body170_crit_edge ]
  %priv172 = getelementptr %struct.nf_hook_ops, ptr %call143, i32 %i.3319, i32 2
  %13 = ptrtoint ptr %priv172 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv172, align 4
  tail call void @kfree(ptr noundef %14) #12
  %inc174 = add nuw i32 %i.3319, 1
  %exitcond324.not = icmp eq i32 %inc174, %ops_count
  br i1 %exitcond324.not, label %for.body170.for.end175_crit_edge, label %for.body170.for.body170_crit_edge

for.body170.for.body170_crit_edge:                ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body170

for.body170.for.end175_crit_edge:                 ; preds = %for.body170
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end175

for.end175:                                       ; preds = %for.body170.for.end175_crit_edge, %if.then166.for.end175_crit_edge
  tail call void @kfree(ptr noundef nonnull %call143) #12
  br label %cleanup

if.end176:                                        ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call143, ptr %arrayidx, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.end176, %if.end108.if.end178_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %priv181 = getelementptr %struct.nf_hook_ops, ptr %17, i32 %hooknum.0, i32 2
  %18 = ptrtoint ptr %priv181 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv181, align 4
  %tobool183.not = icmp eq ptr %19, null
  br i1 %tobool183.not, label %land.rhs193, label %if.end241

land.rhs193:                                      ; preds = %if.end178
  %.b303304 = load i1, ptr @nf_nat_register_fn.__already_done.9, align 1
  br i1 %.b303304, label %land.rhs193.if.then240_crit_edge, label %if.then204, !prof !110

land.rhs193.if.then240_crit_edge:                 ; preds = %land.rhs193
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then240

if.then204:                                       ; preds = %land.rhs193
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_nat_register_fn.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1067, i32 noundef 9, ptr noundef null) #12
  br label %if.then240

if.then240:                                       ; preds = %if.then204, %land.rhs193.if.then240_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  br label %cleanup

if.end241:                                        ; preds = %if.end178
  %call242 = tail call i32 @nf_hook_entries_insert_raw(ptr noundef nonnull %19, ptr noundef %ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %cmp243 = icmp eq i32 %call242, 0
  br i1 %cmp243, label %if.then245, label %if.end241.if.end248_crit_edge

if.end241.if.end248_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

if.then245:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #14
  %users246 = getelementptr [13 x %struct.nf_nat_hooks_net], ptr %call, i32 0, i32 %conv, i32 1
  %20 = ptrtoint ptr %users246 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %users246, align 4
  %inc247 = add i32 %21, 1
  store i32 %inc247, ptr %users246, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %if.end241.if.end248_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end248, %if.then240, %for.end175, %while.end, %if.then145, %if.then71, %land.rhs60.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then240 ], [ %call242, %if.end248 ], [ -12, %while.end ], [ %call163, %for.end175 ], [ -12, %if.then145 ], [ -22, %if.then ], [ -22, %if.then71 ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %land.rhs60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 45, ptr noundef nonnull @.str.1) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %8 = tail call i32 @llvm.read_register.i32(metadata !99) #12
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
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_entries_insert_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_nat_unregister_fn(ptr noundef %net, i8 noundef zeroext %pf, ptr noundef %ops, i32 noundef %ops_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nat_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %hooknum1 = getelementptr inbounds %struct.nf_hook_ops, ptr %ops, i32 0, i32 5
  %1 = ptrtoint ptr %hooknum1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hooknum1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %pf)
  %cmp = icmp ugt i8 %pf, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %pf to i32
  %arrayidx = getelementptr [13 x %struct.nf_nat_hooks_net], ptr %call, i32 0, i32 %conv
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_nat_proto_mutex, i32 noundef 0) #12
  %users = getelementptr [13 x %struct.nf_nat_hooks_net], ptr %call, i32 0, i32 %conv, i32 1
  %3 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %do.end, label %if.end28.critedge, !prof !109

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1096, i32 noundef 9, ptr noundef null) #12
  br label %unlock

if.end28.critedge:                                ; preds = %if.end
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %users, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ops_count)
  %cmp30154.not = icmp eq i32 %ops_count, 0
  br i1 %cmp30154.not, label %if.end28.critedge.for.end_crit_edge, label %if.end28.critedge.for.body_crit_edge

if.end28.critedge.for.body_crit_edge:             ; preds = %if.end28.critedge
  br label %for.body

if.end28.critedge.for.end_crit_edge:              ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.critedge.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end28.critedge.for.body_crit_edge ]
  %hooknum33 = getelementptr %struct.nf_hook_ops, ptr %7, i32 %i.0155, i32 5
  %8 = ptrtoint ptr %hooknum33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hooknum33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %2)
  %cmp34 = icmp eq i32 %9, %2
  br i1 %cmp34, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc, %ops_count
  br i1 %exitcond.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.critedge.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end28.critedge.for.end_crit_edge ], [ %i.0155, %for.body.for.end_crit_edge ]
  %hooknum.0 = phi i32 [ %2, %if.end28.critedge.for.end_crit_edge ], [ %i.0155, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %ops_count)
  %cmp38 = icmp eq i32 %i.0.lcssa, %ops_count
  br i1 %cmp38, label %for.end.land.rhs_crit_edge, label %if.end92.critedge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %for.inc.land.rhs_crit_edge
  %.b151 = load i1, ptr @nf_nat_unregister_fn.__already_done, align 1
  br i1 %.b151, label %land.rhs.unlock_crit_edge, label %if.then55, !prof !110

land.rhs.unlock_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then55:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_nat_unregister_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef 9, ptr noundef null) #12
  br label %unlock

if.end92.critedge:                                ; preds = %for.end
  %priv94 = getelementptr %struct.nf_hook_ops, ptr %7, i32 %hooknum.0, i32 2
  %10 = ptrtoint ptr %priv94 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv94, align 4
  tail call void @nf_hook_entries_delete_raw(ptr noundef %11, ptr noundef %ops) #12
  %12 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp96 = icmp eq i32 %13, 0
  br i1 %cmp96, label %if.then98, label %if.end92.critedge.unlock_crit_edge

if.end92.critedge.unlock_crit_edge:               ; preds = %if.end92.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then98:                                        ; preds = %if.end92.critedge
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef %7, i32 noundef %ops_count) #12
  br i1 %cmp30154.not, label %if.then98.for.end116_crit_edge, label %if.then98.for.body102_crit_edge

if.then98.for.body102_crit_edge:                  ; preds = %if.then98
  br label %for.body102

if.then98.for.end116_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end116

for.body102:                                      ; preds = %if.end111.for.body102_crit_edge, %if.then98.for.body102_crit_edge
  %i.1160 = phi i32 [ %inc115, %if.end111.for.body102_crit_edge ], [ 0, %if.then98.for.body102_crit_edge ]
  %priv104 = getelementptr %struct.nf_hook_ops, ptr %7, i32 %i.1160, i32 2
  %14 = ptrtoint ptr %priv104 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv104, align 4
  %tobool106.not = icmp eq ptr %15, null
  br i1 %tobool106.not, label %for.body102.if.end111_crit_edge, label %do.end110

for.body102.if.end111_crit_edge:                  ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

do.end110:                                        ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  %callback_head = getelementptr inbounds %struct.nf_nat_lookup_hook_priv, ptr %15, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %for.body102.if.end111_crit_edge
  %inc115 = add nuw i32 %i.1160, 1
  %exitcond161.not = icmp eq i32 %inc115, %ops_count
  br i1 %exitcond161.not, label %if.end111.for.end116_crit_edge, label %if.end111.for.body102_crit_edge

if.end111.for.body102_crit_edge:                  ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

if.end111.for.end116_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end116

for.end116:                                       ; preds = %if.end111.for.end116_crit_edge, %if.then98.for.end116_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #12
  br label %unlock

unlock:                                           ; preds = %for.end116, %if.end92.critedge.unlock_crit_edge, %if.then55, %land.rhs.unlock_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @nf_nat_proto_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_hook_entries_delete_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_cleanup() #4 section ".exit.text" align 64 {
entry:
  %clean = alloca %struct.nf_nat_proto_clean, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %clean) #12
  %0 = ptrtoint ptr %clean to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %clean, align 2
  call void @nf_ct_iterate_destroy(ptr noundef nonnull @nf_nat_proto_clean, ptr noundef nonnull %clean) #12
  call void @nf_ct_extend_unregister(ptr noundef nonnull @nat_extend) #12
  call void @nf_ct_helper_expectfn_unregister(ptr noundef nonnull @follow_master_nat) #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_hook to i32))
  store volatile ptr null, ptr @nf_nat_hook, align 4
  call void @synchronize_net() #12
  %1 = load ptr, ptr @nf_nat_bysource, align 4
  call void @kvfree(ptr noundef %1) #12
  call void @unregister_pernet_subsys(ptr noundef nonnull @nat_net_ops) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %clean) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_iterate_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_proto_clean(ptr noundef %ct, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %entry
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %l3num.i.i, align 2
  %4 = zext i8 %1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %4)
  %cmp.not.i = icmp eq i16 %3, %4
  br i1 %cmp.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  %l4proto.i = getelementptr inbounds %struct.nf_nat_proto_clean, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l4proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.i = icmp eq i8 %6, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.nf_nat_proto_remove.exit_crit_edge, label %land.lhs.true7.i

lor.lhs.false.i.nf_nat_proto_remove.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_nat_proto_remove.exit

land.lhs.true7.i:                                 ; preds = %lor.lhs.false.i
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %7 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %6)
  %cmp12.not.i = icmp eq i8 %8, %6
  br i1 %cmp12.not.i, label %land.lhs.true7.i.nf_nat_proto_remove.exit_crit_edge, label %land.lhs.true7.i.if.end_crit_edge

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.i.nf_nat_proto_remove.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_nat_proto_remove.exit

nf_nat_proto_remove.exit:                         ; preds = %land.lhs.true7.i.nf_nat_proto_remove.exit_crit_edge, %lor.lhs.false.i.nf_nat_proto_remove.exit_crit_edge
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status.i, align 8
  %and.i = and i32 %10, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i.not, label %nf_nat_proto_remove.exit.if.end_crit_edge, label %nf_nat_proto_remove.exit.return_crit_edge

nf_nat_proto_remove.exit.return_crit_edge:        ; preds = %nf_nat_proto_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nf_nat_proto_remove.exit.if.end_crit_edge:        ; preds = %nf_nat_proto_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nf_nat_proto_remove.exit.if.end_crit_edge, %land.lhs.true7.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %status) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.then3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3:                                         ; preds = %if.end
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %11 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ct_net.i.i, align 4
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %tuple.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %call2.i = tail call fastcc i32 @hash_by_src(ptr noundef %12, ptr noundef %zone.i.i, ptr noundef %tuple.i) #12
  %rem.i = and i32 %call2.i, 1023
  %arrayidx3.i = getelementptr [1024 x %struct.spinlock], ptr @nf_nat_locks, i32 0, i32 %rem.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx3.i) #12
  %nat_bysource.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8
  %13 = ptrtoint ptr %nat_bysource.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nat_bysource.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.then3.__nf_nat_cleanup_conntrack.exit_crit_edge, label %do.body13.i.i.i

if.then3.__nf_nat_cleanup_conntrack.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nf_nat_cleanup_conntrack.exit

do.body13.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %pprev14.i.i.i, align 4
  br label %__nf_nat_cleanup_conntrack.exit

__nf_nat_cleanup_conntrack.exit:                  ; preds = %do.body13.i.i.i, %if.then3.__nf_nat_cleanup_conntrack.exit_crit_edge
  %19 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx3.i) #12
  br label %return

return:                                           ; preds = %__nf_nat_cleanup_conntrack.exit, %if.end.return_crit_edge, %nf_nat_proto_remove.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %nf_nat_proto_remove.exit.return_crit_edge ], [ 0, %__nf_nat_cleanup_conntrack.exit ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %0 = load i32, ptr @nf_conntrack_htable_size, align 4
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 1024)
  store i32 %1, ptr @nf_nat_htable_size, align 4
  %call = tail call ptr @nf_ct_alloc_hashtable(ptr noundef nonnull @nf_nat_htable_size, i32 noundef 0) #12
  store ptr %call, ptr @nf_nat_bysource, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call3 = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @nat_extend) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end2.do.body9_crit_edge

if.end2.do.body9_crit_edge:                       ; preds = %if.end2
  br label %do.body9

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @nf_nat_bysource, align 4
  tail call void @kvfree(ptr noundef %2) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %cleanup

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %if.end2.do.body9_crit_edge
  %i.062 = phi i32 [ %inc, %do.body9.do.body9_crit_edge ], [ 0, %if.end2.do.body9_crit_edge ]
  %arrayidx = getelementptr [1024 x %struct.spinlock], ptr @nf_nat_locks, i32 0, i32 %i.062
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.23, ptr noundef nonnull @nf_nat_init.__key, i16 noundef signext 3) #12
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

for.end:                                          ; preds = %do.body9
  %call13 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nat_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @nat_extend) #12
  %3 = load ptr, ptr @nf_nat_bysource, align 4
  tail call void @kvfree(ptr noundef %3) #12
  br label %cleanup

if.end16:                                         ; preds = %for.end
  tail call void @nf_ct_helper_expectfn_register(ptr noundef nonnull @follow_master_nat) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_hook to i32))
  %4 = load ptr, ptr @nf_nat_hook, align 4
  %cmp17.not = icmp eq ptr %4, null
  br i1 %cmp17.not, label %if.end16.if.end35_crit_edge, label %do.end29, !prof !110

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1173, i32 noundef 9, ptr noundef null) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.end16.if.end35_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_hook to i32))
  store volatile ptr @nat_hook, ptr @nf_nat_hook, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call13, %if.then15 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @in_range(ptr nocapture noundef readonly %tuple, ptr nocapture noundef readonly %range) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %l3num.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 2
  %2 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i = icmp eq i16 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  %4 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tuple, align 4
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %6 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.i = icmp ult i32 %5, %7
  br i1 %cmp3.not.i, label %if.then.i.return_crit_edge, label %land.rhs.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.rhs.i:                                       ; preds = %if.then.i
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %8 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp7.i.not = icmp ugt i32 %5, %9
  br i1 %cmp7.i.not, label %land.rhs.i.return_crit_edge, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %land.lhs.true
  %min_addr11.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %tuple, ptr noundef dereferenceable(16) %min_addr11.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp12.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp12.i, label %nf_nat_inet_in_range.exit, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nf_nat_inet_in_range.exit:                        ; preds = %if.end.i
  %max_addr17.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %call.i29.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %tuple, ptr noundef dereferenceable(16) %max_addr17.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29.i)
  %cmp19.i = icmp slt i32 %call.i29.i, 1
  br i1 %cmp19.i, label %nf_nat_inet_in_range.exit.if.end_crit_edge, label %nf_nat_inet_in_range.exit.return_crit_edge

nf_nat_inet_in_range.exit.return_crit_edge:       ; preds = %nf_nat_inet_in_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

nf_nat_inet_in_range.exit.if.end_crit_edge:       ; preds = %nf_nat_inet_in_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nf_nat_inet_in_range.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end5:                                          ; preds = %if.end
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %protonum.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protonum.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %11, label %if.end5.return_crit_edge [
    i8 1, label %if.end5.sw.bb.i_crit_edge
    i8 58, label %if.end5.sw.bb.i_crit_edge14
    i8 47, label %if.end5.sw.bb13.i_crit_edge
    i8 6, label %if.end5.sw.bb13.i_crit_edge15
    i8 17, label %if.end5.sw.bb13.i_crit_edge16
    i8 -120, label %if.end5.sw.bb13.i_crit_edge17
    i8 33, label %if.end5.sw.bb13.i_crit_edge18
    i8 -124, label %if.end5.sw.bb13.i_crit_edge19
  ]

if.end5.sw.bb13.i_crit_edge19:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb13.i_crit_edge18:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb13.i_crit_edge17:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb13.i_crit_edge16:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb13.i_crit_edge15:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb13.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

if.end5.sw.bb.i_crit_edge14:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.i:                                          ; preds = %if.end5.sw.bb.i_crit_edge, %if.end5.sw.bb.i_crit_edge14
  %u.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u.i, align 4
  %15 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %min_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.not.i = icmp ult i16 %14, %16
  br i1 %cmp.not.i, label %sw.bb.i.return_crit_edge, label %sw.bb.i.cleanup.sink.split.i_crit_edge

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb13.i:                                        ; preds = %if.end5.sw.bb13.i_crit_edge, %if.end5.sw.bb13.i_crit_edge15, %if.end5.sw.bb13.i_crit_edge16, %if.end5.sw.bb13.i_crit_edge17, %if.end5.sw.bb13.i_crit_edge18, %if.end5.sw.bb13.i_crit_edge19
  %u17.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %17 = ptrtoint ptr %u17.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %port.0.i = load i16, ptr %u17.i, align 4
  %18 = ptrtoint ptr %min_proto to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %min_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %port.0.i, i16 %19)
  %cmp22.not.i = icmp ult i16 %port.0.i, %19
  br i1 %cmp22.not.i, label %sw.bb13.i.return_crit_edge, label %sw.bb13.i.cleanup.sink.split.i_crit_edge

sw.bb13.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

sw.bb13.i.return_crit_edge:                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup.sink.split.i:                             ; preds = %sw.bb13.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %port.0.sink.i = phi i16 [ %14, %sw.bb.i.cleanup.sink.split.i_crit_edge ], [ %port.0.i, %sw.bb13.i.cleanup.sink.split.i_crit_edge ]
  %20 = ptrtoint ptr %max_proto to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_proto, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %port.0.sink.i, i16 %21)
  %cmp27.i = icmp ule i16 %port.0.sink.i, %21
  %phi.cast = zext i1 %cmp27.i to i32
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %sw.bb13.i.return_crit_edge, %sw.bb.i.return_crit_edge, %if.end5.return_crit_edge, %if.end.return_crit_edge, %nf_nat_inet_in_range.exit.return_crit_edge, %if.end.i.return_crit_edge, %land.rhs.i.return_crit_edge, %if.then.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %nf_nat_inet_in_range.exit.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 0, %land.rhs.i.return_crit_edge ], [ 0, %if.then.i.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %sw.bb.i.return_crit_edge ], [ 0, %sw.bb13.i.return_crit_edge ], [ 1, %if.end5.return_crit_edge ], [ %phi.cast, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_tuple_taken(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_cleanup_conntrack(ptr noundef %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %2 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_net.i.i, align 4
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %tuple.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %call2.i = tail call fastcc i32 @hash_by_src(ptr noundef %3, ptr noundef %zone.i.i, ptr noundef %tuple.i) #12
  %rem.i = and i32 %call2.i, 1023
  %arrayidx3.i = getelementptr [1024 x %struct.spinlock], ptr @nf_nat_locks, i32 0, i32 %rem.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx3.i) #12
  %nat_bysource.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8
  %4 = ptrtoint ptr %nat_bysource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nat_bysource.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.__nf_nat_cleanup_conntrack.exit_crit_edge, label %do.body13.i.i.i

if.then.__nf_nat_cleanup_conntrack.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %__nf_nat_cleanup_conntrack.exit

do.body13.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__nf_nat_cleanup_conntrack.exit

__nf_nat_cleanup_conntrack.exit:                  ; preds = %do.body13.i.i.i, %if.then.__nf_nat_cleanup_conntrack.exit_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx3.i) #12
  br label %if.end

if.end:                                           ; preds = %__nf_nat_cleanup_conntrack.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_alloc_hashtable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnetlink_parse_nat_setup(ptr noundef %ct, i32 noundef %manip, ptr noundef %attr) #0 align 64 {
entry:
  %tb.i.i = alloca [3 x ptr], align 4
  %tb.i = alloca [6 x ptr], align 4
  %range.i = alloca %struct.nf_nat_range2, align 4
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #12
  %0 = call ptr @memset(ptr %range, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %manip)
  %cmp.i = icmp eq i32 %manip, 0
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %1 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status.i, align 8
  %..i = select i1 %cmp.i, i32 128, i32 256
  %and2.i = and i32 %2, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b60 = load i1, ptr @nfnetlink_parse_nat_setup.__already_done, align 1
  br i1 %.b60, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !110

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfnetlink_parse_nat_setup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 977, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end38:                                         ; preds = %entry
  %cmp = icmp eq ptr %attr, null
  br i1 %cmp, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end38
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %dst.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  %ip.sroa.7.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u3.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3
  br label %__nf_nat_alloc_null_binding.exit

cond.false.i:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %tuple3.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %ip.sroa.7.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %ip.sroa.8.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %ip.sroa.9.0.u34.sroa_idx.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  br label %__nf_nat_alloc_null_binding.exit

__nf_nat_alloc_null_binding.exit:                 ; preds = %cond.false.i, %cond.true.i
  %ip.sroa.9.0.in.i = phi ptr [ %ip.sroa.9.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.9.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.8.0.in.i = phi ptr [ %ip.sroa.8.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.8.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.7.0.in.i = phi ptr [ %ip.sroa.7.0.u3.sroa_idx.i, %cond.true.i ], [ %ip.sroa.7.0.u34.sroa_idx.i, %cond.false.i ]
  %ip.sroa.0.0.in.i = phi ptr [ %dst.i, %cond.true.i ], [ %tuple3.i, %cond.false.i ]
  %3 = ptrtoint ptr %ip.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ip.sroa.0.0.i = load i32, ptr %ip.sroa.0.0.in.i, align 4
  %4 = ptrtoint ptr %ip.sroa.7.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ip.sroa.7.0.i = load i32, ptr %ip.sroa.7.0.in.i, align 4
  %5 = ptrtoint ptr %ip.sroa.8.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ip.sroa.8.0.i = load i32, ptr %ip.sroa.8.0.in.i, align 4
  %6 = ptrtoint ptr %ip.sroa.9.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %ip.sroa.9.0.i = load i32, ptr %ip.sroa.9.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i) #12
  %7 = getelementptr inbounds i8, ptr %range.i, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %7, align 4, !annotation !114
  %9 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %range.i, align 4
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1
  %10 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ip.sroa.0.0.i, ptr %min_addr.i, align 4
  %ip.sroa.7.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %ip.sroa.7.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ip.sroa.7.0.i, ptr %ip.sroa.7.0.min_addr.sroa_idx.i, align 4
  %ip.sroa.8.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %ip.sroa.8.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ip.sroa.8.0.i, ptr %ip.sroa.8.0.min_addr.sroa_idx.i, align 4
  %ip.sroa.9.0.min_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %ip.sroa.9.0.min_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ip.sroa.9.0.i, ptr %ip.sroa.9.0.min_addr.sroa_idx.i, align 4
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2
  %14 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ip.sroa.0.0.i, ptr %max_addr.i, align 4
  %ip.sroa.7.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %ip.sroa.7.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ip.sroa.7.0.i, ptr %ip.sroa.7.0.max_addr.sroa_idx.i, align 4
  %ip.sroa.8.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 2
  %16 = ptrtoint ptr %ip.sroa.8.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ip.sroa.8.0.i, ptr %ip.sroa.8.0.max_addr.sroa_idx.i, align 4
  %ip.sroa.9.0.max_addr.sroa_idx.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 2, i32 0, i32 3
  %17 = ptrtoint ptr %ip.sroa.9.0.max_addr.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ip.sroa.9.0.i, ptr %ip.sroa.9.0.max_addr.sroa_idx.i, align 4
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 3
  %18 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %min_proto.i, align 4
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 4
  %19 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %max_proto.i, align 2
  %call.i = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range.i, i32 noundef %manip) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp eq i32 %call.i, 0
  %cond = select i1 %cmp41, i32 -12, i32 0
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb.i) #12
  %20 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 1
  %21 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 2
  %22 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 3
  %23 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 4
  %24 = getelementptr inbounds [6 x ptr], ptr %tb.i, i32 0, i32 5
  %25 = call ptr @memset(ptr %tb.i, i32 255, i32 24)
  %26 = call ptr @memset(ptr %range, i32 0, i32 44)
  %add.ptr.i.i.i = getelementptr i8, ptr %attr, i32 4
  %27 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %attr, align 2
  %conv.i.i.i = zext i16 %28 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 5, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nat_nla_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i63 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i63, label %if.end42.nfnetlink_parse_nat.exit.thread_crit_edge, label %if.end.i

if.end42.nfnetlink_parse_nat.exit.thread_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfnetlink_parse_nat.exit.thread

if.end.i:                                         ; preds = %if.end42
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %l3num.i.i, align 2
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %30, label %if.end.i.nfnetlink_parse_nat.exit.thread_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb4.i
  ]

if.end.i.nfnetlink_parse_nat.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfnetlink_parse_nat.exit.thread

sw.bb.i:                                          ; preds = %if.end.i
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %sw.bb.i.nf_nat_ipv4_nlattr_to_range.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.nf_nat_ipv4_nlattr_to_range.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_nat_ipv4_nlattr_to_range.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %min_addr.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %36 = ptrtoint ptr %min_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %min_addr.i.i, align 4
  %37 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %range, align 4
  %or.i.i = or i32 %38, 1
  store i32 %or.i.i, ptr %range, align 4
  br label %nf_nat_ipv4_nlattr_to_range.exit.i

nf_nat_ipv4_nlattr_to_range.exit.i:               ; preds = %if.then.i.i, %sw.bb.i.nf_nat_ipv4_nlattr_to_range.exit.i_crit_edge
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %21, align 4
  %tobool3.not.i.i = icmp eq ptr %40, null
  %min_addr7.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %add.ptr.i.i1.i.i = getelementptr i8, ptr %40, i32 4
  %.sink.in.i.i = select i1 %tobool3.not.i.i, ptr %min_addr7.i.i, ptr %add.ptr.i.i1.i.i
  %41 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %42 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i.i, ptr %42, align 4
  br label %if.end8.i

sw.bb4.i:                                         ; preds = %if.end.i
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %23, align 4
  %tobool.not.i23.i = icmp eq ptr %45, null
  br i1 %tobool.not.i23.i, label %sw.bb4.i.if.end.i.i_crit_edge, label %if.then.i26.i

sw.bb4.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i26.i:                                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #14
  %min_addr.i24.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %call.i.i = call i32 @nla_memcpy(ptr noundef %min_addr.i24.i, ptr noundef nonnull %45, i32 noundef 16) #12
  %46 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %range, align 4
  %or.i25.i = or i32 %47, 1
  store i32 %or.i25.i, ptr %range, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i26.i, %sw.bb4.i.if.end.i.i_crit_edge
  %48 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %24, align 4
  %tobool3.not.i28.i = icmp eq ptr %49, null
  %max_addr7.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  br i1 %tobool3.not.i28.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = call i32 @nla_memcpy(ptr noundef %max_addr7.i.i, ptr noundef nonnull %49, i32 noundef 16) #12
  br label %if.end8.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %min_addr8.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %max_addr7.i.i, ptr %min_addr8.i.i, i32 16)
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.i, %if.then4.i.i, %nf_nat_ipv4_nlattr_to_range.exit.i
  %51 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %22, align 4
  %tobool9.not.i = icmp eq ptr %52, null
  br i1 %tobool9.not.i, label %nfnetlink_parse_nat.exit.thread66, label %if.end11.i

nfnetlink_parse_nat.exit.thread66:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  br label %if.end46

if.end11.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i.i) #12
  %53 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i.i, align 4, !annotation !114
  %54 = getelementptr inbounds [3 x ptr], ptr %tb.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %54, align 4, !annotation !114
  %56 = getelementptr inbounds [3 x ptr], ptr %tb.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %56, align 4, !annotation !114
  %add.ptr.i.i.i29.i = getelementptr i8, ptr %52, i32 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %52, align 2
  %conv.i.i.i.i = zext i16 %59 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i29.i, i32 noundef %sub.i.i.i.i, ptr noundef nonnull @protonat_nla_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %nfnetlink_parse_nat.exit, label %if.end.i30.i

if.end.i30.i:                                     ; preds = %if.end11.i
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %tobool.not.i.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i.i, label %if.end.i30.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end.i30.i.if.end.i.i.i_crit_edge:              ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %61, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %min_proto.i.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %64 = ptrtoint ptr %min_proto.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %min_proto.i.i.i, align 4
  %max_proto.i.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %65 = ptrtoint ptr %max_proto.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %63, ptr %max_proto.i.i.i, align 2
  %66 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %range, align 4
  %or.i.i.i = or i32 %67, 2
  store i32 %or.i.i.i, ptr %range, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i30.i.if.end.i.i.i_crit_edge
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %56, align 4
  %tobool4.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.nfnetlink_parse_nat.exit.thread70_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.nfnetlink_parse_nat.exit.thread70_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfnetlink_parse_nat.exit.thread70

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i1.i.i.i = getelementptr i8, ptr %69, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i1.i.i.i, align 2
  %max_proto8.i.i.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %72 = ptrtoint ptr %max_proto8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %max_proto8.i.i.i, align 2
  %73 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %range, align 4
  %or10.i.i.i = or i32 %74, 2
  store i32 %or10.i.i.i, ptr %range, align 4
  br label %nfnetlink_parse_nat.exit.thread70

nfnetlink_parse_nat.exit.thread:                  ; preds = %if.end.i.nfnetlink_parse_nat.exit.thread_crit_edge, %if.end42.nfnetlink_parse_nat.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -93, %if.end.i.nfnetlink_parse_nat.exit.thread_crit_edge ], [ %call2.i.i, %if.end42.nfnetlink_parse_nat.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  br label %cleanup

nfnetlink_parse_nat.exit.thread70:                ; preds = %if.then5.i.i.i, %if.end.i.i.i.nfnetlink_parse_nat.exit.thread70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  br label %if.end46

nfnetlink_parse_nat.exit:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #12
  br label %cleanup

if.end46:                                         ; preds = %nfnetlink_parse_nat.exit.thread70, %nfnetlink_parse_nat.exit.thread66
  %call47 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef %manip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  %cond49 = select i1 %cmp48, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %nfnetlink_parse_nat.exit, %nfnetlink_parse_nat.exit.thread, %__nf_nat_alloc_null_binding.exit, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %__nf_nat_alloc_null_binding.exit ], [ %cond49, %if.end46 ], [ -17, %if.then ], [ %call2.i.i.i, %nfnetlink_parse_nat.exit ], [ -17, %land.rhs.cleanup_crit_edge ], [ %retval.0.i.ph, %nfnetlink_parse_nat.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__nf_nat_decode_session(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %fl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 7
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp2 = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp2 to i32
  %. = select i1 %cmp2, i32 16, i32 32
  %trunc = trunc i16 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %tuple.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 8
  %and.i23 = and i32 %7, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i, label %sw.bb.if.end29.i_crit_edge, label %if.then.i

sw.bb.if.end29.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %sw.bb
  %dst.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1
  %8 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst.i, align 4
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %10 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr.i, align 4
  %protonum.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 2
  %11 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protonum.i, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %12, label %if.then.i.if.end29.i_crit_edge [
    i8 6, label %if.then.i.if.then26.i_crit_edge
    i8 17, label %if.then.i.if.then26.i_crit_edge46
    i8 -120, label %if.then.i.if.then26.i_crit_edge47
    i8 33, label %if.then.i.if.then26.i_crit_edge48
    i8 -124, label %if.then.i.if.then26.i_crit_edge49
  ]

if.then.i.if.then26.i_crit_edge49:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then.i.if.then26.i_crit_edge48:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then.i.if.then26.i_crit_edge47:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then.i.if.then26.i_crit_edge46:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then.i.if.then26.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.then.i.if.then26.i_crit_edge, %if.then.i.if.then26.i_crit_edge46, %if.then.i.if.then26.i_crit_edge47, %if.then.i.if.then26.i_crit_edge48, %if.then.i.if.then26.i_crit_edge49
  %u28.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %u28.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u28.i, align 4
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %16 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %uli.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.then.i.if.end29.i_crit_edge, %sw.bb.if.end29.i_crit_edge
  %xor.i = xor i32 %., 48
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 8
  %and31.i = and i32 %18, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.cleanup_crit_edge, label %if.then33.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33.i:                                      ; preds = %if.end29.i
  %19 = ptrtoint ptr %tuple.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tuple.i, align 8
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %21 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %saddr.i, align 8
  %protonum36.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %protonum36.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protonum36.i, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %23, label %if.then33.i.cleanup_crit_edge [
    i8 6, label %if.then33.i.if.then64.i_crit_edge
    i8 17, label %if.then33.i.if.then64.i_crit_edge50
    i8 -120, label %if.then33.i.if.then64.i_crit_edge51
    i8 33, label %if.then33.i.if.then64.i_crit_edge52
    i8 -124, label %if.then33.i.if.then64.i_crit_edge53
  ]

if.then33.i.if.then64.i_crit_edge53:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then33.i.if.then64.i_crit_edge52:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then33.i.if.then64.i_crit_edge51:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then33.i.if.then64.i_crit_edge50:              ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then33.i.if.then64.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64.i:                                      ; preds = %if.then33.i.if.then64.i_crit_edge, %if.then33.i.if.then64.i_crit_edge50, %if.then33.i.if.then64.i_crit_edge51, %if.then33.i.if.then64.i_crit_edge52, %if.then33.i.if.then64.i_crit_edge53
  %uli67.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %if.end
  %tuple.i24 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %status.i25 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %25 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status.i25, align 8
  %and.i26 = and i32 %26, %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %sw.bb9.if.end29.i38_crit_edge, label %if.then.i31

sw.bb9.if.end29.i38_crit_edge:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i38

if.then.i31:                                      ; preds = %sw.bb9
  %daddr.i28 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %dst.i29 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1
  %27 = call ptr @memcpy(ptr %daddr.i28, ptr %dst.i29, i32 16)
  %protonum.i30 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 2
  %28 = ptrtoint ptr %protonum.i30 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protonum.i30, align 2
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %29, label %if.then.i31.if.end29.i38_crit_edge [
    i8 6, label %if.then.i31.if.then26.i34_crit_edge
    i8 17, label %if.then.i31.if.then26.i34_crit_edge54
    i8 -120, label %if.then.i31.if.then26.i34_crit_edge55
    i8 33, label %if.then.i31.if.then26.i34_crit_edge56
    i8 -124, label %if.then.i31.if.then26.i34_crit_edge57
  ]

if.then.i31.if.then26.i34_crit_edge57:            ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i34

if.then.i31.if.then26.i34_crit_edge56:            ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i34

if.then.i31.if.then26.i34_crit_edge55:            ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i34

if.then.i31.if.then26.i34_crit_edge54:            ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i34

if.then.i31.if.then26.i34_crit_edge:              ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i34

if.then.i31.if.end29.i38_crit_edge:               ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i38

if.then26.i34:                                    ; preds = %if.then.i31.if.then26.i34_crit_edge, %if.then.i31.if.then26.i34_crit_edge54, %if.then.i31.if.then26.i34_crit_edge55, %if.then.i31.if.then26.i34_crit_edge56, %if.then.i31.if.then26.i34_crit_edge57
  %u28.i32 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %u28.i32 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u28.i32, align 4
  %uli.i33 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %33 = ptrtoint ptr %uli.i33 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %uli.i33, align 4
  br label %if.end29.i38

if.end29.i38:                                     ; preds = %if.then26.i34, %if.then.i31.if.end29.i38_crit_edge, %sw.bb9.if.end29.i38_crit_edge
  %xor.i35 = xor i32 %., 48
  %34 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i25, align 8
  %and31.i36 = and i32 %35, %xor.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i36)
  %tobool32.not.i37 = icmp eq i32 %and31.i36, 0
  br i1 %tobool32.not.i37, label %if.end29.i38.cleanup_crit_edge, label %if.then33.i41

if.end29.i38.cleanup_crit_edge:                   ; preds = %if.end29.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33.i41:                                    ; preds = %if.end29.i38
  %saddr.i39 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %saddr.i39, ptr %tuple.i24, i32 16)
  %protonum36.i40 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 2
  %37 = ptrtoint ptr %protonum36.i40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protonum36.i40, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %38, label %if.then33.i41.cleanup_crit_edge [
    i8 6, label %if.then33.i41.if.then64.i45_crit_edge
    i8 17, label %if.then33.i41.if.then64.i45_crit_edge58
    i8 -120, label %if.then33.i41.if.then64.i45_crit_edge59
    i8 33, label %if.then33.i41.if.then64.i45_crit_edge60
    i8 -124, label %if.then33.i41.if.then64.i45_crit_edge61
  ]

if.then33.i41.if.then64.i45_crit_edge61:          ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i45

if.then33.i41.if.then64.i45_crit_edge60:          ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i45

if.then33.i41.if.then64.i45_crit_edge59:          ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i45

if.then33.i41.if.then64.i45_crit_edge58:          ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i45

if.then33.i41.if.then64.i45_crit_edge:            ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i45

if.then33.i41.cleanup_crit_edge:                  ; preds = %if.then33.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64.i45:                                    ; preds = %if.then33.i41.if.then64.i45_crit_edge, %if.then33.i41.if.then64.i45_crit_edge58, %if.then33.i41.if.then64.i45_crit_edge59, %if.then33.i41.if.then64.i45_crit_edge60, %if.then33.i41.if.then64.i45_crit_edge61
  %uli67.i43 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then64.i45, %if.then64.i
  %uli67.i43.sink = phi ptr [ %uli67.i43, %if.then64.i45 ], [ %uli67.i, %if.then64.i ]
  %.sink.in = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %40)
  %.sink = load i16, ptr %.sink.in, align 8
  %sport.i44 = getelementptr inbounds %struct.anon.31, ptr %uli67.i43.sink, i32 0, i32 1
  %41 = ptrtoint ptr %sport.i44 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink, ptr %sport.i44, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then33.i41.cleanup_crit_edge, %if.end29.i38.cleanup_crit_edge, %if.then33.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !56, !57, !59, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !93, !95, !97}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__ksymtab_nf_ct_nat_ext_add, !1, !"__ksymtab_nf_ct_nat_ext_add", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_core.c", i32 577, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_core.c", i32 591, i32 2}
!4 = !{ptr @__ksymtab_nf_nat_setup_info, !5, !"__ksymtab_nf_nat_setup_info", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_nat_core.c", i32 646, i32 1}
!6 = !{ptr @__ksymtab_nf_nat_alloc_null_binding, !7, !"__ksymtab_nf_nat_alloc_null_binding", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_nat_core.c", i32 672, i32 1}
!8 = !{ptr @__ksymtab_nf_nat_packet, !9, !"__ksymtab_nf_nat_packet", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_nat_core.c", i32 700, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_nat_core.c", i32 743, i32 32}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_core.c", i32 763, i32 4}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nf_nat_inet_fn.__UNIQUE_ID_ddebug610, !14, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_nf_nat_inet_fn, !22, !"__ksymtab_nf_nat_inet_fn", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_nat_core.c", i32 785, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_nat_core.c", i32 1015, i32 6}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_nat_core.c", i32 1027, i32 6}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_nat_core.c", i32 1067, i32 6}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_nat_core.c", i32 1108, i32 6}
!31 = !{ptr @__UNIQUE_ID_file614, !32, !"__UNIQUE_ID_file614", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_nat_core.c", i32 1194, i32 1}
!33 = !{ptr @__UNIQUE_ID_license615, !32, !"__UNIQUE_ID_license615", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_nf_nat__616_1196_nf_nat_init6, !35, !"__initcall__kmod_nf_nat__616_1196_nf_nat_init6", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_nat_core.c", i32 1196, i32 1}
!36 = !{ptr @__exitcall_nf_nat_cleanup, !37, !"__exitcall_nf_nat_cleanup", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_nat_core.c", i32 1197, i32 1}
!38 = !{ptr @nf_nat_locks, !39, !"nf_nat_locks", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_nat_core.c", i32 30, i32 19}
!40 = !{ptr @nat_net_id, !41, !"nat_net_id", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_nat_core.c", i32 33, i32 21}
!42 = !{ptr @nf_nat_bysource, !43, !"nf_nat_bysource", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_nat_core.c", i32 35, i32 27}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_nat_core.c", i32 533, i32 4}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @get_unique_tuple.__UNIQUE_ID_ddebug607, !45, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!48 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_nat_core.c", i32 285, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"max_attempts", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_nat_core.c", i32 388, i32 28}
!54 = !{ptr @hash_by_src.___done, !55, !"___done", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_nat_core.c", i32 165, i32 2}
!56 = !{ptr @hash_by_src.___once_key, !55, !"___once_key", i1 false, i1 false}
!57 = !{ptr @nf_nat_hash_rnd, !58, !"nf_nat_hash_rnd", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_nat_core.c", i32 37, i32 30}
!59 = !{ptr @nf_nat_htable_size, !60, !"nf_nat_htable_size", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_nat_core.c", i32 36, i32 21}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_nat_core.c", i32 32, i32 8}
!73 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @nf_nat_proto_mutex, !72, !"nf_nat_proto_mutex", i1 false, i1 false}
!75 = !{ptr @nat_extend, !76, !"nat_extend", i1 false, i1 false}
!76 = !{!"../net/netfilter/nf_nat_core.c", i32 841, i32 30}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_nat_core.c", i32 1001, i32 11}
!79 = !{ptr @follow_master_nat, !80, !"follow_master_nat", i1 false, i1 false}
!80 = !{!"../net/netfilter/nf_nat_core.c", i32 1000, i32 37}
!81 = !{ptr @nat_net_ops, !82, !"nat_net_ops", i1 false, i1 false}
!82 = !{!"../net/netfilter/nf_nat_core.c", i32 1128, i32 33}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_nat_core.c", i32 1157, i32 3}
!85 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nf_nat_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nf_nat_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @nf_nat_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_nat_core.c", i32 1162, i32 3}
!90 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @nat_hook, !92, !"nat_hook", i1 false, i1 false}
!92 = !{!"../net/netfilter/nf_nat_core.c", i32 1133, i32 33}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../net/netfilter/nf_nat_core.c", i32 977, i32 6}
!95 = !{ptr @nat_nla_policy, !96, !"nat_nla_policy", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_nat_core.c", i32 888, i32 32}
!97 = !{ptr @protonat_nla_policy, !98, !"protonat_nla_policy", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_nat_core.c", i32 853, i32 32}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2151978098}
!112 = !{i64 2148983528, i64 2148983533, i64 2148983546, i64 2148983590, i64 2148983624, i64 2148983645}
!113 = !{i64 2148983931, i64 2148983936, i64 2148983957, i64 2148984001, i64 2148984035, i64 2148984056}
!114 = !{!"auto-init"}
!115 = !{i64 2149386310}
!116 = !{i64 2149386576}
