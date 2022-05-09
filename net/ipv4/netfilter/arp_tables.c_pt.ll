; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/arp_tables.c_pt.bc'
source_filename = "../net/ipv4/netfilter/arp_tables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arpt_alloc_initial_table\22, \22a\22\09"
module asm "\09.weak\09__crc_arpt_alloc_initial_table\09\09\09\09"
module asm "\09.long\09__crc_arpt_alloc_initial_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arpt_alloc_initial_table:\09\09\09\09\09"
module asm "\09.asciz \09\22arpt_alloc_initial_table\22\09\09\09\09\09"
module asm "__kstrtabns_arpt_alloc_initial_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arpt_unregister_table_pre_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_arpt_unregister_table_pre_exit\09\09\09\09"
module asm "\09.long\09__crc_arpt_unregister_table_pre_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arpt_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22arpt_unregister_table_pre_exit\22\09\09\09\09\09"
module asm "__kstrtabns_arpt_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arpt_register_table\22, \22a\22\09"
module asm "\09.weak\09__crc_arpt_register_table\09\09\09\09"
module asm "\09.long\09__crc_arpt_register_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arpt_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22arpt_register_table\22\09\09\09\09\09"
module asm "__kstrtabns_arpt_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arpt_unregister_table\22, \22a\22\09"
module asm "\09.weak\09__crc_arpt_unregister_table\09\09\09\09"
module asm "\09.long\09__crc_arpt_unregister_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arpt_unregister_table:\09\09\09\09\09"
module asm "\09.asciz \09\22arpt_unregister_table\22\09\09\09\09\09"
module asm "__kstrtabns_arpt_unregister_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+arpt_do_table\22, \22a\22\09"
module asm "\09.weak\09__crc_arpt_do_table\09\09\09\09"
module asm "\09.long\09__crc_arpt_do_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arpt_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22arpt_do_table\22\09\09\09\09\09"
module asm "__kstrtabns_arpt_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_sockopt_ops = type { %struct.list_head, i8, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arpt_arp = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, i8, i8, %struct.arpt_devaddr_info, %struct.arpt_devaddr_info, i16, i16, i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i16 }
%struct.in_addr = type { i32 }
%struct.arpt_devaddr_info = type { [16 x i8], [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.xt_counters = type { i64, i64 }
%struct.xt_table = type { %struct.list_head, i32, ptr, ptr, ptr, i8, i32, [32 x i8] }
%struct.arpt_replace = type { [32 x i8], i32, i32, i32, [3 x i32], [3 x i32], i32, ptr, [0 x %struct.arpt_entry] }
%struct.arpt_entry = type { %struct.arpt_arp, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.anon.145 = type { %struct.arpt_replace, [0 x %struct.arpt_standard] }
%struct.arpt_standard = type { %struct.arpt_entry, %struct.xt_standard_target }
%struct.xt_standard_target = type { %struct.xt_entry_target, i32 }
%struct.xt_entry_target = type { %union.anon.146, [0 x i8] }
%union.anon.146 = type { %struct.anon.148, [24 x i8] }
%struct.anon.148 = type { i16, ptr }
%struct.xt_action_param = type { %union.anon.149, %union.anon.150, ptr, i32, i16, i8 }
%union.anon.149 = type { ptr }
%union.anon.150 = type { ptr }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xt_table_info = type { i32, i32, i32, [5 x i32], [5 x i32], i32, ptr, [4 x i8], [0 x i8] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_percpu_counter_alloc_state = type { i32, ptr }
%struct.anon.147 = type { i16, [29 x i8], i8 }
%struct.xt_counters_info = type { [32 x i8], i32, [0 x %struct.xt_counters] }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.arpt_get_entries = type { [32 x i8], i32, [0 x %struct.arpt_entry] }
%struct.arpt_getinfo = type { [32 x i8], i32, [3 x i32], [3 x i32], i32, i32 }
%struct.xt_get_revision = type { [29 x i8], i8 }

@__UNIQUE_ID_file474 = internal constant [46 x i8] c"arp_tables.file=net/ipv4/netfilter/arp_tables\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [23 x i8] c"arp_tables.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author476 = internal constant [53 x i8] c"arp_tables.author=David S. Miller <davem@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [38 x i8] c"arp_tables.description=arptables core\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_arpt_alloc_initial_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_arpt_alloc_initial_table = external dso_local constant [0 x i8], align 1
@__ksymtab_arpt_alloc_initial_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arpt_alloc_initial_table to i32), ptr @__kstrtab_arpt_alloc_initial_table, ptr @__kstrtabns_arpt_alloc_initial_table }, section "___ksymtab_gpl+arpt_alloc_initial_table", align 4
@arpt_do_table.nulldevname = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@__kstrtab_arpt_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_arpt_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_arpt_unregister_table_pre_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arpt_unregister_table_pre_exit to i32), ptr @__kstrtab_arpt_unregister_table_pre_exit, ptr @__kstrtabns_arpt_unregister_table_pre_exit }, section "___ksymtab+arpt_unregister_table_pre_exit", align 4
@arpt_sockopts = internal global { %struct.nf_sockopt_ops, [56 x i8] } { %struct.nf_sockopt_ops { %struct.list_head zeroinitializer, i8 2, i32 96, i32 98, ptr @do_arpt_set_ctl, i32 96, i32 100, ptr @do_arpt_get_ctl, ptr null }, [56 x i8] zeroinitializer }, align 32
@arpt_builtin_tg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] zeroinitializer, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 3 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @arpt_error, ptr null, ptr null, ptr null, ptr null, i32 30, i32 0, i32 0, i16 0, i16 3 }], section ".data..read_mostly", align 4
@arp_tables_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @arp_tables_net_init, ptr null, ptr @arp_tables_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_arpt_register_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_arpt_register_table = external dso_local constant [0 x i8], align 1
@__ksymtab_arpt_register_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arpt_register_table to i32), ptr @__kstrtab_arpt_register_table, ptr @__kstrtabns_arpt_register_table }, section "___ksymtab+arpt_register_table", align 4
@__kstrtab_arpt_unregister_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_arpt_unregister_table = external dso_local constant [0 x i8], align 1
@__ksymtab_arpt_unregister_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arpt_unregister_table to i32), ptr @__kstrtab_arpt_unregister_table, ptr @__kstrtabns_arpt_unregister_table }, section "___ksymtab+arpt_unregister_table", align 4
@__kstrtab_arpt_do_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_arpt_do_table = external dso_local constant [0 x i8], align 1
@__ksymtab_arpt_do_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arpt_do_table to i32), ptr @__kstrtab_arpt_do_table, ptr @__kstrtabns_arpt_do_table }, section "___ksymtab+arpt_do_table", align 4
@__initcall__kmod_arp_tables__479_1662_arp_tables_init6 = internal global ptr @arp_tables_init, section ".initcall6.init", align 4
@__exitcall_arp_tables_fini = internal global ptr @arp_tables_fini, section ".exitcall.exit", align 4
@xt_recseq = external dso_local global %struct.seqcount, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@unconditional.uncond = internal constant { %struct.arpt_arp, [60 x i8] } zeroinitializer, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__do_replace._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 937, ptr null, ptr null }, align 1
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014arp_tables: arptables: counters copy to user failed while replacing table\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__do_replace\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/ipv4/netfilter/arp_tables.c\00", [32 x i8] zeroinitializer }, align 32
@__do_replace._entry_ptr = internal global ptr @__do_replace._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arpt_%s\00", [24 x i8] zeroinitializer }, align 32
@arpt_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.12, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013arp_tables: arp_tables: error: '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arpt_error\00", [21 x i8] zeroinitializer }, align 32
@arpt_error._entry_ptr = internal global ptr @arpt_error._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 97]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 96, i64 97, i64 99]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 40, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"nulldevname\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 188, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"arpt_sockopts\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1597, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"arp_tables_net_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1618, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 557, i32 7 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"uncond\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 293, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 230, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 156, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 937, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1469, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [35 x i8] c"../net/ipv4/netfilter/arp_tables.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 158, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__do_replace._entry, ptr @__do_replace._entry_ptr, ptr @__exitcall_arp_tables_fini, ptr @__initcall__kmod_arp_tables__479_1662_arp_tables_init6, ptr @__ksymtab_arpt_alloc_initial_table, ptr @__ksymtab_arpt_do_table, ptr @__ksymtab_arpt_register_table, ptr @__ksymtab_arpt_unregister_table, ptr @__ksymtab_arpt_unregister_table_pre_exit, ptr @arp_tables_fini, ptr @arpt_error._entry, ptr @arpt_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @arpt_do_table.nulldevname, ptr @arpt_sockopts, ptr @arp_tables_net_ops, ptr @.str.5, ptr @unconditional.uncond, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpt_do_table.nulldevname to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpt_sockopts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arp_tables_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unconditional.uncond to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arpt_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @arpt_alloc_initial_table(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %.compoundliteral.sroa.4 = alloca { i32, %struct.xt_counters, [0 x i8] }, align 8
  %.compoundliteral308.sroa.4 = alloca { i32, %struct.xt_counters, [0 x i8] }, align 8
  %.compoundliteral308.sroa.5 = alloca [29 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid_hooks, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %1) #15
  %2 = mul i32 %call.i, 232
  %sub = add i32 %2, 87
  %and281 = and i32 %sub, -8
  %add282 = add i32 %and281, 256
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add282, i32 noundef 3520) #18
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %and281
  %name285 = getelementptr inbounds %struct.xt_table, ptr %info, i32 0, i32 7
  %call287 = tail call ptr @strncpy(ptr noundef nonnull %call9.i.i, ptr noundef %name285, i32 noundef 32)
  %3 = call ptr @memset(ptr %.compoundliteral.sroa.4, i32 0, i32 24)
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 164)
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 164
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 192, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 166
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 168
  %7 = call ptr @memcpy(ptr %.compoundliteral.sroa.4.0..sroa_idx, ptr %.compoundliteral.sroa.4, i32 24)
  %.compoundliteral.sroa.4330.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 192
  %8 = ptrtoint ptr %.compoundliteral.sroa.4330.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 64, ptr %.compoundliteral.sroa.4330.0..sroa_idx, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 194
  %9 = call ptr @memcpy(ptr %.compoundliteral.sroa.5.0..sroa_idx, ptr @.str, i32 29)
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 223
  %10 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 1
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 224
  %11 = call ptr @memcpy(ptr %.compoundliteral.sroa.7.0..sroa_idx, ptr @.str.1, i32 30)
  %valid_hooks292 = getelementptr inbounds %struct.arpt_replace, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %valid_hooks292 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %valid_hooks292, align 32
  %add293 = add i32 %call.i, 1
  %num_entries = getelementptr inbounds %struct.arpt_replace, ptr %call9.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add293, ptr %num_entries, align 4
  %add295 = add i32 %2, 256
  %size = getelementptr inbounds %struct.arpt_replace, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add295, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp297.not394 = icmp eq i32 %1, 0
  br i1 %cmp297.not394, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %hook_mask.0399 = phi i32 [ %shr319, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %bytes.0398 = phi i32 [ %bytes.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0397 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %hooknum.0395 = phi i32 [ %inc320, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %and299 = and i32 %hook_mask.0399, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %for.body.for.inc_crit_edge, label %if.end302

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end302:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx304 = getelementptr %struct.arpt_replace, ptr %call9.i.i, i32 0, i32 4, i32 %hooknum.0395
  %15 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bytes.0398, ptr %arrayidx304, align 4
  %arrayidx306 = getelementptr %struct.arpt_replace, ptr %call9.i.i, i32 0, i32 5, i32 %hooknum.0395
  %16 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bytes.0398, ptr %arrayidx306, align 4
  %inc = add i32 %i.0397, 1
  %arrayidx307 = getelementptr %struct.anon.145, ptr %call9.i.i, i32 0, i32 1, i32 %i.0397
  %17 = call ptr @memset(ptr %.compoundliteral308.sroa.4, i32 0, i32 24)
  %18 = call ptr @memset(ptr %.compoundliteral308.sroa.5, i32 0, i32 29)
  %19 = call ptr @memset(ptr %arrayidx307, i32 0, i32 164)
  %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 164
  %20 = ptrtoint ptr %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 192, ptr %.compoundliteral308.sroa.2.0.arrayidx307.sroa_idx, align 4
  %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 166
  %21 = ptrtoint ptr %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 232, ptr %.compoundliteral308.sroa.3.0.arrayidx307.sroa_idx, align 2
  %.compoundliteral308.sroa.4.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 168
  %22 = call ptr @memcpy(ptr %.compoundliteral308.sroa.4.0.arrayidx307.sroa_idx, ptr %.compoundliteral308.sroa.4, i32 24)
  %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 192
  %23 = ptrtoint ptr %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 40, ptr %.compoundliteral308.sroa.4328.0.arrayidx307.sroa_idx, align 8
  %.compoundliteral308.sroa.5.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 194
  %24 = call ptr @memcpy(ptr %.compoundliteral308.sroa.5.0.arrayidx307.sroa_idx, ptr %.compoundliteral308.sroa.5, i32 29)
  %.compoundliteral308.sroa.6.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 223
  %25 = ptrtoint ptr %.compoundliteral308.sroa.6.0.arrayidx307.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %.compoundliteral308.sroa.6.0.arrayidx307.sroa_idx, align 1
  %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 224
  %26 = ptrtoint ptr %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %.compoundliteral308.sroa.6329.0.arrayidx307.sroa_idx, align 8
  %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx = getelementptr inbounds i8, ptr %arrayidx307, i32 228
  %27 = ptrtoint ptr %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %.compoundliteral308.sroa.7.0.arrayidx307.sroa_idx, align 4
  %add318 = add i32 %bytes.0398, 232
  br label %for.inc

for.inc:                                          ; preds = %if.end302, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.end302 ], [ %i.0397, %for.body.for.inc_crit_edge ]
  %bytes.1 = phi i32 [ %add318, %if.end302 ], [ %bytes.0398, %for.body.for.inc_crit_edge ]
  %shr319 = lshr i32 %hook_mask.0399, 1
  %inc320 = add nuw nsw i32 %hooknum.0395, 1
  %cmp297.not = icmp ult i32 %hook_mask.0399, 2
  br i1 %cmp297.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp393 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %cmp393
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arpt_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #0 align 64 {
entry:
  %acpar = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %acpar) #15
  %2 = call ptr @memset(ptr %acpar, i32 255, i32 20)
  %3 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %7)
  %cond.i = icmp ne i16 %7, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %9 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i = add nuw nsw i32 %retval.0.in.i, 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %retval.0.i, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i)
  %cmp3.i = icmp ult i32 %11, %retval.0.i
  br i1 %cmp3.i, label %if.end.i.cleanup97_crit_edge, label %pskb_may_pull.exit, !prof !73

if.end.i.cleanup97_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup97

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %retval.0.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #15
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup97_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

pskb_may_pull.exit.cleanup97_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup97

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in, align 4
  %tobool.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool.not, ptr @arpt_do_table.nulldevname, ptr %15
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out, align 4
  %tobool4.not = icmp eq ptr %17, null
  %cond11 = select i1 %tobool4.not, ptr @arpt_do_table.nulldevname, ptr %17
  tail call fastcc void @local_bh_disable()
  %18 = tail call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, ptrtoint (ptr @xt_recseq to i32)
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 1
  %and.i = xor i32 %27, 1
  %add27.i = or i32 %and.i, %26
  store i32 %add27.i, ptr %24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !74
  %private13 = getelementptr inbounds %struct.xt_table, ptr %priv, i32 0, i32 2
  %28 = ptrtoint ptr %private13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %private13, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i154 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i154 to ptr
  %cpu15 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu15, align 4
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %29, i32 0, i32 8
  %jumpstack17 = getelementptr inbounds %struct.xt_table_info, ptr %29, i32 0, i32 6
  %34 = ptrtoint ptr %jumpstack17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jumpstack17, align 8
  %arrayidx = getelementptr ptr, ptr %35, i32 %33
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.xt_table_info, ptr %29, i32 0, i32 3, i32 %conv
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx18, align 4
  %add.ptr.i = getelementptr i8, ptr %entries, i32 %39
  %state20 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 2
  %40 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %state, ptr %state20, align 4
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 5
  %41 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %hotdrop, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %44 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %45 to i32
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %arrayidx3.i.i = getelementptr i32, ptr %spec.select, i32 1
  %arrayidx8.i.i = getelementptr i32, ptr %spec.select, i32 2
  %arrayidx14.i.i = getelementptr i32, ptr %spec.select, i32 3
  %46 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 1
  %stacksize = getelementptr inbounds %struct.xt_table_info, ptr %29, i32 0, i32 5
  %arrayidx51 = getelementptr %struct.xt_table_info, ptr %29, i32 0, i32 4, i32 %conv
  br label %do.body22

do.body22:                                        ; preds = %do.cond87.do.body22_crit_edge, %if.end
  %verdict.0 = phi i32 [ 0, %if.end ], [ %verdict.2.ph, %do.cond87.do.body22_crit_edge ]
  %arp.0 = phi ptr [ %add.ptr.i.i, %if.end ], [ %arp.1.ph, %do.cond87.do.body22_crit_edge ]
  %e.0 = phi ptr [ %add.ptr.i, %if.end ], [ %e.3.ph, %do.cond87.do.body22_crit_edge ]
  %stackidx.0 = phi i32 [ 0, %if.end ], [ %stackidx.4.ph, %do.cond87.do.body22_crit_edge ]
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 8
  %add.ptr.i155 = getelementptr %struct.arphdr, ptr %arp.0, i32 1
  %ar_op.i = getelementptr inbounds %struct.arphdr, ptr %arp.0, i32 0, i32 4
  %49 = ptrtoint ptr %ar_op.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ar_op.i, align 2
  %arpop_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 9
  %51 = ptrtoint ptr %arpop_mask.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arpop_mask.i, align 4
  %and208.i = and i16 %52, %50
  %arpop.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 8
  %53 = ptrtoint ptr %arpop.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arpop.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and208.i, i16 %54)
  %cmp.i = icmp eq i16 %and208.i, %54
  %invflags.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 19
  %55 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %invflags.i, align 4
  %conv4.i = zext i16 %56 to i32
  %57 = and i32 %conv4.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %58 = icmp ne i32 %57, 0
  %tobool7.not.i = xor i1 %cmp.i, %58
  br i1 %tobool7.not.i, label %if.end.i156, label %do.body22.if.then26_crit_edge

do.body22.if.then26_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end.i156:                                      ; preds = %do.body22
  %59 = ptrtoint ptr %arp.0 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arp.0, align 2
  %arhrd_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 11
  %61 = ptrtoint ptr %arhrd_mask.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arhrd_mask.i, align 4
  %and10209.i = and i16 %62, %60
  %arhrd.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 10
  %63 = ptrtoint ptr %arhrd.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arhrd.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and10209.i, i16 %64)
  %cmp12.i = icmp eq i16 %and10209.i, %64
  %65 = and i32 %conv4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp ne i32 %65, 0
  %tobool23.not.i = xor i1 %66, %cmp12.i
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end.i156.if.then26_crit_edge

if.end.i156.if.then26_crit_edge:                  ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end25.i:                                       ; preds = %if.end.i156
  %ar_pro.i = getelementptr inbounds %struct.arphdr, ptr %arp.0, i32 0, i32 1
  %67 = ptrtoint ptr %ar_pro.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ar_pro.i, align 2
  %arpro_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 13
  %69 = ptrtoint ptr %arpro_mask.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arpro_mask.i, align 4
  %and28210.i = and i16 %70, %68
  %arpro.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 12
  %71 = ptrtoint ptr %arpro.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arpro.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and28210.i, i16 %72)
  %cmp30.i = icmp eq i16 %and28210.i, %72
  %73 = and i32 %conv4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %74 = icmp ne i32 %73, 0
  %tobool41.not.i = xor i1 %74, %cmp30.i
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end25.i.if.then26_crit_edge

if.end25.i.if.then26_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end43.i:                                       ; preds = %if.end25.i
  %ar_hln.i = getelementptr inbounds %struct.arphdr, ptr %arp.0, i32 0, i32 2
  %75 = ptrtoint ptr %ar_hln.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ar_hln.i, align 2
  %arhln_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 5
  %77 = ptrtoint ptr %arhln_mask.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arhln_mask.i, align 1
  %and46211.i = and i8 %78, %76
  %arhln.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 4
  %79 = ptrtoint ptr %arhln.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arhln.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %and46211.i, i8 %80)
  %cmp48.i = icmp eq i8 %and46211.i, %80
  %81 = and i32 %conv4.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %82 = icmp ne i32 %81, 0
  %tobool59.not.i = xor i1 %82, %cmp48.i
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end43.i.if.then26_crit_edge

if.end43.i.if.then26_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end61.i:                                       ; preds = %if.end43.i
  %addr_len.i157 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 56
  %83 = ptrtoint ptr %addr_len.i157 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %addr_len.i157, align 1
  %conv62.i = zext i8 %84 to i32
  %add.ptr63.i = getelementptr i8, ptr %add.ptr.i155, i32 %conv62.i
  %85 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %src_ipaddr.0.copyload.i = load i32, ptr %add.ptr63.i, align 1
  %add.ptr64.i = getelementptr i8, ptr %add.ptr63.i, i32 4
  %add.ptr67.i = getelementptr i8, ptr %add.ptr64.i, i32 %conv62.i
  %86 = ptrtoint ptr %add.ptr67.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %tgt_ipaddr.0.copyload.i = load i32, ptr %add.ptr67.i, align 1
  %src_devaddr68.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp117.i.not.i = icmp eq i8 %84, 0
  br i1 %cmp117.i.not.i, label %arp_devaddr_compare.exit.thread.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %if.end61.i
  %87 = call i32 @llvm.smin.i32(i32 %conv62.i, i32 16) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %ret.019.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i155, i32 %i.018.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr [16 x i8], ptr %src_devaddr68.i, i32 0, i32 %i.018.i.i
  %90 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx2.i.i, align 1
  %xor15.i.i = xor i8 %91, %89
  %arrayidx4.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 6, i32 1, i32 %i.018.i.i
  %92 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx4.i.i, align 1
  %and16.i.i = and i8 %xor15.i.i, %93
  %and.i.i158 = zext i8 %and16.i.i to i32
  %or.i.i = or i32 %ret.019.i.i, %and.i.i158
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %87
  br i1 %exitcond.not.i.i, label %arp_devaddr_compare.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

arp_devaddr_compare.exit.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %phi.cmp.i.i = icmp eq i32 %or.i.i, 0
  %94 = and i16 %56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %95 = icmp ne i16 %94, 0
  %tobool80.not.i = xor i1 %95, %phi.cmp.i.i
  br i1 %tobool80.not.i, label %for.body.preheader.i214.i, label %arp_devaddr_compare.exit.i.if.then26_crit_edge

arp_devaddr_compare.exit.i.if.then26_crit_edge:   ; preds = %arp_devaddr_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

arp_devaddr_compare.exit.thread.i:                ; preds = %if.end61.i
  %96 = and i16 %56, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool80.not234.i = icmp eq i16 %96, 0
  br i1 %tobool80.not234.i, label %arp_devaddr_compare.exit.thread.i.arp_devaddr_compare.exit231.i_crit_edge, label %arp_devaddr_compare.exit.thread.i.if.then26_crit_edge

arp_devaddr_compare.exit.thread.i.if.then26_crit_edge: ; preds = %arp_devaddr_compare.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

arp_devaddr_compare.exit.thread.i.arp_devaddr_compare.exit231.i_crit_edge: ; preds = %arp_devaddr_compare.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %arp_devaddr_compare.exit231.i

for.body.preheader.i214.i:                        ; preds = %arp_devaddr_compare.exit.i
  %tgt_devaddr81.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 7
  br label %for.body.i226.i

for.body.i226.i:                                  ; preds = %for.body.i226.i.for.body.i226.i_crit_edge, %for.body.preheader.i214.i
  %ret.019.i215.i = phi i32 [ %or.i223.i, %for.body.i226.i.for.body.i226.i_crit_edge ], [ 0, %for.body.preheader.i214.i ]
  %i.018.i216.i = phi i32 [ %inc.i224.i, %for.body.i226.i.for.body.i226.i_crit_edge ], [ 0, %for.body.preheader.i214.i ]
  %arrayidx.i217.i = getelementptr i8, ptr %add.ptr64.i, i32 %i.018.i216.i
  %97 = ptrtoint ptr %arrayidx.i217.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i217.i, align 1
  %arrayidx2.i218.i = getelementptr [16 x i8], ptr %tgt_devaddr81.i, i32 0, i32 %i.018.i216.i
  %99 = ptrtoint ptr %arrayidx2.i218.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx2.i218.i, align 1
  %xor15.i219.i = xor i8 %100, %98
  %arrayidx4.i220.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 7, i32 1, i32 %i.018.i216.i
  %101 = ptrtoint ptr %arrayidx4.i220.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx4.i220.i, align 1
  %and16.i221.i = and i8 %xor15.i219.i, %102
  %and.i222.i = zext i8 %and16.i221.i to i32
  %or.i223.i = or i32 %ret.019.i215.i, %and.i222.i
  %inc.i224.i = add nuw nsw i32 %i.018.i216.i, 1
  %exitcond.not.i225.i = icmp eq i32 %inc.i224.i, %87
  br i1 %exitcond.not.i225.i, label %for.end.loopexit.i229.i, label %for.body.i226.i.for.body.i226.i_crit_edge

for.body.i226.i.for.body.i226.i_crit_edge:        ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i226.i

for.end.loopexit.i229.i:                          ; preds = %for.body.i226.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i223.i)
  %phi.cmp.i227.i = icmp ne i32 %or.i223.i, 0
  %phi.cast.i228.i = zext i1 %phi.cmp.i227.i to i32
  br label %arp_devaddr_compare.exit231.i

arp_devaddr_compare.exit231.i:                    ; preds = %for.end.loopexit.i229.i, %arp_devaddr_compare.exit.thread.i.arp_devaddr_compare.exit231.i_crit_edge
  %ret.0.lcssa.i230.i = phi i32 [ %phi.cast.i228.i, %for.end.loopexit.i229.i ], [ 0, %arp_devaddr_compare.exit.thread.i.arp_devaddr_compare.exit231.i_crit_edge ]
  %and87.i = lshr i32 %conv4.i, 5
  %and87.lobit.i = and i32 %and87.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.lcssa.i230.i, i32 %and87.lobit.i)
  %tobool94.not.i = icmp eq i32 %ret.0.lcssa.i230.i, %and87.lobit.i
  br i1 %tobool94.not.i, label %if.end96.i, label %arp_devaddr_compare.exit231.i.if.then26_crit_edge

arp_devaddr_compare.exit231.i.if.then26_crit_edge: ; preds = %arp_devaddr_compare.exit231.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end96.i:                                       ; preds = %arp_devaddr_compare.exit231.i
  %smsk.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 2
  %103 = ptrtoint ptr %smsk.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %smsk.i, align 4
  %and97.i = and i32 %104, %src_ipaddr.0.copyload.i
  %105 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %e.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and97.i, i32 %106)
  %cmp99.i = icmp eq i32 %and97.i, %106
  %107 = and i32 %conv4.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %108 = icmp ne i32 %107, 0
  %tobool110.not.i = xor i1 %108, %cmp99.i
  br i1 %tobool110.not.i, label %lor.lhs.false111.i, label %if.end96.i.if.then26_crit_edge

if.end96.i.if.then26_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

lor.lhs.false111.i:                               ; preds = %if.end96.i
  %tmsk.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 3
  %109 = ptrtoint ptr %tmsk.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tmsk.i, align 4
  %and113.i = and i32 %110, %tgt_ipaddr.0.copyload.i
  %tgt.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 1
  %111 = ptrtoint ptr %tgt.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tgt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and113.i, i32 %112)
  %cmp115.i = icmp eq i32 %and113.i, %112
  %113 = and i32 %conv4.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %114 = icmp ne i32 %113, 0
  %tobool126.not.i = xor i1 %114, %cmp115.i
  br i1 %tobool126.not.i, label %if.end128.i, label %lor.lhs.false111.i.if.then26_crit_edge

lor.lhs.false111.i.if.then26_crit_edge:           ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.end128.i:                                      ; preds = %lor.lhs.false111.i
  %iniface.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 14
  %iniface_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 16
  %115 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %spec.select, align 4
  %117 = ptrtoint ptr %iniface.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %iniface.i, align 4
  %xor.i.i = xor i32 %118, %116
  %119 = ptrtoint ptr %iniface_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %iniface_mask.i, align 4
  %and.i.i196 = and i32 %xor.i.i, %120
  %121 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i197 = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 14, i32 4
  %123 = ptrtoint ptr %arrayidx4.i.i197 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx4.i.i197, align 4
  %xor5.i.i = xor i32 %124, %122
  %arrayidx6.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 16, i32 4
  %125 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx6.i.i, align 4
  %and7.i.i = and i32 %xor5.i.i, %126
  %or.i.i198 = or i32 %and7.i.i, %and.i.i196
  %127 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx8.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 14, i32 8
  %129 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx9.i.i, align 4
  %xor10.i.i = xor i32 %130, %128
  %arrayidx11.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 16, i32 8
  %131 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx11.i.i, align 4
  %and12.i.i = and i32 %xor10.i.i, %132
  %or13.i.i = or i32 %or.i.i198, %and12.i.i
  %133 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 14, i32 12
  %135 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx15.i.i, align 4
  %xor16.i.i = xor i32 %136, %134
  %arrayidx17.i.i = getelementptr %struct.arpt_arp, ptr %e.0, i32 0, i32 16, i32 12
  %137 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx17.i.i, align 4
  %and18.i.i = and i32 %xor16.i.i, %138
  %or19.i.i = or i32 %or13.i.i, %and18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp131.i = icmp eq i32 %or19.i.i, 0
  %139 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %140 = icmp ne i16 %139, 0
  %tobool142.not.i = xor i1 %140, %cmp131.i
  br i1 %tobool142.not.i, label %arp_packet_match.exit, label %if.end128.i.if.then26_crit_edge

if.end128.i.if.then26_crit_edge:                  ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

arp_packet_match.exit:                            ; preds = %if.end128.i
  %outiface.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 15
  %outiface_mask.i = getelementptr inbounds %struct.arpt_arp, ptr %e.0, i32 0, i32 17
  %call147.i = call fastcc i32 @ifname_compare(ptr noundef %cond11, ptr noundef %outiface.i, ptr noundef %outiface_mask.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %cmp148.i = icmp eq i32 %call147.i, 0
  %141 = and i16 %56, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %142 = icmp eq i16 %141, 0
  %tobool25.not = xor i1 %142, %cmp148.i
  br i1 %tobool25.not, label %arp_packet_match.exit.if.then26_crit_edge, label %if.end28

arp_packet_match.exit.if.then26_crit_edge:        ; preds = %arp_packet_match.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then26

if.then26:                                        ; preds = %arp_packet_match.exit.if.then26_crit_edge, %if.end128.i.if.then26_crit_edge, %lor.lhs.false111.i.if.then26_crit_edge, %if.end96.i.if.then26_crit_edge, %arp_devaddr_compare.exit231.i.if.then26_crit_edge, %arp_devaddr_compare.exit.thread.i.if.then26_crit_edge, %arp_devaddr_compare.exit.i.if.then26_crit_edge, %if.end43.i.if.then26_crit_edge, %if.end25.i.if.then26_crit_edge, %if.end.i156.if.then26_crit_edge, %do.body22.if.then26_crit_edge
  %next_offset.i = getelementptr inbounds %struct.arpt_entry, ptr %e.0, i32 0, i32 2
  %143 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %144 to i32
  %add.ptr.i160 = getelementptr i8, ptr %e.0, i32 %conv.i
  br label %do.cond87

if.end28:                                         ; preds = %arp_packet_match.exit
  %counters = getelementptr inbounds %struct.arpt_entry, ptr %e.0, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %145 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i161 = icmp ugt i32 %145, 1
  br i1 %cmp.i161, label %do.body.i, label %if.end28.xt_get_this_cpu_counter.exit_crit_edge

if.end28.xt_get_this_cpu_counter.exit_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %xt_get_this_cpu_counter.exit

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %146 = ptrtoint ptr %counters to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %counters, align 8
  %conv.i162 = trunc i64 %147 to i32
  %148 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i163 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i163 to ptr
  %cpu.i164 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu.i164 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu.i164, align 4
  %arrayidx.i165 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i165, align 4
  %add.i166 = add i32 %153, %conv.i162
  %154 = inttoptr i32 %add.i166 to ptr
  br label %xt_get_this_cpu_counter.exit

xt_get_this_cpu_counter.exit:                     ; preds = %do.body.i, %if.end28.xt_get_this_cpu_counter.exit_crit_edge
  %retval.0.i167 = phi ptr [ %154, %do.body.i ], [ %counters, %if.end28.xt_get_this_cpu_counter.exit_crit_edge ]
  %type.i168 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 32
  %155 = ptrtoint ptr %type.i168 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %type.i168, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %156)
  %cond.i169 = icmp ne i16 %156, 24
  %157 = ptrtoint ptr %addr_len.i157 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %addr_len.i157, align 1
  %conv1.i171 = zext i8 %158 to i32
  %add5.i172 = zext i1 %cond.i169 to i32
  %retval.0.in.i173 = shl nuw nsw i32 %conv1.i171, %add5.i172
  %retval.0.i174 = add nuw nsw i32 %retval.0.in.i173, 16
  %conv32 = zext i32 %retval.0.i174 to i64
  %bcnt = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i167, i32 0, i32 1
  %159 = ptrtoint ptr %bcnt to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %bcnt, align 8
  %add = add i64 %160, %conv32
  store i64 %add, ptr %bcnt, align 8
  %161 = ptrtoint ptr %retval.0.i167 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %retval.0.i167, align 8
  %add33 = add i64 %162, 1
  store i64 %add33, ptr %retval.0.i167, align 8
  %target_offset.i.i = getelementptr inbounds %struct.arpt_entry, ptr %e.0, i32 0, i32 1
  %163 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %target_offset.i.i, align 4
  %conv.i.i175 = zext i16 %164 to i32
  %add.ptr.i.i176 = getelementptr i8, ptr %e.0, i32 %conv.i.i175
  %target = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i176, i32 0, i32 1
  %165 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %target, align 4
  %target37 = getelementptr inbounds %struct.xt_target, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %target37 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %target37, align 4
  %tobool38.not = icmp eq ptr %168, null
  br i1 %tobool38.not, label %if.then39, label %if.end70

if.then39:                                        ; preds = %xt_get_this_cpu_counter.exit
  %verdict40 = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i176, i32 0, i32 1
  %169 = ptrtoint ptr %verdict40 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %verdict40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp = icmp slt i32 %170, 0
  br i1 %cmp, label %if.then42, label %if.end56

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %170)
  %cmp43.not = icmp eq i32 %170, -5
  br i1 %cmp43.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %sub46 = xor i32 %170, -1
  br label %do.end92

if.end47:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stackidx.0)
  %cmp48 = icmp eq i32 %stackidx.0, 0
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %171 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx51, align 4
  %add.ptr.i177 = getelementptr i8, ptr %entries, i32 %172
  br label %do.cond87

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i32 %stackidx.0, -1
  %arrayidx53 = getelementptr ptr, ptr %37, i32 %dec
  %173 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx53, align 4
  %next_offset.i178 = getelementptr inbounds %struct.arpt_entry, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %next_offset.i178 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %next_offset.i178, align 2
  %conv.i179 = zext i16 %176 to i32
  %add.ptr.i180 = getelementptr i8, ptr %174, i32 %conv.i179
  br label %do.cond87

if.end56:                                         ; preds = %if.then39
  %add.ptr = getelementptr i8, ptr %entries, i32 %170
  %next_offset.i181 = getelementptr inbounds %struct.arpt_entry, ptr %e.0, i32 0, i32 2
  %177 = ptrtoint ptr %next_offset.i181 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %next_offset.i181, align 2
  %conv.i182 = zext i16 %178 to i32
  %add.ptr.i183 = getelementptr i8, ptr %e.0, i32 %conv.i182
  %cmp58.not = icmp eq ptr %add.ptr, %add.ptr.i183
  br i1 %cmp58.not, label %if.end56.do.cond87_crit_edge, label %if.then60

if.end56.do.cond87_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond87

if.then60:                                        ; preds = %if.end56
  %179 = ptrtoint ptr %stacksize to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %stacksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stackidx.0, i32 %180)
  %cmp61.not = icmp ult i32 %stackidx.0, %180
  br i1 %cmp61.not, label %if.end66, label %if.then60.do.end92_crit_edge, !prof !75

if.then60.do.end92_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

if.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add nuw i32 %stackidx.0, 1
  %arrayidx67 = getelementptr ptr, ptr %37, i32 %stackidx.0
  %181 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %e.0, ptr %arrayidx67, align 4
  br label %do.cond87

if.end70:                                         ; preds = %xt_get_this_cpu_counter.exit
  %182 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %166, ptr %acpar, align 4
  %data = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i176, i32 0, i32 1
  %183 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %data, ptr %46, align 4
  %184 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %target, align 4
  %target76 = getelementptr inbounds %struct.xt_target, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %target76 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %target76, align 4
  %call77 = call i32 %187(ptr noundef %skb, ptr noundef nonnull %acpar) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call77)
  %cmp78 = icmp eq i32 %call77, -1
  br i1 %cmp78, label %if.then80, label %if.end70.do.end92_crit_edge

if.end70.do.end92_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %188 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %head.i.i, align 8
  %190 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i187 = zext i16 %191 to i32
  %add.ptr.i.i188 = getelementptr i8, ptr %189, i32 %conv.i.i187
  %next_offset.i189 = getelementptr inbounds %struct.arpt_entry, ptr %e.0, i32 0, i32 2
  %192 = ptrtoint ptr %next_offset.i189 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %next_offset.i189, align 2
  %conv.i190 = zext i16 %193 to i32
  %add.ptr.i191 = getelementptr i8, ptr %e.0, i32 %conv.i190
  br label %do.cond87

do.cond87:                                        ; preds = %if.then80, %if.end66, %if.end56.do.cond87_crit_edge, %if.else, %if.then50, %if.then26
  %verdict.2.ph = phi i32 [ %verdict.0, %if.end56.do.cond87_crit_edge ], [ %verdict.0, %if.end66 ], [ %verdict.0, %if.then50 ], [ %verdict.0, %if.else ], [ %verdict.0, %if.then26 ], [ -1, %if.then80 ]
  %arp.1.ph = phi ptr [ %arp.0, %if.end56.do.cond87_crit_edge ], [ %arp.0, %if.end66 ], [ %arp.0, %if.then50 ], [ %arp.0, %if.else ], [ %arp.0, %if.then26 ], [ %add.ptr.i.i188, %if.then80 ]
  %e.3.ph = phi ptr [ %add.ptr, %if.end56.do.cond87_crit_edge ], [ %add.ptr, %if.end66 ], [ %add.ptr.i177, %if.then50 ], [ %add.ptr.i180, %if.else ], [ %add.ptr.i160, %if.then26 ], [ %add.ptr.i191, %if.then80 ]
  %stackidx.4.ph = phi i32 [ %stackidx.0, %if.end56.do.cond87_crit_edge ], [ %inc, %if.end66 ], [ 0, %if.then50 ], [ %dec, %if.else ], [ %stackidx.0, %if.then26 ], [ %stackidx.0, %if.then80 ]
  %194 = ptrtoint ptr %hotdrop to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %hotdrop, align 2, !range !76
  %tobool89.not = icmp eq i8 %195, 0
  br i1 %tobool89.not, label %do.cond87.do.body22_crit_edge, label %do.cond87.do.end92_crit_edge

do.cond87.do.end92_crit_edge:                     ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

do.cond87.do.body22_crit_edge:                    ; preds = %do.cond87
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body22

do.end92:                                         ; preds = %do.cond87.do.end92_crit_edge, %if.end70.do.end92_crit_edge, %if.then60.do.end92_crit_edge, %if.then45
  %verdict.2212 = phi i32 [ %sub46, %if.then45 ], [ %call77, %if.end70.do.end92_crit_edge ], [ 0, %if.then60.do.end92_crit_edge ], [ %verdict.2.ph, %do.cond87.do.end92_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  %196 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i192 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i192 to ptr
  %cpu.i193 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %cpu.i193 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu.i193, align 4
  %arrayidx.i194 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i194, align 4
  %add.i195 = add i32 %201, ptrtoint (ptr @xt_recseq to i32)
  %202 = inttoptr i32 %add.i195 to ptr
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 4
  %add11.i = add i32 %204, %and.i
  store i32 %add11.i, ptr %202, align 4
  call fastcc void @local_bh_enable()
  %205 = ptrtoint ptr %hotdrop to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %hotdrop, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool94.not = icmp eq i8 %206, 0
  %verdict.2. = select i1 %tobool94.not, i32 %verdict.2212, i32 0
  br label %cleanup97

cleanup97:                                        ; preds = %do.end92, %pskb_may_pull.exit.cleanup97_crit_edge, %if.end.i.cleanup97_crit_edge
  %retval.0 = phi i32 [ 0, %pskb_may_pull.exit.cleanup97_crit_edge ], [ %verdict.2., %do.end92 ], [ 0, %if.end.i.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %acpar) #15
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arpt_register_table(ptr noundef %net, ptr noundef %table, ptr noundef %repl, ptr noundef %template_ops) #0 align 64 {
entry:
  %bootstrap = alloca %struct.xt_table_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bootstrap) #15
  %0 = call ptr @memset(ptr %bootstrap, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.xt_table_info, ptr %bootstrap, i32 0, i32 7
  %size = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 8
  %call = tail call ptr @xt_alloc_table_info(i32 noundef %4) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %call, i32 0, i32 8
  %entries1 = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 8
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = call ptr @memcpy(ptr %entries, ptr %entries1, i32 %6)
  %call4 = tail call fastcc i32 @translate_table(ptr noundef %net, ptr noundef nonnull %call, ptr noundef %entries, ptr noundef %repl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xt_free_table_info(ptr noundef nonnull %call) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @xt_register_table(ptr noundef %net, ptr noundef %table, ptr noundef nonnull %bootstrap, ptr noundef nonnull %call) #15
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %cond.false

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  call void @xt_free_table_info(ptr noundef nonnull %call) #15
  %8 = ptrtoint ptr %call7 to i32
  br label %cleanup

cond.false:                                       ; preds = %if.end6
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %table, i32 0, i32 1
  %9 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valid_hooks, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp326 = icmp eq i32 %call.i, 0
  br i1 %cmp326, label %cond.false.out_free_crit_edge, label %if.end329

cond.false.out_free_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end329:                                        ; preds = %cond.false
  %mul = mul i32 %call.i, 24
  %call330 = call ptr @kmemdup(ptr noundef %template_ops, i32 noundef %mul, i32 noundef 3264) #15
  %tobool331.not = icmp eq ptr %call330, null
  br i1 %tobool331.not, label %if.end329.out_free_crit_edge, label %if.end329.for.body_crit_edge

if.end329.for.body_crit_edge:                     ; preds = %if.end329
  br label %for.body

if.end329.out_free_crit_edge:                     ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end329.for.body_crit_edge
  %i.0415 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end329.for.body_crit_edge ]
  %priv = getelementptr %struct.nf_hook_ops, ptr %call330, i32 %i.0415, i32 2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %priv, align 4
  %inc = add nuw i32 %i.0415, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %ops336 = getelementptr inbounds %struct.xt_table, ptr %call7, i32 0, i32 3
  %12 = ptrtoint ptr %ops336 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call330, ptr %ops336, align 4
  %call337 = call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull %call330, i32 noundef %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %cmp338.not = icmp eq i32 %call337, 0
  br i1 %cmp338.not, label %for.end.cleanup_crit_edge, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_free:                                         ; preds = %for.end.out_free_crit_edge, %if.end329.out_free_crit_edge, %cond.false.out_free_crit_edge
  %ret.0 = phi i32 [ %call337, %for.end.out_free_crit_edge ], [ -22, %cond.false.out_free_crit_edge ], [ -12, %if.end329.out_free_crit_edge ]
  call fastcc void @__arpt_unregister_table(ptr noundef %net, ptr noundef %call7)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %for.end.cleanup_crit_edge, %if.then9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ %8, %if.then9 ], [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bootstrap) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_alloc_table_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @translate_table(ptr noundef %net, ptr noundef %newinfo, ptr noundef %entry0, ptr noundef %repl) unnamed_addr #0 align 64 {
entry:
  %par.i = alloca %struct.xt_tgdtor_param, align 4
  %par.i.i = alloca %struct.xt_tgchk_param, align 4
  %alloc_state = alloca %struct.xt_percpu_counter_alloc_state, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %alloc_state) #15
  %0 = ptrtoint ptr %alloc_state to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %alloc_state, align 8
  %size = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 8
  %3 = ptrtoint ptr %newinfo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %newinfo, align 8
  %num_entries = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 2
  %4 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_entries, align 4
  %number = getelementptr inbounds %struct.xt_table_info, ptr %newinfo, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %number, align 4
  %arrayidx = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arrayidx2, align 4
  %arrayidx.1 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %arrayidx2.2, align 4
  %call = tail call ptr @xt_alloc_entry_offsets(i32 noundef %5) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond4.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond4.preheader:                              ; preds = %entry
  %13 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %newinfo, align 8
  %add.ptr210 = getelementptr i8, ptr %entry0, i32 %14
  %cmp6211 = icmp ugt ptr %add.ptr210, %entry0
  br i1 %cmp6211, label %for.body7.lr.ph, label %for.cond4.preheader.for.end32_crit_edge

for.cond4.preheader.for.end32_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %hook_entry10 = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 4
  %underflow11 = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 5
  %valid_hooks = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 1
  %sub.ptr.rhs.cast.i = ptrtoint ptr %entry0 to i32
  %arrayidx.1.i = getelementptr %struct.arpt_replace, ptr %repl, i32 0, i32 4, i32 1
  %arrayidx35.1.i = getelementptr %struct.arpt_replace, ptr %repl, i32 0, i32 5, i32 1
  %arrayidx.2.i = getelementptr %struct.arpt_replace, ptr %repl, i32 0, i32 4, i32 2
  %arrayidx35.2.i = getelementptr %struct.arpt_replace, ptr %repl, i32 0, i32 5, i32 2
  %stacksize = getelementptr inbounds %struct.xt_table_info, ptr %newinfo, i32 0, i32 5
  br label %for.body7

for.body7:                                        ; preds = %for.inc30.for.body7_crit_edge, %for.body7.lr.ph
  %i.1213 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc22, %for.inc30.for.body7_crit_edge ]
  %iter.0212 = phi ptr [ %entry0, %for.body7.lr.ph ], [ %add.ptr31, %for.inc30.for.body7_crit_edge ]
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %add.ptr9 = getelementptr i8, ptr %entry0, i32 %16
  %17 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %valid_hooks, align 8
  %19 = ptrtoint ptr %iter.0212 to i32
  %rem.i = and i32 %19, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  %add.ptr.i = getelementptr i8, ptr %iter.0212, i32 192
  %cmp1.not.i = icmp ult ptr %add.ptr.i, %add.ptr9
  %or.cond.i = and i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %lor.lhs.false2.i, label %for.body7.out_free_crit_edge

for.body7.out_free_crit_edge:                     ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

lor.lhs.false2.i:                                 ; preds = %for.body7
  %next_offset.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.0212, i32 0, i32 2
  %20 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.ptr3.i = getelementptr i8, ptr %iter.0212, i32 %conv.i
  %cmp4.i = icmp ugt ptr %add.ptr3.i, %add.ptr9
  call void @__sanitizer_cov_trace_const_cmp2(i16 224, i16 %21)
  %cmp8.i = icmp ult i16 %21, 224
  %or.cond74.i = select i1 %cmp4.i, i1 true, i1 %cmp8.i
  br i1 %or.cond74.i, label %lor.lhs.false2.i.out_free_crit_edge, label %if.end11.i

lor.lhs.false2.i.out_free_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end11.i:                                       ; preds = %lor.lhs.false2.i
  %flags.i.i = getelementptr inbounds %struct.arpt_arp, ptr %iter.0212, i32 0, i32 18
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %arp_checkentry.exit.i, label %if.end11.i.out_free_crit_edge

if.end11.i.out_free_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

arp_checkentry.exit.i:                            ; preds = %if.end11.i
  %invflags.i.i = getelementptr inbounds %struct.arpt_arp, ptr %iter.0212, i32 0, i32 19
  %24 = ptrtoint ptr %invflags.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %invflags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %25)
  %tobool3.not.i.i = icmp ugt i16 %25, 1023
  br i1 %tobool3.not.i.i, label %arp_checkentry.exit.i.out_free_crit_edge, label %if.end13.i

arp_checkentry.exit.i.out_free_crit_edge:         ; preds = %arp_checkentry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end13.i:                                       ; preds = %arp_checkentry.exit.i
  %target_offset.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.0212, i32 0, i32 1
  %26 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %target_offset.i, align 4
  %conv14.i = zext i16 %27 to i32
  %call17.i = tail call i32 @xt_check_entry_offsets(ptr noundef %iter.0212, ptr noundef %add.ptr.i, i32 noundef %conv14.i, i32 noundef %conv.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.cond.preheader.i, label %if.end13.i.out_free_crit_edge

if.end13.i.out_free_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

for.cond.preheader.i:                             ; preds = %if.end13.i
  %sub.ptr.sub.i = sub i32 %19, %sub.ptr.rhs.cast.i
  %name.i.i = getelementptr i8, ptr %iter.0212, i32 194
  %verdict5.i.i = getelementptr i8, ptr %iter.0212, i32 224
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end25.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end25.i:                                       ; preds = %for.cond.preheader.i
  %28 = ptrtoint ptr %hook_entry10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hook_entry10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %29)
  %cmp26.i = icmp eq i32 %sub.ptr.sub.i, %29
  br i1 %cmp26.i, label %if.then28.i, label %if.end25.i.if.end31.i_crit_edge

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.sub.i, ptr %arrayidx, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end31.i_crit_edge
  %31 = ptrtoint ptr %underflow11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %underflow11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %32)
  %cmp36.i = icmp eq i32 %sub.ptr.sub.i, %32
  br i1 %cmp36.i, label %if.then38.i, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then38.i:                                      ; preds = %if.end31.i
  %33 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %target_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %34)
  %cmp.i.i.i = icmp eq i16 %34, 192
  br i1 %cmp.i.i.i, label %unconditional.exit.i.i, label %if.then38.i.out_free_crit_edge

if.then38.i.out_free_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

unconditional.exit.i.i:                           ; preds = %if.then38.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(164) %iter.0212, ptr noundef nonnull dereferenceable(164) @unconditional.uncond, i32 164) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp2.i.i.i, label %if.end.i75.i, label %unconditional.exit.i.i.out_free_crit_edge

unconditional.exit.i.i.out_free_crit_edge:        ; preds = %unconditional.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end.i75.i:                                     ; preds = %unconditional.exit.i.i
  %35 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %strcmpload.i.i = load i8, ptr %name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i.i)
  %cmp.not.i.i = icmp eq i8 %strcmpload.i.i, 0
  br i1 %cmp.not.i.i, label %check_underflow.exit.i, label %if.end.i75.i.out_free_crit_edge

if.end.i75.i.out_free_crit_edge:                  ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

check_underflow.exit.i:                           ; preds = %if.end.i75.i
  %36 = ptrtoint ptr %verdict5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %verdict5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %37)
  %38 = icmp ugt i32 %37, -3
  br i1 %38, label %if.end41.i, label %check_underflow.exit.i.out_free_crit_edge

check_underflow.exit.i.out_free_crit_edge:        ; preds = %check_underflow.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end41.i:                                       ; preds = %check_underflow.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub.i, ptr %arrayidx2, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end41.i, %if.end31.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %and.1.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool23.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool23.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end25.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.end25.1.i:                                     ; preds = %for.inc.i
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %41)
  %cmp26.1.i = icmp eq i32 %sub.ptr.sub.i, %41
  br i1 %cmp26.1.i, label %if.then28.1.i, label %if.end25.1.i.if.end31.1.i_crit_edge

if.end25.1.i.if.end31.1.i_crit_edge:              ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.1.i

if.then28.1.i:                                    ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub.i, ptr %arrayidx.1, align 4
  br label %if.end31.1.i

if.end31.1.i:                                     ; preds = %if.then28.1.i, %if.end25.1.i.if.end31.1.i_crit_edge
  %43 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx35.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %44)
  %cmp36.1.i = icmp eq i32 %sub.ptr.sub.i, %44
  br i1 %cmp36.1.i, label %if.then38.1.i, label %if.end31.1.i.for.inc.1.i_crit_edge

if.end31.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end31.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i

if.then38.1.i:                                    ; preds = %if.end31.1.i
  %45 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %target_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %46)
  %cmp.i.i.1.i = icmp eq i16 %46, 192
  br i1 %cmp.i.i.1.i, label %unconditional.exit.i.1.i, label %if.then38.1.i.out_free_crit_edge

if.then38.1.i.out_free_crit_edge:                 ; preds = %if.then38.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

unconditional.exit.i.1.i:                         ; preds = %if.then38.1.i
  %bcmp.i.i.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(164) %iter.0212, ptr noundef nonnull dereferenceable(164) @unconditional.uncond, i32 164) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.1.i)
  %cmp2.i.i.1.i = icmp eq i32 %bcmp.i.i.1.i, 0
  br i1 %cmp2.i.i.1.i, label %if.end.i75.1.i, label %unconditional.exit.i.1.i.out_free_crit_edge

unconditional.exit.i.1.i.out_free_crit_edge:      ; preds = %unconditional.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end.i75.1.i:                                   ; preds = %unconditional.exit.i.1.i
  %47 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %strcmpload.i.1.i = load i8, ptr %name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i.1.i)
  %cmp.not.i.1.i = icmp eq i8 %strcmpload.i.1.i, 0
  br i1 %cmp.not.i.1.i, label %check_underflow.exit.1.i, label %if.end.i75.1.i.out_free_crit_edge

if.end.i75.1.i.out_free_crit_edge:                ; preds = %if.end.i75.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

check_underflow.exit.1.i:                         ; preds = %if.end.i75.1.i
  %48 = ptrtoint ptr %verdict5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %verdict5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %49)
  %50 = icmp ugt i32 %49, -3
  br i1 %50, label %if.end41.1.i, label %check_underflow.exit.1.i.out_free_crit_edge

check_underflow.exit.1.i.out_free_crit_edge:      ; preds = %check_underflow.exit.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end41.1.i:                                     ; preds = %check_underflow.exit.1.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i, ptr %arrayidx2.1, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end41.1.i, %if.end31.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %and.2.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool23.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool23.not.2.i, label %for.inc.1.i.if.end16_crit_edge, label %if.end25.2.i

for.inc.1.i.if.end16_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.end25.2.i:                                     ; preds = %for.inc.1.i
  %52 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %53)
  %cmp26.2.i = icmp eq i32 %sub.ptr.sub.i, %53
  br i1 %cmp26.2.i, label %if.then28.2.i, label %if.end25.2.i.if.end31.2.i_crit_edge

if.end25.2.i.if.end31.2.i_crit_edge:              ; preds = %if.end25.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.2.i

if.then28.2.i:                                    ; preds = %if.end25.2.i
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.ptr.sub.i, ptr %arrayidx.2, align 4
  br label %if.end31.2.i

if.end31.2.i:                                     ; preds = %if.then28.2.i, %if.end25.2.i.if.end31.2.i_crit_edge
  %55 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx35.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %56)
  %cmp36.2.i = icmp eq i32 %sub.ptr.sub.i, %56
  br i1 %cmp36.2.i, label %if.then38.2.i, label %if.end31.2.i.if.end16_crit_edge

if.end31.2.i.if.end16_crit_edge:                  ; preds = %if.end31.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then38.2.i:                                    ; preds = %if.end31.2.i
  %57 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %target_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %58)
  %cmp.i.i.2.i = icmp eq i16 %58, 192
  br i1 %cmp.i.i.2.i, label %unconditional.exit.i.2.i, label %if.then38.2.i.out_free_crit_edge

if.then38.2.i.out_free_crit_edge:                 ; preds = %if.then38.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

unconditional.exit.i.2.i:                         ; preds = %if.then38.2.i
  %bcmp.i.i.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(164) %iter.0212, ptr noundef nonnull dereferenceable(164) @unconditional.uncond, i32 164) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.2.i)
  %cmp2.i.i.2.i = icmp eq i32 %bcmp.i.i.2.i, 0
  br i1 %cmp2.i.i.2.i, label %if.end.i75.2.i, label %unconditional.exit.i.2.i.out_free_crit_edge

unconditional.exit.i.2.i.out_free_crit_edge:      ; preds = %unconditional.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end.i75.2.i:                                   ; preds = %unconditional.exit.i.2.i
  %59 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %strcmpload.i.2.i = load i8, ptr %name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i.2.i)
  %cmp.not.i.2.i = icmp eq i8 %strcmpload.i.2.i, 0
  br i1 %cmp.not.i.2.i, label %check_underflow.exit.2.i, label %if.end.i75.2.i.out_free_crit_edge

if.end.i75.2.i.out_free_crit_edge:                ; preds = %if.end.i75.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

check_underflow.exit.2.i:                         ; preds = %if.end.i75.2.i
  %60 = ptrtoint ptr %verdict5.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %verdict5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %61)
  %62 = icmp ugt i32 %61, -3
  br i1 %62, label %if.end41.2.i, label %check_underflow.exit.2.i.out_free_crit_edge

check_underflow.exit.2.i.out_free_crit_edge:      ; preds = %check_underflow.exit.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end41.2.i:                                     ; preds = %check_underflow.exit.2.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub.ptr.sub.i, ptr %arrayidx2.2, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end41.2.i, %if.end31.2.i.if.end16_crit_edge, %for.inc.1.i.if.end16_crit_edge
  %counters.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.0212, i32 0, i32 4
  %comefrom.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.0212, i32 0, i32 3
  %64 = ptrtoint ptr %comefrom.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %comefrom.i, align 8
  %65 = call ptr @memset(ptr %counters.i, i32 0, i32 16)
  %66 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1213, i32 %67)
  %cmp18 = icmp ult i32 %i.1213, %67
  br i1 %cmp18, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx20 = getelementptr i32, ptr %call, i32 %i.1213
  %68 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.ptr.sub.i, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %inc22 = add i32 %i.1213, 1
  %69 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %target_offset.i, align 4
  %conv.i156 = zext i16 %70 to i32
  %add.ptr.i157 = getelementptr i8, ptr %iter.0212, i32 %conv.i156
  %name = getelementptr inbounds %struct.anon.147, ptr %add.ptr.i157, i32 0, i32 1
  %call25 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end21.for.inc30_crit_edge

if.end21.for.inc30_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %stacksize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stacksize, align 4
  %inc28 = add i32 %72, 1
  store i32 %inc28, ptr %stacksize, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %if.then27, %if.end21.for.inc30_crit_edge
  %73 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_offset.i, align 2
  %conv = zext i16 %74 to i32
  %add.ptr31 = getelementptr i8, ptr %iter.0212, i32 %conv
  %75 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %newinfo, align 8
  %add.ptr = getelementptr i8, ptr %entry0, i32 %76
  %cmp6 = icmp ult ptr %add.ptr31, %add.ptr
  br i1 %cmp6, label %for.inc30.for.body7_crit_edge, label %for.inc30.for.end32_crit_edge

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.inc30.for.body7_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body7

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %for.cond4.preheader.for.end32_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond4.preheader.for.end32_crit_edge ], [ %inc22, %for.inc30.for.end32_crit_edge ]
  %77 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %78)
  %cmp34.not = icmp eq i32 %i.1.lcssa, %78
  br i1 %cmp34.not, label %if.end37, label %for.end32.out_free_crit_edge

for.end32.out_free_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end37:                                         ; preds = %for.end32
  %valid_hooks38 = getelementptr inbounds %struct.arpt_replace, ptr %repl, i32 0, i32 1
  %79 = ptrtoint ptr %valid_hooks38 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %valid_hooks38, align 8
  %call39 = tail call i32 @xt_check_table_hooks(ptr noundef %newinfo, i32 noundef %80) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.out_free_crit_edge

if.end37.out_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end42:                                         ; preds = %if.end37
  %81 = ptrtoint ptr %valid_hooks38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %valid_hooks38, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i166.for.body.i_crit_edge, %if.end42
  %hook.0187.i = phi i32 [ 0, %if.end42 ], [ %inc.i, %for.inc.i166.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %hook.0187.i
  %and.i158 = and i32 %shl.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool.not.i = icmp eq i32 %and.i158, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i166_crit_edge, label %if.end.i

for.body.i.for.inc.i166_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i166

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.xt_table_info, ptr %newinfo, i32 0, i32 3, i32 %hook.0187.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %entry0, i32 %84
  %conv.i160 = zext i32 %84 to i64
  %counters.i161 = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr.i159, i32 0, i32 4
  %85 = ptrtoint ptr %counters.i161 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv.i160, ptr %counters.i161, align 8
  %comefrom170.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr.i159, i32 0, i32 3
  %86 = ptrtoint ptr %comefrom170.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %comefrom170.i, align 8
  %and5172.i = and i32 %87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5172.i)
  %tobool6.not173.i = icmp eq i32 %and5172.i, 0
  br i1 %tobool6.not173.i, label %if.end8.lr.ph.i, label %if.end.i.out_free_crit_edge

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end8.lr.ph.i:                                  ; preds = %if.end.i
  %target_offset.i.i167.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr.i159, i32 0, i32 1
  %88 = ptrtoint ptr %target_offset.i.i167.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %target_offset.i.i167.i, align 4
  %conv.i.i168.i = zext i16 %89 to i32
  %add.ptr.i.i169.i = getelementptr i8, ptr %add.ptr.i159, i32 %conv.i.i168.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup84.i.if.end8.i_crit_edge, %if.end8.lr.ph.i
  %90 = phi i32 [ %87, %if.end8.lr.ph.i ], [ %117, %cleanup84.i.if.end8.i_crit_edge ]
  %comefrom184.i = phi ptr [ %comefrom170.i, %if.end8.lr.ph.i ], [ %comefrom.i165, %cleanup84.i.if.end8.i_crit_edge ]
  %add.ptr.i.i181.i = phi ptr [ %add.ptr.i.i169.i, %if.end8.lr.ph.i ], [ %add.ptr.i.i.i, %cleanup84.i.if.end8.i_crit_edge ]
  %91 = phi i16 [ %89, %if.end8.lr.ph.i ], [ %115, %cleanup84.i.if.end8.i_crit_edge ]
  %e.0177.i = phi ptr [ %add.ptr.i159, %if.end8.lr.ph.i ], [ %add.ptr39.sink.i, %cleanup84.i.if.end8.i_crit_edge ]
  %pos.0174.i = phi i32 [ %84, %if.end8.lr.ph.i ], [ %pos.5.i, %cleanup84.i.if.end8.i_crit_edge ]
  %and3185.i = and i32 %90, %shl.i
  %or.i = or i32 %shl.i, %90
  %or11.i = or i32 %or.i, 8
  %92 = ptrtoint ptr %comefrom184.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or11.i, ptr %comefrom184.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %91)
  %cmp.i.i = icmp eq i16 %91, 192
  br i1 %cmp.i.i, label %unconditional.exit.i, label %if.end8.i.lor.lhs.false.i_crit_edge

if.end8.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

unconditional.exit.i:                             ; preds = %if.end8.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(164) %e.0177.i, ptr noundef nonnull dereferenceable(164) @unconditional.uncond, i32 164) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp2.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i, label %unconditional.exit.i.lor.lhs.false.i_crit_edge

unconditional.exit.i.lor.lhs.false.i_crit_edge:   ; preds = %unconditional.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %unconditional.exit.i
  %name.i = getelementptr inbounds %struct.anon.147, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %93 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %strcmpload142.i = load i8, ptr %name.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload142.i)
  %cmp15.i = icmp eq i8 %strcmpload142.i, 0
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %verdict.i = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %94 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %verdict.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp18.i = icmp sgt i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3185.i)
  %tobool20.not.i = icmp eq i32 %and3185.i, 0
  %or.cond.i162 = select i1 %cmp18.i, i1 %tobool20.not.i, i1 false
  br i1 %or.cond.i162, label %land.lhs.true17.i.if.else.i_crit_edge, label %land.lhs.true17.i.do.body.i.preheader_crit_edge

land.lhs.true17.i.do.body.i.preheader_crit_edge:  ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.preheader

land.lhs.true17.i.if.else.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %unconditional.exit.i.lor.lhs.false.i_crit_edge, %if.end8.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3185.i)
  %tobool20.not.old.i = icmp eq i32 %and3185.i, 0
  br i1 %tobool20.not.old.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %lor.lhs.false.i.do.body.i.preheader_crit_edge

lor.lhs.false.i.do.body.i.preheader_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.preheader

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

do.body.i.preheader:                              ; preds = %lor.lhs.false.i.do.body.i.preheader_crit_edge, %land.lhs.true17.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end31.i164.do.body.i_crit_edge, %do.body.i.preheader
  %pos.1.i = phi i32 [ %conv25.i, %if.end31.i164.do.body.i_crit_edge ], [ %pos.0174.i, %do.body.i.preheader ]
  %e.1.i = phi ptr [ %add.ptr32.i, %if.end31.i164.do.body.i_crit_edge ], [ %e.0177.i, %do.body.i.preheader ]
  %comefrom22.i = getelementptr inbounds %struct.arpt_entry, ptr %e.1.i, i32 0, i32 3
  %96 = ptrtoint ptr %comefrom22.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %comefrom22.i, align 8
  %xor.i = xor i32 %97, 8
  store i32 %xor.i, ptr %comefrom22.i, align 8
  %counters23.i = getelementptr inbounds %struct.arpt_entry, ptr %e.1.i, i32 0, i32 4
  %98 = ptrtoint ptr %counters23.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %counters23.i, align 8
  %conv25.i = trunc i64 %99 to i32
  store i64 0, ptr %counters23.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1.i, i32 %conv25.i)
  %cmp28.i = icmp eq i32 %pos.1.i, %conv25.i
  br i1 %cmp28.i, label %do.body.i.for.inc.i166_crit_edge, label %if.end31.i164

do.body.i.for.inc.i166_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i166

if.end31.i164:                                    ; preds = %do.body.i
  %add.ptr32.i = getelementptr i8, ptr %entry0, i32 %conv25.i
  %next_offset.i163 = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr32.i, i32 0, i32 2
  %100 = ptrtoint ptr %next_offset.i163 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %next_offset.i163, align 2
  %conv33.i = zext i16 %101 to i32
  %add.i = add i32 %conv33.i, %conv25.i
  %cmp34.i = icmp eq i32 %pos.1.i, %add.i
  br i1 %cmp34.i, label %if.end31.i164.do.body.i_crit_edge, label %do.end.i

if.end31.i164.do.body.i_crit_edge:                ; preds = %if.end31.i164
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end.i:                                         ; preds = %if.end31.i164
  %102 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %newinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %103)
  %cmp42.not.i = icmp ult i32 %add.i, %103
  br i1 %cmp42.not.i, label %cleanup.i, label %do.end.i.out_free_crit_edge

do.end.i.out_free_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

cleanup.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv33.i.le = zext i16 %101 to i32
  %add.ptr39.i = getelementptr i8, ptr %add.ptr32.i, i32 %conv33.i.le
  %conv46.i = and i64 %99, 4294967295
  br label %cleanup84.i

if.else.i:                                        ; preds = %lor.lhs.false.i.if.else.i_crit_edge, %land.lhs.true17.i.if.else.i_crit_edge
  %verdict51.i = getelementptr inbounds %struct.xt_standard_target, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %104 = ptrtoint ptr %verdict51.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %verdict51.i, align 4
  %name54.i = getelementptr inbounds %struct.anon.147, ptr %add.ptr.i.i181.i, i32 0, i32 1
  %106 = ptrtoint ptr %name54.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %strcmpload.i = load i8, ptr %name54.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload.i)
  %cmp57.i = icmp eq i8 %strcmpload.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp60.i = icmp sgt i32 %105, -1
  %or.cond143.i = select i1 %cmp57.i, i1 %cmp60.i, i1 false
  br i1 %or.cond143.i, label %if.then62.i, label %if.else66.i

if.then62.i:                                      ; preds = %if.else.i
  %107 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %number, align 4
  %call63.i = tail call zeroext i1 @xt_find_jump_offset(ptr noundef nonnull %call, i32 noundef %105, i32 noundef %108) #15
  br i1 %call63.i, label %if.then62.i.cleanup80.i_crit_edge, label %if.then62.i.out_free_crit_edge

if.then62.i.out_free_crit_edge:                   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.then62.i.cleanup80.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80.i

if.else66.i:                                      ; preds = %if.else.i
  %next_offset67.i = getelementptr inbounds %struct.arpt_entry, ptr %e.0177.i, i32 0, i32 2
  %109 = ptrtoint ptr %next_offset67.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %next_offset67.i, align 2
  %conv68.i = zext i16 %110 to i32
  %add69.i = add i32 %pos.0174.i, %conv68.i
  %111 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %newinfo, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add69.i, i32 %112)
  %cmp71.not.i = icmp ult i32 %add69.i, %112
  br i1 %cmp71.not.i, label %if.else66.i.cleanup80.i_crit_edge, label %if.else66.i.out_free_crit_edge

if.else66.i.out_free_crit_edge:                   ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.else66.i.cleanup80.i_crit_edge:                ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80.i

cleanup80.i:                                      ; preds = %if.else66.i.cleanup80.i_crit_edge, %if.then62.i.cleanup80.i_crit_edge
  %newpos.0.i = phi i32 [ %105, %if.then62.i.cleanup80.i_crit_edge ], [ %add69.i, %if.else66.i.cleanup80.i_crit_edge ]
  %add.ptr76.i = getelementptr i8, ptr %entry0, i32 %newpos.0.i
  %conv77.i = zext i32 %pos.0174.i to i64
  br label %cleanup84.i

cleanup84.i:                                      ; preds = %cleanup80.i, %cleanup.i
  %add.ptr39.sink.i = phi ptr [ %add.ptr39.i, %cleanup.i ], [ %add.ptr76.i, %cleanup80.i ]
  %conv46.sink.i = phi i64 [ %conv46.i, %cleanup.i ], [ %conv77.i, %cleanup80.i ]
  %pos.5.i = phi i32 [ %add.i, %cleanup.i ], [ %newpos.0.i, %cleanup80.i ]
  %counters47.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr39.sink.i, i32 0, i32 4
  %113 = ptrtoint ptr %counters47.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv46.sink.i, ptr %counters47.i, align 8
  %target_offset.i.i.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr39.sink.i, i32 0, i32 1
  %114 = ptrtoint ptr %target_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %target_offset.i.i.i, align 4
  %conv.i.i.i = zext i16 %115 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr39.sink.i, i32 %conv.i.i.i
  %comefrom.i165 = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr39.sink.i, i32 0, i32 3
  %116 = ptrtoint ptr %comefrom.i165 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %comefrom.i165, align 8
  %and5.i = and i32 %117, 8
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %cleanup84.i.if.end8.i_crit_edge, label %cleanup84.i.out_free_crit_edge

cleanup84.i.out_free_crit_edge:                   ; preds = %cleanup84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

cleanup84.i.if.end8.i_crit_edge:                  ; preds = %cleanup84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

for.inc.i166:                                     ; preds = %do.body.i.for.inc.i166_crit_edge, %for.body.i.for.inc.i166_crit_edge
  %inc.i = add nuw nsw i32 %hook.0187.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %if.end47, label %for.inc.i166.for.body.i_crit_edge

for.inc.i166.for.body.i_crit_edge:                ; preds = %for.inc.i166
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end47:                                         ; preds = %for.inc.i166
  tail call void @kvfree(ptr noundef nonnull %call) #15
  %118 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %newinfo, align 8
  %add.ptr50215 = getelementptr i8, ptr %entry0, i32 %119
  %cmp51216 = icmp ugt ptr %add.ptr50215, %entry0
  br i1 %cmp51216, label %for.body53.lr.ph, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %if.end47
  %120 = getelementptr inbounds i8, ptr %par.i.i, i32 24
  %table.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 1
  %entryinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 2
  %target.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 3
  %targinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 4
  %hook_mask.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par.i.i, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %if.end61.for.body53_crit_edge, %for.body53.lr.ph
  %i.2218 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc62, %if.end61.for.body53_crit_edge ]
  %iter.1217 = phi ptr [ %entry0, %for.body53.lr.ph ], [ %add.ptr66, %if.end61.for.body53_crit_edge ]
  %counters.i167 = getelementptr inbounds %struct.arpt_entry, ptr %iter.1217, i32 0, i32 4
  %call.i = call zeroext i1 @xt_percpu_counter_alloc(ptr noundef nonnull %alloc_state, ptr noundef %counters.i167) #15
  br i1 %call.i, label %if.end.i169, label %for.body53.for.end67_crit_edge

for.body53.for.end67_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end67

if.end.i169:                                      ; preds = %for.body53
  %target_offset.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.1217, i32 0, i32 1
  %121 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %target_offset.i.i, align 4
  %conv.i.i = zext i16 %122 to i32
  %add.ptr.i.i = getelementptr i8, ptr %iter.1217, i32 %conv.i.i
  %name2.i = getelementptr inbounds %struct.anon.147, ptr %add.ptr.i.i, i32 0, i32 1
  %revision.i = getelementptr inbounds %struct.anon.147, ptr %add.ptr.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %revision.i, align 1
  %call4.i = call ptr @xt_request_find_target(i8 noundef zeroext 3, ptr noundef %name2.i, i8 noundef zeroext %124) #15
  %cmp.i.i168 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i168, label %find_check_entry.exit, label %if.end8.i173

if.end8.i173:                                     ; preds = %if.end.i169
  %target10.i = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %target10.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call4.i, ptr %target10.i, align 4
  %126 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %target_offset.i.i, align 4
  %conv.i.i.i170 = zext i16 %127 to i32
  %add.ptr.i.i.i171 = getelementptr i8, ptr %iter.1217, i32 %conv.i.i.i170
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %par.i.i) #15
  %128 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 50397183, ptr %120, align 4
  %129 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %net, ptr %par.i.i, align 4
  %130 = ptrtoint ptr %table.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %repl, ptr %table.i.i, align 4
  %131 = ptrtoint ptr %entryinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %iter.1217, ptr %entryinfo.i.i, align 4
  %target2.i.i = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i.i171, i32 0, i32 1
  %132 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %target2.i.i, align 4
  %134 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %target.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i.i171, i32 0, i32 1
  %135 = ptrtoint ptr %targinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %data.i.i, ptr %targinfo.i.i, align 4
  %comefrom.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.1217, i32 0, i32 3
  %136 = ptrtoint ptr %comefrom.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %comefrom.i.i, align 8
  %138 = ptrtoint ptr %hook_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %hook_mask.i.i, align 4
  %139 = ptrtoint ptr %add.ptr.i.i.i171 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr.i.i.i171, align 4
  %conv.i1.i = zext i16 %140 to i32
  %sub.i.i = add nsw i32 %conv.i1.i, -32
  %call4.i.i = call i32 @xt_check_target(ptr noundef nonnull %par.i.i, i32 noundef %sub.i.i, i16 noundef zeroext 0, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %par.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i172 = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i172, label %if.end61, label %find_check_entry.exit.thread192

find_check_entry.exit.thread192:                  ; preds = %if.end8.i173
  call void @__sanitizer_cov_trace_pc() #17
  %target10.i.le = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %target10.i.le to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %target10.i.le, align 4
  %me.i = getelementptr inbounds %struct.xt_target, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %144) #15
  br label %for.end67.sink.split

find_check_entry.exit:                            ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #17
  %145 = ptrtoint ptr %call4.i to i32
  br label %for.end67.sink.split

if.end61:                                         ; preds = %if.end8.i173
  %inc62 = add i32 %i.2218, 1
  %next_offset64 = getelementptr inbounds %struct.arpt_entry, ptr %iter.1217, i32 0, i32 2
  %146 = ptrtoint ptr %next_offset64 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %next_offset64, align 2
  %conv65 = zext i16 %147 to i32
  %add.ptr66 = getelementptr i8, ptr %iter.1217, i32 %conv65
  %148 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %newinfo, align 8
  %add.ptr50 = getelementptr i8, ptr %entry0, i32 %149
  %cmp51 = icmp ult ptr %add.ptr66, %add.ptr50
  br i1 %cmp51, label %if.end61.for.body53_crit_edge, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end61.for.body53_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

for.end67.sink.split:                             ; preds = %find_check_entry.exit, %find_check_entry.exit.thread192
  %ret.1.ph = phi i32 [ %call4.i.i, %find_check_entry.exit.thread192 ], [ %145, %find_check_entry.exit ]
  call void @xt_percpu_counter_free(ptr noundef %counters.i167) #15
  br label %for.end67

for.end67:                                        ; preds = %for.end67.sink.split, %for.body53.for.end67_crit_edge
  %ret.1 = phi i32 [ %ret.1.ph, %for.end67.sink.split ], [ -12, %for.body53.for.end67_crit_edge ]
  %150 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %newinfo, align 8
  %add.ptr73219 = getelementptr i8, ptr %entry0, i32 %151
  %cmp74220 = icmp ule ptr %add.ptr73219, %entry0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2218)
  %cmp77221 = icmp eq i32 %i.2218, 0
  %or.cond222 = select i1 %cmp74220, i1 true, i1 %cmp77221
  br i1 %or.cond222, label %for.end67.cleanup_crit_edge, label %if.end80.lr.ph

for.end67.cleanup_crit_edge:                      ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end80.lr.ph:                                   ; preds = %for.end67
  %152 = getelementptr inbounds i8, ptr %par.i, i32 12
  %target2.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 1
  %targinfo.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 2
  br label %if.end80

if.end80:                                         ; preds = %cleanup_entry.exit.if.end80_crit_edge, %if.end80.lr.ph
  %i.3224 = phi i32 [ %i.2218, %if.end80.lr.ph ], [ %dec, %cleanup_entry.exit.if.end80_crit_edge ]
  %iter.2223 = phi ptr [ %entry0, %if.end80.lr.ph ], [ %add.ptr84, %cleanup_entry.exit.if.end80_crit_edge ]
  %dec = add i32 %i.3224, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #15
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 67108863, ptr %152, align 4
  %target_offset.i.i176 = getelementptr inbounds %struct.arpt_entry, ptr %iter.2223, i32 0, i32 1
  %154 = ptrtoint ptr %target_offset.i.i176 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %target_offset.i.i176, align 4
  %conv.i.i177 = zext i16 %155 to i32
  %add.ptr.i.i178 = getelementptr i8, ptr %iter.2223, i32 %conv.i.i177
  %156 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %net, ptr %par.i, align 4
  %target.i = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i178, i32 0, i32 1
  %157 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %target.i, align 4
  %159 = ptrtoint ptr %target2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %target2.i, align 4
  %data.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i178, i32 0, i32 1
  %160 = ptrtoint ptr %targinfo.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %data.i, ptr %targinfo.i, align 4
  %destroy.i = getelementptr inbounds %struct.xt_target, ptr %158, i32 0, i32 5
  %161 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %destroy.i, align 4
  %cmp.not.i179 = icmp eq ptr %162, null
  br i1 %cmp.not.i179, label %if.end80.cleanup_entry.exit_crit_edge, label %if.then.i

if.end80.cleanup_entry.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_entry.exit

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  call void %162(ptr noundef nonnull %par.i) #15
  br label %cleanup_entry.exit

cleanup_entry.exit:                               ; preds = %if.then.i, %if.end80.cleanup_entry.exit_crit_edge
  %163 = ptrtoint ptr %target2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %target2.i, align 4
  %me.i180 = getelementptr inbounds %struct.xt_target, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %me.i180 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %me.i180, align 4
  call void @module_put(ptr noundef %166) #15
  %counters.i181 = getelementptr inbounds %struct.arpt_entry, ptr %iter.2223, i32 0, i32 4
  call void @xt_percpu_counter_free(ptr noundef %counters.i181) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #15
  %next_offset82 = getelementptr inbounds %struct.arpt_entry, ptr %iter.2223, i32 0, i32 2
  %167 = ptrtoint ptr %next_offset82 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %next_offset82, align 2
  %conv83 = zext i16 %168 to i32
  %add.ptr84 = getelementptr i8, ptr %iter.2223, i32 %conv83
  %169 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %newinfo, align 8
  %add.ptr73 = getelementptr i8, ptr %entry0, i32 %170
  %cmp74 = icmp uge ptr %add.ptr84, %add.ptr73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp77 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp77
  br i1 %or.cond, label %cleanup_entry.exit.cleanup_crit_edge, label %cleanup_entry.exit.if.end80_crit_edge

cleanup_entry.exit.if.end80_crit_edge:            ; preds = %cleanup_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

cleanup_entry.exit.cleanup_crit_edge:             ; preds = %cleanup_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

out_free:                                         ; preds = %cleanup84.i.out_free_crit_edge, %if.else66.i.out_free_crit_edge, %if.then62.i.out_free_crit_edge, %do.end.i.out_free_crit_edge, %if.end.i.out_free_crit_edge, %if.end37.out_free_crit_edge, %for.end32.out_free_crit_edge, %check_underflow.exit.2.i.out_free_crit_edge, %if.end.i75.2.i.out_free_crit_edge, %unconditional.exit.i.2.i.out_free_crit_edge, %if.then38.2.i.out_free_crit_edge, %check_underflow.exit.1.i.out_free_crit_edge, %if.end.i75.1.i.out_free_crit_edge, %unconditional.exit.i.1.i.out_free_crit_edge, %if.then38.1.i.out_free_crit_edge, %check_underflow.exit.i.out_free_crit_edge, %if.end.i75.i.out_free_crit_edge, %unconditional.exit.i.i.out_free_crit_edge, %if.then38.i.out_free_crit_edge, %if.end13.i.out_free_crit_edge, %arp_checkentry.exit.i.out_free_crit_edge, %if.end11.i.out_free_crit_edge, %lor.lhs.false2.i.out_free_crit_edge, %for.body7.out_free_crit_edge
  %ret.2 = phi i32 [ -22, %for.end32.out_free_crit_edge ], [ %call39, %if.end37.out_free_crit_edge ], [ -40, %do.end.i.out_free_crit_edge ], [ -40, %cleanup84.i.out_free_crit_edge ], [ -40, %if.then62.i.out_free_crit_edge ], [ -40, %if.else66.i.out_free_crit_edge ], [ -40, %if.end.i.out_free_crit_edge ], [ -22, %lor.lhs.false2.i.out_free_crit_edge ], [ -22, %for.body7.out_free_crit_edge ], [ -22, %arp_checkentry.exit.i.out_free_crit_edge ], [ %call17.i, %if.end13.i.out_free_crit_edge ], [ -22, %if.end11.i.out_free_crit_edge ], [ -22, %check_underflow.exit.2.i.out_free_crit_edge ], [ -22, %if.end.i75.2.i.out_free_crit_edge ], [ -22, %unconditional.exit.i.2.i.out_free_crit_edge ], [ -22, %if.then38.2.i.out_free_crit_edge ], [ -22, %check_underflow.exit.1.i.out_free_crit_edge ], [ -22, %if.end.i75.1.i.out_free_crit_edge ], [ -22, %unconditional.exit.i.1.i.out_free_crit_edge ], [ -22, %if.then38.1.i.out_free_crit_edge ], [ -22, %check_underflow.exit.i.out_free_crit_edge ], [ -22, %unconditional.exit.i.i.out_free_crit_edge ], [ -22, %if.end.i75.i.out_free_crit_edge ], [ -22, %if.then38.i.out_free_crit_edge ]
  tail call void @kvfree(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free, %cleanup_entry.exit.cleanup_crit_edge, %for.end67.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ %ret.1, %for.end67.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ %ret.1, %cleanup_entry.exit.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %alloc_state) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_free_table_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_register_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__arpt_unregister_table(ptr noundef %net, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  %par.i = alloca %struct.xt_tgdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %me = getelementptr inbounds %struct.xt_table, ptr %table, i32 0, i32 4
  %0 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me, align 4
  %call = tail call ptr @xt_unregister_table(ptr noundef %table) #15
  %entries = getelementptr inbounds %struct.xt_table_info, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 8
  %add.ptr13 = getelementptr i8, ptr %entries, i32 %3
  %cmp14 = icmp ult ptr %entries, %add.ptr13
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds i8, ptr %par.i, i32 12
  %target2.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 1
  %targinfo.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup_entry.exit.for.body_crit_edge, %for.body.lr.ph
  %iter.015 = phi ptr [ %entries, %for.body.lr.ph ], [ %add.ptr1, %cleanup_entry.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #15
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 67108863, ptr %4, align 4
  %target_offset.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.015, i32 0, i32 1
  %6 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %target_offset.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %iter.015, i32 %conv.i.i
  %8 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %net, ptr %par.i, align 4
  %target.i = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target.i, align 4
  %11 = ptrtoint ptr %target2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %target2.i, align 4
  %data.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %targinfo.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %targinfo.i, align 4
  %destroy.i = getelementptr inbounds %struct.xt_target, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %destroy.i, align 4
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %for.body.cleanup_entry.exit_crit_edge, label %if.then.i

for.body.cleanup_entry.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_entry.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void %14(ptr noundef nonnull %par.i) #15
  br label %cleanup_entry.exit

cleanup_entry.exit:                               ; preds = %if.then.i, %for.body.cleanup_entry.exit_crit_edge
  %15 = ptrtoint ptr %target2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target2.i, align 4
  %me.i = getelementptr inbounds %struct.xt_target, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %18) #15
  %counters.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.015, i32 0, i32 4
  call void @xt_percpu_counter_free(ptr noundef %counters.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #15
  %next_offset = getelementptr inbounds %struct.arpt_entry, ptr %iter.015, i32 0, i32 2
  %19 = ptrtoint ptr %next_offset to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %next_offset, align 2
  %conv = zext i16 %20 to i32
  %add.ptr1 = getelementptr i8, ptr %iter.015, i32 %conv
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call, align 8
  %add.ptr = getelementptr i8, ptr %entries, i32 %22
  %cmp = icmp ult ptr %add.ptr1, %add.ptr
  br i1 %cmp, label %cleanup_entry.exit.for.body_crit_edge, label %cleanup_entry.exit.for.end_crit_edge

cleanup_entry.exit.for.end_crit_edge:             ; preds = %cleanup_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup_entry.exit.for.body_crit_edge:            ; preds = %cleanup_entry.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup_entry.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %number = getelementptr inbounds %struct.xt_table_info, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number, align 4
  %initial_entries = getelementptr inbounds %struct.xt_table_info, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %initial_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initial_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp2 = icmp ugt i32 %24, %26
  br i1 %cmp2, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @module_put(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @xt_free_table_info(ptr noundef %call) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arpt_unregister_table_pre_exit(ptr noundef %net, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xt_find_table(ptr noundef %net, i8 noundef zeroext 3, ptr noundef %name) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ops = getelementptr inbounds %struct.xt_table, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %valid_hooks = getelementptr inbounds %struct.xt_table, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_hooks, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #15
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef %1, i32 noundef %call.i) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_find_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arpt_unregister_table(ptr noundef %net, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xt_find_table(ptr noundef %net, i8 noundef zeroext 3, ptr noundef %name) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__arpt_unregister_table(ptr noundef %net, ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arp_tables_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @nf_unregister_sockopt(ptr noundef nonnull @arpt_sockopts) #15
  tail call void @xt_unregister_targets(ptr noundef nonnull @arpt_builtin_tg, i32 noundef 2) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @arp_tables_net_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_sockopt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_tables_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @arp_tables_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_targets(ptr noundef nonnull @arpt_builtin_tg, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err2_crit_edge, label %if.end4

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err2

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nf_register_sockopt(ptr noundef nonnull @arpt_sockopts) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %err4, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err4:                                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xt_unregister_targets(ptr noundef nonnull @arpt_builtin_tg, i32 noundef 2) #15
  br label %err2

err2:                                             ; preds = %err4, %if.end.err2_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err2_crit_edge ], [ %call5, %err4 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @arp_tables_net_ops) #15
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %err2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ifname_compare(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b, ptr nocapture noundef readonly %_mask) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_a, align 4
  %2 = ptrtoint ptr %_b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_b, align 4
  %xor.i = xor i32 %3, %1
  %4 = ptrtoint ptr %_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_mask, align 4
  %and.i = and i32 %xor.i, %5
  %arrayidx3.i = getelementptr i32, ptr %_a, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %_b, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %xor5.i = xor i32 %9, %7
  %arrayidx6.i = getelementptr i32, ptr %_mask, i32 1
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i, align 4
  %and7.i = and i32 %xor5.i, %11
  %or.i = or i32 %and7.i, %and.i
  %arrayidx8.i = getelementptr i32, ptr %_a, i32 2
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %_b, i32 2
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %xor10.i = xor i32 %15, %13
  %arrayidx11.i = getelementptr i32, ptr %_mask, i32 2
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i, align 4
  %and12.i = and i32 %xor10.i, %17
  %or13.i = or i32 %or.i, %and12.i
  %arrayidx14.i = getelementptr i32, ptr %_a, i32 3
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %_b, i32 3
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15.i, align 4
  %xor16.i = xor i32 %21, %19
  %arrayidx17.i = getelementptr i32, ptr %_mask, i32 3
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17.i, align 4
  %and18.i = and i32 %xor16.i, %23
  %or19.i = or i32 %or13.i, %and18.i
  ret i32 %or19.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_alloc_entry_offsets(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_table_hooks(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_entry_offsets(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xt_find_jump_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xt_percpu_counter_alloc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_target(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_percpu_counter_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_target(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_unregister_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_arpt_set_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, [2 x i32] %arg.coerce, i32 noundef %len) #0 align 64 {
entry:
  %par.i.i34 = alloca %struct.xt_tgdtor_param, align 4
  %ret.i = alloca i32, align 4
  %tmp.i20 = alloca %struct.xt_counters_info, align 8
  %par.i.i = alloca %struct.xt_tgdtor_param, align 4
  %tmp.i = alloca %struct.arpt_replace, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #15
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 96, label %sw.bb
    i32 97, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp.i) #15
  %7 = call ptr @memset(ptr %tmp.i, i32 255, i32 80)
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %arg.coerce, 0
  %8 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %arg.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #15
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 80, i32 -1226833920) #21, !srcloc !78
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !75

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 80) #15
  %10 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !79
  %and.i.i.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %8, i32 noundef 80) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !75

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 80, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 80, %res.0.i.i.i3.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i3.i.i)
  br label %do_replace.exit

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %14 = call ptr @memcpy(ptr %tmp.i, ptr %8, i32 80)
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end.i_crit_edge
  %num_counters.i = getelementptr inbounds %struct.arpt_replace, ptr %tmp.i, i32 0, i32 6
  %15 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217726, i32 %16)
  %cmp1.i = icmp ugt i32 %16, 134217726
  br i1 %cmp1.i, label %if.end.i.do_replace.exit_crit_edge, label %if.end3.i

if.end.i.do_replace.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_replace.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.i = icmp eq i32 %16, 0
  br i1 %cmp5.i, label %if.end3.i.do_replace.exit_crit_edge, label %if.end7.i

if.end3.i.do_replace.exit_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_replace.exit

if.end7.i:                                        ; preds = %if.end3.i
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %tmp.i, i32 0, i32 31
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx.i, align 1
  %size.i = getelementptr inbounds %struct.arpt_replace, ptr %tmp.i, i32 0, i32 3
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 8
  %call8.i = call ptr @xt_alloc_table_info(i32 noundef %19) #15
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end7.i.do_replace.exit_crit_edge, label %if.end10.i

if.end7.i.do_replace.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_replace.exit

if.end10.i:                                       ; preds = %if.end7.i
  %entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 8
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 80
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.i.i.i.i = icmp slt i32 %21, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i1.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge, label %if.then27.i.i.i.i, !prof !75

land.rhs16.i.i.i.i.free_newinfo.i_crit_edge:      ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_newinfo.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %free_newinfo.i

if.then.i.i.i.i1.i:                               ; preds = %if.end8.i.i.i.i
  call void @__check_object_size(ptr noundef %entries.i, i32 noundef %21, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #15
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i1.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2.i.i, i32 %21, i32 -1226833920) #21, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !75

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef %21) #15
  %23 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !79
  %and.i.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %entries.i, ptr noundef %add.ptr2.i.i, i32 noundef %21) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %21, %if.then.i.i.i.i1.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %21, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end15.i_crit_edge, label %if.then11.i.i.i.i, !prof !75

if.end.i.i.i.i.if.end15.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i.i = sub i32 %21, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entries.i, i32 %sub.i.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %free_newinfo.i

if.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = call ptr @memcpy(ptr %entries.i, ptr %add.ptr2.i.i, i32 %21)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end15.i_crit_edge
  %call16.i = call fastcc i32 @translate_table(ptr noundef %6, ptr noundef nonnull %call8.i, ptr noundef %entries.i, ptr noundef nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end15.i.free_newinfo.i_crit_edge

if.end15.i.free_newinfo.i_crit_edge:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_newinfo.i

if.end19.i:                                       ; preds = %if.end15.i
  %valid_hooks.i = getelementptr inbounds %struct.arpt_replace, ptr %tmp.i, i32 0, i32 1
  %28 = ptrtoint ptr %valid_hooks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %valid_hooks.i, align 8
  %30 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_counters.i, align 4
  %counters.i = getelementptr inbounds %struct.arpt_replace, ptr %tmp.i, i32 0, i32 7
  %32 = ptrtoint ptr %counters.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %counters.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #15
  %34 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %ret.i, align 4
  %call.i35 = call ptr @xt_counters_alloc(i32 noundef %31) #15
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %__do_replace.exit.thread, label %if.end.i39

__do_replace.exit.thread:                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #15
  br label %for.cond.preheader.i

if.end.i39:                                       ; preds = %if.end19.i
  %call1.i = call ptr @xt_request_find_table_lock(ptr noundef %6, i8 noundef zeroext 3, ptr noundef nonnull %tmp.i) #15
  %cmp.i.i38 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i38, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %call1.i to i32
  %36 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ret.i, align 4
  br label %__do_replace.exit

if.end5.i:                                        ; preds = %if.end.i39
  %valid_hooks6.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 1
  %37 = ptrtoint ptr %valid_hooks6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid_hooks6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %29)
  %cmp.not.i40 = icmp eq i32 %38, %29
  br i1 %cmp.not.i40, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -22, ptr %ret.i, align 4
  br label %put_module.i

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i = call ptr @xt_replace_table(ptr noundef %call1.i, i32 noundef %31, ptr noundef nonnull %call8.i, ptr noundef nonnull %ret.i) #15
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end8.i.put_module.i_crit_edge, label %if.end12.i

if.end8.i.put_module.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_module.i

if.end12.i:                                       ; preds = %if.end8.i
  %number.i41 = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 1
  %40 = ptrtoint ptr %number.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number.i41, align 4
  %initial_entries.i = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 2
  %42 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp13.i = icmp ugt i32 %41, %43
  br i1 %cmp13.i, label %if.end12.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.end12.i.if.then17.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %number14.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 1
  %44 = ptrtoint ptr %number14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %number14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp16.not.i = icmp ugt i32 %45, %43
  br i1 %cmp16.not.i, label %lor.lhs.false.i.if.end18.i_crit_edge, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17.i

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.end12.i.if.then17.i_crit_edge
  %me.i42 = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %46 = ptrtoint ptr %me.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %me.i42, align 4
  call void @module_put(ptr noundef %47) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %lor.lhs.false.i.if.end18.i_crit_edge
  %48 = ptrtoint ptr %number.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number.i41, align 4
  %50 = ptrtoint ptr %initial_entries.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %initial_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp21.i = icmp ugt i32 %49, %51
  br i1 %cmp21.i, label %land.lhs.true.i, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %number22.i = getelementptr inbounds %struct.xt_table_info, ptr %call8.i, i32 0, i32 1
  %52 = ptrtoint ptr %number22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %number22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp24.not.i = icmp ugt i32 %53, %51
  br i1 %cmp24.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %me26.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %54 = ptrtoint ptr %me26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %me26.i, align 4
  call void @module_put(ptr noundef %55) #15
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %land.lhs.true.i.if.end27.i_crit_edge, %if.end18.i.if.end27.i_crit_edge
  call void @xt_table_unlock(ptr noundef %call1.i) #15
  %call31.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %56 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i.i, i32 %56)
  %cmp32.i.i = icmp ult i32 %call31.i.i, %56
  br i1 %cmp32.i.i, label %for.body.lr.ph.i.i, label %if.end27.i.get_old_counters.exit.i_crit_edge

if.end27.i.get_old_counters.exit.i_crit_edge:     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_old_counters.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end27.i
  %entries.i.i = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call33.i.i = phi i32 [ %call31.i.i, %for.body.lr.ph.i.i ], [ %call.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call9.i, align 8
  %add.ptr27.i.i = getelementptr i8, ptr %entries.i.i, i32 %58
  %cmp428.i.i = icmp ult ptr %entries.i.i, %add.ptr27.i.i
  br i1 %cmp428.i.i, label %for.body5.lr.ph.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call33.i.i
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %iter.030.i.i = phi ptr [ %entries.i.i, %for.body5.lr.ph.i.i ], [ %add.ptr12.i.i, %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge ]
  %i.029.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc.i.i, %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge ]
  %counters6.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.030.i.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i.i81.i = icmp ugt i32 %59, 1
  br i1 %cmp.i.i81.i, label %do.body.i.i.i, label %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge

for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge: ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xt_get_per_cpu_counter.exit.i.i

do.body.i.i.i:                                    ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %60 = ptrtoint ptr %counters6.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %counters6.i.i, align 8
  %conv.i.i.i43 = trunc i64 %61 to i32
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %63, %conv.i.i.i43
  %64 = inttoptr i32 %add.i.i.i to ptr
  br label %xt_get_per_cpu_counter.exit.i.i

xt_get_per_cpu_counter.exit.i.i:                  ; preds = %do.body.i.i.i, %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %64, %do.body.i.i.i ], [ %counters6.i.i, %for.body5.i.i.xt_get_per_cpu_counter.exit.i.i_crit_edge ]
  %bcnt.i.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %bcnt.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %bcnt.i.i, align 8
  %arrayidx.i.i44 = getelementptr %struct.xt_counters, ptr %call.i35, i32 %i.029.i.i
  %bcnt8.i.i = getelementptr %struct.xt_counters, ptr %call.i35, i32 %i.029.i.i, i32 1
  %67 = ptrtoint ptr %bcnt8.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %bcnt8.i.i, align 8
  %add.i.i45 = add i64 %68, %66
  store i64 %add.i.i45, ptr %bcnt8.i.i, align 8
  %69 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %retval.0.i.i.i, align 8
  %71 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx.i.i44, align 8
  %add11.i.i46 = add i64 %72, %70
  store i64 %add11.i.i46, ptr %arrayidx.i.i44, align 8
  %inc.i.i = add i32 %i.029.i.i, 1
  %next_offset.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.030.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %next_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %next_offset.i.i, align 2
  %conv.i.i47 = zext i16 %74 to i32
  %add.ptr12.i.i = getelementptr i8, ptr %iter.030.i.i, i32 %conv.i.i47
  %75 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call9.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %entries.i.i, i32 %76
  %cmp4.i.i = icmp ult ptr %add.ptr12.i.i, %add.ptr.i.i
  br i1 %cmp4.i.i, label %xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge, label %xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge

xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge: ; preds = %xt_get_per_cpu_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

xt_get_per_cpu_counter.exit.i.i.for.body5.i.i_crit_edge: ; preds = %xt_get_per_cpu_counter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i.i

for.end.i.i:                                      ; preds = %xt_get_per_cpu_counter.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 645, i32 noundef 0) #15
  %call.i.i82.i = call i32 @__cond_resched() #15
  %call.i.i = call i32 @cpumask_next(i32 noundef %call33.i.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i83.i = icmp ult i32 %call.i.i, %77
  br i1 %cmp.i83.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.get_old_counters.exit.i_crit_edge

for.end.i.i.get_old_counters.exit.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_old_counters.exit.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

get_old_counters.exit.i:                          ; preds = %for.end.i.i.get_old_counters.exit.i_crit_edge, %if.end27.i.get_old_counters.exit.i_crit_edge
  %entries.i48 = getelementptr inbounds %struct.xt_table_info, ptr %call9.i, i32 0, i32 8
  %78 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call9.i, align 8
  %add.ptr88.i = getelementptr i8, ptr %entries.i48, i32 %79
  %cmp2889.i = icmp ult ptr %entries.i48, %add.ptr88.i
  br i1 %cmp2889.i, label %for.body.lr.ph.i51, label %get_old_counters.exit.i.for.end.i67_crit_edge

get_old_counters.exit.i.for.end.i67_crit_edge:    ; preds = %get_old_counters.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i67

for.body.lr.ph.i51:                               ; preds = %get_old_counters.exit.i
  %80 = getelementptr inbounds i8, ptr %par.i.i34, i32 12
  %target2.i.i49 = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i34, i32 0, i32 1
  %targinfo.i.i50 = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i34, i32 0, i32 2
  br label %for.body.i58

for.body.i58:                                     ; preds = %cleanup_entry.exit.i66.for.body.i58_crit_edge, %for.body.lr.ph.i51
  %iter.090.i = phi ptr [ %entries.i48, %for.body.lr.ph.i51 ], [ %add.ptr29.i63, %cleanup_entry.exit.i66.for.body.i58_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i.i34) #15
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 67108863, ptr %80, align 4
  %target_offset.i.i.i52 = getelementptr inbounds %struct.arpt_entry, ptr %iter.090.i, i32 0, i32 1
  %82 = ptrtoint ptr %target_offset.i.i.i52 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %target_offset.i.i.i52, align 4
  %conv.i.i84.i = zext i16 %83 to i32
  %add.ptr.i.i.i53 = getelementptr i8, ptr %iter.090.i, i32 %conv.i.i84.i
  %84 = ptrtoint ptr %par.i.i34 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %6, ptr %par.i.i34, align 4
  %target.i.i54 = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i.i53, i32 0, i32 1
  %85 = ptrtoint ptr %target.i.i54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %target.i.i54, align 4
  %87 = ptrtoint ptr %target2.i.i49 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %target2.i.i49, align 4
  %data.i.i55 = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i.i53, i32 0, i32 1
  %88 = ptrtoint ptr %targinfo.i.i50 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %data.i.i55, ptr %targinfo.i.i50, align 4
  %destroy.i.i56 = getelementptr inbounds %struct.xt_target, ptr %86, i32 0, i32 5
  %89 = ptrtoint ptr %destroy.i.i56 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %destroy.i.i56, align 4
  %cmp.not.i.i57 = icmp eq ptr %90, null
  br i1 %cmp.not.i.i57, label %for.body.i58.cleanup_entry.exit.i66_crit_edge, label %if.then.i85.i

for.body.i58.cleanup_entry.exit.i66_crit_edge:    ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_entry.exit.i66

if.then.i85.i:                                    ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #17
  call void %90(ptr noundef nonnull %par.i.i34) #15
  br label %cleanup_entry.exit.i66

cleanup_entry.exit.i66:                           ; preds = %if.then.i85.i, %for.body.i58.cleanup_entry.exit.i66_crit_edge
  %91 = ptrtoint ptr %target2.i.i49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %target2.i.i49, align 4
  %me.i.i59 = getelementptr inbounds %struct.xt_target, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %me.i.i59 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %me.i.i59, align 4
  call void @module_put(ptr noundef %94) #15
  %counters.i.i60 = getelementptr inbounds %struct.arpt_entry, ptr %iter.090.i, i32 0, i32 4
  call void @xt_percpu_counter_free(ptr noundef %counters.i.i60) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i.i34) #15
  %next_offset.i61 = getelementptr inbounds %struct.arpt_entry, ptr %iter.090.i, i32 0, i32 2
  %95 = ptrtoint ptr %next_offset.i61 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %next_offset.i61, align 2
  %conv.i62 = zext i16 %96 to i32
  %add.ptr29.i63 = getelementptr i8, ptr %iter.090.i, i32 %conv.i62
  %97 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call9.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %entries.i48, i32 %98
  %cmp28.i65 = icmp ult ptr %add.ptr29.i63, %add.ptr.i64
  br i1 %cmp28.i65, label %cleanup_entry.exit.i66.for.body.i58_crit_edge, label %cleanup_entry.exit.i66.for.end.i67_crit_edge

cleanup_entry.exit.i66.for.end.i67_crit_edge:     ; preds = %cleanup_entry.exit.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i67

cleanup_entry.exit.i66.for.body.i58_crit_edge:    ; preds = %cleanup_entry.exit.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i58

for.end.i67:                                      ; preds = %cleanup_entry.exit.i66.for.end.i67_crit_edge, %get_old_counters.exit.i.for.end.i67_crit_edge
  call void @xt_free_table_info(ptr noundef nonnull %call9.i) #15
  %mul.i = shl i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i68

land.rhs16.i.i.i:                                 ; preds = %for.end.i67
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.do.body.i_crit_edge, label %if.then27.i.i.i, !prof !75

land.rhs16.i.i.i.do.body.i_crit_edge:             ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %do.body.i

if.then.i.i.i.i68:                                ; preds = %for.end.i67
  call void @__check_object_size(ptr noundef nonnull %call.i35, i32 noundef %mul.i, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #15
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.i68.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i70

if.then.i.i.i.i68.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.end.i.i.i70:                                   ; preds = %if.then.i.i.i.i68
  %99 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %33, i32 %mul.i, i32 -1226833920) #21, !srcloc !82
  %asmresult.i.i.i = extractvalue { i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i70.copy_to_user.exit.i_crit_edge

if.end.i.i.i70.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i71 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i35, i32 noundef %mul.i) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %33, ptr noundef nonnull %call.i35, i32 noundef %mul.i) #15
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i70.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i68.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i68.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %mul.i, %if.end.i.i.i70.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %cmp31.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %cmp31.not.i, label %copy_to_user.exit.i.__do_replace.exit_crit_edge, label %copy_to_user.exit.i.do.body.i_crit_edge

copy_to_user.exit.i.do.body.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

copy_to_user.exit.i.__do_replace.exit_crit_edge:  ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__do_replace.exit

do.body.i:                                        ; preds = %copy_to_user.exit.i.do.body.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.do.body.i_crit_edge
  %call34.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %do.body.i.__do_replace.exit_crit_edge, label %do.end.i

do.body.i.__do_replace.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__do_replace.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #23
  br label %__do_replace.exit

put_module.i:                                     ; preds = %if.end8.i.put_module.i_crit_edge, %if.then7.i
  %me43.i = getelementptr inbounds %struct.xt_table, ptr %call1.i, i32 0, i32 4
  %100 = ptrtoint ptr %me43.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %me43.i, align 4
  call void @module_put(ptr noundef %101) #15
  call void @xt_table_unlock(ptr noundef %call1.i) #15
  br label %__do_replace.exit

__do_replace.exit:                                ; preds = %put_module.i, %do.end.i, %do.body.i.__do_replace.exit_crit_edge, %copy_to_user.exit.i.__do_replace.exit_crit_edge, %if.then3.i
  call void @vfree(ptr noundef nonnull %call.i35) #15
  %102 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %retval.0.i72.pr = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72.pr)
  %tobool24.not.i = icmp eq i32 %retval.0.i72.pr, 0
  br i1 %tobool24.not.i, label %__do_replace.exit.do_replace.exit_crit_edge, label %__do_replace.exit.for.cond.preheader.i_crit_edge

__do_replace.exit.for.cond.preheader.i_crit_edge: ; preds = %__do_replace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i

__do_replace.exit.do_replace.exit_crit_edge:      ; preds = %__do_replace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_replace.exit

for.cond.preheader.i:                             ; preds = %__do_replace.exit.for.cond.preheader.i_crit_edge, %__do_replace.exit.thread
  %retval.0.i7275 = phi i32 [ -12, %__do_replace.exit.thread ], [ %retval.0.i72.pr, %__do_replace.exit.for.cond.preheader.i_crit_edge ]
  %103 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call8.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %entries.i, i32 %104
  %cmp2811.i = icmp ult ptr %entries.i, %add.ptr10.i
  br i1 %cmp2811.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.free_newinfo.i_crit_edge

for.cond.preheader.i.free_newinfo.i_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_newinfo.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %105 = getelementptr inbounds i8, ptr %par.i.i, i32 12
  %target2.i.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i, i32 0, i32 1
  %targinfo.i.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup_entry.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %iter.012.i = phi ptr [ %entries.i, %for.body.lr.ph.i ], [ %add.ptr29.i, %cleanup_entry.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i.i) #15
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 67108863, ptr %105, align 4
  %target_offset.i.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.012.i, i32 0, i32 1
  %107 = ptrtoint ptr %target_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %target_offset.i.i.i, align 4
  %conv.i.i.i = zext i16 %108 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %iter.012.i, i32 %conv.i.i.i
  %109 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %6, ptr %par.i.i, align 4
  %target.i.i = getelementptr inbounds %struct.anon.148, ptr %add.ptr.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %target.i.i, align 4
  %112 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %target2.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.xt_entry_target, ptr %add.ptr.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %targinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %data.i.i, ptr %targinfo.i.i, align 4
  %destroy.i.i = getelementptr inbounds %struct.xt_target, ptr %111, i32 0, i32 5
  %114 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %destroy.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %115, null
  br i1 %cmp.not.i.i, label %for.body.i.cleanup_entry.exit.i_crit_edge, label %if.then.i4.i

for.body.i.cleanup_entry.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup_entry.exit.i

if.then.i4.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %115(ptr noundef nonnull %par.i.i) #15
  br label %cleanup_entry.exit.i

cleanup_entry.exit.i:                             ; preds = %if.then.i4.i, %for.body.i.cleanup_entry.exit.i_crit_edge
  %116 = ptrtoint ptr %target2.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %target2.i.i, align 4
  %me.i.i = getelementptr inbounds %struct.xt_target, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %me.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %me.i.i, align 4
  call void @module_put(ptr noundef %119) #15
  %counters.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.012.i, i32 0, i32 4
  call void @xt_percpu_counter_free(ptr noundef %counters.i.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i.i) #15
  %next_offset.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.012.i, i32 0, i32 2
  %120 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %next_offset.i, align 2
  %conv.i = zext i16 %121 to i32
  %add.ptr29.i = getelementptr i8, ptr %iter.012.i, i32 %conv.i
  %122 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call8.i, align 8
  %add.ptr.i = getelementptr i8, ptr %entries.i, i32 %123
  %cmp28.i = icmp ult ptr %add.ptr29.i, %add.ptr.i
  br i1 %cmp28.i, label %cleanup_entry.exit.i.for.body.i_crit_edge, label %cleanup_entry.exit.i.free_newinfo.i_crit_edge

cleanup_entry.exit.i.free_newinfo.i_crit_edge:    ; preds = %cleanup_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_newinfo.i

cleanup_entry.exit.i.for.body.i_crit_edge:        ; preds = %cleanup_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

free_newinfo.i:                                   ; preds = %cleanup_entry.exit.i.free_newinfo.i_crit_edge, %for.cond.preheader.i.free_newinfo.i_crit_edge, %if.end15.i.free_newinfo.i_crit_edge, %if.then11.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.end15.i.free_newinfo.i_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then27.i.i.i.i ], [ -14, %land.rhs16.i.i.i.i.free_newinfo.i_crit_edge ], [ %retval.0.i7275, %for.cond.preheader.i.free_newinfo.i_crit_edge ], [ %retval.0.i7275, %cleanup_entry.exit.i.free_newinfo.i_crit_edge ]
  call void @xt_free_table_info(ptr noundef nonnull %call8.i) #15
  br label %do_replace.exit

do_replace.exit:                                  ; preds = %free_newinfo.i, %__do_replace.exit.do_replace.exit_crit_edge, %if.end7.i.do_replace.exit_crit_edge, %if.end3.i.do_replace.exit_crit_edge, %if.end.i.do_replace.exit_crit_edge, %if.then11.i.i.i.i.i
  %retval.0.i = phi i32 [ %ret.0.i, %free_newinfo.i ], [ -12, %if.end.i.do_replace.exit_crit_edge ], [ -22, %if.end3.i.do_replace.exit_crit_edge ], [ -12, %if.end7.i.do_replace.exit_crit_edge ], [ 0, %__do_replace.exit.do_replace.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp.i) #15
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %124 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tmp.i20) #15
  %126 = call ptr @memset(ptr %tmp.i20, i32 255, i32 40)
  %call.i = call ptr @xt_copy_counters([2 x i32] %arg.coerce, i32 noundef %len, ptr noundef nonnull %tmp.i20) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i21

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  %127 = ptrtoint ptr %call.i to i32
  br label %do_add_counters.exit

if.end.i21:                                       ; preds = %sw.bb4
  %call3.i = call ptr @xt_find_table_lock(ptr noundef %125, i8 noundef zeroext 3, ptr noundef nonnull %tmp.i20) #15
  %cmp.i47.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %if.then5.i, label %if.end7.i23

if.then5.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %call3.i to i32
  br label %free.i

if.end7.i23:                                      ; preds = %if.end.i21
  call fastcc void @local_bh_disable() #15
  %private8.i = getelementptr inbounds %struct.xt_table, ptr %call3.i, i32 0, i32 2
  %129 = ptrtoint ptr %private8.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %private8.i, align 4
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %number.i, align 4
  %num_counters.i22 = getelementptr inbounds %struct.xt_counters_info, ptr %tmp.i20, i32 0, i32 1
  %133 = ptrtoint ptr %num_counters.i22 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_counters.i22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp.not.i = icmp eq i32 %132, %134
  br i1 %cmp.not.i, label %if.end10.i25, label %if.end7.i23.unlock_up_free.i_crit_edge

if.end7.i23.unlock_up_free.i_crit_edge:           ; preds = %if.end7.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock_up_free.i

if.end10.i25:                                     ; preds = %if.end7.i23
  %135 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %138
  %139 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %140, ptrtoint (ptr @xt_recseq to i32)
  %141 = inttoptr i32 %add.i.i to ptr
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  %144 = and i32 %143, 1
  %and.i.i = xor i32 %144, 1
  %add27.i.i = or i32 %and.i.i, %143
  store i32 %add27.i.i, ptr %141, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !74
  %entries.i24 = getelementptr inbounds %struct.xt_table_info, ptr %130, i32 0, i32 8
  %145 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %130, align 8
  %add.ptr57.i = getelementptr i8, ptr %entries.i24, i32 %146
  %cmp1558.i = icmp ult ptr %entries.i24, %add.ptr57.i
  br i1 %cmp1558.i, label %if.end10.i25.for.body.i27_crit_edge, label %if.end10.i25.for.end.i_crit_edge

if.end10.i25.for.end.i_crit_edge:                 ; preds = %if.end10.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end10.i25.for.body.i27_crit_edge:              ; preds = %if.end10.i25
  br label %for.body.i27

for.body.i27:                                     ; preds = %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge, %if.end10.i25.for.body.i27_crit_edge
  %iter.060.i = phi ptr [ %add.ptr22.i, %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge ], [ %entries.i24, %if.end10.i25.for.body.i27_crit_edge ]
  %i.059.i = phi i32 [ %inc.i, %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge ], [ 0, %if.end10.i25.for.body.i27_crit_edge ]
  %counters.i26 = getelementptr inbounds %struct.arpt_entry, ptr %iter.060.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %147 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp.i48.i = icmp ugt i32 %147, 1
  br i1 %cmp.i48.i, label %do.body.i.i, label %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge

for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge: ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #17
  br label %xt_get_this_cpu_counter.exit.i

do.body.i.i:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #17
  %148 = ptrtoint ptr %counters.i26 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %counters.i26, align 8
  %conv.i.i = trunc i64 %149 to i32
  %150 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i49.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i49.i to ptr
  %cpu.i50.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %cpu.i50.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu.i50.i, align 4
  %arrayidx.i51.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i51.i, align 4
  %add.i52.i = add i32 %155, %conv.i.i
  %156 = inttoptr i32 %add.i52.i to ptr
  br label %xt_get_this_cpu_counter.exit.i

xt_get_this_cpu_counter.exit.i:                   ; preds = %do.body.i.i, %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %156, %do.body.i.i ], [ %counters.i26, %for.body.i27.xt_get_this_cpu_counter.exit.i_crit_edge ]
  %arrayidx.i28 = getelementptr %struct.xt_counters, ptr %call.i, i32 %i.059.i
  %bcnt.i = getelementptr %struct.xt_counters, ptr %call.i, i32 %i.059.i, i32 1
  %157 = ptrtoint ptr %bcnt.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %bcnt.i, align 8
  %bcnt18.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %bcnt18.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %bcnt18.i, align 8
  %add.i = add i64 %160, %158
  store i64 %add.i, ptr %bcnt18.i, align 8
  %161 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx.i28, align 8
  %163 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %retval.0.i.i, align 8
  %add21.i = add i64 %164, %162
  store i64 %add21.i, ptr %retval.0.i.i, align 8
  %inc.i = add i32 %i.059.i, 1
  %next_offset.i29 = getelementptr inbounds %struct.arpt_entry, ptr %iter.060.i, i32 0, i32 2
  %165 = ptrtoint ptr %next_offset.i29 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %next_offset.i29, align 2
  %conv.i30 = zext i16 %166 to i32
  %add.ptr22.i = getelementptr i8, ptr %iter.060.i, i32 %conv.i30
  %167 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %130, align 8
  %add.ptr.i31 = getelementptr i8, ptr %entries.i24, i32 %168
  %cmp15.i = icmp ult ptr %add.ptr22.i, %add.ptr.i31
  br i1 %cmp15.i, label %xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge, label %xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge

xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge: ; preds = %xt_get_this_cpu_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

xt_get_this_cpu_counter.exit.i.for.body.i27_crit_edge: ; preds = %xt_get_this_cpu_counter.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i27

for.end.i:                                        ; preds = %xt_get_this_cpu_counter.exit.i.for.end.i_crit_edge, %if.end10.i25.for.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  %169 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i53.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i53.i to ptr
  %cpu.i54.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %cpu.i54.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cpu.i54.i, align 4
  %arrayidx.i55.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i55.i, align 4
  %add.i56.i = add i32 %174, ptrtoint (ptr @xt_recseq to i32)
  %175 = inttoptr i32 %add.i56.i to ptr
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %add11.i.i = add i32 %177, %and.i.i
  store i32 %add11.i.i, ptr %175, align 4
  br label %unlock_up_free.i

unlock_up_free.i:                                 ; preds = %for.end.i, %if.end7.i23.unlock_up_free.i_crit_edge
  %ret.0.i32 = phi i32 [ 0, %for.end.i ], [ -22, %if.end7.i23.unlock_up_free.i_crit_edge ]
  call fastcc void @local_bh_enable() #15
  call void @xt_table_unlock(ptr noundef %call3.i) #15
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call3.i, i32 0, i32 4
  %178 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %179) #15
  br label %free.i

free.i:                                           ; preds = %unlock_up_free.i, %if.then5.i
  %ret.1.i = phi i32 [ %128, %if.then5.i ], [ %ret.0.i32, %unlock_up_free.i ]
  call void @vfree(ptr noundef %call.i) #15
  br label %do_add_counters.exit

do_add_counters.exit:                             ; preds = %free.i, %if.then.i
  %retval.0.i33 = phi i32 [ %127, %if.then.i ], [ %ret.1.i, %free.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tmp.i20) #15
  br label %cleanup

cleanup:                                          ; preds = %do_add_counters.exit, %do_replace.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i33, %do_add_counters.exit ], [ %retval.0.i, %do_replace.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_arpt_get_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, ptr noundef %user, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  %get.i = alloca %struct.arpt_get_entries, align 8
  %name.i = alloca [32 x i8], align 1
  %info.i = alloca %struct.arpt_getinfo, align 4
  %ret = alloca i32, align 4
  %rev = alloca %struct.xt_get_revision, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #15
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !83
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %1 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %4, i32 noundef 12) #15
  br i1 %call1, label %if.end, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end:                                           ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %sw.default [
    i32 96, label %sw.bb
    i32 97, label %sw.bb4
    i32 99, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #15
  %8 = getelementptr inbounds [32 x i8], ptr %name.i, i32 0, i32 31
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 68
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %sw.bb.get_info.exit_crit_edge

sw.bb.get_info.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_info.exit

if.end8.i.i.i:                                    ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #15
  %call.i.i.i31 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i31, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 32, i32 -1226833920) #21, !srcloc !78
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !75

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %name.i, i32 noundef 32) #15
  %13 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !79
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %name.i, ptr noundef %user, i32 noundef 32) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !75

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i52.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i52.i
  %add.ptr.i.i.i = getelementptr i8, ptr %name.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i52.i)
  br label %get_info.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %8, align 1
  %call5.i = call ptr @xt_request_find_table_lock(ptr noundef %7, i8 noundef zeroext 3, ptr noundef nonnull %name.i) #15
  %cmp.i.i32 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i32, label %if.else25.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %info.i) #15
  %private8.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 2
  %18 = ptrtoint ptr %private8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private8.i, align 4
  %20 = call ptr @memset(ptr %info.i, i32 0, i32 32)
  %valid_hooks.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 1
  %21 = ptrtoint ptr %valid_hooks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid_hooks.i, align 4
  %valid_hooks9.i = getelementptr inbounds %struct.arpt_getinfo, ptr %info.i, i32 0, i32 1
  %23 = ptrtoint ptr %valid_hooks9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %valid_hooks9.i, align 4
  %hook_entry.i = getelementptr inbounds %struct.arpt_getinfo, ptr %info.i, i32 0, i32 2
  %hook_entry11.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %hook_entry.i, ptr %hook_entry11.i, i32 12)
  %underflow.i = getelementptr inbounds %struct.arpt_getinfo, ptr %info.i, i32 0, i32 3
  %underflow14.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 4
  %25 = call ptr @memcpy(ptr %underflow.i, ptr %underflow14.i, i32 12)
  %number.i = getelementptr inbounds %struct.xt_table_info, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number.i, align 4
  %num_entries.i = getelementptr inbounds %struct.arpt_getinfo, ptr %info.i, i32 0, i32 4
  %28 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_entries.i, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %19, align 8
  %size16.i = getelementptr inbounds %struct.arpt_getinfo, ptr %info.i, i32 0, i32 5
  %31 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %size16.i, align 4
  %call20.i = call ptr @strcpy(ptr noundef nonnull %info.i, ptr noundef nonnull %name.i) #19
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %33)
  %cmp1.i.i41.i = icmp ugt i32 %33, 68
  br i1 %cmp1.i.i41.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !73

if.then3.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef 68, i32 noundef %33) #15
  br label %copy_to_user.exit.thread.i

if.then.i.i.i.i:                                  ; preds = %if.then7.i
  call void @__check_object_size(ptr noundef nonnull %info.i, i32 noundef %33, i1 noundef zeroext true) #15
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #15
  %call.i.i44.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i44.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i47.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.end.i.i47.i:                                   ; preds = %if.then.i.i.i.i
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 %33, i32 -1226833920) #21, !srcloc !82
  %asmresult.i.i45.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i45.i)
  %cmp.i6.i46.i = icmp eq i32 %asmresult.i.i45.i, 0
  br i1 %cmp.i6.i46.i, label %if.then2.i.i.i, label %if.end.i.i47.i.copy_to_user.exit.i_crit_edge

if.end.i.i47.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i48.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef %33) #15
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %user, ptr noundef nonnull %info.i, i32 noundef %33) #15
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i47.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i49.i = phi i32 [ %33, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %33, %if.end.i.i47.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i49.i)
  %cmp22.not.i = icmp eq i32 %n.addr.0.i49.i, 0
  %spec.select.i = select i1 %cmp22.not.i, i32 0, i32 -14
  br label %copy_to_user.exit.thread.i

copy_to_user.exit.thread.i:                       ; preds = %copy_to_user.exit.i, %if.then3.i.i.i
  %35 = phi i32 [ -14, %if.then3.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @xt_table_unlock(ptr noundef %call5.i) #15
  %me.i = getelementptr inbounds %struct.xt_table, ptr %call5.i, i32 0, i32 4
  %36 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %37) #15
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %info.i) #15
  br label %get_info.exit

if.else25.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %call5.i to i32
  br label %get_info.exit

get_info.exit:                                    ; preds = %if.else25.i, %copy_to_user.exit.thread.i, %if.then11.i.i.i, %sw.bb.get_info.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.get_info.exit_crit_edge ], [ %38, %if.else25.i ], [ %35, %copy_to_user.exit.thread.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #15
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i, ptr %ret, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %40 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %get.i) #15
  %42 = call ptr @memset(ptr %get.i, i32 255, i32 40)
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %44)
  %cmp.i = icmp ult i32 %44, 40
  br i1 %cmp.i, label %sw.bb4.get_entries.exit_crit_edge, label %if.end8.i.i.i36

sw.bb4.get_entries.exit_crit_edge:                ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_entries.exit

if.end8.i.i.i36:                                  ; preds = %sw.bb4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #15
  %call.i.i.i35 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i35, label %if.end8.i.i.i36.if.then11.i.i.i50_crit_edge, label %land.lhs.true.i.i.i39

if.end8.i.i.i36.if.then11.i.i.i50_crit_edge:      ; preds = %if.end8.i.i.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i50

land.lhs.true.i.i.i39:                            ; preds = %if.end8.i.i.i36
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 40, i32 -1226833920) #21, !srcloc !78
  %asmresult.i.i.i37 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i37)
  %cmp.i6.i.i38 = icmp eq i32 %asmresult.i.i.i37, 0
  br i1 %cmp.i6.i.i38, label %if.end.i.i.i47, label %land.lhs.true.i.i.i39.if.then11.i.i.i50_crit_edge, !prof !75

land.lhs.true.i.i.i39.if.then11.i.i.i50_crit_edge: ; preds = %land.lhs.true.i.i.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i50

if.end.i.i.i47:                                   ; preds = %land.lhs.true.i.i.i39
  %call.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %get.i, i32 noundef 40) #15
  %46 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i.i.i.i.i41 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i.i41 to ptr
  %cpu_domain.i.i.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i42) #7, !srcloc !79
  %and.i.i.i.i.i43 = and i32 %48, -13
  %or.i.i.i.i.i44 = or i32 %and.i.i.i.i.i43, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i44) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  %call1.i.i.i.i45 = call i32 @arm_copy_from_user(ptr noundef nonnull %get.i, ptr noundef %user, i32 noundef 40) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i45)
  %tobool4.not.i.i.i46 = icmp eq i32 %call1.i.i.i.i45, 0
  br i1 %tobool4.not.i.i.i46, label %if.end3.i51, label %if.end.i.i.i47.if.then11.i.i.i50_crit_edge, !prof !75

if.end.i.i.i47.if.then11.i.i.i50_crit_edge:       ; preds = %if.end.i.i.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i.i50

if.then11.i.i.i50:                                ; preds = %if.end.i.i.i47.if.then11.i.i.i50_crit_edge, %land.lhs.true.i.i.i39.if.then11.i.i.i50_crit_edge, %if.end8.i.i.i36.if.then11.i.i.i50_crit_edge
  %res.0.i.i41.i = phi i32 [ %call1.i.i.i.i45, %if.end.i.i.i47.if.then11.i.i.i50_crit_edge ], [ 40, %if.end8.i.i.i36.if.then11.i.i.i50_crit_edge ], [ 40, %land.lhs.true.i.i.i39.if.then11.i.i.i50_crit_edge ]
  %sub.i.i.i48 = sub i32 40, %res.0.i.i41.i
  %add.ptr.i.i.i49 = getelementptr i8, ptr %get.i, i32 %sub.i.i.i48
  %49 = call ptr @memset(ptr %add.ptr.i.i.i49, i32 0, i32 %res.0.i.i41.i)
  br label %get_entries.exit

if.end3.i51:                                      ; preds = %if.end.i.i.i47
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %size.i = getelementptr inbounds %struct.arpt_get_entries, ptr %get.i, i32 0, i32 1
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 8
  %add.i = add i32 %53, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add.i)
  %cmp4.not.i = icmp eq i32 %51, %add.i
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end3.i51.get_entries.exit_crit_edge

if.end3.i51.get_entries.exit_crit_edge:           ; preds = %if.end3.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_entries.exit

if.end6.i:                                        ; preds = %if.end3.i51
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %get.i, i32 0, i32 31
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx.i, align 1
  %call8.i = call ptr @xt_find_table_lock(ptr noundef %41, i8 noundef zeroext 3, ptr noundef nonnull %get.i) #15
  %cmp.i.i52 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i52, label %if.else20.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  %private11.i = getelementptr inbounds %struct.xt_table, ptr %call8.i, i32 0, i32 2
  %55 = ptrtoint ptr %private11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private11.i, align 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp14.i = icmp eq i32 %58, %60
  br i1 %cmp14.i, label %if.then15.i, label %if.then10.i.if.end19.i_crit_edge

if.then10.i.if.end19.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.then10.i
  %entrytable.i = getelementptr inbounds %struct.arpt_get_entries, ptr %user, i32 0, i32 2
  %number.i.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %number.i.i.i, align 4
  %mul.i.i.i = shl i32 %62, 4
  %call.i.i33.i = call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #18
  %cmp.i.i34.i = icmp eq ptr %call.i.i33.i, null
  br i1 %cmp.i.i34.i, label %if.then15.i.if.then.i.i55_crit_edge, label %if.end.i.i35.i

if.then15.i.if.then.i.i55_crit_edge:              ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i55

if.end.i.i35.i:                                   ; preds = %if.then15.i
  %call73.i.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %63 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call73.i.i.i.i, i32 %63)
  %cmp74.i.i.i.i = icmp ult i32 %call73.i.i.i.i, %63
  br i1 %cmp74.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge

if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge: ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_counters.exit.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.end.i.i35.i
  %entries.i.i.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 8
  br label %for.body.i.i.i.i

for.cond.loopexit.i.i.i.i:                        ; preds = %do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge
  %call.i.i57.i.i = call i32 @cpumask_next(i32 noundef %call75.i.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %64 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i58.i.i = icmp ult i32 %call.i.i57.i.i, %64
  br i1 %cmp.i.i58.i.i, label %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge

for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %alloc_counters.exit.i.i

for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %call75.i.i.i.i = phi i32 [ %call73.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %call.i.i57.i.i, %for.cond.loopexit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call75.i.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, ptrtoint (ptr @xt_recseq to i32)
  %67 = inttoptr i32 %add.i.i.i.i to ptr
  %68 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %56, align 8
  %add.ptr69.i.i.i.i = getelementptr i8, ptr %entries.i.i.i.i, i32 %69
  %cmp570.i.i.i.i = icmp ult ptr %entries.i.i.i.i, %add.ptr69.i.i.i.i
  br i1 %cmp570.i.i.i.i, label %for.body6.lr.ph.i.i.i.i, label %for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i.i.i

for.body6.lr.ph.i.i.i.i:                          ; preds = %for.body.i.i.i.i
  %dep_map.c48.i.i.i.i.i = getelementptr inbounds %struct.seqcount, ptr %67, i32 0, i32 1
  br label %for.body6.i.i.i.i

for.body6.i.i.i.i:                                ; preds = %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge, %for.body6.lr.ph.i.i.i.i
  %iter.072.i.i.i.i = phi ptr [ %entries.i.i.i.i, %for.body6.lr.ph.i.i.i.i ], [ %add.ptr49.i.i.i.i, %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge ]
  %i.071.i.i.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge ]
  %counters8.i.i.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.072.i.i.i.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %70 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i.i.i.i.i = icmp ugt i32 %70, 1
  br i1 %cmp.i.i.i.i.i, label %do.body.i.i.i.i.i, label %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge

for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge: ; preds = %for.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %xt_get_per_cpu_counter.exit.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %for.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %counters8.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %counters8.i.i.i.i, align 8
  %conv.i.i.i.i.i = trunc i64 %72 to i32
  %73 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %74, %conv.i.i.i.i.i
  %75 = inttoptr i32 %add.i.i.i.i.i to ptr
  br label %xt_get_per_cpu_counter.exit.i.i.i.i

xt_get_per_cpu_counter.exit.i.i.i.i:              ; preds = %do.body.i.i.i.i.i, %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %75, %do.body.i.i.i.i.i ], [ %counters8.i.i.i.i, %for.body6.i.i.i.i.xt_get_per_cpu_counter.exit.i.i.i.i_crit_edge ]
  %bcnt31.i.i.i.i = getelementptr inbounds %struct.xt_counters, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  br label %do.body10.i.i.i.i

do.body10.i.i.i.i:                                ; preds = %while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge, %xt_get_per_cpu_counter.exit.i.i.i.i
  %76 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !84
  %and.i.i.i.i.i.i53 = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i53)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i53, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.body24.critedge.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @trace_hardirqs_off() #15
  %77 = call ptr @llvm.returnaddress(i32 0) #15
  %78 = ptrtoint ptr %77 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %78) #15
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %78) #15
  call void @trace_hardirqs_on() #15
  br label %do.body24.i.i.i.i.i

do.body24.critedge.i.i.i.i.i:                     ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %79 = call ptr @llvm.returnaddress(i32 0) #15
  %80 = ptrtoint ptr %79 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %80) #15
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i.i, i32 noundef %80) #15
  br label %do.body24.i.i.i.i.i

do.body24.i.i.i.i.i:                              ; preds = %do.body24.critedge.i.i.i.i.i, %if.then.i.i.i.i.i
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !85
  %and.i.i.i.i.i.i36.i = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i36.i)
  %tobool32.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i36.i, 0
  br i1 %tobool32.not.i.i.i.i.i, label %if.then36.i.i.i.i.i, label %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge, !prof !73

do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

if.then36.i.i.i.i.i:                              ; preds = %do.body24.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i:      ; preds = %if.then36.i.i.i.i.i, %do.body24.i.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #15, !srcloc !86
  %82 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %67, align 4
  %and67.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i.i.i)
  %tobool.not68.i.i.i.i = icmp eq i32 %and67.i.i.i.i, 0
  br i1 %tobool.not68.i.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  br label %do.end18.i.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i.i

do.end18.i.i.i.i:                                 ; preds = %do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.do.end18.i.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !87
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !88
  %84 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %67, align 4
  %and.i.i.i.i54 = and i32 %85, 1
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i54, 0
  br i1 %tobool.not.i.i.i.i, label %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge, label %do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge

do.end18.i.i.i.i.do.end18.i.i.i.i_crit_edge:      ; preds = %do.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end18.i.i.i.i

do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge:     ; preds = %do.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge
  %.lcssa.i.i.i.i = phi i32 [ %83, %seqcount_lockdep_reader_access.exit.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %85, %do.end18.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !89
  %86 = ptrtoint ptr %bcnt31.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %bcnt31.i.i.i.i, align 8
  %88 = ptrtoint ptr %retval.0.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %retval.0.i.i.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !90
  %90 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %67, align 4
  %cmp.i.i.not.i.i.i.i = icmp eq i32 %91, %.lcssa.i.i.i.i
  br i1 %cmp.i.i.not.i.i.i.i, label %do.body38.i.i.i.i, label %while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge

while.end.i.i.i.i.do.body10.i.i.i.i_crit_edge:    ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10.i.i.i.i

do.body38.i.i.i.i:                                ; preds = %while.end.i.i.i.i
  %arrayidx39.i.i.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %i.071.i.i.i.i
  %bcnt40.i.i.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %i.071.i.i.i.i, i32 1
  %92 = ptrtoint ptr %bcnt40.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %bcnt40.i.i.i.i, align 8
  %add41.i.i.i.i = add i64 %93, %87
  store i64 %add41.i.i.i.i, ptr %bcnt40.i.i.i.i, align 8
  %94 = ptrtoint ptr %arrayidx39.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx39.i.i.i.i, align 8
  %add44.i.i.i.i = add i64 %95, %89
  store i64 %add44.i.i.i.i, ptr %arrayidx39.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %i.071.i.i.i.i, 1
  call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 625, i32 noundef 0) #15
  %call.i.i.i59.i.i = call i32 @__cond_resched() #15
  %next_offset.i.i.i.i = getelementptr inbounds %struct.arpt_entry, ptr %iter.072.i.i.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %next_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %next_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %97 to i32
  %add.ptr49.i.i.i.i = getelementptr i8, ptr %iter.072.i.i.i.i, i32 %conv.i.i.i.i
  %98 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %56, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %entries.i.i.i.i, i32 %99
  %cmp5.i.i.i.i = icmp ult ptr %add.ptr49.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp5.i.i.i.i, label %do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge, label %do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge

do.body38.i.i.i.i.for.cond.loopexit.i.i.i.i_crit_edge: ; preds = %do.body38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit.i.i.i.i

do.body38.i.i.i.i.for.body6.i.i.i.i_crit_edge:    ; preds = %do.body38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6.i.i.i.i

alloc_counters.exit.i.i:                          ; preds = %for.cond.loopexit.i.i.i.i.alloc_counters.exit.i.i_crit_edge, %if.end.i.i35.i.alloc_counters.exit.i.i_crit_edge
  %cmp.i60.i.i = icmp ugt ptr %call.i.i33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i.i, label %alloc_counters.exit.i.i.if.then.i.i55_crit_edge, label %if.end.i.i56

alloc_counters.exit.i.i.if.then.i.i55_crit_edge:  ; preds = %alloc_counters.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i55

if.then.i.i55:                                    ; preds = %alloc_counters.exit.i.i.if.then.i.i55_crit_edge, %if.then15.i.if.then.i.i55_crit_edge
  %retval.0.i66.i.i = phi ptr [ %call.i.i33.i, %alloc_counters.exit.i.i.if.then.i.i55_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then15.i.if.then.i.i55_crit_edge ]
  %100 = ptrtoint ptr %retval.0.i66.i.i to i32
  br label %if.end19.i

if.end.i.i56:                                     ; preds = %alloc_counters.exit.i.i
  %entries.i.i = getelementptr inbounds %struct.xt_table_info, ptr %56, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp75.not.i.i = icmp eq i32 %58, 0
  br i1 %cmp75.not.i.i, label %if.end.i.i56.free_counters.i.i_crit_edge, label %if.end.i.i56.for.body.i.i_crit_edge

if.end.i.i56.for.body.i.i_crit_edge:              ; preds = %if.end.i.i56
  br label %for.body.i.i

if.end.i.i56.free_counters.i.i_crit_edge:         ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i56.for.body.i.i_crit_edge
  %num.077.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i56.for.body.i.i_crit_edge ]
  %off.076.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i56.for.body.i.i_crit_edge ]
  %add.ptr.i.i57 = getelementptr i8, ptr %entries.i.i, i32 %off.076.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %entrytable.i, i32 %off.076.i.i
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #15
  %call.i.i.i37.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i37.i, label %for.body.i.i.free_counters.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.free_counters.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr4.i.i, i32 192, i32 -1226833920) #21, !srcloc !82
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.free_counters.i.i_crit_edge

if.end.i.i.i.i.free_counters.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i.i57, i32 noundef 192) #15
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr4.i.i, ptr noundef %add.ptr.i.i57, i32 noundef 192) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %copy_to_user.exit.i.i.free_counters.i.i_crit_edge

copy_to_user.exit.i.i.free_counters.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

if.end7.i.i:                                      ; preds = %copy_to_user.exit.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 176
  %arrayidx.i.i = getelementptr %struct.xt_counters, ptr %call.i.i33.i, i32 %num.077.i.i
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #15
  %call.i.i48.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i48.i.i, label %if.end7.i.i.free_counters.i.i_crit_edge, label %if.end.i.i51.i.i

if.end7.i.i.free_counters.i.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

if.end.i.i51.i.i:                                 ; preds = %if.end7.i.i
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr9.i.i, i32 16, i32 -1226833920) #21, !srcloc !82
  %asmresult.i.i49.i.i = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i49.i.i)
  %cmp.i6.i50.i.i = icmp eq i32 %asmresult.i.i49.i.i, 0
  br i1 %cmp.i6.i50.i.i, label %copy_to_user.exit56.i.i, label %if.end.i.i51.i.i.free_counters.i.i_crit_edge

if.end.i.i51.i.i.free_counters.i.i_crit_edge:     ; preds = %if.end.i.i51.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

copy_to_user.exit56.i.i:                          ; preds = %if.end.i.i51.i.i
  %call.i.i.i52.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 16) #15
  %call.i12.i.i53.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr9.i.i, ptr noundef %arrayidx.i.i, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i53.i.i)
  %cmp11.not.i.i = icmp eq i32 %call.i12.i.i53.i.i, 0
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %copy_to_user.exit56.i.i.free_counters.i.i_crit_edge

copy_to_user.exit56.i.i.free_counters.i.i_crit_edge: ; preds = %copy_to_user.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

if.end13.i.i:                                     ; preds = %copy_to_user.exit56.i.i
  %target_offset.i.i.i.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr.i.i57, i32 0, i32 1
  %103 = ptrtoint ptr %target_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %target_offset.i.i.i.i, align 4
  %conv.i.i61.i.i = zext i16 %104 to i32
  %add.ptr.i.i62.i.i = getelementptr i8, ptr %add.ptr.i.i57, i32 %conv.i.i61.i.i
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %conv.i.i61.i.i
  %call17.i.i = call i32 @xt_target_to_user(ptr noundef %add.ptr.i.i62.i.i, ptr noundef %add.ptr16.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %for.inc.i.i, label %if.end13.i.i.free_counters.i.i_crit_edge

if.end13.i.i.free_counters.i.i_crit_edge:         ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i
  %next_offset.i.i = getelementptr inbounds %struct.arpt_entry, ptr %add.ptr.i.i57, i32 0, i32 2
  %105 = ptrtoint ptr %next_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %next_offset.i.i, align 2
  %conv21.i.i = zext i16 %106 to i32
  %add.i.i = add i32 %off.076.i.i, %conv21.i.i
  %inc.i.i = add i32 %num.077.i.i, 1
  %cmp.i38.i = icmp ult i32 %add.i.i, %58
  br i1 %cmp.i38.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.free_counters.i.i_crit_edge

for.inc.i.i.free_counters.i.i_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_counters.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

free_counters.i.i:                                ; preds = %for.inc.i.i.free_counters.i.i_crit_edge, %if.end13.i.i.free_counters.i.i_crit_edge, %copy_to_user.exit56.i.i.free_counters.i.i_crit_edge, %if.end.i.i51.i.i.free_counters.i.i_crit_edge, %if.end7.i.i.free_counters.i.i_crit_edge, %copy_to_user.exit.i.i.free_counters.i.i_crit_edge, %if.end.i.i.i.i.free_counters.i.i_crit_edge, %for.body.i.i.free_counters.i.i_crit_edge, %if.end.i.i56.free_counters.i.i_crit_edge
  %ret.2.i.i = phi i32 [ 0, %if.end.i.i56.free_counters.i.i_crit_edge ], [ 0, %for.inc.i.i.free_counters.i.i_crit_edge ], [ -14, %copy_to_user.exit.i.i.free_counters.i.i_crit_edge ], [ -14, %copy_to_user.exit56.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end13.i.i.free_counters.i.i_crit_edge ], [ -14, %for.body.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end.i.i.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end7.i.i.free_counters.i.i_crit_edge ], [ -14, %if.end.i.i51.i.i.free_counters.i.i_crit_edge ]
  call void @vfree(ptr noundef nonnull %call.i.i33.i) #15
  br label %if.end19.i

if.end19.i:                                       ; preds = %free_counters.i.i, %if.then.i.i55, %if.then10.i.if.end19.i_crit_edge
  %ret.0.i = phi i32 [ -11, %if.then10.i.if.end19.i_crit_edge ], [ %100, %if.then.i.i55 ], [ %ret.2.i.i, %free_counters.i.i ]
  %me.i58 = getelementptr inbounds %struct.xt_table, ptr %call8.i, i32 0, i32 4
  %107 = ptrtoint ptr %me.i58 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %me.i58, align 4
  call void @module_put(ptr noundef %108) #15
  call void @xt_table_unlock(ptr noundef %call8.i) #15
  br label %get_entries.exit

if.else20.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %call8.i to i32
  br label %get_entries.exit

get_entries.exit:                                 ; preds = %if.else20.i, %if.end19.i, %if.end3.i51.get_entries.exit_crit_edge, %if.then11.i.i.i50, %sw.bb4.get_entries.exit_crit_edge
  %retval.0.i59 = phi i32 [ -22, %sw.bb4.get_entries.exit_crit_edge ], [ -22, %if.end3.i51.get_entries.exit_crit_edge ], [ %109, %if.else20.i ], [ %ret.0.i, %if.end19.i ], [ -14, %if.then11.i.i.i50 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %get.i) #15
  %110 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %retval.0.i59, ptr %ret, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %rev) #15
  %111 = getelementptr inbounds [29 x i8], ptr %rev, i32 0, i32 28
  %112 = getelementptr inbounds %struct.xt_get_revision, ptr %rev, i32 0, i32 1
  %113 = call ptr @memset(ptr %rev, i32 255, i32 30)
  %114 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %115)
  %cmp.not = icmp eq i32 %115, 30
  br i1 %cmp.not, label %if.end8.i.i, label %if.then8

if.then8:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -22, ptr %ret, align 4
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.bb7
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 30, i32 -1226833920) #21, !srcloc !78
  %asmresult.i.i = extractvalue { i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !75

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rev, i32 noundef 30) #15
  %118 = call i32 @llvm.read_register.i32(metadata !63) #15
  %and.i.i.i.i.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 4
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !79
  %and.i.i.i.i = and i32 %120, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rev, ptr noundef %user, i32 noundef 30) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #15, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !75

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i62 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 30, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 30, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 30, %res.0.i.i62
  %add.ptr.i.i = getelementptr i8, ptr %rev, i32 %sub.i.i
  %121 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i62)
  %122 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -14, ptr %ret, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  %123 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %111, align 1
  %124 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %112, align 1
  %call15 = call i32 @xt_find_revision(i8 noundef zeroext 3, ptr noundef nonnull %rev, i8 noundef zeroext %125, i32 noundef 1, ptr noundef nonnull %ret) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cond.false, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.13, ptr noundef nonnull %rev) #15
  %126 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %112, align 1
  %call22 = call i32 @xt_find_revision(i8 noundef zeroext 3, ptr noundef nonnull %rev, i8 noundef zeroext %127, i32 noundef 1, ptr noundef nonnull %ret) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end13.cleanup_crit_edge, %if.then11.i.i, %if.then8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %rev) #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -22, ptr %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup, %get_entries.exit, %get_info.exit
  %129 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ret, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %sw.epilog, %entry.cleanup23_crit_edge
  %retval.0 = phi i32 [ %130, %sw.epilog ], [ -1, %entry.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_counters_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_table_lock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_replace_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_table_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_copy_counters([2 x i32], i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_find_table_lock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_find_revision(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_target_to_user(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arpt_error(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %2) #23
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arp_tables_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_proto_init(ptr noundef %net, i8 noundef zeroext 3) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_tables_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xt_proto_fini(ptr noundef %net, i8 noundef zeroext 3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_proto_init(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_proto_fini(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_sockopt(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_file474, !1, !"__UNIQUE_ID_file474", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_license475, !1, !"__UNIQUE_ID_license475", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author476, !4, !"__UNIQUE_ID_author476", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 35, i32 1}
!5 = !{ptr @__UNIQUE_ID_description477, !6, !"__UNIQUE_ID_description477", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 36, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 40, i32 9}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_arpt_alloc_initial_table, !12, !"__ksymtab_arpt_alloc_initial_table", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 42, i32 1}
!13 = !{ptr @arpt_do_table.nulldevname, !14, !"nulldevname", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 188, i32 20}
!15 = !{ptr @__ksymtab_arpt_unregister_table_pre_exit, !16, !"__ksymtab_arpt_unregister_table_pre_exit", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1567, i32 1}
!17 = !{ptr @__ksymtab_arpt_register_table, !18, !"__ksymtab_arpt_register_table", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1658, i32 1}
!19 = !{ptr @__ksymtab_arpt_unregister_table, !20, !"__ksymtab_arpt_unregister_table", i1 false, i1 false}
!20 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1659, i32 1}
!21 = !{ptr @__ksymtab_arpt_do_table, !22, !"__ksymtab_arpt_do_table", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1660, i32 1}
!23 = !{ptr @__initcall__kmod_arp_tables__479_1662_arp_tables_init6, !24, !"__initcall__kmod_arp_tables__479_1662_arp_tables_init6", i1 false, i1 false}
!24 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1662, i32 1}
!25 = !{ptr @__exitcall_arp_tables_fini, !26, !"__exitcall_arp_tables_fini", i1 false, i1 false}
!26 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1663, i32 1}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/netfilter/x_tables.h", i32 372, i32 12}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/netfilter/x_tables.h", i32 379, i32 2}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 557, i32 7}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 445, i32 29}
!35 = !{ptr @unconditional.uncond, !36, !"uncond", i1 false, i1 false}
!36 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 293, i32 31}
!37 = !{ptr @arpt_sockopts, !38, !"arpt_sockopts", i1 false, i1 false}
!38 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1597, i32 30}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 937, i32 3}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__do_replace._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @__do_replace._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1469, i32 3}
!54 = !{ptr @arpt_builtin_tg, !55, !"arpt_builtin_tg", i1 false, i1 false}
!55 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1578, i32 25}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 158, i32 2}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @arpt_error._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @arpt_error._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @arp_tables_net_ops, !62, !"arp_tables_net_ops", i1 false, i1 false}
!62 = !{!"../net/ipv4/netfilter/arp_tables.c", i32 1618, i32 33}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2157001222}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i8 0, i8 2}
!77 = !{i64 2157001547}
!78 = !{i64 2152359866, i64 2152359891}
!79 = !{i64 4855421}
!80 = !{i64 4855618}
!81 = !{i64 2152340851}
!82 = !{i64 2152360547, i64 2152360572}
!83 = !{!"auto-init"}
!84 = !{i64 640354, i64 640415}
!85 = !{i64 643086}
!86 = !{i64 643371}
!87 = !{i64 2157048768}
!88 = !{i64 2157048610}
!89 = !{i64 2157048938}
!90 = !{i64 2150299853}
