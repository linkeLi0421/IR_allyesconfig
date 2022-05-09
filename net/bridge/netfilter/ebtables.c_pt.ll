; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebtables.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebtables.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ebt_register_template\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_register_template\09\09\09\09"
module asm "\09.long\09__crc_ebt_register_template\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_register_template:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_register_template\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_register_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ebt_unregister_template\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_unregister_template\09\09\09\09"
module asm "\09.long\09__crc_ebt_unregister_template\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_unregister_template:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_unregister_template\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_unregister_template:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ebt_unregister_table_pre_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_unregister_table_pre_exit\09\09\09\09"
module asm "\09.long\09__crc_ebt_unregister_table_pre_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_unregister_table_pre_exit\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_unregister_table_pre_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ebt_register_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_register_table\09\09\09\09"
module asm "\09.long\09__crc_ebt_register_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_register_table\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_register_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ebt_unregister_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_unregister_table\09\09\09\09"
module asm "\09.long\09__crc_ebt_unregister_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_unregister_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_unregister_table\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_unregister_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ebt_do_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ebt_do_table\09\09\09\09"
module asm "\09.long\09__crc_ebt_do_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ebt_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ebt_do_table\22\09\09\09\09\09"
module asm "__kstrtabns_ebt_do_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.nf_sockopt_ops = type { %struct.list_head, i8, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.152, %union.anon.153, ptr, i32, i16, i8 }
%union.anon.152 = type { ptr }
%union.anon.153 = type { ptr }
%struct.ebt_table = type { %struct.list_head, [32 x i8], ptr, i32, %struct.rwlock_t, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ebt_table_info = type { i32, i32, [6 x ptr], ptr, ptr, [88 x i8], [0 x %struct.ebt_counter] }
%struct.ebt_counter = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ebt_entries = type { i32, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.129, %union.anon.130, [48 x i8], %union.anon.131, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.133, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.129 = type { ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, ptr }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.135, i32, i32, i32, i16, i16, %union.anon.137, i32, %union.anon.138, %union.anon.139, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.135 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.158, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.158 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.159, %union.anon.160, i16, i16 }
%union.anon.159 = type { %struct.in6_addr }
%union.anon.160 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ebt_entry_match = type { %union.anon.154, i32, [0 x i8] }
%union.anon.154 = type { ptr, [28 x i8] }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ebt_entry_watcher = type { %union.anon.156, i32, [0 x i8] }
%union.anon.156 = type { ptr, [28 x i8] }
%struct.ebt_standard_target = type { %struct.ebt_entry_target, i32 }
%struct.ebt_entry_target = type { %union.anon.150, i32, [0 x i8] }
%union.anon.150 = type { ptr, [28 x i8] }
%struct.ebt_chainstack = type { ptr, ptr, i32 }
%struct.ebt_replace_kernel = type { [32 x i8], i32, i32, i32, [6 x ptr], i32, ptr, ptr }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ebt_cl_stack = type { %struct.ebt_chainstack, i32, i32 }
%struct.anon.155 = type { [31 x i8], i8 }
%struct.ebt_template = type { %struct.list_head, [32 x i8], ptr, ptr }
%struct.ebt_replace = type { [32 x i8], i32, i32, i32, [6 x ptr], i32, ptr, ptr }
%struct.sock_common = type { %union.anon.102, %union.anon.104, %union.anon.105, i16, i8, i8, i32, %union.anon.107, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.110, [0 x i32], %union.anon.111, i16, i16, %union.anon.112, %struct.refcount_struct, [0 x i32], %union.anon.113 }
%union.anon.102 = type { i64 }
%union.anon.104 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { %struct.hlist_node }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/bridge/netfilter/ebtables.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RETURN on base chain\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bogus standard verdict\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jump to non-chain\0A\00", [45 x i8] zeroinitializer }, align 32
@ebt_pernet_id = internal global i32 0, section ".data..read_mostly", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ebt_register_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&table->lock\00", [19 x i8] zeroinitializer }, align 32
@ebt_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ebt_mutex, i64 52), ptr getelementptr (i8, ptr @ebt_mutex, i64 52) }, ptr @ebt_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@template_tables = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @template_tables, ptr @template_tables }, [24 x i8] zeroinitializer }, align 32
@ebt_register_template.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ebt_register_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_register_template = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_register_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_register_template to i32), ptr @__kstrtab_ebt_register_template, ptr @__kstrtabns_ebt_register_template }, section "___ksymtab+ebt_register_template", align 4
@ebt_unregister_template.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ebt_unregister_template = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_unregister_template = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_unregister_template = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_unregister_template to i32), ptr @__kstrtab_ebt_unregister_template, ptr @__kstrtabns_ebt_unregister_template }, section "___ksymtab+ebt_unregister_template", align 4
@__kstrtab_ebt_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_unregister_table_pre_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_unregister_table_pre_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_unregister_table_pre_exit to i32), ptr @__kstrtab_ebt_unregister_table_pre_exit, ptr @__kstrtabns_ebt_unregister_table_pre_exit }, section "___ksymtab+ebt_unregister_table_pre_exit", align 4
@__kstrtab_ebt_register_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_register_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_register_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_register_table to i32), ptr @__kstrtab_ebt_register_table, ptr @__kstrtabns_ebt_register_table }, section "___ksymtab+ebt_register_table", align 4
@__kstrtab_ebt_unregister_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_unregister_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_unregister_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_unregister_table to i32), ptr @__kstrtab_ebt_unregister_table, ptr @__kstrtabns_ebt_unregister_table }, section "___ksymtab+ebt_unregister_table", align 4
@__kstrtab_ebt_do_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ebt_do_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ebt_do_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ebt_do_table to i32), ptr @__kstrtab_ebt_do_table, ptr @__kstrtabns_ebt_do_table }, section "___ksymtab+ebt_do_table", align 4
@__initcall__kmod_ebtables__583_2600_ebtables_init6 = internal global ptr @ebtables_init, section ".initcall6.init", align 4
@__exitcall_ebtables_fini = internal global ptr @ebtables_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file584 = internal constant [44 x i8] c"ebtables.file=net/bridge/netfilter/ebtables\00", section ".modinfo", align 1
@__UNIQUE_ID_license585 = internal constant [21 x i8] c"ebtables.license=GPL\00", section ".modinfo", align 1
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/bridge/netfilter/../br_private.h\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standard\00", [23 x i8] zeroinitializer }, align 32
@ebt_standard_target = internal global { %struct.xt_target, [52 x i8] } { %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"standard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 7 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ebt_%s\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ebt_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ebt_mutex\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ebt_sockopts = internal global { %struct.nf_sockopt_ops, [56 x i8] } { %struct.nf_sockopt_ops { %struct.list_head zeroinitializer, i8 2, i32 128, i32 131, ptr @do_ebt_set_ctl, i32 128, i32 133, ptr @do_ebt_get_ctl, ptr null }, [56 x i8] zeroinitializer }, align 32
@ebt_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ebt_pernet_init, ptr null, ptr null, ptr null, ptr @ebt_pernet_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@do_replace_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014ebtables: ebtables: counters copy to user failed while replacing table\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_replace_finish\00", [46 x i8] zeroinitializer }, align 32
@do_replace_finish._entry_ptr = internal global ptr @do_replace_finish._entry, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ebtable_\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294967292, i64 4294967293, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 4294967292, i64 4294967295]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 129]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 128, i64 129, i64 130, i64 131]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 263, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 281, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 293, i32 7 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1240, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"ebt_mutex\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"template_tables\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 56, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [40 x i8] c"../net/bridge/netfilter/../br_private.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 416, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 45, i32 7 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 825, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"ebt_standard_target\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 80, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 409, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 57, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"ebt_sockopts\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2542, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"ebt_net_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2561, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 230, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 156, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1078, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 379, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [35 x i8] c"../net/bridge/netfilter/ebtables.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 370, i32 9 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file584, ptr @__UNIQUE_ID_license585, ptr @__exitcall_ebtables_fini, ptr @__initcall__kmod_ebtables__583_2600_ebtables_init6, ptr @__ksymtab_ebt_do_table, ptr @__ksymtab_ebt_register_table, ptr @__ksymtab_ebt_register_template, ptr @__ksymtab_ebt_unregister_table, ptr @__ksymtab_ebt_unregister_table_pre_exit, ptr @__ksymtab_ebt_unregister_template, ptr @do_replace_finish._entry, ptr @do_replace_finish._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ebt_register_table.__key, ptr @.str.4, ptr @ebt_mutex, ptr @template_tables, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ebt_standard_target, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ebt_sockopts, ptr @ebt_net_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_register_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_tables to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_standard_target to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_sockopts to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_replace_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebt_do_table(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #0 align 64 {
entry:
  %acpar = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %acpar) #13
  %2 = call ptr @memset(ptr %acpar, i32 255, i32 20)
  %state2 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 2
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %state, ptr %state2, align 4
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 5
  %4 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hotdrop, align 2
  %lock = getelementptr inbounds %struct.ebt_table, ptr %priv, i32 0, i32 4
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #13
  %private3 = getelementptr inbounds %struct.ebt_table, ptr %priv, i32 0, i32 6
  %5 = ptrtoint ptr %private3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private3, align 4
  %counters = getelementptr inbounds %struct.ebt_table_info, ptr %6, i32 0, i32 6
  %nentries4 = getelementptr inbounds %struct.ebt_table_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nentries4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nentries4, align 4
  %mul = shl i32 %8, 4
  %sub = add i32 %mul, 127
  %and = and i32 %sub, -128
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %mul5 = mul i32 %and, %12
  %add.ptr = getelementptr i8, ptr %counters, i32 %mul5
  %chainstack = getelementptr inbounds %struct.ebt_table_info, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chainstack, align 32
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr ptr, ptr %14, i32 %12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cs.0 = phi ptr [ %16, %if.then ], [ null, %entry.if.end_crit_edge ]
  %arrayidx9 = getelementptr %struct.ebt_table_info, ptr %6, i32 0, i32 2, i32 %conv
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %data = getelementptr inbounds %struct.ebt_entries, ptr %18, i32 0, i32 5
  %entries = getelementptr inbounds %struct.ebt_table_info, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entries, align 4
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %21 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end
  %point.0.ph = phi ptr [ %data, %if.end ], [ %point.0.ph.be, %while.cond.outer.backedge ]
  %sp.0.ph = phi i32 [ 0, %if.end ], [ %sp.0.ph.be, %while.cond.outer.backedge ]
  %chaininfo.0.ph = phi ptr [ %18, %if.end ], [ %chaininfo.0.ph.be, %while.cond.outer.backedge ]
  %i.0.ph = phi i32 [ 0, %if.end ], [ %i.0.ph.be, %while.cond.outer.backedge ]
  %nentries.0.ph.in = getelementptr inbounds %struct.ebt_entries, ptr %chaininfo.0.ph, i32 0, i32 4
  %22 = ptrtoint ptr %nentries.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %nentries.0.ph = load i32, ptr %nentries.0.ph.in, align 4
  %.pn384.in = getelementptr inbounds %struct.ebt_entries, ptr %chaininfo.0.ph, i32 0, i32 2
  %23 = ptrtoint ptr %.pn384.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn384 = load i32, ptr %.pn384.in, align 4
  %counter_base.0.ph = getelementptr %struct.ebt_counter, ptr %add.ptr, i32 %.pn384
  %policy = getelementptr inbounds %struct.ebt_entries, ptr %chaininfo.0.ph, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sp.0.ph)
  %cmp109 = icmp eq i32 %sp.0.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %letscontinue, %while.cond.outer
  %point.0 = phi ptr [ %add.ptr.i356, %letscontinue ], [ %point.0.ph, %while.cond.outer ]
  %i.0 = phi i32 [ %inc237, %letscontinue ], [ %i.0.ph, %while.cond.outer ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %nentries.0.ph)
  %cmp = icmp slt i32 %i.0, %nentries.0.ph
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in, align 4
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %28 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i, align 8
  %30 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %32 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %h_proto.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %while.body.if.end.i_crit_edge
  %ethproto.0.i = phi i16 [ %34, %if.else.i ], [ -32512, %while.body.if.end.i_crit_edge ]
  %35 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %point.0, align 4
  %and.i352 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i352)
  %tobool1.not.i = icmp eq i32 %and.i352, 0
  br i1 %tobool1.not.i, label %if.else10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %ethproto.0.i)
  %cmp.i.i = icmp ugt i16 %ethproto.0.i, 1535
  %invflags.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 1
  %37 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %invflags.i, align 4
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  %tobool7.not.i = xor i1 %cmp.i.i, %40
  br i1 %tobool7.not.i, label %if.then2.i.if.end29.i_crit_edge, label %if.then2.i.letscontinue_crit_edge

if.then2.i.letscontinue_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

if.then2.i.if.end29.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.else10.i:                                      ; preds = %if.end.i
  %and12.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i, label %if.else10.i.if.end29.i_crit_edge

if.else10.i.if.end29.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.else10.i
  %ethproto14.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 2
  %41 = ptrtoint ptr %ethproto14.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ethproto14.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %ethproto.0.i)
  %cmp.i = icmp eq i16 %42, %ethproto.0.i
  %invflags18.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 1
  %43 = ptrtoint ptr %invflags18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %invflags18.i, align 4
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp ne i32 %45, 0
  %tobool26.not.i = xor i1 %cmp.i, %46
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %land.lhs.true.i.letscontinue_crit_edge

land.lhs.true.i.letscontinue_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %land.lhs.true.i.if.end29.i_crit_edge, %if.else10.i.if.end29.i_crit_edge, %if.then2.i.if.end29.i_crit_edge
  %in30.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 3
  %47 = ptrtoint ptr %in30.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %in30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i172.i = icmp eq i8 %48, 0
  br i1 %cmp.i172.i, label %if.end29.i.ebt_dev_check.exit.i_crit_edge, label %if.end.i.i

if.end29.i.ebt_dev_check.exit.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit.i

if.end.i.i:                                       ; preds = %if.end29.i
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.i.ebt_dev_check.exit.i_crit_edge, label %while.cond.preheader.i.i

if.end.i.i.ebt_dev_check.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit.i

while.cond.preheader.i.i:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %switch46.i.i = icmp ult i8 %48, 2
  br i1 %switch46.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.land.rhs.i.i_crit_edge

while.cond.preheader.i.i.land.rhs.i.i_crit_edge:  ; preds = %while.cond.preheader.i.i
  br label %land.rhs.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %while.cond.preheader.i.i.land.rhs.i.i_crit_edge
  %49 = phi i8 [ %53, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %48, %while.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %i.047.i.i = phi i32 [ %inc.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx14.i.i = getelementptr i8, ptr %25, i32 %i.047.i.i
  %50 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx14.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp16.i.i = icmp eq i8 %49, %51
  br i1 %cmp16.i.i, label %while.body.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %i.047.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %in30.i, i32 %inc.i.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i, align 1
  %switch.i.i = icmp ult i8 %53, 2
  br i1 %switch.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %i.047.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %.lcssa.i.i = phi i8 [ 1, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %53, %while.body.i.i.while.end.i.i_crit_edge ], [ %49, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %arrayidx18.i.i = getelementptr i8, ptr %25, i32 %i.0.lcssa.i.i
  %54 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %.lcssa.i.i)
  %cmp22.not.i.i = icmp ne i8 %55, %.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lcssa.i.i)
  %cmp27.i.i = icmp ne i8 %.lcssa.i.i, 1
  %narrow.i.i = and i1 %cmp27.i.i, %cmp22.not.i.i
  %56 = zext i1 %narrow.i.i to i32
  br label %ebt_dev_check.exit.i

ebt_dev_check.exit.i:                             ; preds = %while.end.i.i, %if.end.i.i.ebt_dev_check.exit.i_crit_edge, %if.end29.i.ebt_dev_check.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %56, %while.end.i.i ], [ 0, %if.end29.i.ebt_dev_check.exit.i_crit_edge ], [ 1, %if.end.i.i.ebt_dev_check.exit.i_crit_edge ]
  %invflags32.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 1
  %57 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %invflags32.i, align 4
  %and33.i = lshr i32 %58, 1
  %and33.lobit.i = and i32 %and33.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %and33.lobit.i)
  %tobool40.not.i = icmp eq i32 %retval.0.i.i, %and33.lobit.i
  br i1 %tobool40.not.i, label %if.end42.i, label %ebt_dev_check.exit.i.letscontinue_crit_edge

ebt_dev_check.exit.i.letscontinue_crit_edge:      ; preds = %ebt_dev_check.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

if.end42.i:                                       ; preds = %ebt_dev_check.exit.i
  %out43.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 5
  %59 = ptrtoint ptr %out43.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %out43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp.i173.i = icmp eq i8 %60, 0
  br i1 %cmp.i173.i, label %if.end42.i.ebt_dev_check.exit194.i_crit_edge, label %if.end.i175.i

if.end42.i.ebt_dev_check.exit194.i_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit194.i

if.end.i175.i:                                    ; preds = %if.end42.i
  %tobool.not.i174.i = icmp eq ptr %27, null
  br i1 %tobool.not.i174.i, label %if.end.i175.i.ebt_dev_check.exit194.i_crit_edge, label %while.cond.preheader.i177.i

if.end.i175.i.ebt_dev_check.exit194.i_crit_edge:  ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit194.i

while.cond.preheader.i177.i:                      ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %switch46.i176.i = icmp ult i8 %60, 2
  br i1 %switch46.i176.i, label %while.cond.preheader.i177.i.while.end.i192.i_crit_edge, label %while.cond.preheader.i177.i.land.rhs.i181.i_crit_edge

while.cond.preheader.i177.i.land.rhs.i181.i_crit_edge: ; preds = %while.cond.preheader.i177.i
  br label %land.rhs.i181.i

while.cond.preheader.i177.i.while.end.i192.i_crit_edge: ; preds = %while.cond.preheader.i177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i192.i

land.rhs.i181.i:                                  ; preds = %while.body.i185.i.land.rhs.i181.i_crit_edge, %while.cond.preheader.i177.i.land.rhs.i181.i_crit_edge
  %61 = phi i8 [ %65, %while.body.i185.i.land.rhs.i181.i_crit_edge ], [ %60, %while.cond.preheader.i177.i.land.rhs.i181.i_crit_edge ]
  %i.047.i178.i = phi i32 [ %inc.i182.i, %while.body.i185.i.land.rhs.i181.i_crit_edge ], [ 0, %while.cond.preheader.i177.i.land.rhs.i181.i_crit_edge ]
  %arrayidx14.i179.i = getelementptr i8, ptr %27, i32 %i.047.i178.i
  %62 = ptrtoint ptr %arrayidx14.i179.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx14.i179.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp16.i180.i = icmp eq i8 %61, %63
  br i1 %cmp16.i180.i, label %while.body.i185.i, label %land.rhs.i181.i.while.end.i192.i_crit_edge

land.rhs.i181.i.while.end.i192.i_crit_edge:       ; preds = %land.rhs.i181.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i192.i

while.body.i185.i:                                ; preds = %land.rhs.i181.i
  %inc.i182.i = add i32 %i.047.i178.i, 1
  %arrayidx.i183.i = getelementptr i8, ptr %out43.i, i32 %inc.i182.i
  %64 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i183.i, align 1
  %switch.i184.i = icmp ult i8 %65, 2
  br i1 %switch.i184.i, label %while.body.i185.i.while.end.i192.i_crit_edge, label %while.body.i185.i.land.rhs.i181.i_crit_edge

while.body.i185.i.land.rhs.i181.i_crit_edge:      ; preds = %while.body.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i181.i

while.body.i185.i.while.end.i192.i_crit_edge:     ; preds = %while.body.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i192.i

while.end.i192.i:                                 ; preds = %while.body.i185.i.while.end.i192.i_crit_edge, %land.rhs.i181.i.while.end.i192.i_crit_edge, %while.cond.preheader.i177.i.while.end.i192.i_crit_edge
  %i.0.lcssa.i186.i = phi i32 [ 0, %while.cond.preheader.i177.i.while.end.i192.i_crit_edge ], [ %inc.i182.i, %while.body.i185.i.while.end.i192.i_crit_edge ], [ %i.047.i178.i, %land.rhs.i181.i.while.end.i192.i_crit_edge ]
  %.lcssa.i187.i = phi i8 [ 1, %while.cond.preheader.i177.i.while.end.i192.i_crit_edge ], [ %65, %while.body.i185.i.while.end.i192.i_crit_edge ], [ %61, %land.rhs.i181.i.while.end.i192.i_crit_edge ]
  %arrayidx18.i188.i = getelementptr i8, ptr %27, i32 %i.0.lcssa.i186.i
  %66 = ptrtoint ptr %arrayidx18.i188.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx18.i188.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %.lcssa.i187.i)
  %cmp22.not.i189.i = icmp ne i8 %67, %.lcssa.i187.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lcssa.i187.i)
  %cmp27.i190.i = icmp ne i8 %.lcssa.i187.i, 1
  %narrow.i191.i = and i1 %cmp27.i190.i, %cmp22.not.i189.i
  %68 = zext i1 %narrow.i191.i to i32
  br label %ebt_dev_check.exit194.i

ebt_dev_check.exit194.i:                          ; preds = %while.end.i192.i, %if.end.i175.i.ebt_dev_check.exit194.i_crit_edge, %if.end42.i.ebt_dev_check.exit194.i_crit_edge
  %retval.0.i193.i = phi i32 [ %68, %while.end.i192.i ], [ 0, %if.end42.i.ebt_dev_check.exit194.i_crit_edge ], [ 1, %if.end.i175.i.ebt_dev_check.exit194.i_crit_edge ]
  %and47.i = lshr i32 %58, 2
  %and47.lobit.i = and i32 %and47.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i193.i, i32 %and47.lobit.i)
  %tobool54.not.i = icmp eq i32 %retval.0.i193.i, %and47.lobit.i
  br i1 %tobool54.not.i, label %if.end56.i, label %ebt_dev_check.exit194.i.letscontinue_crit_edge

ebt_dev_check.exit194.i.letscontinue_crit_edge:   ; preds = %ebt_dev_check.exit194.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

if.end56.i:                                       ; preds = %ebt_dev_check.exit194.i
  %tobool57.not.i = icmp eq ptr %25, null
  br i1 %tobool57.not.i, label %if.end56.i.if.end75.i_crit_edge, label %land.lhs.true58.i

if.end56.i.if.end75.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.i

land.lhs.true58.i:                                ; preds = %if.end56.i
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 95
  %69 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i195.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i195.i, label %land.lhs.true.i.i, label %land.lhs.true58.i.br_port_get_rcu.exit.i_crit_edge

land.lhs.true58.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true58.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 416, ptr noundef nonnull @.str.6) #13
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true58.i.br_port_get_rcu.exit.i_crit_edge
  %cmp60.not.i = icmp eq ptr %70, null
  br i1 %cmp60.not.i, label %br_port_get_rcu.exit.i.if.end75.i_crit_edge, label %land.lhs.true62.i

br_port_get_rcu.exit.i.if.end75.i_crit_edge:      ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.i

land.lhs.true62.i:                                ; preds = %br_port_get_rcu.exit.i
  %logical_in.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %75 = ptrtoint ptr %logical_in.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %logical_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp.i196.i = icmp eq i8 %76, 0
  br i1 %cmp.i196.i, label %land.lhs.true62.i.ebt_dev_check.exit217.i_crit_edge, label %if.end.i198.i

land.lhs.true62.i.ebt_dev_check.exit217.i_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit217.i

if.end.i198.i:                                    ; preds = %land.lhs.true62.i
  %tobool.not.i197.i = icmp eq ptr %74, null
  br i1 %tobool.not.i197.i, label %if.end.i198.i.ebt_dev_check.exit217.i_crit_edge, label %while.cond.preheader.i200.i

if.end.i198.i.ebt_dev_check.exit217.i_crit_edge:  ; preds = %if.end.i198.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit217.i

while.cond.preheader.i200.i:                      ; preds = %if.end.i198.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %switch46.i199.i = icmp ult i8 %76, 2
  br i1 %switch46.i199.i, label %while.cond.preheader.i200.i.while.end.i215.i_crit_edge, label %while.cond.preheader.i200.i.land.rhs.i204.i_crit_edge

while.cond.preheader.i200.i.land.rhs.i204.i_crit_edge: ; preds = %while.cond.preheader.i200.i
  br label %land.rhs.i204.i

while.cond.preheader.i200.i.while.end.i215.i_crit_edge: ; preds = %while.cond.preheader.i200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i215.i

land.rhs.i204.i:                                  ; preds = %while.body.i208.i.land.rhs.i204.i_crit_edge, %while.cond.preheader.i200.i.land.rhs.i204.i_crit_edge
  %77 = phi i8 [ %81, %while.body.i208.i.land.rhs.i204.i_crit_edge ], [ %76, %while.cond.preheader.i200.i.land.rhs.i204.i_crit_edge ]
  %i.047.i201.i = phi i32 [ %inc.i205.i, %while.body.i208.i.land.rhs.i204.i_crit_edge ], [ 0, %while.cond.preheader.i200.i.land.rhs.i204.i_crit_edge ]
  %arrayidx14.i202.i = getelementptr i8, ptr %74, i32 %i.047.i201.i
  %78 = ptrtoint ptr %arrayidx14.i202.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx14.i202.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp16.i203.i = icmp eq i8 %77, %79
  br i1 %cmp16.i203.i, label %while.body.i208.i, label %land.rhs.i204.i.while.end.i215.i_crit_edge

land.rhs.i204.i.while.end.i215.i_crit_edge:       ; preds = %land.rhs.i204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i215.i

while.body.i208.i:                                ; preds = %land.rhs.i204.i
  %inc.i205.i = add i32 %i.047.i201.i, 1
  %arrayidx.i206.i = getelementptr i8, ptr %logical_in.i, i32 %inc.i205.i
  %80 = ptrtoint ptr %arrayidx.i206.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i206.i, align 1
  %switch.i207.i = icmp ult i8 %81, 2
  br i1 %switch.i207.i, label %while.body.i208.i.while.end.i215.i_crit_edge, label %while.body.i208.i.land.rhs.i204.i_crit_edge

while.body.i208.i.land.rhs.i204.i_crit_edge:      ; preds = %while.body.i208.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i204.i

while.body.i208.i.while.end.i215.i_crit_edge:     ; preds = %while.body.i208.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i215.i

while.end.i215.i:                                 ; preds = %while.body.i208.i.while.end.i215.i_crit_edge, %land.rhs.i204.i.while.end.i215.i_crit_edge, %while.cond.preheader.i200.i.while.end.i215.i_crit_edge
  %i.0.lcssa.i209.i = phi i32 [ 0, %while.cond.preheader.i200.i.while.end.i215.i_crit_edge ], [ %inc.i205.i, %while.body.i208.i.while.end.i215.i_crit_edge ], [ %i.047.i201.i, %land.rhs.i204.i.while.end.i215.i_crit_edge ]
  %.lcssa.i210.i = phi i8 [ 1, %while.cond.preheader.i200.i.while.end.i215.i_crit_edge ], [ %81, %while.body.i208.i.while.end.i215.i_crit_edge ], [ %77, %land.rhs.i204.i.while.end.i215.i_crit_edge ]
  %arrayidx18.i211.i = getelementptr i8, ptr %74, i32 %i.0.lcssa.i209.i
  %82 = ptrtoint ptr %arrayidx18.i211.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx18.i211.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %.lcssa.i210.i)
  %cmp22.not.i212.i = icmp ne i8 %83, %.lcssa.i210.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lcssa.i210.i)
  %cmp27.i213.i = icmp ne i8 %.lcssa.i210.i, 1
  %narrow.i214.i = and i1 %cmp27.i213.i, %cmp22.not.i212.i
  %84 = zext i1 %narrow.i214.i to i32
  br label %ebt_dev_check.exit217.i

ebt_dev_check.exit217.i:                          ; preds = %while.end.i215.i, %if.end.i198.i.ebt_dev_check.exit217.i_crit_edge, %land.lhs.true62.i.ebt_dev_check.exit217.i_crit_edge
  %retval.0.i216.i = phi i32 [ %84, %while.end.i215.i ], [ 0, %land.lhs.true62.i.ebt_dev_check.exit217.i_crit_edge ], [ 1, %if.end.i198.i.ebt_dev_check.exit217.i_crit_edge ]
  %85 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %invflags32.i, align 4
  %and66.i = lshr i32 %86, 5
  %and66.lobit.i = and i32 %and66.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i216.i, i32 %and66.lobit.i)
  %tobool73.not.i = icmp eq i32 %retval.0.i216.i, %and66.lobit.i
  br i1 %tobool73.not.i, label %ebt_dev_check.exit217.i.if.end75.i_crit_edge, label %ebt_dev_check.exit217.i.letscontinue_crit_edge

ebt_dev_check.exit217.i.letscontinue_crit_edge:   ; preds = %ebt_dev_check.exit217.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ebt_dev_check.exit217.i.if.end75.i_crit_edge:     ; preds = %ebt_dev_check.exit217.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.i

if.end75.i:                                       ; preds = %ebt_dev_check.exit217.i.if.end75.i_crit_edge, %br_port_get_rcu.exit.i.if.end75.i_crit_edge, %if.end56.i.if.end75.i_crit_edge
  %tobool76.not.i = icmp eq ptr %27, null
  br i1 %tobool76.not.i, label %if.end75.i.if.end96.i_crit_edge, label %land.lhs.true77.i

if.end75.i.if.end96.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

land.lhs.true77.i:                                ; preds = %if.end75.i
  %rx_handler_data.i218.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 95
  %87 = ptrtoint ptr %rx_handler_data.i218.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %rx_handler_data.i218.i, align 4
  %call.i219.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219.i)
  %tobool.not.i220.i = icmp eq i32 %call.i219.i, 0
  br i1 %tobool.not.i220.i, label %land.lhs.true.i223.i, label %land.lhs.true77.i.br_port_get_rcu.exit227.i_crit_edge

land.lhs.true77.i.br_port_get_rcu.exit227.i_crit_edge: ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit227.i

land.lhs.true.i223.i:                             ; preds = %land.lhs.true77.i
  %call2.i221.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i221.i)
  %tobool3.not.i222.i = icmp eq i32 %call2.i221.i, 0
  br i1 %tobool3.not.i222.i, label %land.lhs.true.i223.i.br_port_get_rcu.exit227.i_crit_edge, label %land.lhs.true4.i225.i

land.lhs.true.i223.i.br_port_get_rcu.exit227.i_crit_edge: ; preds = %land.lhs.true.i223.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit227.i

land.lhs.true4.i225.i:                            ; preds = %land.lhs.true.i223.i
  %.b9.i224.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i224.i, label %land.lhs.true4.i225.i.br_port_get_rcu.exit227.i_crit_edge, label %if.then.i226.i

land.lhs.true4.i225.i.br_port_get_rcu.exit227.i_crit_edge: ; preds = %land.lhs.true4.i225.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %br_port_get_rcu.exit227.i

if.then.i226.i:                                   ; preds = %land.lhs.true4.i225.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 416, ptr noundef nonnull @.str.6) #13
  br label %br_port_get_rcu.exit227.i

br_port_get_rcu.exit227.i:                        ; preds = %if.then.i226.i, %land.lhs.true4.i225.i.br_port_get_rcu.exit227.i_crit_edge, %land.lhs.true.i223.i.br_port_get_rcu.exit227.i_crit_edge, %land.lhs.true77.i.br_port_get_rcu.exit227.i_crit_edge
  %cmp79.not.i = icmp eq ptr %88, null
  br i1 %cmp79.not.i, label %br_port_get_rcu.exit227.i.if.end96.i_crit_edge, label %land.lhs.true81.i

br_port_get_rcu.exit227.i.if.end96.i_crit_edge:   ; preds = %br_port_get_rcu.exit227.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

land.lhs.true81.i:                                ; preds = %br_port_get_rcu.exit227.i
  %logical_out.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 6
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %dev84.i = getelementptr inbounds %struct.net_bridge, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dev84.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev84.i, align 4
  %93 = ptrtoint ptr %logical_out.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %logical_out.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp.i228.i = icmp eq i8 %94, 0
  br i1 %cmp.i228.i, label %land.lhs.true81.i.ebt_dev_check.exit249.i_crit_edge, label %if.end.i230.i

land.lhs.true81.i.ebt_dev_check.exit249.i_crit_edge: ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit249.i

if.end.i230.i:                                    ; preds = %land.lhs.true81.i
  %tobool.not.i229.i = icmp eq ptr %92, null
  br i1 %tobool.not.i229.i, label %if.end.i230.i.ebt_dev_check.exit249.i_crit_edge, label %while.cond.preheader.i232.i

if.end.i230.i.ebt_dev_check.exit249.i_crit_edge:  ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_dev_check.exit249.i

while.cond.preheader.i232.i:                      ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %switch46.i231.i = icmp ult i8 %94, 2
  br i1 %switch46.i231.i, label %while.cond.preheader.i232.i.while.end.i247.i_crit_edge, label %while.cond.preheader.i232.i.land.rhs.i236.i_crit_edge

while.cond.preheader.i232.i.land.rhs.i236.i_crit_edge: ; preds = %while.cond.preheader.i232.i
  br label %land.rhs.i236.i

while.cond.preheader.i232.i.while.end.i247.i_crit_edge: ; preds = %while.cond.preheader.i232.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i247.i

land.rhs.i236.i:                                  ; preds = %while.body.i240.i.land.rhs.i236.i_crit_edge, %while.cond.preheader.i232.i.land.rhs.i236.i_crit_edge
  %95 = phi i8 [ %99, %while.body.i240.i.land.rhs.i236.i_crit_edge ], [ %94, %while.cond.preheader.i232.i.land.rhs.i236.i_crit_edge ]
  %i.047.i233.i = phi i32 [ %inc.i237.i, %while.body.i240.i.land.rhs.i236.i_crit_edge ], [ 0, %while.cond.preheader.i232.i.land.rhs.i236.i_crit_edge ]
  %arrayidx14.i234.i = getelementptr i8, ptr %92, i32 %i.047.i233.i
  %96 = ptrtoint ptr %arrayidx14.i234.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx14.i234.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp16.i235.i = icmp eq i8 %95, %97
  br i1 %cmp16.i235.i, label %while.body.i240.i, label %land.rhs.i236.i.while.end.i247.i_crit_edge

land.rhs.i236.i.while.end.i247.i_crit_edge:       ; preds = %land.rhs.i236.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i247.i

while.body.i240.i:                                ; preds = %land.rhs.i236.i
  %inc.i237.i = add i32 %i.047.i233.i, 1
  %arrayidx.i238.i = getelementptr i8, ptr %logical_out.i, i32 %inc.i237.i
  %98 = ptrtoint ptr %arrayidx.i238.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i238.i, align 1
  %switch.i239.i = icmp ult i8 %99, 2
  br i1 %switch.i239.i, label %while.body.i240.i.while.end.i247.i_crit_edge, label %while.body.i240.i.land.rhs.i236.i_crit_edge

while.body.i240.i.land.rhs.i236.i_crit_edge:      ; preds = %while.body.i240.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i236.i

while.body.i240.i.while.end.i247.i_crit_edge:     ; preds = %while.body.i240.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i247.i

while.end.i247.i:                                 ; preds = %while.body.i240.i.while.end.i247.i_crit_edge, %land.rhs.i236.i.while.end.i247.i_crit_edge, %while.cond.preheader.i232.i.while.end.i247.i_crit_edge
  %i.0.lcssa.i241.i = phi i32 [ 0, %while.cond.preheader.i232.i.while.end.i247.i_crit_edge ], [ %inc.i237.i, %while.body.i240.i.while.end.i247.i_crit_edge ], [ %i.047.i233.i, %land.rhs.i236.i.while.end.i247.i_crit_edge ]
  %.lcssa.i242.i = phi i8 [ 1, %while.cond.preheader.i232.i.while.end.i247.i_crit_edge ], [ %99, %while.body.i240.i.while.end.i247.i_crit_edge ], [ %95, %land.rhs.i236.i.while.end.i247.i_crit_edge ]
  %arrayidx18.i243.i = getelementptr i8, ptr %92, i32 %i.0.lcssa.i241.i
  %100 = ptrtoint ptr %arrayidx18.i243.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx18.i243.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %.lcssa.i242.i)
  %cmp22.not.i244.i = icmp ne i8 %101, %.lcssa.i242.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.lcssa.i242.i)
  %cmp27.i245.i = icmp ne i8 %.lcssa.i242.i, 1
  %narrow.i246.i = and i1 %cmp27.i245.i, %cmp22.not.i244.i
  %102 = zext i1 %narrow.i246.i to i32
  br label %ebt_dev_check.exit249.i

ebt_dev_check.exit249.i:                          ; preds = %while.end.i247.i, %if.end.i230.i.ebt_dev_check.exit249.i_crit_edge, %land.lhs.true81.i.ebt_dev_check.exit249.i_crit_edge
  %retval.0.i248.i = phi i32 [ %102, %while.end.i247.i ], [ 0, %land.lhs.true81.i.ebt_dev_check.exit249.i_crit_edge ], [ 1, %if.end.i230.i.ebt_dev_check.exit249.i_crit_edge ]
  %103 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %invflags32.i, align 4
  %and87.i = lshr i32 %104, 6
  %and87.lobit.i = and i32 %and87.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i248.i, i32 %and87.lobit.i)
  %tobool94.not.i = icmp eq i32 %retval.0.i248.i, %and87.lobit.i
  br i1 %tobool94.not.i, label %ebt_dev_check.exit249.i.if.end96.i_crit_edge, label %ebt_dev_check.exit249.i.letscontinue_crit_edge

ebt_dev_check.exit249.i.letscontinue_crit_edge:   ; preds = %ebt_dev_check.exit249.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ebt_dev_check.exit249.i.if.end96.i_crit_edge:     ; preds = %ebt_dev_check.exit249.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

if.end96.i:                                       ; preds = %ebt_dev_check.exit249.i.if.end96.i_crit_edge, %br_port_get_rcu.exit227.i.if.end96.i_crit_edge, %if.end75.i.if.end96.i_crit_edge
  %105 = ptrtoint ptr %point.0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %point.0, align 4
  %and98.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end118.i_crit_edge, label %if.then100.i

if.end96.i.if.end118.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118.i

if.then100.i:                                     ; preds = %if.end96.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %sourcemac.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 7
  %sourcemsk.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 8
  %107 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %h_source.i, align 1
  %109 = ptrtoint ptr %sourcemac.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sourcemac.i, align 1
  %xor9.i.i = xor i8 %110, %108
  %111 = ptrtoint ptr %sourcemsk.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sourcemsk.i, align 1
  %and10.i.i = and i8 %xor9.i.i, %112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i.i)
  %tobool.not.i250.i = icmp eq i8 %and10.i.i, 0
  br i1 %tobool.not.i250.i, label %for.cond.i.i, label %if.then100.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

if.then100.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.i.i:                                     ; preds = %if.then100.i
  %arrayidx.1.i.i = getelementptr i8, ptr %h_source.i, i32 1
  %113 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx1.1.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 7, i32 1
  %115 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx1.1.i.i, align 1
  %xor9.1.i.i = xor i8 %116, %114
  %arrayidx3.1.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 8, i32 1
  %117 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx3.1.i.i, align 1
  %and10.1.i.i = and i8 %xor9.1.i.i, %118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1.i.i)
  %tobool.not.1.i.i = icmp eq i8 %and10.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx.2.i.i = getelementptr i8, ptr %h_source.i, i32 2
  %119 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.2.i.i, align 1
  %arrayidx1.2.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 7, i32 2
  %121 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx1.2.i.i, align 1
  %xor9.2.i.i = xor i8 %122, %120
  %arrayidx3.2.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 8, i32 2
  %123 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx3.2.i.i, align 1
  %and10.2.i.i = and i8 %xor9.2.i.i, %124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2.i.i)
  %tobool.not.2.i.i = icmp eq i8 %and10.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %h_source.i, i32 3
  %125 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx1.3.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 7, i32 3
  %127 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx1.3.i.i, align 1
  %xor9.3.i.i = xor i8 %128, %126
  %arrayidx3.3.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 8, i32 3
  %129 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx3.3.i.i, align 1
  %and10.3.i.i = and i8 %xor9.3.i.i, %130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3.i.i)
  %tobool.not.3.i.i = icmp eq i8 %and10.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit.thr_comm.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx.4.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %131 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx1.4.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 7, i32 4
  %133 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx1.4.i.i, align 1
  %xor9.4.i.i = xor i8 %134, %132
  %arrayidx3.4.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 8, i32 4
  %135 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx3.4.i.i, align 1
  %and10.4.i.i = and i8 %xor9.4.i.i, %136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4.i.i)
  %tobool.not.4.i.i = icmp eq i8 %and10.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %ether_addr_equal_masked.exit.i, label %for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge

for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit.thr_comm.i

ether_addr_equal_masked.exit.thr_comm.i:          ; preds = %for.cond.3.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.2.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.1.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %for.cond.i.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge, %if.then100.i.ether_addr_equal_masked.exit.thr_comm.i_crit_edge
  %137 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %invflags32.i, align 4
  %139 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %.not.i = icmp eq i32 %139, 0
  br i1 %.not.i, label %ether_addr_equal_masked.exit.thr_comm.i.letscontinue_crit_edge, label %ether_addr_equal_masked.exit.thr_comm.i.if.end118.i_crit_edge

ether_addr_equal_masked.exit.thr_comm.i.if.end118.i_crit_edge: ; preds = %ether_addr_equal_masked.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118.i

ether_addr_equal_masked.exit.thr_comm.i.letscontinue_crit_edge: ; preds = %ether_addr_equal_masked.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ether_addr_equal_masked.exit.i:                   ; preds = %for.cond.3.i.i
  %arrayidx.5.i.i = getelementptr i8, ptr %h_source.i, i32 5
  %140 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx1.5.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 7, i32 5
  %142 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx1.5.i.i, align 1
  %xor9.5.i.i = xor i8 %143, %141
  %arrayidx3.5.i.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 8, i32 5
  %144 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx3.5.i.i, align 1
  %and10.5.i.i = and i8 %xor9.5.i.i, %145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5.i.i)
  %tobool.not.5.i.i = icmp eq i8 %and10.5.i.i, 0
  %146 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %invflags32.i, align 4
  %148 = and i32 %147, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %149 = icmp ne i32 %148, 0
  %tobool115.not.i = xor i1 %tobool.not.5.i.i, %149
  br i1 %tobool115.not.i, label %ether_addr_equal_masked.exit.i.if.end118.i_crit_edge, label %ether_addr_equal_masked.exit.i.letscontinue_crit_edge

ether_addr_equal_masked.exit.i.letscontinue_crit_edge: ; preds = %ether_addr_equal_masked.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ether_addr_equal_masked.exit.i.if.end118.i_crit_edge: ; preds = %ether_addr_equal_masked.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118.i

if.end118.i:                                      ; preds = %ether_addr_equal_masked.exit.i.if.end118.i_crit_edge, %ether_addr_equal_masked.exit.thr_comm.i.if.end118.i_crit_edge, %if.end96.i.if.end118.i_crit_edge
  %and120.i = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.end118.i.ebt_basic_match.exit_crit_edge, label %if.then122.i

if.end118.i.ebt_basic_match.exit_crit_edge:       ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_basic_match.exit

if.then122.i:                                     ; preds = %if.end118.i
  %destmac.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 9
  %destmsk.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 10
  %150 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %add.ptr.i.i.i, align 1
  %152 = ptrtoint ptr %destmac.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %destmac.i, align 1
  %xor9.i251.i = xor i8 %153, %151
  %154 = ptrtoint ptr %destmsk.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %destmsk.i, align 1
  %and10.i252.i = and i8 %xor9.i251.i, %155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.i252.i)
  %tobool.not.i253.i = icmp eq i8 %and10.i252.i, 0
  br i1 %tobool.not.i253.i, label %for.cond.i260.i, label %if.then122.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge

if.then122.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit290.thr_comm.i

for.cond.i260.i:                                  ; preds = %if.then122.i
  %arrayidx.1.i254.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %156 = ptrtoint ptr %arrayidx.1.i254.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx.1.i254.i, align 1
  %arrayidx1.1.i255.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 9, i32 1
  %158 = ptrtoint ptr %arrayidx1.1.i255.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx1.1.i255.i, align 1
  %xor9.1.i256.i = xor i8 %159, %157
  %arrayidx3.1.i257.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 10, i32 1
  %160 = ptrtoint ptr %arrayidx3.1.i257.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx3.1.i257.i, align 1
  %and10.1.i258.i = and i8 %xor9.1.i256.i, %161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.1.i258.i)
  %tobool.not.1.i259.i = icmp eq i8 %and10.1.i258.i, 0
  br i1 %tobool.not.1.i259.i, label %for.cond.1.i267.i, label %for.cond.i260.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge

for.cond.i260.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge: ; preds = %for.cond.i260.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit290.thr_comm.i

for.cond.1.i267.i:                                ; preds = %for.cond.i260.i
  %arrayidx.2.i261.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 2
  %162 = ptrtoint ptr %arrayidx.2.i261.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.2.i261.i, align 1
  %arrayidx1.2.i262.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 9, i32 2
  %164 = ptrtoint ptr %arrayidx1.2.i262.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx1.2.i262.i, align 1
  %xor9.2.i263.i = xor i8 %165, %163
  %arrayidx3.2.i264.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 10, i32 2
  %166 = ptrtoint ptr %arrayidx3.2.i264.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx3.2.i264.i, align 1
  %and10.2.i265.i = and i8 %xor9.2.i263.i, %167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.2.i265.i)
  %tobool.not.2.i266.i = icmp eq i8 %and10.2.i265.i, 0
  br i1 %tobool.not.2.i266.i, label %for.cond.2.i274.i, label %for.cond.1.i267.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge

for.cond.1.i267.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge: ; preds = %for.cond.1.i267.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit290.thr_comm.i

for.cond.2.i274.i:                                ; preds = %for.cond.1.i267.i
  %arrayidx.3.i268.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 3
  %168 = ptrtoint ptr %arrayidx.3.i268.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.3.i268.i, align 1
  %arrayidx1.3.i269.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 9, i32 3
  %170 = ptrtoint ptr %arrayidx1.3.i269.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx1.3.i269.i, align 1
  %xor9.3.i270.i = xor i8 %171, %169
  %arrayidx3.3.i271.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 10, i32 3
  %172 = ptrtoint ptr %arrayidx3.3.i271.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx3.3.i271.i, align 1
  %and10.3.i272.i = and i8 %xor9.3.i270.i, %173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.3.i272.i)
  %tobool.not.3.i273.i = icmp eq i8 %and10.3.i272.i, 0
  br i1 %tobool.not.3.i273.i, label %for.cond.3.i281.i, label %for.cond.2.i274.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge

for.cond.2.i274.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge: ; preds = %for.cond.2.i274.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit290.thr_comm.i

for.cond.3.i281.i:                                ; preds = %for.cond.2.i274.i
  %arrayidx.4.i275.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %174 = ptrtoint ptr %arrayidx.4.i275.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.4.i275.i, align 1
  %arrayidx1.4.i276.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 9, i32 4
  %176 = ptrtoint ptr %arrayidx1.4.i276.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx1.4.i276.i, align 1
  %xor9.4.i277.i = xor i8 %177, %175
  %arrayidx3.4.i278.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 10, i32 4
  %178 = ptrtoint ptr %arrayidx3.4.i278.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx3.4.i278.i, align 1
  %and10.4.i279.i = and i8 %xor9.4.i277.i, %179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.4.i279.i)
  %tobool.not.4.i280.i = icmp eq i8 %and10.4.i279.i, 0
  br i1 %tobool.not.4.i280.i, label %ether_addr_equal_masked.exit290.i, label %for.cond.3.i281.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge

for.cond.3.i281.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge: ; preds = %for.cond.3.i281.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ether_addr_equal_masked.exit290.thr_comm.i

ether_addr_equal_masked.exit290.thr_comm.i:       ; preds = %for.cond.3.i281.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge, %for.cond.2.i274.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge, %for.cond.1.i267.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge, %for.cond.i260.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge, %if.then122.i.ether_addr_equal_masked.exit290.thr_comm.i_crit_edge
  %180 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %invflags32.i, align 4
  %182 = and i32 %181, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %.not291.i = icmp eq i32 %182, 0
  br i1 %.not291.i, label %ether_addr_equal_masked.exit290.thr_comm.i.letscontinue_crit_edge, label %ether_addr_equal_masked.exit290.thr_comm.i.ebt_basic_match.exit_crit_edge

ether_addr_equal_masked.exit290.thr_comm.i.ebt_basic_match.exit_crit_edge: ; preds = %ether_addr_equal_masked.exit290.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_basic_match.exit

ether_addr_equal_masked.exit290.thr_comm.i.letscontinue_crit_edge: ; preds = %ether_addr_equal_masked.exit290.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ether_addr_equal_masked.exit290.i:                ; preds = %for.cond.3.i281.i
  %arrayidx.5.i282.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 5
  %183 = ptrtoint ptr %arrayidx.5.i282.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.5.i282.i, align 1
  %arrayidx1.5.i283.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 9, i32 5
  %185 = ptrtoint ptr %arrayidx1.5.i283.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx1.5.i283.i, align 1
  %xor9.5.i284.i = xor i8 %186, %184
  %arrayidx3.5.i285.i = getelementptr %struct.ebt_entry, ptr %point.0, i32 0, i32 10, i32 5
  %187 = ptrtoint ptr %arrayidx3.5.i285.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx3.5.i285.i, align 1
  %and10.5.i286.i = and i8 %xor9.5.i284.i, %188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and10.5.i286.i)
  %tobool.not.5.i287.i = icmp eq i8 %and10.5.i286.i, 0
  %189 = ptrtoint ptr %invflags32.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %invflags32.i, align 4
  %191 = and i32 %190, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %192 = icmp ne i32 %191, 0
  %tobool137.not.i = xor i1 %tobool.not.5.i287.i, %192
  br i1 %tobool137.not.i, label %ether_addr_equal_masked.exit290.i.ebt_basic_match.exit_crit_edge, label %ether_addr_equal_masked.exit290.i.letscontinue_crit_edge

ether_addr_equal_masked.exit290.i.letscontinue_crit_edge: ; preds = %ether_addr_equal_masked.exit290.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

ether_addr_equal_masked.exit290.i.ebt_basic_match.exit_crit_edge: ; preds = %ether_addr_equal_masked.exit290.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_basic_match.exit

ebt_basic_match.exit:                             ; preds = %ether_addr_equal_masked.exit290.i.ebt_basic_match.exit_crit_edge, %ether_addr_equal_masked.exit290.thr_comm.i.ebt_basic_match.exit_crit_edge, %if.end118.i.ebt_basic_match.exit_crit_edge
  %watchers_offset = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 11
  %193 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %watchers_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %194)
  %cmp24379 = icmp ugt i32 %194, 112
  br i1 %cmp24379, label %ebt_basic_match.exit.for.body_crit_edge, label %ebt_basic_match.exit.if.then36_crit_edge

ebt_basic_match.exit.if.then36_crit_edge:         ; preds = %ebt_basic_match.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

ebt_basic_match.exit.for.body_crit_edge:          ; preds = %ebt_basic_match.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ebt_basic_match.exit.for.body_crit_edge
  %__i.0380 = phi i32 [ %add33, %for.inc.for.body_crit_edge ], [ 112, %ebt_basic_match.exit.for.body_crit_edge ]
  %add.ptr26 = getelementptr i8, ptr %point.0, i32 %__i.0380
  %195 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %add.ptr26, align 4
  %197 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %acpar, align 4
  %data.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr26, i32 0, i32 2
  %198 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %data.i, ptr %21, align 4
  %199 = load ptr, ptr %add.ptr26, align 4
  %match.i = getelementptr inbounds %struct.xt_match, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %match.i, align 4
  %call.i = call zeroext i1 %201(ptr noundef %skb, ptr noundef nonnull %acpar) #13
  br i1 %call.i, label %for.inc, label %for.body.letscontinue_crit_edge

for.body.letscontinue_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

for.inc:                                          ; preds = %for.body
  %match_size = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr26, i32 0, i32 1
  %202 = ptrtoint ptr %match_size to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %match_size, align 4
  %add32 = add i32 %__i.0380, 36
  %add33 = add i32 %add32, %203
  %204 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %watchers_offset, align 4
  %cmp24 = icmp ult i32 %add33, %205
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.inc.if.then36_crit_edge

for.inc.if.then36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then36

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.then36:                                        ; preds = %for.inc.if.then36_crit_edge, %ebt_basic_match.exit.if.then36_crit_edge
  %__i.0.lcssa = phi i32 [ 112, %ebt_basic_match.exit.if.then36_crit_edge ], [ %add33, %for.inc.if.then36_crit_edge ]
  %206 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %watchers_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa, i32 %207)
  %cmp38.not = icmp eq i32 %__i.0.lcssa, %207
  br i1 %cmp38.not, label %if.end46, label %if.then36.letscontinue_crit_edge

if.then36.letscontinue_crit_edge:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

if.end46:                                         ; preds = %if.then36
  %208 = ptrtoint ptr %hotdrop to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %hotdrop, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool48.not = icmp eq i8 %209, 0
  br i1 %tobool48.not, label %do.body, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end46
  %210 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len, align 4
  %conv52 = zext i32 %211 to i64
  %add.ptr53 = getelementptr %struct.ebt_counter, ptr %counter_base.0.ph, i32 %i.0
  %bcnt = getelementptr %struct.ebt_counter, ptr %counter_base.0.ph, i32 %i.0, i32 1
  %212 = ptrtoint ptr %bcnt to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %bcnt, align 8
  %add54 = add i64 %213, %conv52
  store i64 %add54, ptr %bcnt, align 8
  %214 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %add.ptr53, align 8
  %add56 = add i64 %215, 1
  store i64 %add56, ptr %add.ptr53, align 8
  %216 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %watchers_offset, align 4
  %target_offset = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 12
  %218 = ptrtoint ptr %target_offset to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %target_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %219)
  %cmp61381 = icmp ult i32 %217, %219
  br i1 %cmp61381, label %do.body.for.body63_crit_edge, label %do.body.if.then76_crit_edge

do.body.if.then76_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76

do.body.for.body63_crit_edge:                     ; preds = %do.body
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %do.body.for.body63_crit_edge
  %__i57.0382 = phi i32 [ %add72, %for.body63.for.body63_crit_edge ], [ %217, %do.body.for.body63_crit_edge ]
  %add.ptr64 = getelementptr i8, ptr %point.0, i32 %__i57.0382
  %220 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr64, align 4
  %222 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %221, ptr %acpar, align 4
  %data.i353 = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr64, i32 0, i32 2
  %223 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %data.i353, ptr %21, align 4
  %224 = load ptr, ptr %add.ptr64, align 4
  %target.i = getelementptr inbounds %struct.xt_target, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %target.i, align 4
  %call.i354 = call i32 %226(ptr noundef %skb, ptr noundef nonnull %acpar) #13
  %watcher_size = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr64, i32 0, i32 1
  %227 = ptrtoint ptr %watcher_size to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %watcher_size, align 4
  %add71 = add i32 %__i57.0382, 36
  %add72 = add i32 %add71, %228
  %229 = ptrtoint ptr %target_offset to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %target_offset, align 4
  %cmp61 = icmp ult i32 %add72, %230
  br i1 %cmp61, label %for.body63.for.body63_crit_edge, label %for.body63.if.then76_crit_edge

for.body63.if.then76_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body63

if.then76:                                        ; preds = %for.body63.if.then76_crit_edge, %do.body.if.then76_crit_edge
  %.lcssa = phi i32 [ %219, %do.body.if.then76_crit_edge ], [ %230, %for.body63.if.then76_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %point.0, i32 %.lcssa
  %231 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %add.ptr.i.i, align 4
  %target = getelementptr inbounds %struct.xt_target, ptr %232, i32 0, i32 3
  %233 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %target, align 4
  %tobool85.not = icmp eq ptr %234, null
  br i1 %tobool85.not, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %verdict87 = getelementptr inbounds %struct.ebt_standard_target, ptr %add.ptr.i.i, i32 0, i32 1
  %235 = ptrtoint ptr %verdict87 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %verdict87, align 4
  br label %if.end95

if.else88:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %237 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %232, ptr %acpar, align 4
  %data90 = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr.i.i, i32 0, i32 2
  %238 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %data90, ptr %21, align 4
  %239 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %add.ptr.i.i, align 4
  %target93 = getelementptr inbounds %struct.xt_target, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %target93 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %target93, align 4
  %call94 = call i32 %242(ptr noundef %skb, ptr noundef nonnull %acpar) #13
  br label %if.end95

if.end95:                                         ; preds = %if.else88, %if.then86
  %verdict.0 = phi i32 [ %call94, %if.else88 ], [ %236, %if.then86 ]
  %243 = zext i32 %verdict.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values)
  switch i32 %verdict.0, label %if.end150 [
    i32 -1, label %if.end95.cleanup_crit_edge
    i32 -2, label %if.end95.cleanup.loopexit425_crit_edge
    i32 -4, label %if.end95.letsreturn_crit_edge
    i32 -3, label %if.end95.letscontinue_crit_edge
  ]

if.end95.letscontinue_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue

if.end95.letsreturn_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %letsreturn

if.end95.cleanup.loopexit425_crit_edge:           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit425

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

letsreturn:                                       ; preds = %while.end.letsreturn_crit_edge, %if.end95.letsreturn_crit_edge
  br i1 %cmp109, label %do.end122, label %if.end138.critedge, !prof !92

do.end122:                                        ; preds = %letsreturn
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.1) #13
  br label %letscontinue

if.end138.critedge:                               ; preds = %letsreturn
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %sp.0.ph, -1
  %arrayidx139 = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %dec
  %n = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %dec, i32 2
  %244 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %n, align 4
  %246 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx139, align 4
  %e = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %dec, i32 1
  %248 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %e, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end230, %if.end138.critedge
  %point.0.ph.be = phi ptr [ %data232, %if.end230 ], [ %249, %if.end138.critedge ]
  %sp.0.ph.be = phi i32 [ %inc, %if.end230 ], [ %dec, %if.end138.critedge ]
  %chaininfo.0.ph.be = phi ptr [ %add.ptr195, %if.end230 ], [ %247, %if.end138.critedge ]
  %i.0.ph.be = phi i32 [ 0, %if.end230 ], [ %245, %if.end138.critedge ]
  br label %while.cond.outer

if.end150:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verdict.0)
  %cmp152 = icmp slt i32 %verdict.0, 0
  br i1 %cmp152, label %do.end169, label %if.end186, !prof !92

do.end169:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end186:                                        ; preds = %if.end150
  %add187 = add i32 %i.0, 1
  %arrayidx188 = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %sp.0.ph
  %n189 = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %sp.0.ph, i32 2
  %250 = ptrtoint ptr %n189 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %add187, ptr %n189, align 4
  %251 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %chaininfo.0.ph, ptr %arrayidx188, align 4
  %next_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 13
  %252 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %next_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %point.0, i32 %253
  %e194 = getelementptr %struct.ebt_chainstack, ptr %cs.0, i32 %sp.0.ph, i32 1
  %254 = ptrtoint ptr %e194 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %add.ptr.i, ptr %e194, align 4
  %add.ptr195 = getelementptr i8, ptr %20, i32 %verdict.0
  %255 = ptrtoint ptr %add.ptr195 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %add.ptr195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool197.not = icmp eq i32 %256, 0
  br i1 %tobool197.not, label %if.end230, label %do.end213, !prof !93

do.end213:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 293, i32 noundef 9, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end230:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  %data232 = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr195, i32 0, i32 5
  %inc = add i32 %sp.0.ph, 1
  br label %while.cond.outer.backedge

letscontinue:                                     ; preds = %do.end122, %if.end95.letscontinue_crit_edge, %if.then36.letscontinue_crit_edge, %for.body.letscontinue_crit_edge, %ether_addr_equal_masked.exit290.i.letscontinue_crit_edge, %ether_addr_equal_masked.exit290.thr_comm.i.letscontinue_crit_edge, %ether_addr_equal_masked.exit.i.letscontinue_crit_edge, %ether_addr_equal_masked.exit.thr_comm.i.letscontinue_crit_edge, %ebt_dev_check.exit249.i.letscontinue_crit_edge, %ebt_dev_check.exit217.i.letscontinue_crit_edge, %ebt_dev_check.exit194.i.letscontinue_crit_edge, %ebt_dev_check.exit.i.letscontinue_crit_edge, %land.lhs.true.i.letscontinue_crit_edge, %if.then2.i.letscontinue_crit_edge
  %next_offset.i355 = getelementptr inbounds %struct.ebt_entry, ptr %point.0, i32 0, i32 13
  %257 = ptrtoint ptr %next_offset.i355 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %next_offset.i355, align 4
  %add.ptr.i356 = getelementptr i8, ptr %point.0, i32 %258
  %inc237 = add i32 %i.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %259 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %policy, align 4
  %261 = zext i32 %260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %260, label %while.end.cleanup.loopexit425_crit_edge [
    i32 -4, label %while.end.letsreturn_crit_edge
    i32 -1, label %while.end.cleanup_crit_edge
  ]

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.end.letsreturn_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %letsreturn

while.end.cleanup.loopexit425_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.loopexit425

cleanup.loopexit425:                              ; preds = %while.end.cleanup.loopexit425_crit_edge, %if.end95.cleanup.loopexit425_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit425, %while.end.cleanup_crit_edge, %do.end213, %do.end169, %if.end95.cleanup_crit_edge, %if.end46.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end169 ], [ 0, %do.end213 ], [ 0, %cleanup.loopexit425 ], [ 1, %while.end.cleanup_crit_edge ], [ 1, %if.end95.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  call void @_raw_read_unlock_bh(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %acpar) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebt_register_table(ptr noundef %net, ptr noundef %input_table, ptr noundef %template_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ebt_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %cmp = icmp eq ptr %input_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %table1 = getelementptr inbounds %struct.ebt_table, ptr %input_table, i32 0, i32 2
  %1 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table1, align 4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %entries = getelementptr inbounds %struct.ebt_replace_kernel, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entries, align 4
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %entries_size = getelementptr inbounds %struct.ebt_replace_kernel, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %entries_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entries_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %counters = getelementptr inbounds %struct.ebt_replace_kernel, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counters, align 4
  %cmp8.not = icmp eq ptr %8, null
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %private = getelementptr inbounds %struct.ebt_table, ptr %input_table, i32 0, i32 6
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private, align 4
  %cmp10.not = icmp eq ptr %10, null
  br i1 %cmp10.not, label %if.end, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %input_table, i32 noundef 108, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %nentries = getelementptr inbounds %struct.ebt_replace_kernel, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nentries, align 4
  %mul = shl i32 %12, 4
  %sub = add i32 %mul, 127
  %and = and i32 %sub, -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %mul14 = mul i32 %and, %13
  %add15 = add i32 %mul14, 128
  %call16 = tail call noalias ptr @vmalloc(i32 noundef %add15) #16
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end13.free_table_crit_edge, label %if.end19

if.end13.free_table_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_table

if.end19:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %entries_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entries_size, align 4
  %call21 = tail call noalias ptr @vmalloc(i32 noundef %15) #16
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.free_newinfo_crit_edge, label %if.end24

if.end19.free_newinfo_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_newinfo

if.end24:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries, align 4
  %18 = ptrtoint ptr %entries_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entries_size, align 4
  %20 = call ptr @memcpy(ptr %call21, ptr %17, i32 %19)
  %entries27 = getelementptr inbounds %struct.ebt_table_info, ptr %call16, i32 0, i32 4
  %21 = ptrtoint ptr %entries27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call21, ptr %entries27, align 4
  %22 = load i32, ptr %entries_size, align 4
  %23 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call16, align 128
  %24 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nentries, align 4
  %nentries31 = getelementptr inbounds %struct.ebt_table_info, ptr %call16, i32 0, i32 1
  %26 = ptrtoint ptr %nentries31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nentries31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul14)
  %tobool32.not = icmp eq i32 %mul14, 0
  br i1 %tobool32.not, label %if.end24.if.end35_crit_edge, label %if.then33

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %counters34 = getelementptr inbounds %struct.ebt_table_info, ptr %call16, i32 0, i32 6
  %27 = call ptr @memset(ptr %counters34, i32 0, i32 %mul14)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end24.if.end35_crit_edge
  %chainstack = getelementptr inbounds %struct.ebt_table_info, ptr %call16, i32 0, i32 3
  %28 = ptrtoint ptr %chainstack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %chainstack, align 32
  %valid_hooks = getelementptr inbounds %struct.ebt_replace_kernel, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %valid_hooks, align 4
  %and37 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.end35.for.inc_crit_edge, label %if.else

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 0
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx41, align 4
  %33 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr i8, ptr %call21, i32 %sub.ptr.sub
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end35.for.inc_crit_edge
  %add.ptr.sink = phi ptr [ %add.ptr, %if.else ], [ null, %if.end35.for.inc_crit_edge ]
  %35 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 0
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.sink, ptr %35, align 4
  %37 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid_hooks, align 4
  %and37.1 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.1)
  %cmp38.1 = icmp eq i32 %and37.1, 0
  br i1 %cmp38.1, label %for.inc.for.inc.1_crit_edge, label %if.else.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41.1 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx41.1, align 4
  %41 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast.1 = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.1 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.1 = sub i32 %sub.ptr.lhs.cast.1, %sub.ptr.rhs.cast.1
  %add.ptr.1 = getelementptr i8, ptr %call21, i32 %sub.ptr.sub.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %add.ptr.1.sink = phi ptr [ %add.ptr.1, %if.else.1 ], [ null, %for.inc.for.inc.1_crit_edge ]
  %43 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.1.sink, ptr %43, align 4
  %45 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %valid_hooks, align 4
  %and37.2 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.2)
  %cmp38.2 = icmp eq i32 %and37.2, 0
  br i1 %cmp38.2, label %for.inc.1.for.inc.2_crit_edge, label %if.else.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41.2 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx41.2, align 4
  %49 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast.2 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.2 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.2 = sub i32 %sub.ptr.lhs.cast.2, %sub.ptr.rhs.cast.2
  %add.ptr.2 = getelementptr i8, ptr %call21, i32 %sub.ptr.sub.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %add.ptr.2.sink = phi ptr [ %add.ptr.2, %if.else.2 ], [ null, %for.inc.1.for.inc.2_crit_edge ]
  %51 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.2.sink, ptr %51, align 4
  %53 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %valid_hooks, align 4
  %and37.3 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.3)
  %cmp38.3 = icmp eq i32 %and37.3, 0
  br i1 %cmp38.3, label %for.inc.2.for.inc.3_crit_edge, label %if.else.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41.3 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx41.3, align 4
  %57 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast.3 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.3 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.3 = sub i32 %sub.ptr.lhs.cast.3, %sub.ptr.rhs.cast.3
  %add.ptr.3 = getelementptr i8, ptr %call21, i32 %sub.ptr.sub.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %add.ptr.3.sink = phi ptr [ %add.ptr.3, %if.else.3 ], [ null, %for.inc.2.for.inc.3_crit_edge ]
  %59 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.3.sink, ptr %59, align 4
  %61 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %valid_hooks, align 4
  %and37.4 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.4)
  %cmp38.4 = icmp eq i32 %and37.4, 0
  br i1 %cmp38.4, label %for.inc.3.for.inc.4_crit_edge, label %if.else.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41.4 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 4
  %63 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx41.4, align 4
  %65 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast.4 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.4 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.4 = sub i32 %sub.ptr.lhs.cast.4, %sub.ptr.rhs.cast.4
  %add.ptr.4 = getelementptr i8, ptr %call21, i32 %sub.ptr.sub.4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %for.inc.3.for.inc.4_crit_edge
  %add.ptr.4.sink = phi ptr [ %add.ptr.4, %if.else.4 ], [ null, %for.inc.3.for.inc.4_crit_edge ]
  %67 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.4.sink, ptr %67, align 4
  %69 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %valid_hooks, align 4
  %and37.5 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.5)
  %cmp38.5 = icmp eq i32 %and37.5, 0
  br i1 %cmp38.5, label %for.inc.4.for.inc.5_crit_edge, label %if.else.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

if.else.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41.5 = getelementptr %struct.ebt_replace_kernel, ptr %2, i32 0, i32 4, i32 5
  %71 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx41.5, align 4
  %73 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %entries, align 4
  %sub.ptr.lhs.cast.5 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.5 = ptrtoint ptr %74 to i32
  %sub.ptr.sub.5 = sub i32 %sub.ptr.lhs.cast.5, %sub.ptr.rhs.cast.5
  %add.ptr.5 = getelementptr i8, ptr %call21, i32 %sub.ptr.sub.5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %for.inc.4.for.inc.5_crit_edge
  %add.ptr.5.sink = phi ptr [ %add.ptr.5, %if.else.5 ], [ null, %for.inc.4.for.inc.5_crit_edge ]
  %75 = getelementptr %struct.ebt_table_info, ptr %call16, i32 0, i32 2, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.5.sink, ptr %75, align 4
  %call47 = tail call fastcc i32 @translate_table(ptr noundef %net, ptr noundef nonnull %2, ptr noundef nonnull %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end50, label %for.inc.5.free_chainstack_crit_edge

for.inc.5.free_chainstack_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_chainstack

if.end50:                                         ; preds = %for.inc.5
  %check = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 5
  %77 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %check, align 4
  %tobool51.not = icmp eq ptr %78, null
  br i1 %tobool51.not, label %if.end50.if.end57_crit_edge, label %land.lhs.true

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end50
  %valid_hooks53 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 3
  %79 = ptrtoint ptr %valid_hooks53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %valid_hooks53, align 4
  %call54 = tail call i32 %78(ptr noundef nonnull %call16, i32 noundef %80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end57_crit_edge, label %land.lhs.true.free_chainstack_crit_edge

land.lhs.true.free_chainstack_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_chainstack

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true.if.end57_crit_edge, %if.end50.if.end57_crit_edge
  %private58 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 6
  %81 = ptrtoint ptr %private58 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call16, ptr %private58, align 4
  %lock = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 4
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ebt_register_table.__key) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  %name66 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 1
  br label %for.cond60

for.cond60:                                       ; preds = %for.body63.for.cond60_crit_edge, %if.end57
  %t.0.in = phi ptr [ %call, %if.end57 ], [ %t.0, %for.body63.for.cond60_crit_edge ]
  %82 = ptrtoint ptr %t.0.in to i32
  call void @__asan_load4_noabort(i32 %82)
  %t.0 = load ptr, ptr %t.0.in, align 4
  %cmp62.not = icmp eq ptr %t.0, %call
  br i1 %cmp62.not, label %for.end78, label %for.body63

for.body63:                                       ; preds = %for.cond60
  %name64 = getelementptr inbounds %struct.ebt_table, ptr %t.0, i32 0, i32 1
  %call68 = tail call i32 @strcmp(ptr noundef %name64, ptr noundef %name66) #17
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %for.body63.free_unlock_crit_edge, label %for.body63.for.cond60_crit_edge

for.body63.for.cond60_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond60

for.body63.free_unlock_crit_edge:                 ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_unlock

for.end78:                                        ; preds = %for.cond60
  %83 = ptrtoint ptr %nentries31 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nentries31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool80.not = icmp eq i32 %84, 0
  br i1 %tobool80.not, label %for.end78.cond.false_crit_edge, label %land.lhs.true81

for.end78.cond.false_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.lhs.true81:                                  ; preds = %for.end78
  %me = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 8
  %85 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %me, align 4
  %call82 = tail call zeroext i1 @try_module_get(ptr noundef %86) #13
  br i1 %call82, label %land.lhs.true81.cond.false_crit_edge, label %land.lhs.true81.free_unlock_crit_edge

land.lhs.true81.free_unlock_crit_edge:            ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_unlock

land.lhs.true81.cond.false_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true81.cond.false_crit_edge, %for.end78.cond.false_crit_edge
  %valid_hooks85 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 3
  %87 = ptrtoint ptr %valid_hooks85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %valid_hooks85, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %88) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp403 = icmp eq i32 %call.i, 0
  br i1 %cmp403, label %cond.false.free_unlock_crit_edge, label %if.end406

cond.false.free_unlock_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_unlock

if.end406:                                        ; preds = %cond.false
  %mul407 = mul i32 %call.i, 24
  %call408 = tail call ptr @kmemdup(ptr noundef %template_ops, i32 noundef %mul407, i32 noundef 3264) #13
  %tobool409.not = icmp eq ptr %call408, null
  br i1 %tobool409.not, label %if.then410, label %if.end406.for.body420_crit_edge

if.end406.for.body420_crit_edge:                  ; preds = %if.end406
  br label %for.body420

if.then410:                                       ; preds = %if.end406
  %89 = ptrtoint ptr %nentries31 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nentries31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool412.not = icmp eq i32 %90, 0
  br i1 %tobool412.not, label %if.then410.free_unlock_crit_edge, label %if.then413

if.then410.free_unlock_crit_edge:                 ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_unlock

if.then413:                                       ; preds = %if.then410
  call void @__sanitizer_cov_trace_pc() #15
  %me414 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 8
  %91 = ptrtoint ptr %me414 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %me414, align 4
  tail call void @module_put(ptr noundef %92) #13
  br label %free_unlock

for.body420:                                      ; preds = %for.body420.for.body420_crit_edge, %if.end406.for.body420_crit_edge
  %i.1561 = phi i32 [ %inc423, %for.body420.for.body420_crit_edge ], [ 0, %if.end406.for.body420_crit_edge ]
  %priv = getelementptr %struct.nf_hook_ops, ptr %call408, i32 %i.1561, i32 2
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call11, ptr %priv, align 4
  %inc423 = add nuw i32 %i.1561, 1
  %exitcond.not = icmp eq i32 %inc423, %call.i
  br i1 %exitcond.not, label %for.end424, label %for.body420.for.body420_crit_edge

for.body420.for.body420_crit_edge:                ; preds = %for.body420
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body420

for.end424:                                       ; preds = %for.body420
  %94 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call11, ptr noundef %call, ptr noundef %95) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.end424.list_add.exit_crit_edge

for.end424.list_add.exit_crit_edge:               ; preds = %for.end424
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end424
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call11, ptr %prev1.i.i, align 4
  %97 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %95, ptr %call11, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %98 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call, ptr %prev3.i.i, align 4
  %99 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %call11, ptr %call, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end424.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %ops427 = getelementptr inbounds %struct.ebt_table, ptr %call11, i32 0, i32 7
  %100 = ptrtoint ptr %ops427 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call408, ptr %ops427, align 4
  %call428 = tail call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull %call408, i32 noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %list_add.exit.cleanup_crit_edge, label %if.then430

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then430:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__ebt_unregister_table(ptr noundef %net, ptr noundef nonnull %call11)
  br label %cleanup

free_unlock:                                      ; preds = %if.then413, %if.then410.free_unlock_crit_edge, %cond.false.free_unlock_crit_edge, %land.lhs.true81.free_unlock_crit_edge, %for.body63.free_unlock_crit_edge
  %ret.0 = phi i32 [ -12, %if.then413 ], [ -12, %if.then410.free_unlock_crit_edge ], [ -2, %land.lhs.true81.free_unlock_crit_edge ], [ -22, %cond.false.free_unlock_crit_edge ], [ -17, %for.body63.free_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %free_chainstack

free_chainstack:                                  ; preds = %free_unlock, %land.lhs.true.free_chainstack_crit_edge, %for.inc.5.free_chainstack_crit_edge
  %ret.1 = phi i32 [ %call47, %for.inc.5.free_chainstack_crit_edge ], [ %ret.0, %free_unlock ], [ -22, %land.lhs.true.free_chainstack_crit_edge ]
  tail call fastcc void @ebt_free_table_info(ptr noundef nonnull %call16)
  %101 = ptrtoint ptr %entries27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %entries27, align 4
  tail call void @vfree(ptr noundef %102) #13
  br label %free_newinfo

free_newinfo:                                     ; preds = %free_chainstack, %if.end19.free_newinfo_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free_chainstack ], [ -12, %if.end19.free_newinfo_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call16) #13
  br label %free_table

free_table:                                       ; preds = %free_newinfo, %if.end13.free_table_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_newinfo ], [ -12, %if.end13.free_table_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %free_table, %if.then430, %list_add.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.3, %free_table ], [ -12, %if.end.cleanup_crit_edge ], [ %call428, %if.then430 ], [ 0, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.6) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %8 = tail call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @translate_table(ptr noundef %net, ptr noundef %name, ptr noundef %newinfo) unnamed_addr #0 align 64 {
entry:
  %par.i325.i = alloca %struct.xt_mtdtor_param, align 4
  %par.i.i = alloca %struct.xt_tgdtor_param, align 4
  %mtpar.i = alloca %struct.xt_mtchk_param, align 4
  %tgpar.i = alloca %struct.xt_tgchk_param, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #13
  %arrayidx = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body:                                       ; preds = %entry
  %arrayidx.1 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %while.body.1, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.1:                                     ; preds = %while.body
  %arrayidx.2 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %while.body.2, label %while.body.1.if.end_crit_edge

while.body.1.if.end_crit_edge:                    ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.3 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %while.body.3, label %while.body.2.if.end_crit_edge

while.body.2.if.end_crit_edge:                    ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.4 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %while.body.4, label %while.body.3.if.end_crit_edge

while.body.3.if.end_crit_edge:                    ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.5 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %while.body.4.cleanup_crit_edge, label %while.body.4.if.end_crit_edge

while.body.4.if.end_crit_edge:                    ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %while.body.4.if.end_crit_edge, %while.body.3.if.end_crit_edge, %while.body.2.if.end_crit_edge, %while.body.1.if.end_crit_edge, %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %cmp7513 = phi i1 [ true, %entry.if.end_crit_edge ], [ true, %while.body.if.end_crit_edge ], [ true, %while.body.1.if.end_crit_edge ], [ true, %while.body.2.if.end_crit_edge ], [ true, %while.body.3.if.end_crit_edge ], [ false, %while.body.4.if.end_crit_edge ]
  %storemerge509.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %while.body.if.end_crit_edge ], [ 2, %while.body.1.if.end_crit_edge ], [ 3, %while.body.2.if.end_crit_edge ], [ 4, %while.body.3.if.end_crit_edge ], [ 5, %while.body.4.if.end_crit_edge ]
  %12 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge509.lcssa, ptr %i, align 4
  %arrayidx3 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 %storemerge509.lcssa
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3, align 4
  %entries = getelementptr inbounds %struct.ebt_table_info, ptr %newinfo, i32 0, i32 4
  %15 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entries, align 4
  %cmp4.not = icmp eq ptr %14, %16
  br i1 %cmp4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp7513, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %storemerge284512 = add nuw nsw i32 %storemerge509.lcssa, 1
  %17 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %17)
  %i.promoted = load i32, ptr %i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %storemerge284515 = phi i32 [ %storemerge284, %for.inc.for.body_crit_edge ], [ %storemerge284512, %for.body.preheader ]
  %storemerge284511514 = phi i32 [ %storemerge284510, %for.inc.for.body_crit_edge ], [ %i.promoted, %for.body.preheader ]
  %arrayidx9 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 %storemerge284515
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %arrayidx16 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 %storemerge284511514
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  %cmp17.not = icmp ugt ptr %19, %21
  br i1 %cmp17.not, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %storemerge284510 = phi i32 [ %storemerge284511514, %for.body.for.inc_crit_edge ], [ %storemerge284515, %if.end12.for.inc_crit_edge ]
  %storemerge284 = add nuw nsw i32 %storemerge284515, 1
  %exitcond.not = icmp eq i32 %storemerge284, 6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %22 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i, align 4
  %23 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %newinfo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp22517.not = icmp eq i32 %24, 0
  br i1 %cmp22517.not, label %for.end.if.then35_crit_edge, label %for.body23.lr.ph

for.end.if.then35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

for.body23.lr.ph:                                 ; preds = %for.end
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %arrayidx.1.i = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 1
  %arrayidx.2.i = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 2
  %arrayidx.3.i = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 3
  %arrayidx.4.i = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 4
  %arrayidx.5.i = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 5
  br label %for.body23

for.body23:                                       ; preds = %if.end32.for.body23_crit_edge, %for.body23.lr.ph
  %__i.0523 = phi i32 [ 0, %for.body23.lr.ph ], [ %__i.1, %if.end32.for.body23_crit_edge ]
  %udc_cnt.0522 = phi i32 [ 0, %for.body23.lr.ph ], [ %udc_cnt.2, %if.end32.for.body23_crit_edge ]
  %k.0520 = phi i32 [ 0, %for.body23.lr.ph ], [ %k.1, %if.end32.for.body23_crit_edge ]
  %j.0518 = phi i32 [ 0, %for.body23.lr.ph ], [ %j.1, %if.end32.for.body23_crit_edge ]
  %add.ptr = getelementptr i8, ptr %14, i32 %__i.0523
  %cmp1.i = icmp eq ptr %26, %add.ptr
  br i1 %cmp1.i, label %for.body23.if.then3.i_crit_edge, label %for.inc.i

for.body23.if.then3.i_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

for.inc.i:                                        ; preds = %for.body23
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %28, %add.ptr
  br i1 %cmp1.1.i, label %for.inc.i.if.then3.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then3.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %30, %add.ptr
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then3.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then3.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %32, %add.ptr
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then3.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then3.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %33 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %34, %add.ptr
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then3.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then3.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %35 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.5.i, align 4
  %cmp1.5.i = icmp eq ptr %36, %add.ptr
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then3.i_crit_edge, label %lor.lhs.false.i

for.inc.4.i.if.then3.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %for.inc.4.i
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then3.i_crit_edge, label %if.end25.i

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %for.inc.4.i.if.then3.i_crit_edge, %for.inc.3.i.if.then3.i_crit_edge, %for.inc.2.i.if.then3.i_crit_edge, %for.inc.1.i.if.then3.i_crit_edge, %for.inc.i.if.then3.i_crit_edge, %for.body23.if.then3.i_crit_edge
  %cmp2.not70.i = phi i1 [ true, %lor.lhs.false.i.if.then3.i_crit_edge ], [ false, %for.inc.4.i.if.then3.i_crit_edge ], [ false, %for.inc.3.i.if.then3.i_crit_edge ], [ false, %for.inc.2.i.if.then3.i_crit_edge ], [ false, %for.inc.1.i.if.then3.i_crit_edge ], [ false, %for.inc.i.if.then3.i_crit_edge ], [ false, %for.body23.if.then3.i_crit_edge ]
  %39 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %j.0518)
  %cmp4.not.i = icmp eq i32 %40, %j.0518
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.then3.i
  %policy.i = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %policy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %policy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %42)
  %switch.i = icmp ugt i32 %42, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %42)
  %cmp14.not.i = icmp eq i32 %42, -4
  %or.cond.i = select i1 %cmp2.not70.i, i1 %cmp14.not.i, i1 false
  %or.cond67.i = or i1 %switch.i, %or.cond.i
  br i1 %or.cond67.i, label %if.end17.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.i:                                       ; preds = %if.end6.i
  %counter_offset.i = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr, i32 0, i32 2
  %43 = ptrtoint ptr %counter_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %counter_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %k.0520)
  %cmp22.not.i = icmp eq i32 %44, %k.0520
  br i1 %cmp22.not.i, label %if.end24.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc20.i = zext i1 %cmp2.not70.i to i32
  %spec.select = add i32 %udc_cnt.0522, %inc20.i
  %nentries.i = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr, i32 0, i32 4
  %45 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nentries.i, align 4
  %47 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %i, align 4
  br label %if.end27

if.end25.i:                                       ; preds = %lor.lhs.false.i
  %watchers_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr, i32 0, i32 11
  %48 = ptrtoint ptr %watchers_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %watchers_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %49)
  %cmp26.i = icmp ult i32 %49, 112
  br i1 %cmp26.i, label %if.end25.i.cleanup_crit_edge, label %lor.lhs.false27.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false27.i:                                ; preds = %if.end25.i
  %target_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr, i32 0, i32 12
  %50 = ptrtoint ptr %target_offset.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %target_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp29.i = icmp ugt i32 %49, %51
  br i1 %cmp29.i, label %lor.lhs.false27.i.cleanup_crit_edge, label %lor.lhs.false30.i

lor.lhs.false27.i.cleanup_crit_edge:              ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false30.i:                                ; preds = %lor.lhs.false27.i
  %next_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr, i32 0, i32 13
  %52 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %next_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp32.not.i = icmp ule i32 %53, %51
  %sub.i = sub i32 %53, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i)
  %cmp37.i = icmp ult i32 %sub.i, 36
  %or.cond68.i = or i1 %cmp32.not.i, %cmp37.i
  br i1 %or.cond68.i, label %lor.lhs.false30.i.cleanup_crit_edge, label %if.end39.i

lor.lhs.false30.i.cleanup_crit_edge:              ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39.i:                                       ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc40.i = add i32 %j.0518, 1
  %inc41.i = add i32 %k.0520, 1
  br label %if.end27

if.end27:                                         ; preds = %if.end39.i, %if.end24.i
  %j.1 = phi i32 [ 0, %if.end24.i ], [ %inc40.i, %if.end39.i ]
  %k.1 = phi i32 [ %k.0520, %if.end24.i ], [ %inc41.i, %if.end39.i ]
  %udc_cnt.2 = phi i32 [ %spec.select, %if.end24.i ], [ %udc_cnt.0522, %if.end39.i ]
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp28.not = icmp eq i32 %55, 0
  br i1 %cmp28.not, label %if.end27.if.end32_crit_edge, label %if.then29

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr, i32 0, i32 13
  %56 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %next_offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27.if.end32_crit_edge
  %.pn288 = phi i32 [ %57, %if.then29 ], [ 48, %if.end27.if.end32_crit_edge ]
  %__i.1 = add i32 %.pn288, %__i.0523
  %cmp22 = icmp ult i32 %__i.1, %24
  br i1 %cmp22, label %if.end32.for.body23_crit_edge, label %if.end32.if.then35_crit_edge

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.end32.for.body23_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %for.end.if.then35_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.end.if.then35_crit_edge ], [ %j.1, %if.end32.if.then35_crit_edge ]
  %k.0.lcssa = phi i32 [ 0, %for.end.if.then35_crit_edge ], [ %k.1, %if.end32.if.then35_crit_edge ]
  %udc_cnt.0.lcssa = phi i32 [ 0, %for.end.if.then35_crit_edge ], [ %udc_cnt.2, %if.end32.if.then35_crit_edge ]
  %__i.0.lcssa = phi i32 [ 0, %for.end.if.then35_crit_edge ], [ %__i.1, %if.end32.if.then35_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa, i32 %24)
  %cmp37.not = icmp eq i32 %__i.0.lcssa, %24
  br i1 %cmp37.not, label %if.end43, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %if.then35
  %58 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %j.0.lcssa)
  %cmp44.not = icmp eq i32 %59, %j.0.lcssa
  br i1 %cmp44.not, label %if.end46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %nentries = getelementptr inbounds %struct.ebt_table_info, ptr %newinfo, i32 0, i32 1
  %60 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nentries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa, i32 %61)
  %cmp47.not = icmp eq i32 %k.0.lcssa, %61
  br i1 %cmp47.not, label %if.end49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %udc_cnt.0.lcssa)
  %tobool50.not = icmp eq i32 %udc_cnt.0.lcssa, 0
  br i1 %tobool50.not, label %if.end49.if.end118_crit_edge, label %if.then51

if.end49.if.end118_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.then51:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %63 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 4) #13
  %64 = extractvalue { i32, i1 } %63, 1
  %65 = extractvalue { i32, i1 } %63, 0
  %retval.0.i290 = select i1 %64, i32 -1, i32 %65
  %call53 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i290) #16
  %chainstack = getelementptr inbounds %struct.ebt_table_info, ptr %newinfo, i32 0, i32 3
  %66 = ptrtoint ptr %chainstack to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call53, ptr %chainstack, align 32
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.then51.cleanup_crit_edge, label %if.end57

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  %67 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %i, align 4
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %udc_cnt.0.lcssa, i32 12) #13
  %69 = extractvalue { i32, i1 } %68, 1
  %70 = extractvalue { i32, i1 } %68, 0
  %retval.0.i291 = select i1 %69, i32 -1, i32 %70
  br label %for.cond58

for.cond58:                                       ; preds = %for.body61.for.cond58_crit_edge, %if.end57
  %71 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %i, align 4
  %call59 = tail call i32 @cpumask_next(i32 noundef %72, ptr noundef nonnull @__cpu_possible_mask) #18
  %73 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call59, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %74 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %74)
  %cmp60 = icmp ult i32 %call59, %74
  br i1 %cmp60, label %for.body61, label %for.end79

for.body61:                                       ; preds = %for.cond58
  %call63 = tail call noalias ptr @vmalloc_node(i32 noundef %retval.0.i291, i32 noundef 0) #16
  %75 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chainstack, align 32
  %77 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i, align 4
  %arrayidx65 = getelementptr ptr, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call63, ptr %arrayidx65, align 4
  %80 = load ptr, ptr %chainstack, align 32
  %81 = load i32, ptr %i, align 4
  %arrayidx67 = getelementptr ptr, ptr %80, i32 %81
  %82 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %83, null
  br i1 %tobool68.not, label %while.cond70.preheader, label %for.body61.for.cond58_crit_edge

for.body61.for.cond58_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond58

while.cond70.preheader:                           ; preds = %for.body61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool71.not530 = icmp eq i32 %81, 0
  br i1 %tobool71.not530, label %while.cond70.preheader.while.end75_crit_edge, label %while.cond70.preheader.while.body72_crit_edge

while.cond70.preheader.while.body72_crit_edge:    ; preds = %while.cond70.preheader
  br label %while.body72

while.cond70.preheader.while.end75_crit_edge:     ; preds = %while.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end75

while.body72:                                     ; preds = %while.body72.while.body72_crit_edge, %while.cond70.preheader.while.body72_crit_edge
  %84 = phi i32 [ %dec, %while.body72.while.body72_crit_edge ], [ %81, %while.cond70.preheader.while.body72_crit_edge ]
  %85 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chainstack, align 32
  %dec = add i32 %84, -1
  %87 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %dec, ptr %i, align 4
  %arrayidx74 = getelementptr ptr, ptr %86, i32 %dec
  %88 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx74, align 4
  tail call void @vfree(ptr noundef %89) #13
  %tobool71.not = icmp eq i32 %dec, 0
  br i1 %tobool71.not, label %while.body72.while.end75_crit_edge, label %while.body72.while.body72_crit_edge

while.body72.while.body72_crit_edge:              ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body72

while.body72.while.end75_crit_edge:               ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end75

while.end75:                                      ; preds = %while.body72.while.end75_crit_edge, %while.cond70.preheader.while.end75_crit_edge
  %90 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chainstack, align 32
  tail call void @vfree(ptr noundef %91) #13
  %92 = ptrtoint ptr %chainstack to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %chainstack, align 32
  br label %cleanup

for.end79:                                        ; preds = %for.cond58
  %93 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %udc_cnt.0.lcssa, i32 20) #13
  %94 = extractvalue { i32, i1 } %93, 1
  %95 = extractvalue { i32, i1 } %93, 0
  %retval.0.i292 = select i1 %94, i32 -1, i32 %95
  %call81 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i292) #16
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %for.end79.cleanup_crit_edge, label %if.end84

for.end79.cleanup_crit_edge:                      ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end84:                                         ; preds = %for.end79
  %96 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %i, align 4
  %97 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %newinfo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp90528.not = icmp eq i32 %98, 0
  br i1 %cmp90528.not, label %if.end84.if.then108_crit_edge, label %for.body91.lr.ph

if.end84.if.then108_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then108

for.body91.lr.ph:                                 ; preds = %if.end84
  %99 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %entries, align 4
  %arrayidx.1.i296 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 1
  %arrayidx.2.i299 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 2
  %arrayidx.3.i302 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 3
  %arrayidx.4.i305 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 4
  %arrayidx.5.i308 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 5
  br label %for.body91

for.body91:                                       ; preds = %if.end105.for.body91_crit_edge, %for.body91.lr.ph
  %__i85.0529 = phi i32 [ 0, %for.body91.lr.ph ], [ %__i85.1, %if.end105.for.body91_crit_edge ]
  %add.ptr93 = getelementptr i8, ptr %100, i32 %__i85.0529
  %101 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i293 = icmp eq i32 %102, 0
  br i1 %tobool.not.i293, label %for.body.preheader.i, label %for.body91.if.then100_crit_edge

for.body91.if.then100_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

for.body.preheader.i:                             ; preds = %for.body91
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx, align 4
  %cmp1.i295 = icmp eq ptr %104, %add.ptr93
  br i1 %cmp1.i295, label %for.body.preheader.i.if.end105_crit_edge, label %for.inc.i298

for.body.preheader.i.if.end105_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

for.inc.i298:                                     ; preds = %for.body.preheader.i
  %105 = ptrtoint ptr %arrayidx.1.i296 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.1.i296, align 4
  %cmp1.1.i297 = icmp eq ptr %106, %add.ptr93
  br i1 %cmp1.1.i297, label %for.inc.i298.ebt_get_udc_positions.exit_crit_edge, label %for.inc.1.i301

for.inc.i298.ebt_get_udc_positions.exit_crit_edge: ; preds = %for.inc.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_get_udc_positions.exit

for.inc.1.i301:                                   ; preds = %for.inc.i298
  %107 = ptrtoint ptr %arrayidx.2.i299 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.2.i299, align 4
  %cmp1.2.i300 = icmp eq ptr %108, %add.ptr93
  br i1 %cmp1.2.i300, label %for.inc.1.i301.ebt_get_udc_positions.exit_crit_edge, label %for.inc.2.i304

for.inc.1.i301.ebt_get_udc_positions.exit_crit_edge: ; preds = %for.inc.1.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_get_udc_positions.exit

for.inc.2.i304:                                   ; preds = %for.inc.1.i301
  %109 = ptrtoint ptr %arrayidx.3.i302 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.3.i302, align 4
  %cmp1.3.i303 = icmp eq ptr %110, %add.ptr93
  br i1 %cmp1.3.i303, label %for.inc.2.i304.ebt_get_udc_positions.exit_crit_edge, label %for.inc.3.i307

for.inc.2.i304.ebt_get_udc_positions.exit_crit_edge: ; preds = %for.inc.2.i304
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_get_udc_positions.exit

for.inc.3.i307:                                   ; preds = %for.inc.2.i304
  %111 = ptrtoint ptr %arrayidx.4.i305 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.4.i305, align 4
  %cmp1.4.i306 = icmp eq ptr %112, %add.ptr93
  br i1 %cmp1.4.i306, label %for.inc.3.i307.ebt_get_udc_positions.exit_crit_edge, label %for.inc.4.i310

for.inc.3.i307.ebt_get_udc_positions.exit_crit_edge: ; preds = %for.inc.3.i307
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_get_udc_positions.exit

for.inc.4.i310:                                   ; preds = %for.inc.3.i307
  %113 = ptrtoint ptr %arrayidx.5.i308 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.5.i308, align 4
  %cmp1.5.i309 = icmp eq ptr %114, %add.ptr93
  br i1 %cmp1.5.i309, label %for.inc.4.i310.ebt_get_udc_positions.exit_crit_edge, label %if.end6.i311

for.inc.4.i310.ebt_get_udc_positions.exit_crit_edge: ; preds = %for.inc.4.i310
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_get_udc_positions.exit

if.end6.i311:                                     ; preds = %for.inc.4.i310
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i, align 4
  %arrayidx7.i = getelementptr %struct.ebt_cl_stack, ptr %call81, i32 %116
  %117 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr93, ptr %arrayidx7.i, align 4
  %n10.i = getelementptr %struct.ebt_cl_stack, ptr %call81, i32 %116, i32 0, i32 2
  %118 = ptrtoint ptr %n10.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %n10.i, align 4
  %hookmask.i = getelementptr %struct.ebt_cl_stack, ptr %call81, i32 %116, i32 2
  %119 = ptrtoint ptr %hookmask.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %hookmask.i, align 4
  %inc12.i = add i32 %116, 1
  store i32 %inc12.i, ptr %i, align 4
  br label %ebt_get_udc_positions.exit

ebt_get_udc_positions.exit:                       ; preds = %if.end6.i311, %for.inc.4.i310.ebt_get_udc_positions.exit_crit_edge, %for.inc.3.i307.ebt_get_udc_positions.exit_crit_edge, %for.inc.2.i304.ebt_get_udc_positions.exit_crit_edge, %for.inc.1.i301.ebt_get_udc_positions.exit_crit_edge, %for.inc.i298.ebt_get_udc_positions.exit_crit_edge
  %120 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr383.pr = load i32, ptr %add.ptr93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr383.pr)
  %cmp99.not = icmp eq i32 %.pr383.pr, 0
  br i1 %cmp99.not, label %ebt_get_udc_positions.exit.if.end105_crit_edge, label %ebt_get_udc_positions.exit.if.then100_crit_edge

ebt_get_udc_positions.exit.if.then100_crit_edge:  ; preds = %ebt_get_udc_positions.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

ebt_get_udc_positions.exit.if.end105_crit_edge:   ; preds = %ebt_get_udc_positions.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then100:                                       ; preds = %ebt_get_udc_positions.exit.if.then100_crit_edge, %for.body91.if.then100_crit_edge
  %next_offset101 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr93, i32 0, i32 13
  %121 = ptrtoint ptr %next_offset101 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %next_offset101, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %ebt_get_udc_positions.exit.if.end105_crit_edge, %for.body.preheader.i.if.end105_crit_edge
  %.pn287 = phi i32 [ %122, %if.then100 ], [ 48, %ebt_get_udc_positions.exit.if.end105_crit_edge ], [ 48, %for.body.preheader.i.if.end105_crit_edge ]
  %__i85.1 = add i32 %.pn287, %__i85.0529
  %cmp90 = icmp ult i32 %__i85.1, %98
  br i1 %cmp90, label %if.end105.for.body91_crit_edge, label %if.end105.if.then108_crit_edge

if.end105.if.then108_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then108

if.end105.for.body91_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91

if.then108:                                       ; preds = %if.end105.if.then108_crit_edge, %if.end84.if.then108_crit_edge
  %123 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %udc_cnt.0.lcssa)
  %cmp115.not = icmp eq i32 %124, %udc_cnt.0.lcssa
  br i1 %cmp115.not, label %if.then108.if.end118_crit_edge, label %if.then116

if.then108.if.end118_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

if.then116:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @vfree(ptr noundef nonnull %call81) #13
  br label %cleanup

if.end118:                                        ; preds = %if.then108.if.end118_crit_edge, %if.end49.if.end118_crit_edge
  %cl_s.0 = phi ptr [ %call81, %if.then108.if.end118_crit_edge ], [ null, %if.end49.if.end118_crit_edge ]
  %125 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %i, align 4
  br label %for.body121

for.body121:                                      ; preds = %for.inc134.for.body121_crit_edge, %if.end118
  %storemerge285531 = phi i32 [ 0, %if.end118 ], [ %inc135, %for.inc134.for.body121_crit_edge ]
  %arrayidx123 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 %storemerge285531
  %126 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx123, align 4
  %tobool124.not = icmp eq ptr %127, null
  br i1 %tobool124.not, label %for.body121.for.inc134_crit_edge, label %if.then125

for.body121.for.inc134_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc134

if.then125:                                       ; preds = %for.body121
  %128 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %entries, align 4
  %nentries1.i = getelementptr inbounds %struct.ebt_entries, ptr %127, i32 0, i32 4
  %130 = ptrtoint ptr %nentries1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nentries1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp147.i = icmp slt i32 %131, 1
  br i1 %cmp147.i, label %if.then125.for.inc134_crit_edge, label %while.body.lr.ph.i

if.then125.for.inc134_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc134

while.body.lr.ph.i:                               ; preds = %if.then125
  %data.i = getelementptr inbounds %struct.ebt_entries, ptr %127, i32 0, i32 5
  %shl.i = shl nuw nsw i32 1, %storemerge285531
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %e.0151.i = phi ptr [ %data.i, %while.body.lr.ph.i ], [ %e.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %nentries.0150.i = phi i32 [ %131, %while.body.lr.ph.i ], [ %nentries.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %pos.0149.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %pos.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %chain_nr.0148.i = phi i32 [ -1, %while.body.lr.ph.i ], [ %chain_nr.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0149.i, i32 %nentries.0150.i)
  %cmp3.i = icmp eq i32 %pos.0149.i, %nentries.0150.i
  br i1 %cmp3.i, label %if.then.i, label %while.body.i.if.end24.i314_crit_edge

while.body.i.if.end24.i314_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i314

if.then.i:                                        ; preds = %while.body.i
  %arrayidx.i312 = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %chain_nr.0148.i
  %e4.i = getelementptr inbounds %struct.ebt_chainstack, ptr %arrayidx.i312, i32 0, i32 1
  %132 = ptrtoint ptr %e4.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %e4.i, align 4
  %from.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %chain_nr.0148.i, i32 1
  %134 = ptrtoint ptr %from.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %from.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp6.not.i = icmp eq i32 %135, -1
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %135
  %136 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx10.i, align 4
  %nentries12.i = getelementptr inbounds %struct.ebt_entries, ptr %137, i32 0, i32 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %nentries.1.in.i = phi ptr [ %nentries12.i, %if.then7.i ], [ %nentries1.i, %if.then.i.if.end.i_crit_edge ]
  %138 = ptrtoint ptr %nentries.1.in.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %nentries.1.i = load i32, ptr %nentries.1.in.i, align 4
  %n.i = getelementptr inbounds %struct.ebt_chainstack, ptr %arrayidx.i312, i32 0, i32 2
  %139 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %n.i, align 4
  store i32 0, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %nentries.1.i)
  %cmp21.i = icmp eq i32 %140, %nentries.1.i
  br i1 %cmp21.i, label %if.end.i.while.cond.backedge.i_crit_edge, label %if.end.i.if.end24.i314_crit_edge

if.end.i.if.end24.i314_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i314

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge.i

if.end24.i314:                                    ; preds = %if.end.i.if.end24.i314_crit_edge, %while.body.i.if.end24.i314_crit_edge
  %chain_nr.1.i = phi i32 [ %135, %if.end.i.if.end24.i314_crit_edge ], [ %chain_nr.0148.i, %while.body.i.if.end24.i314_crit_edge ]
  %pos.1.i = phi i32 [ %140, %if.end.i.if.end24.i314_crit_edge ], [ %pos.0149.i, %while.body.i.if.end24.i314_crit_edge ]
  %nentries.2.i = phi i32 [ %nentries.1.i, %if.end.i.if.end24.i314_crit_edge ], [ %nentries.0150.i, %while.body.i.if.end24.i314_crit_edge ]
  %e.1.i = phi ptr [ %133, %if.end.i.if.end24.i314_crit_edge ], [ %e.0151.i, %while.body.i.if.end24.i314_crit_edge ]
  %target_offset.i.i.i = getelementptr inbounds %struct.ebt_entry, ptr %e.1.i, i32 0, i32 12
  %141 = ptrtoint ptr %target_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %target_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %e.1.i, i32 %142
  %call26.i = tail call i32 @strcmp(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull dereferenceable(9) @.str.11) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not.i313 = icmp eq i32 %call26.i, 0
  br i1 %tobool.not.i313, label %if.end28.i, label %if.end24.i314.letscontinue.i_crit_edge

if.end24.i314.letscontinue.i_crit_edge:           ; preds = %if.end24.i314
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue.i

if.end28.i:                                       ; preds = %if.end24.i314
  %add.i = add i32 %142, 40
  %next_offset.i315 = getelementptr inbounds %struct.ebt_entry, ptr %e.1.i, i32 0, i32 13
  %143 = ptrtoint ptr %next_offset.i315 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %next_offset.i315, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %144)
  %cmp29.i316 = icmp ugt i32 %add.i, %144
  br i1 %cmp29.i316, label %if.end28.i.if.then131_crit_edge, label %if.end31.i

if.end28.i.if.then131_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

if.end31.i:                                       ; preds = %if.end28.i
  %verdict32.i = getelementptr inbounds %struct.ebt_standard_target, ptr %add.ptr.i.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %verdict32.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %verdict32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp33.i = icmp sgt i32 %146, -1
  br i1 %cmp33.i, label %if.then34.i, label %if.end31.i.letscontinue.i_crit_edge

if.end31.i.letscontinue.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue.i

if.then34.i:                                      ; preds = %if.end31.i
  %add.ptr.i = getelementptr i8, ptr %129, i32 %146
  br i1 %tobool50.not, label %if.then34.i.for.end.i_crit_edge, label %if.then34.i.for.body.i_crit_edge

if.then34.i.for.body.i_crit_edge:                 ; preds = %if.then34.i
  br label %for.body.i

if.then34.i.for.end.i_crit_edge:                  ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i317.for.body.i_crit_edge, %if.then34.i.for.body.i_crit_edge
  %i.0145.i = phi i32 [ %inc.i, %for.inc.i317.for.body.i_crit_edge ], [ 0, %if.then34.i.for.body.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %i.0145.i
  %147 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx36.i, align 4
  %cmp39.i = icmp eq ptr %add.ptr.i, %148
  br i1 %cmp39.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i317

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i317:                                     ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0145.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %udc_cnt.0.lcssa
  br i1 %exitcond.not.i, label %for.inc.i317.if.then131_crit_edge, label %for.inc.i317.for.body.i_crit_edge

for.inc.i317.for.body.i_crit_edge:                ; preds = %for.inc.i317
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i317.if.then131_crit_edge:                ; preds = %for.inc.i317
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then34.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then34.i.for.end.i_crit_edge ], [ %i.0145.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %udc_cnt.0.lcssa)
  %cmp42.i = icmp eq i32 %i.0.lcssa.i, %udc_cnt.0.lcssa
  br i1 %cmp42.i, label %for.end.i.if.then131_crit_edge, label %if.end44.i

for.end.i.if.then131_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

if.end44.i:                                       ; preds = %for.end.i
  %arrayidx45.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %i.0.lcssa.i
  %n47.i = getelementptr inbounds %struct.ebt_chainstack, ptr %arrayidx45.i, i32 0, i32 2
  %149 = ptrtoint ptr %n47.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %n47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool48.not.i = icmp eq i32 %150, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end44.i.if.then131_crit_edge

if.end44.i.if.then131_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then131

if.end50.i:                                       ; preds = %if.end44.i
  %hookmask.i318 = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %i.0.lcssa.i, i32 2
  %151 = ptrtoint ptr %hookmask.i318 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hookmask.i318, align 4
  %and.i = and i32 %152, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool52.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool52.not.i, label %cleanup.i, label %if.end50.i.letscontinue.i_crit_edge

if.end50.i.letscontinue.i_crit_edge:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %letscontinue.i

cleanup.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  %add55.i = add i32 %pos.1.i, 1
  %153 = ptrtoint ptr %n47.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %add55.i, ptr %n47.i, align 4
  %154 = ptrtoint ptr %next_offset.i315 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %next_offset.i315, align 4
  %add.ptr.i.i = getelementptr i8, ptr %e.1.i, i32 %155
  %e62.i = getelementptr inbounds %struct.ebt_chainstack, ptr %arrayidx45.i, i32 0, i32 1
  %156 = ptrtoint ptr %e62.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %add.ptr.i.i, ptr %e62.i, align 4
  %data63.i = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr.i, i32 0, i32 5
  %nentries65.i = getelementptr inbounds %struct.ebt_entries, ptr %add.ptr.i, i32 0, i32 4
  %157 = ptrtoint ptr %nentries65.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nentries65.i, align 4
  %from67.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %i.0.lcssa.i, i32 1
  %159 = ptrtoint ptr %from67.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %chain_nr.1.i, ptr %from67.i, align 4
  %or.i = or i32 %152, %shl.i
  %160 = ptrtoint ptr %hookmask.i318 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %or.i, ptr %hookmask.i318, align 4
  br label %while.cond.backedge.i

letscontinue.i:                                   ; preds = %if.end50.i.letscontinue.i_crit_edge, %if.end31.i.letscontinue.i_crit_edge, %if.end24.i314.letscontinue.i_crit_edge
  %next_offset.i131.i = getelementptr inbounds %struct.ebt_entry, ptr %e.1.i, i32 0, i32 13
  %161 = ptrtoint ptr %next_offset.i131.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %next_offset.i131.i, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %e.1.i, i32 %162
  %inc73.i = add i32 %pos.1.i, 1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %letscontinue.i, %cleanup.i, %if.end.i.while.cond.backedge.i_crit_edge
  %chain_nr.0.be.i = phi i32 [ %135, %if.end.i.while.cond.backedge.i_crit_edge ], [ %chain_nr.1.i, %letscontinue.i ], [ %i.0.lcssa.i, %cleanup.i ]
  %pos.0.be.i = phi i32 [ %nentries.1.i, %if.end.i.while.cond.backedge.i_crit_edge ], [ %inc73.i, %letscontinue.i ], [ 0, %cleanup.i ]
  %nentries.0.be.i = phi i32 [ %nentries.1.i, %if.end.i.while.cond.backedge.i_crit_edge ], [ %nentries.2.i, %letscontinue.i ], [ %158, %cleanup.i ]
  %e.0.be.i = phi ptr [ %133, %if.end.i.while.cond.backedge.i_crit_edge ], [ %add.ptr.i132.i, %letscontinue.i ], [ %data63.i, %cleanup.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.be.i, i32 %nentries.0.be.i)
  %cmp.i = icmp sge i32 %pos.0.be.i, %nentries.0.be.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chain_nr.0.be.i)
  %cmp2.not.i = icmp eq i32 %chain_nr.0.be.i, -1
  %or.cond.i319 = select i1 %cmp.i, i1 %cmp2.not.i, i1 false
  br i1 %or.cond.i319, label %while.cond.backedge.i.for.inc134_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.backedge.i.for.inc134_crit_edge:       ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc134

if.then131:                                       ; preds = %if.end44.i.if.then131_crit_edge, %for.end.i.if.then131_crit_edge, %for.inc.i317.if.then131_crit_edge, %if.end28.i.if.then131_crit_edge
  tail call void @vfree(ptr noundef %cl_s.0) #13
  br label %cleanup

for.inc134:                                       ; preds = %while.cond.backedge.i.for.inc134_crit_edge, %if.then125.for.inc134_crit_edge, %for.body121.for.inc134_crit_edge
  %inc135 = add nuw nsw i32 %storemerge285531, 1
  %163 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %inc135, ptr %i, align 4
  %exitcond625.not = icmp eq i32 %inc135, 6
  br i1 %exitcond625.not, label %for.end136, label %for.inc134.for.body121_crit_edge

for.inc134.for.body121_crit_edge:                 ; preds = %for.inc134
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body121

for.end136:                                       ; preds = %for.inc134
  %164 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %i, align 4
  %165 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %newinfo, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp142532.not = icmp eq i32 %166, 0
  br i1 %cmp142532.not, label %for.end136.if.then160_crit_edge, label %for.body143.lr.ph

for.end136.if.then160_crit_edge:                  ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

for.body143.lr.ph:                                ; preds = %for.end136
  %arrayidx.1.i326 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 1
  %arrayidx.2.i328 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 2
  %arrayidx.3.i330 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 3
  %arrayidx.4.i332 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 4
  %arrayidx.5.i334 = getelementptr %struct.ebt_table_info, ptr %newinfo, i32 0, i32 2, i32 5
  %167 = getelementptr inbounds i8, ptr %mtpar.i, i32 12
  %168 = getelementptr inbounds i8, ptr %tgpar.i, i32 12
  %table.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %tgpar.i, i32 0, i32 1
  %table49.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 1
  %entryinfo.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %tgpar.i, i32 0, i32 2
  %entryinfo50.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 2
  %hook_mask.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %tgpar.i, i32 0, i32 5
  %hook_mask51.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 5
  %family.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %tgpar.i, i32 0, i32 6
  %family52.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 6
  %matchinfo.i.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 4
  %targinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %tgpar.i, i32 0, i32 4
  br label %for.body143

for.body143:                                      ; preds = %if.end157.for.body143_crit_edge, %for.body143.lr.ph
  %__i137.0533 = phi i32 [ 0, %for.body143.lr.ph ], [ %__i137.1, %if.end157.for.body143_crit_edge ]
  %169 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %entries, align 4
  %add.ptr145 = getelementptr i8, ptr %170, i32 %__i137.0533
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mtpar.i) #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tgpar.i) #13
  %171 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i320 = icmp eq i32 %172, 0
  br i1 %cmp.i320, label %for.body143.ebt_check_entry.exit.thread_crit_edge, label %if.end.i322

for.body143.ebt_check_entry.exit.thread_crit_edge: ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_check_entry.exit.thread

if.end.i322:                                      ; preds = %for.body143
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %172)
  %tobool.not.i321 = icmp ult i32 %172, 32
  br i1 %tobool.not.i321, label %if.end3.i, label %if.end.i322.ebt_check_entry.exit.thread390_crit_edge

if.end.i322.ebt_check_entry.exit.thread390_crit_edge: ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_check_entry.exit.thread390

if.end3.i:                                        ; preds = %if.end.i322
  %invflags.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 1
  %173 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %invflags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %174)
  %tobool5.not.i = icmp ugt i32 %174, 127
  %175 = and i32 %172, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %175)
  %.not.i = icmp eq i32 %175, 6
  %or.cond.i323 = select i1 %tobool5.not.i, i1 true, i1 %.not.i
  br i1 %or.cond.i323, label %if.end3.i.ebt_check_entry.exit.thread390_crit_edge, label %for.body.preheader.i325

if.end3.i.ebt_check_entry.exit.thread390_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_check_entry.exit.thread390

for.body.preheader.i325:                          ; preds = %if.end3.i
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx, align 4
  %tobool17.not.i = icmp eq ptr %177, null
  %cmp22.i = icmp ult ptr %177, %add.ptr145
  %or.cond470.i = or i1 %tobool17.not.i, %cmp22.i
  br i1 %or.cond470.i, label %for.inc.i327, label %for.body.preheader.i325.if.then26.i_crit_edge

for.body.preheader.i325.if.then26.i_crit_edge:    ; preds = %for.body.preheader.i325
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

for.inc.i327:                                     ; preds = %for.body.preheader.i325
  %178 = ptrtoint ptr %arrayidx.1.i326 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.1.i326, align 4
  %tobool17.not.1.i = icmp eq ptr %179, null
  br i1 %tobool17.not.1.i, label %for.inc.i327.for.inc.1.i329_crit_edge, label %if.end19.1.i

for.inc.i327.for.inc.1.i329_crit_edge:            ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i329

if.end19.1.i:                                     ; preds = %for.inc.i327
  %cmp22.1.i = icmp ult ptr %179, %add.ptr145
  br i1 %cmp22.1.i, label %if.end19.1.i.for.inc.1.i329_crit_edge, label %if.end19.1.i.if.then26.i_crit_edge

if.end19.1.i.if.then26.i_crit_edge:               ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end19.1.i.for.inc.1.i329_crit_edge:            ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i329

for.inc.1.i329:                                   ; preds = %if.end19.1.i.for.inc.1.i329_crit_edge, %for.inc.i327.for.inc.1.i329_crit_edge
  %hook.1.1.i = phi i32 [ 0, %for.inc.i327.for.inc.1.i329_crit_edge ], [ 1, %if.end19.1.i.for.inc.1.i329_crit_edge ]
  %180 = ptrtoint ptr %arrayidx.2.i328 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.2.i328, align 4
  %tobool17.not.2.i = icmp eq ptr %181, null
  br i1 %tobool17.not.2.i, label %for.inc.1.i329.for.inc.2.i331_crit_edge, label %if.end19.2.i

for.inc.1.i329.for.inc.2.i331_crit_edge:          ; preds = %for.inc.1.i329
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i331

if.end19.2.i:                                     ; preds = %for.inc.1.i329
  %cmp22.2.i = icmp ult ptr %181, %add.ptr145
  br i1 %cmp22.2.i, label %if.end19.2.i.for.inc.2.i331_crit_edge, label %if.end19.2.i.if.then26.i_crit_edge

if.end19.2.i.if.then26.i_crit_edge:               ; preds = %if.end19.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end19.2.i.for.inc.2.i331_crit_edge:            ; preds = %if.end19.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i331

for.inc.2.i331:                                   ; preds = %if.end19.2.i.for.inc.2.i331_crit_edge, %for.inc.1.i329.for.inc.2.i331_crit_edge
  %hook.1.2.i = phi i32 [ %hook.1.1.i, %for.inc.1.i329.for.inc.2.i331_crit_edge ], [ 2, %if.end19.2.i.for.inc.2.i331_crit_edge ]
  %182 = ptrtoint ptr %arrayidx.3.i330 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx.3.i330, align 4
  %tobool17.not.3.i = icmp eq ptr %183, null
  br i1 %tobool17.not.3.i, label %for.inc.2.i331.for.inc.3.i333_crit_edge, label %if.end19.3.i

for.inc.2.i331.for.inc.3.i333_crit_edge:          ; preds = %for.inc.2.i331
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i333

if.end19.3.i:                                     ; preds = %for.inc.2.i331
  %cmp22.3.i = icmp ult ptr %183, %add.ptr145
  br i1 %cmp22.3.i, label %if.end19.3.i.for.inc.3.i333_crit_edge, label %if.end19.3.i.if.then26.i_crit_edge

if.end19.3.i.if.then26.i_crit_edge:               ; preds = %if.end19.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end19.3.i.for.inc.3.i333_crit_edge:            ; preds = %if.end19.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i333

for.inc.3.i333:                                   ; preds = %if.end19.3.i.for.inc.3.i333_crit_edge, %for.inc.2.i331.for.inc.3.i333_crit_edge
  %hook.1.3.i = phi i32 [ %hook.1.2.i, %for.inc.2.i331.for.inc.3.i333_crit_edge ], [ 3, %if.end19.3.i.for.inc.3.i333_crit_edge ]
  %184 = ptrtoint ptr %arrayidx.4.i332 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.4.i332, align 4
  %tobool17.not.4.i = icmp eq ptr %185, null
  br i1 %tobool17.not.4.i, label %for.inc.3.i333.for.inc.4.i335_crit_edge, label %if.end19.4.i

for.inc.3.i333.for.inc.4.i335_crit_edge:          ; preds = %for.inc.3.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i335

if.end19.4.i:                                     ; preds = %for.inc.3.i333
  %cmp22.4.i = icmp ult ptr %185, %add.ptr145
  br i1 %cmp22.4.i, label %if.end19.4.i.for.inc.4.i335_crit_edge, label %if.end19.4.i.if.then26.i_crit_edge

if.end19.4.i.if.then26.i_crit_edge:               ; preds = %if.end19.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end19.4.i.for.inc.4.i335_crit_edge:            ; preds = %if.end19.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i335

for.inc.4.i335:                                   ; preds = %if.end19.4.i.for.inc.4.i335_crit_edge, %for.inc.3.i333.for.inc.4.i335_crit_edge
  %hook.1.4.i = phi i32 [ %hook.1.3.i, %for.inc.3.i333.for.inc.4.i335_crit_edge ], [ 4, %if.end19.4.i.for.inc.4.i335_crit_edge ]
  %186 = ptrtoint ptr %arrayidx.5.i334 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.5.i334, align 4
  %tobool17.not.5.i = icmp eq ptr %187, null
  br i1 %tobool17.not.5.i, label %for.inc.4.i335.for.inc.5.i_crit_edge, label %if.end19.5.i

for.inc.4.i335.for.inc.5.i_crit_edge:             ; preds = %for.inc.4.i335
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.end19.5.i:                                     ; preds = %for.inc.4.i335
  %cmp22.5.i = icmp ult ptr %187, %add.ptr145
  br i1 %cmp22.5.i, label %if.end19.5.i.for.inc.5.i_crit_edge, label %if.end19.5.i.if.then26.i_crit_edge

if.end19.5.i.if.then26.i_crit_edge:               ; preds = %if.end19.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end19.5.i.for.inc.5.i_crit_edge:               ; preds = %if.end19.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.end19.5.i.for.inc.5.i_crit_edge, %for.inc.4.i335.for.inc.5.i_crit_edge
  %hook.1.5.i = phi i32 [ %hook.1.4.i, %for.inc.4.i335.for.inc.5.i_crit_edge ], [ 5, %if.end19.5.i.for.inc.5.i_crit_edge ]
  br i1 %tobool50.not, label %for.inc.5.i.if.then39.i_crit_edge, label %for.inc.5.i.for.body30.i_crit_edge

for.inc.5.i.for.body30.i_crit_edge:               ; preds = %for.inc.5.i
  br label %for.body30.i

for.inc.5.i.if.then39.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39.i

if.then26.i:                                      ; preds = %if.end19.5.i.if.then26.i_crit_edge, %if.end19.4.i.if.then26.i_crit_edge, %if.end19.3.i.if.then26.i_crit_edge, %if.end19.2.i.if.then26.i_crit_edge, %if.end19.1.i.if.then26.i_crit_edge, %for.body.preheader.i325.if.then26.i_crit_edge
  %hook.0411.lcssa.i = phi i32 [ 0, %if.end19.1.i.if.then26.i_crit_edge ], [ %hook.1.1.i, %if.end19.2.i.if.then26.i_crit_edge ], [ %hook.1.2.i, %if.end19.3.i.if.then26.i_crit_edge ], [ %hook.1.3.i, %if.end19.4.i.if.then26.i_crit_edge ], [ %hook.1.4.i, %if.end19.5.i.if.then26.i_crit_edge ], [ 0, %for.body.preheader.i325.if.then26.i_crit_edge ]
  %shl.i336 = shl nuw nsw i32 1, %hook.0411.lcssa.i
  %or.i337 = or i32 %shl.i336, 64
  br label %if.end46.i

for.body30.i:                                     ; preds = %for.inc35.i.for.body30.i_crit_edge, %for.inc.5.i.for.body30.i_crit_edge
  %storemerge291413.i = phi i32 [ %inc36.i, %for.inc35.i.for.body30.i_crit_edge ], [ 0, %for.inc.5.i.for.body30.i_crit_edge ]
  %arrayidx31.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %storemerge291413.i
  %188 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx31.i, align 4
  %cmp32.i = icmp ugt ptr %189, %add.ptr145
  br i1 %cmp32.i, label %for.body30.i.for.end37.i_crit_edge, label %for.inc35.i

for.body30.i.for.end37.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end37.i

for.inc35.i:                                      ; preds = %for.body30.i
  %inc36.i = add nuw i32 %storemerge291413.i, 1
  %exitcond.not.i338 = icmp eq i32 %inc36.i, %udc_cnt.0.lcssa
  br i1 %exitcond.not.i338, label %for.inc35.i.for.end37.i_crit_edge, label %for.inc35.i.for.body30.i_crit_edge

for.inc35.i.for.body30.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body30.i

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end37.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %for.body30.i.for.end37.i_crit_edge
  %storemerge291.lcssa.i = phi i32 [ %udc_cnt.0.lcssa, %for.inc35.i.for.end37.i_crit_edge ], [ %storemerge291413.i, %for.body30.i.for.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge291.lcssa.i)
  %cmp38.i = icmp eq i32 %storemerge291.lcssa.i, 0
  br i1 %cmp38.i, label %for.end37.i.if.then39.i_crit_edge, label %if.else42.i

for.end37.i.if.then39.i_crit_edge:                ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39.i

if.then39.i:                                      ; preds = %for.end37.i.if.then39.i_crit_edge, %for.inc.5.i.if.then39.i_crit_edge
  %shl40.i = shl nuw i32 1, %hook.1.5.i
  %or41.i = or i32 %shl40.i, 64
  br label %if.end46.i

if.else42.i:                                      ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i339 = add i32 %storemerge291.lcssa.i, -1
  %hookmask44.i = getelementptr %struct.ebt_cl_stack, ptr %cl_s.0, i32 %sub.i339, i32 2
  %190 = ptrtoint ptr %hookmask44.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %hookmask44.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else42.i, %if.then39.i, %if.then26.i
  %hookmask.0.i = phi i32 [ %or.i337, %if.then26.i ], [ %or41.i, %if.then39.i ], [ %191, %if.else42.i ]
  %192 = call ptr @memset(ptr %167, i32 0, i32 16)
  %193 = call ptr @memset(ptr %168, i32 0, i32 16)
  %194 = ptrtoint ptr %tgpar.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %net, ptr %tgpar.i, align 4
  %195 = ptrtoint ptr %mtpar.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %net, ptr %mtpar.i, align 4
  %196 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %name, ptr %table.i, align 4
  %197 = ptrtoint ptr %table49.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %name, ptr %table49.i, align 4
  %198 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %add.ptr145, ptr %entryinfo.i, align 4
  %199 = ptrtoint ptr %entryinfo50.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %add.ptr145, ptr %entryinfo50.i, align 4
  %200 = ptrtoint ptr %hook_mask.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %hookmask.0.i, ptr %hook_mask.i, align 4
  %201 = ptrtoint ptr %hook_mask51.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %hookmask.0.i, ptr %hook_mask51.i, align 4
  %202 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 7, ptr %family.i, align 4
  %203 = ptrtoint ptr %family52.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 7, ptr %family52.i, align 4
  %watchers_offset.i340 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 11
  %204 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %watchers_offset.i340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %205)
  %cmp54418.i = icmp ugt i32 %205, 112
  br i1 %cmp54418.i, label %if.end46.i.for.body55.i_crit_edge, label %if.end46.i.if.then63.i_crit_edge

if.end46.i.if.then63.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63.i

if.end46.i.for.body55.i_crit_edge:                ; preds = %if.end46.i
  br label %for.body55.i

for.body55.i:                                     ; preds = %ebt_check_match.exit.thread346.i.for.body55.i_crit_edge, %if.end46.i.for.body55.i_crit_edge
  %__i.0420.i = phi i32 [ %add60.i, %ebt_check_match.exit.thread346.i.for.body55.i_crit_edge ], [ 112, %if.end46.i.for.body55.i_crit_edge ]
  %i.0419.i = phi i32 [ %inc.i.i, %ebt_check_match.exit.thread346.i.for.body55.i_crit_edge ], [ 0, %if.end46.i.for.body55.i_crit_edge ]
  %add.ptr.i341 = getelementptr i8, ptr %add.ptr145, i32 %__i.0420.i
  %206 = ptrtoint ptr %entryinfo50.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %entryinfo50.i, align 4
  %watchers_offset.i.i = getelementptr inbounds %struct.ebt_entry, ptr %207, i32 0, i32 11
  %208 = ptrtoint ptr %watchers_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %watchers_offset.i.i, align 4
  %add.ptr.i.i342 = getelementptr i8, ptr %207, i32 %209
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i342 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i341 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i, 36
  br i1 %cmp.i.i, label %for.body55.i.cleanup_matchesthread-pre-split.i_crit_edge, label %lor.lhs.false.i.i

for.body55.i.cleanup_matchesthread-pre-split.i_crit_edge: ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_matchesthread-pre-split.i

lor.lhs.false.i.i:                                ; preds = %for.body55.i
  %sub.i.i = add i32 %sub.ptr.sub.i.i, -36
  %match_size.i.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr.i341, i32 0, i32 1
  %210 = ptrtoint ptr %match_size.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %match_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %211)
  %cmp1.i.i = icmp ult i32 %sub.i.i, %211
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.cleanup_matchesthread-pre-split.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.cleanup_matchesthread-pre-split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_matchesthread-pre-split.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %revision.i.i = getelementptr inbounds %struct.anon.155, ptr %add.ptr.i341, i32 0, i32 1
  %212 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %revision.i.i, align 1
  %call.i.i = call ptr @xt_find_match(i8 noundef zeroext 7, ptr noundef %add.ptr.i341, i8 noundef zeroext %213) #13
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %lor.lhs.false4.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

lor.lhs.false4.i.i:                               ; preds = %if.end.i.i
  %family.i.i = getelementptr inbounds %struct.xt_match, ptr %call.i.i, i32 0, i32 12
  %214 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %family.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %215)
  %cmp5.not.i.i = icmp eq i16 %215, 7
  br i1 %cmp5.not.i.i, label %lor.lhs.false4.i.i.if.end21.i.i_crit_edge, label %if.then9.i.i

lor.lhs.false4.i.i.if.end21.i.i_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i.i

if.then9.i.i:                                     ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %me.i.i = getelementptr inbounds %struct.xt_match, ptr %call.i.i, i32 0, i32 6
  %216 = ptrtoint ptr %me.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %me.i.i, align 4
  call void @module_put(ptr noundef %217) #13
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %call14.i.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12, ptr noundef %add.ptr.i341) #13
  %218 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %revision.i.i, align 1
  %call20.i.i = call ptr @xt_find_match(i8 noundef zeroext 7, ptr noundef %add.ptr.i341, i8 noundef zeroext %219) #13
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.end10.i.i, %lor.lhs.false4.i.i.if.end21.i.i_crit_edge
  %match.0.i.i = phi ptr [ %call20.i.i, %if.end10.i.i ], [ %call.i.i, %lor.lhs.false4.i.i.if.end21.i.i_crit_edge ]
  %cmp.i65.i.i = icmp ugt ptr %match.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i.i, label %ebt_check_match.exit.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end21.i.i
  %220 = ptrtoint ptr %add.ptr.i341 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %match.0.i.i, ptr %add.ptr.i341, align 4
  %221 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %match.0.i.i, ptr %167, align 4
  %data.i.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr.i341, i32 0, i32 2
  %222 = ptrtoint ptr %matchinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %data.i.i, ptr %matchinfo.i.i, align 4
  %223 = ptrtoint ptr %match_size.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %match_size.i.i, align 4
  %ethproto.i.i = getelementptr inbounds %struct.ebt_entry, ptr %207, i32 0, i32 2
  %225 = ptrtoint ptr %ethproto.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %ethproto.i.i, align 4
  %invflags.i.i = getelementptr inbounds %struct.ebt_entry, ptr %207, i32 0, i32 1
  %227 = ptrtoint ptr %invflags.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %invflags.i.i, align 4
  %and.i.i = and i32 %228, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %call30.i.i = call i32 @xt_check_match(ptr noundef nonnull %mtpar.i, i32 noundef %224, i16 noundef zeroext %226, i1 noundef zeroext %tobool.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp31.i.i = icmp slt i32 %call30.i.i, 0
  br i1 %cmp31.i.i, label %if.then33.i.i, label %ebt_check_match.exit.thread346.i

if.then33.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %me34.i.i = getelementptr inbounds %struct.xt_match, ptr %match.0.i.i, i32 0, i32 6
  %229 = ptrtoint ptr %me34.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %me34.i.i, align 4
  call void @module_put(ptr noundef %230) #13
  br label %cleanup_matchesthread-pre-split.i

ebt_check_match.exit.thread346.i:                 ; preds = %if.end25.i.i
  %inc.i.i = add i32 %i.0419.i, 1
  %231 = ptrtoint ptr %match_size.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %match_size.i.i, align 4
  %add.i343 = add i32 %__i.0420.i, 36
  %add60.i = add i32 %add.i343, %232
  %233 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %watchers_offset.i340, align 4
  %cmp54.i = icmp ult i32 %add60.i, %234
  br i1 %cmp54.i, label %ebt_check_match.exit.thread346.i.for.body55.i_crit_edge, label %ebt_check_match.exit.thread346.i.if.then63.i_crit_edge

ebt_check_match.exit.thread346.i.if.then63.i_crit_edge: ; preds = %ebt_check_match.exit.thread346.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then63.i

ebt_check_match.exit.thread346.i.for.body55.i_crit_edge: ; preds = %ebt_check_match.exit.thread346.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body55.i

ebt_check_match.exit.i:                           ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %235 = ptrtoint ptr %match.0.i.i to i32
  br label %cleanup_matchesthread-pre-split.i

if.then63.i:                                      ; preds = %ebt_check_match.exit.thread346.i.if.then63.i_crit_edge, %if.end46.i.if.then63.i_crit_edge
  %i.0.lcssa.i344 = phi i32 [ 0, %if.end46.i.if.then63.i_crit_edge ], [ %inc.i.i, %ebt_check_match.exit.thread346.i.if.then63.i_crit_edge ]
  %__i.0.lcssa.i = phi i32 [ 112, %if.end46.i.if.then63.i_crit_edge ], [ %add60.i, %ebt_check_match.exit.thread346.i.if.then63.i_crit_edge ]
  %236 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %watchers_offset.i340, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa.i, i32 %237)
  %cmp65.not.i = icmp eq i32 %__i.0.lcssa.i, %237
  br i1 %cmp65.not.i, label %if.end71.i, label %if.then63.i.cleanup_matches.i_crit_edge

if.then63.i.cleanup_matches.i_crit_edge:          ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_matches.i

if.end71.i:                                       ; preds = %if.then63.i
  %target_offset.i345 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 12
  %238 = ptrtoint ptr %target_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %target_offset.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa.i, i32 %239)
  %cmp76427.i = icmp ult i32 %__i.0.lcssa.i, %239
  br i1 %cmp76427.i, label %if.end71.i.for.body77.i_crit_edge, label %if.end71.i.if.then88.i_crit_edge

if.end71.i.if.then88.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88.i

if.end71.i.for.body77.i_crit_edge:                ; preds = %if.end71.i
  br label %for.body77.i

for.body77.i:                                     ; preds = %ebt_check_watcher.exit.thread362.i.for.body77.i_crit_edge, %if.end71.i.for.body77.i_crit_edge
  %__i72.0429.i = phi i32 [ %add85.i, %ebt_check_watcher.exit.thread362.i.for.body77.i_crit_edge ], [ %__i.0.lcssa.i, %if.end71.i.for.body77.i_crit_edge ]
  %j.0428.i = phi i32 [ %inc.i312.i, %ebt_check_watcher.exit.thread362.i.for.body77.i_crit_edge ], [ 0, %if.end71.i.for.body77.i_crit_edge ]
  %add.ptr78.i = getelementptr i8, ptr %add.ptr145, i32 %__i72.0429.i
  %240 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %entryinfo.i, align 4
  %target_offset.i.i = getelementptr inbounds %struct.ebt_entry, ptr %241, i32 0, i32 12
  %242 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %target_offset.i.i, align 4
  %add.ptr.i294.i = getelementptr i8, ptr %241, i32 %243
  %sub.ptr.lhs.cast.i295.i = ptrtoint ptr %add.ptr.i294.i to i32
  %sub.ptr.rhs.cast.i296.i = ptrtoint ptr %add.ptr78.i to i32
  %sub.ptr.sub.i297.i = sub i32 %sub.ptr.lhs.cast.i295.i, %sub.ptr.rhs.cast.i296.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.ptr.sub.i297.i)
  %cmp.i298.i = icmp ult i32 %sub.ptr.sub.i297.i, 36
  br i1 %cmp.i298.i, label %for.body77.i.cleanup_watchers.i_crit_edge, label %lor.lhs.false.i301.i

for.body77.i.cleanup_watchers.i_crit_edge:        ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_watchers.i

lor.lhs.false.i301.i:                             ; preds = %for.body77.i
  %sub.i299.i = add i32 %sub.ptr.sub.i297.i, -36
  %watcher_size.i.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr78.i, i32 0, i32 1
  %244 = ptrtoint ptr %watcher_size.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %watcher_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i299.i, i32 %245)
  %cmp1.i300.i = icmp ult i32 %sub.i299.i, %245
  br i1 %cmp1.i300.i, label %lor.lhs.false.i301.i.cleanup_watchers.i_crit_edge, label %if.end.i304.i

lor.lhs.false.i301.i.cleanup_watchers.i_crit_edge: ; preds = %lor.lhs.false.i301.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_watchers.i

if.end.i304.i:                                    ; preds = %lor.lhs.false.i301.i
  %call.i302.i = call ptr @xt_request_find_target(i8 noundef zeroext 7, ptr noundef %add.ptr78.i, i8 noundef zeroext 0) #13
  %cmp.i.i303.i = icmp ugt ptr %call.i302.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i303.i, label %ebt_check_watcher.exit.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i304.i
  %family.i305.i = getelementptr inbounds %struct.xt_target, ptr %call.i302.i, i32 0, i32 12
  %246 = ptrtoint ptr %family.i305.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %family.i305.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %247)
  %cmp6.not.i.i = icmp eq i16 %247, 7
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %me.i306.i = getelementptr inbounds %struct.xt_target, ptr %call.i302.i, i32 0, i32 6
  %248 = ptrtoint ptr %me.i306.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %me.i306.i, align 4
  call void @module_put(ptr noundef %249) #13
  br label %cleanup_watchers.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %250 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call.i302.i, ptr %add.ptr78.i, align 4
  %251 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call.i302.i, ptr %168, align 4
  %data.i307.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr78.i, i32 0, i32 2
  %252 = ptrtoint ptr %targinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %data.i307.i, ptr %targinfo.i.i, align 4
  %253 = ptrtoint ptr %watcher_size.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %watcher_size.i.i, align 4
  %ethproto.i308.i = getelementptr inbounds %struct.ebt_entry, ptr %241, i32 0, i32 2
  %255 = ptrtoint ptr %ethproto.i308.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %ethproto.i308.i, align 4
  %invflags.i309.i = getelementptr inbounds %struct.ebt_entry, ptr %241, i32 0, i32 1
  %257 = ptrtoint ptr %invflags.i309.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %invflags.i309.i, align 4
  %and.i310.i = and i32 %258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310.i)
  %tobool.i311.i = icmp ne i32 %and.i310.i, 0
  %call13.i.i = call i32 @xt_check_target(ptr noundef nonnull %tgpar.i, i32 noundef %254, i16 noundef zeroext %256, i1 noundef zeroext %tobool.i311.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.then16.i.i, label %ebt_check_watcher.exit.thread362.i

if.then16.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %me17.i.i = getelementptr inbounds %struct.xt_target, ptr %call.i302.i, i32 0, i32 6
  %259 = ptrtoint ptr %me17.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %me17.i.i, align 4
  call void @module_put(ptr noundef %260) #13
  br label %cleanup_watchers.i

ebt_check_watcher.exit.thread362.i:               ; preds = %if.end9.i.i
  %inc.i312.i = add i32 %j.0428.i, 1
  %261 = ptrtoint ptr %watcher_size.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %watcher_size.i.i, align 4
  %add84.i = add i32 %__i72.0429.i, 36
  %add85.i = add i32 %add84.i, %262
  %263 = ptrtoint ptr %target_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %target_offset.i345, align 4
  %cmp76.i = icmp ult i32 %add85.i, %264
  br i1 %cmp76.i, label %ebt_check_watcher.exit.thread362.i.for.body77.i_crit_edge, label %ebt_check_watcher.exit.thread362.i.if.then88.i_crit_edge

ebt_check_watcher.exit.thread362.i.if.then88.i_crit_edge: ; preds = %ebt_check_watcher.exit.thread362.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then88.i

ebt_check_watcher.exit.thread362.i.for.body77.i_crit_edge: ; preds = %ebt_check_watcher.exit.thread362.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body77.i

ebt_check_watcher.exit.i:                         ; preds = %if.end.i304.i
  call void @__sanitizer_cov_trace_pc() #15
  %265 = ptrtoint ptr %call.i302.i to i32
  br label %cleanup_watchers.i

if.then88.i:                                      ; preds = %ebt_check_watcher.exit.thread362.i.if.then88.i_crit_edge, %if.end71.i.if.then88.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end71.i.if.then88.i_crit_edge ], [ %inc.i312.i, %ebt_check_watcher.exit.thread362.i.if.then88.i_crit_edge ]
  %__i72.0.lcssa.i = phi i32 [ %__i.0.lcssa.i, %if.end71.i.if.then88.i_crit_edge ], [ %add85.i, %ebt_check_watcher.exit.thread362.i.if.then88.i_crit_edge ]
  %266 = ptrtoint ptr %target_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %target_offset.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i72.0.lcssa.i, i32 %267)
  %cmp90.not.i = icmp eq i32 %__i72.0.lcssa.i, %267
  br i1 %cmp90.not.i, label %if.end97.i, label %if.then88.i.cleanup_watchers.i_crit_edge

if.then88.i.cleanup_watchers.i_crit_edge:         ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_watchers.i

if.end97.i:                                       ; preds = %if.then88.i
  %add.ptr.i315.i = getelementptr i8, ptr %add.ptr145, i32 %__i72.0.lcssa.i
  %next_offset.i346 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 13
  %268 = ptrtoint ptr %next_offset.i346 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %next_offset.i346, align 4
  %sub100.i = sub i32 %269, %__i72.0.lcssa.i
  %call102.i = call ptr @xt_request_find_target(i8 noundef zeroext 7, ptr noundef %add.ptr.i315.i, i8 noundef zeroext 0) #13
  %cmp.i316.i = icmp ugt ptr %call102.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316.i, label %if.then104.i, label %if.end106.i

if.then104.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  %270 = ptrtoint ptr %call102.i to i32
  br label %cleanup_watchers.i

if.end106.i:                                      ; preds = %if.end97.i
  %family107.i = getelementptr inbounds %struct.xt_target, ptr %call102.i, i32 0, i32 12
  %271 = ptrtoint ptr %family107.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %family107.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %272)
  %cmp108.not.i = icmp eq i16 %272, 7
  br i1 %cmp108.not.i, label %if.end111.i, label %if.then110.i

if.then110.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #15
  %me.i = getelementptr inbounds %struct.xt_target, ptr %call102.i, i32 0, i32 6
  %273 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %274) #13
  br label %cleanup_watchers.i

if.end111.i:                                      ; preds = %if.end106.i
  %275 = ptrtoint ptr %add.ptr.i315.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call102.i, ptr %add.ptr.i315.i, align 4
  %cmp114.i = icmp eq ptr %call102.i, @ebt_standard_target
  br i1 %cmp114.i, label %if.then116.i, label %if.else125.i

if.then116.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub100.i)
  %cmp117.i = icmp ult i32 %sub100.i, 40
  br i1 %cmp117.i, label %if.then116.i.cleanup_watchers.i_crit_edge, label %if.end120.i

if.then116.i.cleanup_watchers.i_crit_edge:        ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_watchers.i

if.end120.i:                                      ; preds = %if.then116.i
  %verdict.i = getelementptr inbounds %struct.ebt_standard_target, ptr %add.ptr.i315.i, i32 0, i32 1
  %276 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %verdict.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %277)
  %cmp121.i = icmp slt i32 %277, -4
  br i1 %cmp121.i, label %if.end120.i.cleanup_watchers.i_crit_edge, label %if.end120.i.if.end133.i_crit_edge

if.end120.i.if.end133.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133.i

if.end120.i.cleanup_watchers.i_crit_edge:         ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_watchers.i

if.else125.i:                                     ; preds = %if.end111.i
  %target_size.i = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr.i315.i, i32 0, i32 1
  %278 = ptrtoint ptr %target_size.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %target_size.i, align 4
  %sub126.i = add i32 %sub100.i, -36
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %sub126.i)
  %cmp127.i = icmp ugt i32 %279, %sub126.i
  br i1 %cmp127.i, label %if.then129.i, label %if.else125.i.if.end133.i_crit_edge

if.else125.i.if.end133.i_crit_edge:               ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133.i

if.then129.i:                                     ; preds = %if.else125.i
  call void @__sanitizer_cov_trace_pc() #15
  %me131.i = getelementptr inbounds %struct.xt_target, ptr %call102.i, i32 0, i32 6
  %280 = ptrtoint ptr %me131.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %me131.i, align 4
  call void @module_put(ptr noundef %281) #13
  br label %cleanup_watchers.i

if.end133.i:                                      ; preds = %if.else125.i.if.end133.i_crit_edge, %if.end120.i.if.end133.i_crit_edge
  %282 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call102.i, ptr %168, align 4
  %data.i347 = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr.i315.i, i32 0, i32 2
  %283 = ptrtoint ptr %targinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %data.i347, ptr %targinfo.i.i, align 4
  %target_size136.i = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr.i315.i, i32 0, i32 1
  %284 = ptrtoint ptr %target_size136.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %target_size136.i, align 4
  %ethproto.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 2
  %286 = ptrtoint ptr %ethproto.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %ethproto.i, align 4
  %288 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %invflags.i, align 4
  %and138.i = and i32 %289, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.i = icmp ne i32 %and138.i, 0
  %call140.i = call i32 @xt_check_target(ptr noundef nonnull %tgpar.i, i32 noundef %285, i16 noundef zeroext %287, i1 noundef zeroext %tobool139.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %cmp141.i = icmp slt i32 %call140.i, 0
  br i1 %cmp141.i, label %if.then143.i, label %if.end145.i

if.then143.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  %me144.i = getelementptr inbounds %struct.xt_target, ptr %call102.i, i32 0, i32 6
  %290 = ptrtoint ptr %me144.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %me144.i, align 4
  call void @module_put(ptr noundef %291) #13
  br label %cleanup_watchers.i

if.end145.i:                                      ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #15
  %292 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %i, align 4
  %inc146.i = add i32 %293, 1
  store i32 %inc146.i, ptr %i, align 4
  br label %ebt_check_entry.exit.thread

cleanup_watchers.i:                               ; preds = %if.then143.i, %if.then129.i, %if.end120.i.cleanup_watchers.i_crit_edge, %if.then116.i.cleanup_watchers.i_crit_edge, %if.then110.i, %if.then104.i, %if.then88.i.cleanup_watchers.i_crit_edge, %ebt_check_watcher.exit.i, %if.then16.i.i, %if.then8.i.i, %lor.lhs.false.i301.i.cleanup_watchers.i_crit_edge, %for.body77.i.cleanup_watchers.i_crit_edge
  %j.0394.i = phi i32 [ %j.0.lcssa.i, %if.then104.i ], [ %j.0.lcssa.i, %if.then110.i ], [ %j.0.lcssa.i, %if.then143.i ], [ %j.0.lcssa.i, %if.then129.i ], [ %j.0428.i, %ebt_check_watcher.exit.i ], [ %j.0428.i, %if.then16.i.i ], [ %j.0428.i, %if.then8.i.i ], [ %j.0428.i, %for.body77.i.cleanup_watchers.i_crit_edge ], [ %j.0428.i, %lor.lhs.false.i301.i.cleanup_watchers.i_crit_edge ], [ %j.0.lcssa.i, %if.then88.i.cleanup_watchers.i_crit_edge ], [ %j.0.lcssa.i, %if.then116.i.cleanup_watchers.i_crit_edge ], [ %j.0.lcssa.i, %if.end120.i.cleanup_watchers.i_crit_edge ]
  %ret.0.i = phi i32 [ %270, %if.then104.i ], [ -2, %if.then110.i ], [ %call140.i, %if.then143.i ], [ -14, %if.then129.i ], [ %265, %ebt_check_watcher.exit.i ], [ %call13.i.i, %if.then16.i.i ], [ -2, %if.then8.i.i ], [ -22, %for.body77.i.cleanup_watchers.i_crit_edge ], [ -22, %lor.lhs.false.i301.i.cleanup_watchers.i_crit_edge ], [ -14, %if.end120.i.cleanup_watchers.i_crit_edge ], [ -14, %if.then116.i.cleanup_watchers.i_crit_edge ], [ -22, %if.then88.i.cleanup_watchers.i_crit_edge ]
  %294 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %watchers_offset.i340, align 4
  %296 = ptrtoint ptr %target_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %target_offset.i345, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %295, i32 %297)
  %cmp153432.i = icmp ult i32 %295, %297
  br i1 %cmp153432.i, label %for.body155.lr.ph.i, label %cleanup_watchers.i.cleanup_matches.i_crit_edge

cleanup_watchers.i.cleanup_matches.i_crit_edge:   ; preds = %cleanup_watchers.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_matches.i

for.body155.lr.ph.i:                              ; preds = %cleanup_watchers.i
  %298 = getelementptr inbounds i8, ptr %par.i.i, i32 12
  %target.i318.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i, i32 0, i32 1
  %targinfo.i320.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i.i, i32 0, i32 2
  br label %for.body155.i

for.body155.i:                                    ; preds = %for.inc162.i.for.body155.i_crit_edge, %for.body155.lr.ph.i
  %__i147.0434.i = phi i32 [ %295, %for.body155.lr.ph.i ], [ %add165.i, %for.inc162.i.for.body155.i_crit_edge ]
  %j.3433.i = phi i32 [ %j.0394.i, %for.body155.lr.ph.i ], [ %dec.i.i, %for.inc162.i.for.body155.i_crit_edge ]
  %add.ptr156.i = getelementptr i8, ptr %add.ptr145, i32 %__i147.0434.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i.i) #13
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 134217727, ptr %298, align 4
  %dec.i.i = add i32 %j.3433.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.3433.i)
  %cmp.i317.i = icmp eq i32 %j.3433.i, 0
  br i1 %cmp.i317.i, label %ebt_cleanup_watcher.exit.i, label %if.end.i322.i

if.end.i322.i:                                    ; preds = %for.body155.i
  %300 = ptrtoint ptr %par.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %net, ptr %par.i.i, align 4
  %301 = ptrtoint ptr %add.ptr156.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %add.ptr156.i, align 4
  %303 = ptrtoint ptr %target.i318.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %target.i318.i, align 4
  %data.i319.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr156.i, i32 0, i32 2
  %304 = ptrtoint ptr %targinfo.i320.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %data.i319.i, ptr %targinfo.i320.i, align 4
  %destroy.i.i = getelementptr inbounds %struct.xt_target, ptr %302, i32 0, i32 5
  %305 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %destroy.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %306, null
  br i1 %cmp3.not.i.i, label %if.end.i322.i.for.inc162.i_crit_edge, label %if.then4.i.i

if.end.i322.i.for.inc162.i_crit_edge:             ; preds = %if.end.i322.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc162.i

if.then4.i.i:                                     ; preds = %if.end.i322.i
  call void @__sanitizer_cov_trace_pc() #15
  call void %306(ptr noundef nonnull %par.i.i) #13
  br label %for.inc162.i

ebt_cleanup_watcher.exit.i:                       ; preds = %for.body155.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i.i) #13
  br label %cleanup_matchesthread-pre-split.i

for.inc162.i:                                     ; preds = %if.then4.i.i, %if.end.i322.i.for.inc162.i_crit_edge
  %307 = ptrtoint ptr %target.i318.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %target.i318.i, align 4
  %me.i323.i = getelementptr inbounds %struct.xt_target, ptr %308, i32 0, i32 6
  %309 = ptrtoint ptr %me.i323.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %me.i323.i, align 4
  call void @module_put(ptr noundef %310) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i.i) #13
  %watcher_size163.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr156.i, i32 0, i32 1
  %311 = ptrtoint ptr %watcher_size163.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %watcher_size163.i, align 4
  %add164.i = add i32 %__i147.0434.i, 36
  %add165.i = add i32 %add164.i, %312
  %313 = ptrtoint ptr %target_offset.i345 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %target_offset.i345, align 4
  %cmp153.i = icmp ult i32 %add165.i, %314
  br i1 %cmp153.i, label %for.inc162.i.for.body155.i_crit_edge, label %for.inc162.i.cleanup_matchesthread-pre-split.i_crit_edge

for.inc162.i.cleanup_matchesthread-pre-split.i_crit_edge: ; preds = %for.inc162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_matchesthread-pre-split.i

for.inc162.i.for.body155.i_crit_edge:             ; preds = %for.inc162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body155.i

cleanup_matchesthread-pre-split.i:                ; preds = %for.inc162.i.cleanup_matchesthread-pre-split.i_crit_edge, %ebt_cleanup_watcher.exit.i, %ebt_check_match.exit.i, %if.then33.i.i, %lor.lhs.false.i.i.cleanup_matchesthread-pre-split.i_crit_edge, %for.body55.i.cleanup_matchesthread-pre-split.i_crit_edge
  %i.0407.ph.i = phi i32 [ %i.0419.i, %if.then33.i.i ], [ %i.0419.i, %ebt_check_match.exit.i ], [ %i.0.lcssa.i344, %ebt_cleanup_watcher.exit.i ], [ %i.0.lcssa.i344, %for.inc162.i.cleanup_matchesthread-pre-split.i_crit_edge ], [ %i.0419.i, %for.body55.i.cleanup_matchesthread-pre-split.i_crit_edge ], [ %i.0419.i, %lor.lhs.false.i.i.cleanup_matchesthread-pre-split.i_crit_edge ]
  %ret.1.ph.i = phi i32 [ %call30.i.i, %if.then33.i.i ], [ %235, %ebt_check_match.exit.i ], [ %ret.0.i, %ebt_cleanup_watcher.exit.i ], [ %ret.0.i, %for.inc162.i.cleanup_matchesthread-pre-split.i_crit_edge ], [ -22, %for.body55.i.cleanup_matchesthread-pre-split.i_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_matchesthread-pre-split.i_crit_edge ]
  %315 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %315)
  %.pr.i = load i32, ptr %watchers_offset.i340, align 4
  br label %cleanup_matches.i

cleanup_matches.i:                                ; preds = %cleanup_matchesthread-pre-split.i, %cleanup_watchers.i.cleanup_matches.i_crit_edge, %if.then63.i.cleanup_matches.i_crit_edge
  %316 = phi i32 [ %.pr.i, %cleanup_matchesthread-pre-split.i ], [ %295, %cleanup_watchers.i.cleanup_matches.i_crit_edge ], [ %237, %if.then63.i.cleanup_matches.i_crit_edge ]
  %i.0407.i = phi i32 [ %i.0407.ph.i, %cleanup_matchesthread-pre-split.i ], [ %i.0.lcssa.i344, %cleanup_watchers.i.cleanup_matches.i_crit_edge ], [ %i.0.lcssa.i344, %if.then63.i.cleanup_matches.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.1.ph.i, %cleanup_matchesthread-pre-split.i ], [ %ret.0.i, %cleanup_watchers.i.cleanup_matches.i_crit_edge ], [ -22, %if.then63.i.cleanup_matches.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %316)
  %cmp182435.i = icmp ugt i32 %316, 112
  br i1 %cmp182435.i, label %for.body184.lr.ph.i, label %cleanup_matches.i.ebt_check_entry.exit_crit_edge

cleanup_matches.i.ebt_check_entry.exit_crit_edge: ; preds = %cleanup_matches.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_check_entry.exit

for.body184.lr.ph.i:                              ; preds = %cleanup_matches.i
  %317 = getelementptr inbounds i8, ptr %par.i325.i, i32 12
  %match.i.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i325.i, i32 0, i32 1
  %matchinfo.i329.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i325.i, i32 0, i32 2
  br label %for.body184.i

for.body184.i:                                    ; preds = %for.inc191.i.for.body184.i_crit_edge, %for.body184.lr.ph.i
  %__i177.0437.i = phi i32 [ 112, %for.body184.lr.ph.i ], [ %add194.i, %for.inc191.i.for.body184.i_crit_edge ]
  %i.3436.i = phi i32 [ %i.0407.i, %for.body184.lr.ph.i ], [ %dec.i326.i, %for.inc191.i.for.body184.i_crit_edge ]
  %add.ptr185.i = getelementptr i8, ptr %add.ptr145, i32 %__i177.0437.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i325.i) #13
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 134217727, ptr %317, align 4
  %dec.i326.i = add i32 %i.3436.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3436.i)
  %cmp.i327.i = icmp eq i32 %i.3436.i, 0
  br i1 %cmp.i327.i, label %ebt_cleanup_match.exit.i, label %if.end.i333.i

if.end.i333.i:                                    ; preds = %for.body184.i
  %319 = ptrtoint ptr %par.i325.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %net, ptr %par.i325.i, align 4
  %320 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %add.ptr185.i, align 4
  %322 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %321, ptr %match.i.i, align 4
  %data.i328.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr185.i, i32 0, i32 2
  %323 = ptrtoint ptr %matchinfo.i329.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %data.i328.i, ptr %matchinfo.i329.i, align 4
  %destroy.i331.i = getelementptr inbounds %struct.xt_match, ptr %321, i32 0, i32 5
  %324 = ptrtoint ptr %destroy.i331.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %destroy.i331.i, align 4
  %cmp3.not.i332.i = icmp eq ptr %325, null
  br i1 %cmp3.not.i332.i, label %if.end.i333.i.for.inc191.i_crit_edge, label %if.then4.i334.i

if.end.i333.i.for.inc191.i_crit_edge:             ; preds = %if.end.i333.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc191.i

if.then4.i334.i:                                  ; preds = %if.end.i333.i
  call void @__sanitizer_cov_trace_pc() #15
  call void %325(ptr noundef nonnull %par.i325.i) #13
  br label %for.inc191.i

ebt_cleanup_match.exit.i:                         ; preds = %for.body184.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i325.i) #13
  br label %ebt_check_entry.exit

for.inc191.i:                                     ; preds = %if.then4.i334.i, %if.end.i333.i.for.inc191.i_crit_edge
  %326 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %match.i.i, align 4
  %me.i335.i = getelementptr inbounds %struct.xt_match, ptr %327, i32 0, i32 6
  %328 = ptrtoint ptr %me.i335.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %me.i335.i, align 4
  call void @module_put(ptr noundef %329) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i325.i) #13
  %match_size192.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr185.i, i32 0, i32 1
  %330 = ptrtoint ptr %match_size192.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %match_size192.i, align 4
  %add193.i = add i32 %__i177.0437.i, 36
  %add194.i = add i32 %add193.i, %331
  %332 = ptrtoint ptr %watchers_offset.i340 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %watchers_offset.i340, align 4
  %cmp182.i = icmp ult i32 %add194.i, %333
  br i1 %cmp182.i, label %for.inc191.i.for.body184.i_crit_edge, label %for.inc191.i.ebt_check_entry.exit_crit_edge

for.inc191.i.ebt_check_entry.exit_crit_edge:      ; preds = %for.inc191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_check_entry.exit

for.inc191.i.for.body184.i_crit_edge:             ; preds = %for.inc191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body184.i

ebt_check_entry.exit.thread:                      ; preds = %if.end145.i, %for.body143.ebt_check_entry.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tgpar.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #13
  %334 = ptrtoint ptr %add.ptr145 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %add.ptr145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %cmp151.not = icmp eq i32 %335, 0
  br i1 %cmp151.not, label %ebt_check_entry.exit.thread.if.end157_crit_edge, label %if.then152

ebt_check_entry.exit.thread.if.end157_crit_edge:  ; preds = %ebt_check_entry.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

ebt_check_entry.exit.thread390:                   ; preds = %if.end3.i.ebt_check_entry.exit.thread390_crit_edge, %if.end.i322.ebt_check_entry.exit.thread390_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tgpar.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #13
  br label %if.end165thread-pre-split

ebt_check_entry.exit:                             ; preds = %for.inc191.i.ebt_check_entry.exit_crit_edge, %ebt_cleanup_match.exit.i, %cleanup_matches.i.ebt_check_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tgpar.i) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #13
  br label %if.end165thread-pre-split

if.then152:                                       ; preds = %ebt_check_entry.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset153 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr145, i32 0, i32 13
  %336 = ptrtoint ptr %next_offset153 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %next_offset153, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %ebt_check_entry.exit.thread.if.end157_crit_edge
  %.pn286 = phi i32 [ %337, %if.then152 ], [ 48, %ebt_check_entry.exit.thread.if.end157_crit_edge ]
  %__i137.1 = add i32 %.pn286, %__i137.0533
  %338 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %newinfo, align 128
  %cmp142 = icmp ult i32 %__i137.1, %339
  br i1 %cmp142, label %if.end157.for.body143_crit_edge, label %if.end157.if.then160_crit_edge

if.end157.if.then160_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end157.for.body143_crit_edge:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body143

if.then160:                                       ; preds = %if.end157.if.then160_crit_edge, %for.end136.if.then160_crit_edge
  %__i137.0.lcssa = phi i32 [ 0, %for.end136.if.then160_crit_edge ], [ %__i137.1, %if.end157.if.then160_crit_edge ]
  %340 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %newinfo, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %__i137.0.lcssa, i32 %341)
  %cmp162.not = icmp eq i32 %__i137.0.lcssa, %341
  br i1 %cmp162.not, label %if.then160.if.end199_crit_edge, label %if.then160.if.end165_crit_edge

if.then160.if.end165_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then160.if.end199_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.end165thread-pre-split:                        ; preds = %ebt_check_entry.exit, %ebt_check_entry.exit.thread390
  %__ret138.2.ph = phi i32 [ %ret.1.i, %ebt_check_entry.exit ], [ -22, %ebt_check_entry.exit.thread390 ]
  %342 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %342)
  %.pr = load i32, ptr %newinfo, align 128
  br label %if.end165

if.end165:                                        ; preds = %if.end165thread-pre-split, %if.then160.if.end165_crit_edge
  %343 = phi i32 [ %.pr, %if.end165thread-pre-split ], [ %341, %if.then160.if.end165_crit_edge ]
  %__ret138.2 = phi i32 [ %__ret138.2.ph, %if.end165thread-pre-split ], [ -22, %if.then160.if.end165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %cmp174535.not = icmp eq i32 %343, 0
  br i1 %cmp174535.not, label %if.end165.if.end199_crit_edge, label %if.end165.for.body175_crit_edge

if.end165.for.body175_crit_edge:                  ; preds = %if.end165
  br label %for.body175

if.end165.if.end199_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

for.body175:                                      ; preds = %if.end189.for.body175_crit_edge, %if.end165.for.body175_crit_edge
  %__i169.0536 = phi i32 [ %__i169.1, %if.end189.for.body175_crit_edge ], [ 0, %if.end165.for.body175_crit_edge ]
  %344 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %entries, align 4
  %add.ptr177 = getelementptr i8, ptr %345, i32 %__i169.0536
  %call178 = call fastcc i32 @ebt_cleanup_entry(ptr noundef %add.ptr177, ptr noundef %net, ptr noundef nonnull %i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179.not = icmp eq i32 %call178, 0
  br i1 %cmp179.not, label %if.end181, label %for.body175.if.end199_crit_edge

for.body175.if.end199_crit_edge:                  ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.end181:                                        ; preds = %for.body175
  %346 = ptrtoint ptr %add.ptr177 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %add.ptr177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %cmp183.not = icmp eq i32 %347, 0
  br i1 %cmp183.not, label %if.end181.if.end189_crit_edge, label %if.then184

if.end181.if.end189_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end189

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset185 = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr177, i32 0, i32 13
  %348 = ptrtoint ptr %next_offset185 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %next_offset185, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then184, %if.end181.if.end189_crit_edge
  %.pn = phi i32 [ %349, %if.then184 ], [ 48, %if.end181.if.end189_crit_edge ]
  %__i169.1 = add i32 %.pn, %__i169.0536
  %350 = ptrtoint ptr %newinfo to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %newinfo, align 128
  %cmp174 = icmp ult i32 %__i169.1, %351
  br i1 %cmp174, label %if.end189.for.body175_crit_edge, label %if.end189.if.end199_crit_edge

if.end189.if.end199_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

if.end189.for.body175_crit_edge:                  ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body175

if.end199:                                        ; preds = %if.end189.if.end199_crit_edge, %for.body175.if.end199_crit_edge, %if.end165.if.end199_crit_edge, %if.then160.if.end199_crit_edge
  %__ret138.2398 = phi i32 [ 0, %if.then160.if.end199_crit_edge ], [ %__ret138.2, %if.end165.if.end199_crit_edge ], [ %__ret138.2, %if.end189.if.end199_crit_edge ], [ %__ret138.2, %for.body175.if.end199_crit_edge ]
  call void @vfree(ptr noundef %cl_s.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end199, %if.then131, %if.then116, %for.end79.cleanup_crit_edge, %while.end75, %if.then51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %lor.lhs.false30.i.cleanup_crit_edge, %lor.lhs.false27.i.cleanup_crit_edge, %if.end25.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end75 ], [ -14, %if.then116 ], [ -22, %if.then131 ], [ %__ret138.2398, %if.end199 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -12, %if.then51.cleanup_crit_edge ], [ -12, %for.end79.cleanup_crit_edge ], [ -22, %if.then35.cleanup_crit_edge ], [ -22, %while.body.4.cleanup_crit_edge ], [ -22, %if.then3.i.cleanup_crit_edge ], [ -22, %if.end17.i.cleanup_crit_edge ], [ -22, %lor.lhs.false30.i.cleanup_crit_edge ], [ -22, %lor.lhs.false27.i.cleanup_crit_edge ], [ -22, %if.end25.i.cleanup_crit_edge ], [ -22, %if.end6.i.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ebt_unregister_table(ptr noundef %net, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %table) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %table, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %table, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %private = getelementptr inbounds %struct.ebt_table, ptr %table, i32 0, i32 6
  %8 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp44.not = icmp eq i32 %11, 0
  br i1 %cmp44.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %12 = phi ptr [ %20, %if.end7.for.body_crit_edge ], [ %9, %list_del.exit.for.body_crit_edge ]
  %__i.045 = phi i32 [ %__i.1, %if.end7.for.body_crit_edge ], [ 0, %list_del.exit.for.body_crit_edge ]
  %entries = getelementptr inbounds %struct.ebt_table_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entries, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %__i.045
  %call = tail call fastcc i32 @ebt_cleanup_entry(ptr noundef %add.ptr, ptr noundef %net, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.not = icmp eq i32 %16, 0
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr, i32 0, i32 13
  %17 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next_offset, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %.pn = phi i32 [ %18, %if.then5 ], [ 48, %if.end.if.end7_crit_edge ]
  %__i.1 = add i32 %.pn, %__i.045
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 128
  %cmp = icmp ult i32 %__i.1, %22
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %nentries17 = getelementptr inbounds %struct.ebt_table_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %nentries17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nentries17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %me = getelementptr inbounds %struct.ebt_table, ptr %table, i32 0, i32 8
  %27 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %me, align 4
  tail call void @module_put(ptr noundef %28) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.end.if.end19_crit_edge
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private, align 4
  %entries21 = getelementptr inbounds %struct.ebt_table_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %entries21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries21, align 4
  tail call void @vfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private, align 4
  %chainstack.i = getelementptr inbounds %struct.ebt_table_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chainstack.i, align 32
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end19.ebt_free_table_info.exit_crit_edge, label %for.cond.preheader.i

if.end19.ebt_free_table_info.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_free_table_info.exit

for.cond.preheader.i:                             ; preds = %if.end19
  %call7.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %37)
  %cmp8.i = icmp ult i32 %call7.i, %37
  br i1 %cmp8.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call9.i = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %call7.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chainstack.i, align 32
  %arrayidx.i = getelementptr ptr, ptr %39, i32 %call9.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  tail call void @vfree(ptr noundef %41) #13
  %call.i = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %42
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %43 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chainstack.i, align 32
  tail call void @vfree(ptr noundef %44) #13
  br label %ebt_free_table_info.exit

ebt_free_table_info.exit:                         ; preds = %for.end.i, %if.end19.ebt_free_table_info.exit_crit_edge
  %45 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private, align 4
  tail call void @vfree(ptr noundef %46) #13
  %ops = getelementptr inbounds %struct.ebt_table, ptr %table, i32 0, i32 7
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  tail call void @kfree(ptr noundef %48) #13
  tail call void @kfree(ptr noundef %table) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ebt_free_table_info(ptr nocapture noundef readonly %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %chainstack = getelementptr inbounds %struct.ebt_table_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chainstack, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %2)
  %cmp8 = icmp ult i32 %call7, %2
  br i1 %cmp8, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call9 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call7, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chainstack, align 32
  %arrayidx = getelementptr ptr, ptr %4, i32 %call9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @vfree(ptr noundef %6) #13
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %chainstack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chainstack, align 32
  tail call void @vfree(ptr noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ebt_register_template(ptr noundef %t, ptr noundef %table_init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  %name = getelementptr inbounds %struct.ebt_table, ptr %t, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmpl.0.in = phi ptr [ @template_tables, %entry ], [ %tmpl.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmpl.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmpl.0 = load ptr, ptr %tmpl.0.in, align 4
  %cmp.not = icmp eq ptr %tmpl.0, @template_tables
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %name1 = getelementptr inbounds %struct.ebt_template, ptr %tmpl.0, i32 0, i32 1
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %name1) #17
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %land.rhs, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

land.rhs:                                         ; preds = %for.body
  %.b69 = load i1, ptr @ebt_register_template.__already_done, align 1
  br i1 %.b69, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !93

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ebt_register_template.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1302, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 48) #20
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %for.end.cleanup_crit_edge, label %if.end50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %table_init51 = getelementptr inbounds %struct.ebt_template, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %table_init51 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %table_init, ptr %table_init51, align 4
  %name52 = getelementptr inbounds %struct.ebt_template, ptr %call7.i.i, i32 0, i32 1
  %call56 = tail call i32 @strscpy(ptr noundef %name52, ptr noundef %name, i32 noundef 32) #13
  %me = getelementptr inbounds %struct.ebt_table, ptr %t, i32 0, i32 8
  %3 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %me, align 4
  %owner = getelementptr inbounds %struct.ebt_template, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %owner, align 8
  %6 = load ptr, ptr @template_tables, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @template_tables, ptr noundef %6) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @template_tables, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @template_tables, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end50.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %land.rhs.cleanup_crit_edge ], [ -17, %if.then ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ebt_unregister_template(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  %name = getelementptr inbounds %struct.ebt_table, ptr %t, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmpl.0.in = phi ptr [ @template_tables, %entry ], [ %tmpl.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmpl.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmpl.0 = load ptr, ptr %tmpl.0.in, align 4
  %cmp.not = icmp eq ptr %tmpl.0, @template_tables
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %name1 = getelementptr inbounds %struct.ebt_template, ptr %tmpl.0, i32 0, i32 1
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %name1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmpl.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmpl.0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %tmpl.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tmpl.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %7 = ptrtoint ptr %tmpl.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %tmpl.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmpl.0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  tail call void @kfree(ptr noundef %tmpl.0) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %.b51 = load i1, ptr @ebt_unregister_template.__already_done, align 1
  br i1 %.b51, label %for.end.cleanup_crit_edge, label %if.then14, !prof !93

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ebt_unregister_template.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1340, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %for.end.cleanup_crit_edge, %list_del.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ebt_unregister_table_pre_exit(ptr noundef %net, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ebt_pernet_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %t.0.in.i = phi ptr [ %call.i, %entry ], [ %t.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %t.0.i = load ptr, ptr %t.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call.i
  br i1 %cmp.not.i, label %__ebt_find_table.exit.thread, label %for.body.i

__ebt_find_table.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.ebt_table, ptr %t.0.i, i32 0, i32 1
  %call3.i = tail call i32 @strcmp(ptr noundef %name2.i, ptr noundef %name) #19
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %__ebt_find_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__ebt_find_table.exit:                            ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %tobool.not = icmp eq ptr %t.0.i, null
  br i1 %tobool.not, label %__ebt_find_table.exit.if.end_crit_edge, label %if.then

__ebt_find_table.exit.if.end_crit_edge:           ; preds = %__ebt_find_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %__ebt_find_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ops = getelementptr inbounds %struct.ebt_table, ptr %t.0.i, i32 0, i32 7
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %valid_hooks = getelementptr inbounds %struct.ebt_table, ptr %t.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %valid_hooks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %valid_hooks, align 4
  %call.i354 = tail call i32 @__sw_hweight32(i32 noundef %5) #13
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef %3, i32 noundef %call.i354) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %__ebt_find_table.exit.if.end_crit_edge, %__ebt_find_table.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ebt_unregister_table(ptr noundef %net, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ebt_pernet_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %t.0.in.i = phi ptr [ %call.i, %entry ], [ %t.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %t.0.i = load ptr, ptr %t.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call.i
  br i1 %cmp.not.i, label %__ebt_find_table.exit.thread, label %for.body.i

__ebt_find_table.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.ebt_table, ptr %t.0.i, i32 0, i32 1
  %call3.i = tail call i32 @strcmp(ptr noundef %name2.i, ptr noundef %name) #19
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %__ebt_find_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__ebt_find_table.exit:                            ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %tobool.not = icmp eq ptr %t.0.i, null
  br i1 %tobool.not, label %__ebt_find_table.exit.if.end_crit_edge, label %if.then

__ebt_find_table.exit.if.end_crit_edge:           ; preds = %__ebt_find_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %__ebt_find_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__ebt_unregister_table(ptr noundef %net, ptr noundef nonnull %t.0.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %__ebt_find_table.exit.if.end_crit_edge, %__ebt_find_table.exit.thread
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebtables_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @ebt_standard_target) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nf_register_sockopt(ptr noundef nonnull @ebt_sockopts) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ebt_net_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nf_unregister_sockopt(ptr noundef nonnull @ebt_sockopts) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.then7 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @xt_unregister_target(ptr noundef nonnull @ebt_standard_target) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ebtables_fini() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_unregister_sockopt(ptr noundef nonnull @ebt_sockopts) #13
  tail call void @xt_unregister_target(ptr noundef nonnull @ebt_standard_target) #13
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ebt_net_ops) #13
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ebt_cleanup_entry(ptr noundef %e, ptr noundef %net, ptr noundef %cnt) unnamed_addr #3 align 64 {
entry:
  %par.i73 = alloca %struct.xt_mtdtor_param, align 4
  %par.i = alloca %struct.xt_tgdtor_param, align 4
  %par = alloca %struct.xt_tgdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par) #13
  %0 = call ptr @memset(ptr %par, i32 255, i32 16)
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %cnt, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %watchers_offset = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 11
  %5 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %watchers_offset, align 4
  %target_offset = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 12
  %7 = ptrtoint ptr %target_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp480 = icmp ult i32 %6, %8
  br i1 %cmp480, label %for.body.lr.ph, label %if.end3.for.cond18.preheader_crit_edge

if.end3.for.cond18.preheader_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond18.preheader

for.body.lr.ph:                                   ; preds = %if.end3
  %9 = getelementptr inbounds i8, ptr %par.i, i32 12
  %target.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 1
  %targinfo.i = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par.i, i32 0, i32 2
  br label %for.body

for.cond18.preheaderthread-pre-split:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %watchers_offset, align 4
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond18.preheaderthread-pre-split, %if.end3.for.cond18.preheader_crit_edge
  %11 = phi i32 [ %.pr, %for.cond18.preheaderthread-pre-split ], [ %6, %if.end3.for.cond18.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %11)
  %cmp2082 = icmp ugt i32 %11, 112
  br i1 %cmp2082, label %for.body21.lr.ph, label %for.cond18.preheader.for.end30_crit_edge

for.cond18.preheader.for.end30_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.body21.lr.ph:                                 ; preds = %for.cond18.preheader
  %12 = getelementptr inbounds i8, ptr %par.i73, i32 12
  %match.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i73, i32 0, i32 1
  %matchinfo.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i73, i32 0, i32 2
  br label %for.body21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %__i.081 = phi i32 [ %6, %for.body.lr.ph ], [ %add8, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %e, i32 %__i.081
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #13
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 134217727, ptr %9, align 4
  %14 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %net, ptr %par.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %17 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %target.i, align 4
  %data.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %targinfo.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %targinfo.i, align 4
  %destroy.i = getelementptr inbounds %struct.xt_target, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destroy.i, align 4
  %cmp3.not.i = icmp eq ptr %20, null
  br i1 %cmp3.not.i, label %for.body.for.inc_crit_edge, label %if.then4.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void %20(ptr noundef nonnull %par.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then4.i, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target.i, align 4
  %me.i = getelementptr inbounds %struct.xt_target, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %me.i, align 4
  call void @module_put(ptr noundef %24) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #13
  %watcher_size = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr, i32 0, i32 1
  %25 = ptrtoint ptr %watcher_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %watcher_size, align 4
  %add = add i32 %__i.081, 36
  %add8 = add i32 %add, %26
  %27 = ptrtoint ptr %target_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target_offset, align 4
  %cmp4 = icmp ult i32 %add8, %28
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.cond18.preheaderthread-pre-split

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body21:                                       ; preds = %for.inc27.for.body21_crit_edge, %for.body21.lr.ph
  %__i16.083 = phi i32 [ 112, %for.body21.lr.ph ], [ %add29, %for.inc27.for.body21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %e, i32 %__i16.083
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i73) #13
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 134217727, ptr %12, align 4
  %30 = ptrtoint ptr %par.i73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %net, ptr %par.i73, align 4
  %31 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr22, align 4
  %33 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %match.i, align 4
  %data.i74 = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr22, i32 0, i32 2
  %34 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i74, ptr %matchinfo.i, align 4
  %destroy.i76 = getelementptr inbounds %struct.xt_match, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %destroy.i76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %destroy.i76, align 4
  %cmp3.not.i77 = icmp eq ptr %36, null
  br i1 %cmp3.not.i77, label %for.body21.for.inc27_crit_edge, label %if.then4.i78

for.body21.for.inc27_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc27

if.then4.i78:                                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  call void %36(ptr noundef nonnull %par.i73) #13
  br label %for.inc27

for.inc27:                                        ; preds = %if.then4.i78, %for.body21.for.inc27_crit_edge
  %37 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %match.i, align 4
  %me.i79 = getelementptr inbounds %struct.xt_match, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %me.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %me.i79, align 4
  call void @module_put(ptr noundef %40) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i73) #13
  %match_size = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr22, i32 0, i32 1
  %41 = ptrtoint ptr %match_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %match_size, align 4
  %add28 = add i32 %__i16.083, 36
  %add29 = add i32 %add28, %42
  %43 = ptrtoint ptr %watchers_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %watchers_offset, align 4
  %cmp20 = icmp ult i32 %add29, %44
  br i1 %cmp20, label %for.inc27.for.body21_crit_edge, label %for.inc27.for.end30_crit_edge

for.inc27.for.end30_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end30

for.inc27.for.body21_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

for.end30:                                        ; preds = %for.inc27.for.end30_crit_edge, %for.cond18.preheader.for.end30_crit_edge
  %45 = ptrtoint ptr %target_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %target_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %e, i32 %46
  %47 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %net, ptr %par, align 4
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  %target = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 1
  %50 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %target, align 4
  %data = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr.i, i32 0, i32 2
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %51 = ptrtoint ptr %targinfo to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %data, ptr %targinfo, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %52 = ptrtoint ptr %family to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 7, ptr %family, align 4
  %destroy = getelementptr inbounds %struct.xt_target, ptr %49, i32 0, i32 5
  %53 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %destroy, align 4
  %cmp42.not = icmp eq ptr %54, null
  br i1 %cmp42.not, label %for.end30.if.end46_crit_edge, label %if.then43

for.end30.if.end46_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #15
  call void %54(ptr noundef nonnull %par) #13
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %for.end30.if.end46_crit_edge
  %55 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %target, align 4
  %me = getelementptr inbounds %struct.xt_target, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %me, align 4
  call void @module_put(ptr noundef %58) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_target(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_target(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_find_match(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_match(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_sockopt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_sockopt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ebt_set_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, [2 x i32] %arg.coerce, i32 noundef %len) #0 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %hlp.i = alloca %struct.ebt_replace, align 4
  %tmp.i = alloca %struct.ebt_replace, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #13
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 128, label %sw.bb
    i32 129, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp.i) #13
  %5 = call ptr @memset(ptr %tmp.i, i32 255, i32 80)
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %arg.coerce, 0
  %6 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %arg.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i58.i, label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i.i, label %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:  ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end8.i.i.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 80, i32 -1226833920) #21, !srcloc !96
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !93

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 80) #13
  %8 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !97
  %and.i.i.i.i.i.i57.i = and i32 %10, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i57.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %6, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !93

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end.i_crit_edge:              ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i3.i.i.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 80, %if.end8.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 80, %res.0.i.i3.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i.i)
  br label %do_replace.exit

if.end.i.i58.i:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %tmp.i, ptr %6, i32 80)
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i58.i, %if.end.i.i.i.i.i.if.end.i_crit_edge
  %entries_size.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 3
  %13 = ptrtoint ptr %entries_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entries_size.i, align 4
  %add.i = add i32 %14, 80
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %len)
  %cmp1.not.i = icmp ne i32 %add.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.i = icmp eq i32 %14, 0
  %or.cond.i = or i1 %cmp5.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i.do_replace.exit_crit_edge, label %if.end7.i

if.end.i.do_replace.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace.exit

if.end7.i:                                        ; preds = %if.end.i
  %nentries.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 2
  %15 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nentries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554420, i32 %16)
  %cmp8.i = icmp ugt i32 %16, 33554420
  br i1 %cmp8.i, label %if.end7.i.do_replace.exit_crit_edge, label %if.end10.i

if.end7.i.do_replace.exit_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace.exit

if.end10.i:                                       ; preds = %if.end7.i
  %num_counters.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 5
  %17 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217726, i32 %18)
  %cmp11.i = icmp ugt i32 %18, 134217726
  br i1 %cmp11.i, label %if.end10.i.do_replace.exit_crit_edge, label %if.end13.i

if.end10.i.do_replace.exit_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace.exit

if.end13.i:                                       ; preds = %if.end10.i
  %arrayidx.i = getelementptr inbounds [32 x i8], ptr %tmp.i, i32 0, i32 31
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx.i, align 1
  %mul.i = shl nuw nsw i32 %16, 4
  %sub.i = add nuw nsw i32 %mul.i, 127
  %and.i = and i32 %sub.i, -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %mul16.i = mul i32 %20, %and.i
  %add17.i = add i32 %mul16.i, 128
  %call18.i = call noalias ptr @__vmalloc(i32 noundef %add17.i, i32 noundef 4197568) #16
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %if.end13.i.do_replace.exit_crit_edge, label %if.end20.i

if.end13.i.do_replace.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace.exit

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul16.i)
  %tobool21.not.i = icmp eq i32 %mul16.i, 0
  br i1 %tobool21.not.i, label %if.end20.i.if.end23.i_crit_edge, label %if.then22.i

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %counters.i = getelementptr inbounds %struct.ebt_table_info, ptr %call18.i, i32 0, i32 6
  %21 = call ptr @memset(ptr %counters.i, i32 0, i32 %mul16.i)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end20.i.if.end23.i_crit_edge
  %22 = ptrtoint ptr %entries_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entries_size.i, align 4
  %call25.i = call noalias ptr @__vmalloc(i32 noundef %23, i32 noundef 4197568) #16
  %entries.i = getelementptr inbounds %struct.ebt_table_info, ptr %call18.i, i32 0, i32 4
  %24 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call25.i, ptr %entries.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end23.i.free_newinfo.i_crit_edge, label %if.end29.i

if.end23.i.free_newinfo.i_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_newinfo.i

if.end29.i:                                       ; preds = %if.end23.i
  %entries31.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 7
  %25 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %entries31.i, align 4
  %27 = ptrtoint ptr %entries_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entries_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.i.i.i = icmp slt i32 %28, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end29.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.free_entries.i_crit_edge, label %if.then27.i.i.i, !prof !93

land.rhs16.i.i.i.free_entries.i_crit_edge:        ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_entries.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %free_entries.i

if.then.i.i.i.i:                                  ; preds = %if.end29.i
  call void @__check_object_size(ptr noundef nonnull %call25.i, i32 noundef %28, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %28, i32 -1226833920) #21, !srcloc !96
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !93

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call25.i, i32 noundef %28) #13
  %30 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !97
  %and.i.i.i.i.i = and i32 %32, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call25.i, ptr noundef %26, i32 noundef %28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %28, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %28, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end36.i, label %if.then11.i.i.i, !prof !93

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %28, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call25.i, i32 %sub.i.i.i
  %33 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %free_entries.i

if.end36.i:                                       ; preds = %if.end.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #13
  %34 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i48 = icmp eq i32 %35, 0
  br i1 %tobool.not.i48, label %if.end36.i.if.end4.i_crit_edge, label %if.then.i

if.end36.i.if.end4.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end36.i
  %mul.i49 = shl i32 %35, 4
  %call.i = call noalias ptr @vmalloc(i32 noundef %mul.i49) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do_replace_finish.exit.thread, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

do_replace_finish.exit.thread:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  br label %free_entries.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end36.i.if.end4.i_crit_edge
  %counterstmp.0.i = phi ptr [ %call.i, %if.then.i.if.end4.i_crit_edge ], [ null, %if.end36.i.if.end4.i_crit_edge ]
  %chainstack.i = getelementptr inbounds %struct.ebt_table_info, ptr %call18.i, i32 0, i32 3
  %36 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %chainstack.i, align 32
  %37 = ptrtoint ptr %entries_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %entries_size.i, align 4
  %valid_hooks1.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 1
  %39 = ptrtoint ptr %valid_hooks1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %valid_hooks1.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %call18.i, i32 8
  %41 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 24)
  %42 = ptrtoint ptr %call18.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %38, ptr %call18.i, align 128
  %43 = ptrtoint ptr %nentries.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nentries.i, align 4
  %nentries4.i.i = getelementptr inbounds %struct.ebt_table_info, ptr %call18.i, i32 0, i32 1
  %45 = ptrtoint ptr %nentries4.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %nentries4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5135.not.i.i = icmp eq i32 %38, 0
  %.pre.i = and i32 %40, 1
  br i1 %cmp5135.not.i.i, label %if.end4.i.for.body57.preheader.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end4.i.for.body57.preheader.i.i_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57.preheader.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %cmp10.i.i = icmp eq i32 %.pre.i, 0
  %arrayidx14.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 0
  %and.1.i.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %cmp10.1.i.i = icmp eq i32 %and.1.i.i, 0
  %arrayidx14.1.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 1
  %and.2.i.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %cmp10.2.i.i = icmp eq i32 %and.2.i.i, 0
  %arrayidx14.2.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 2
  %and.3.i.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %cmp10.3.i.i = icmp eq i32 %and.3.i.i, 0
  %arrayidx14.3.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 3
  %and.4.i.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %cmp10.4.i.i = icmp eq i32 %and.4.i.i, 0
  %arrayidx14.4.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 4
  %and.5.i.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %cmp10.5.i.i = icmp eq i32 %and.5.i.i, 0
  %arrayidx14.5.i.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 4, i32 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %offset.0136.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %offset.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %38, %offset.0136.i.i
  %46 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entries.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %offset.0136.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp6.i.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp6.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %for.body9.preheader.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

for.body9.preheader.i.i:                          ; preds = %while.body.i.i
  br i1 %cmp10.i.i, label %for.body9.preheader.i.i.for.inc20.i.i_crit_edge, label %if.end12.i.i

for.body9.preheader.i.i.for.inc20.i.i_crit_edge:  ; preds = %for.body9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i.i

if.end12.i.i:                                     ; preds = %for.body9.preheader.i.i
  %48 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx14.i.i, align 4
  %50 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %51, i32 %offset.0136.i.i
  %cmp17.i.i = icmp eq ptr %49, %add.ptr16.i.i
  br i1 %cmp17.i.i, label %if.end12.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.i.i.for.inc20.i.i_crit_edge

if.end12.i.i.for.inc20.i.i_crit_edge:             ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i.i

if.end12.i.i.if.then25.thread.i.i_crit_edge:      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

for.inc20.i.i:                                    ; preds = %if.end12.i.i.for.inc20.i.i_crit_edge, %for.body9.preheader.i.i.for.inc20.i.i_crit_edge
  br i1 %cmp10.1.i.i, label %for.inc20.i.i.for.inc20.1.i.i_crit_edge, label %if.end12.1.i.i

for.inc20.i.i.for.inc20.1.i.i_crit_edge:          ; preds = %for.inc20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.1.i.i

if.end12.1.i.i:                                   ; preds = %for.inc20.i.i
  %52 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx14.1.i.i, align 4
  %54 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.1.i.i = getelementptr i8, ptr %55, i32 %offset.0136.i.i
  %cmp17.1.i.i = icmp eq ptr %53, %add.ptr16.1.i.i
  br i1 %cmp17.1.i.i, label %if.end12.1.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.1.i.i.for.inc20.1.i.i_crit_edge

if.end12.1.i.i.for.inc20.1.i.i_crit_edge:         ; preds = %if.end12.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.1.i.i

if.end12.1.i.i.if.then25.thread.i.i_crit_edge:    ; preds = %if.end12.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

for.inc20.1.i.i:                                  ; preds = %if.end12.1.i.i.for.inc20.1.i.i_crit_edge, %for.inc20.i.i.for.inc20.1.i.i_crit_edge
  br i1 %cmp10.2.i.i, label %for.inc20.1.i.i.for.inc20.2.i.i_crit_edge, label %if.end12.2.i.i

for.inc20.1.i.i.for.inc20.2.i.i_crit_edge:        ; preds = %for.inc20.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.2.i.i

if.end12.2.i.i:                                   ; preds = %for.inc20.1.i.i
  %56 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx14.2.i.i, align 4
  %58 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.2.i.i = getelementptr i8, ptr %59, i32 %offset.0136.i.i
  %cmp17.2.i.i = icmp eq ptr %57, %add.ptr16.2.i.i
  br i1 %cmp17.2.i.i, label %if.end12.2.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.2.i.i.for.inc20.2.i.i_crit_edge

if.end12.2.i.i.for.inc20.2.i.i_crit_edge:         ; preds = %if.end12.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.2.i.i

if.end12.2.i.i.if.then25.thread.i.i_crit_edge:    ; preds = %if.end12.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

for.inc20.2.i.i:                                  ; preds = %if.end12.2.i.i.for.inc20.2.i.i_crit_edge, %for.inc20.1.i.i.for.inc20.2.i.i_crit_edge
  br i1 %cmp10.3.i.i, label %for.inc20.2.i.i.for.inc20.3.i.i_crit_edge, label %if.end12.3.i.i

for.inc20.2.i.i.for.inc20.3.i.i_crit_edge:        ; preds = %for.inc20.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.3.i.i

if.end12.3.i.i:                                   ; preds = %for.inc20.2.i.i
  %60 = ptrtoint ptr %arrayidx14.3.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx14.3.i.i, align 4
  %62 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.3.i.i = getelementptr i8, ptr %63, i32 %offset.0136.i.i
  %cmp17.3.i.i = icmp eq ptr %61, %add.ptr16.3.i.i
  br i1 %cmp17.3.i.i, label %if.end12.3.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.3.i.i.for.inc20.3.i.i_crit_edge

if.end12.3.i.i.for.inc20.3.i.i_crit_edge:         ; preds = %if.end12.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.3.i.i

if.end12.3.i.i.if.then25.thread.i.i_crit_edge:    ; preds = %if.end12.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

for.inc20.3.i.i:                                  ; preds = %if.end12.3.i.i.for.inc20.3.i.i_crit_edge, %for.inc20.2.i.i.for.inc20.3.i.i_crit_edge
  br i1 %cmp10.4.i.i, label %for.inc20.3.i.i.for.inc20.4.i.i_crit_edge, label %if.end12.4.i.i

for.inc20.3.i.i.for.inc20.4.i.i_crit_edge:        ; preds = %for.inc20.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.4.i.i

if.end12.4.i.i:                                   ; preds = %for.inc20.3.i.i
  %64 = ptrtoint ptr %arrayidx14.4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx14.4.i.i, align 4
  %66 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.4.i.i = getelementptr i8, ptr %67, i32 %offset.0136.i.i
  %cmp17.4.i.i = icmp eq ptr %65, %add.ptr16.4.i.i
  br i1 %cmp17.4.i.i, label %if.end12.4.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.4.i.i.for.inc20.4.i.i_crit_edge

if.end12.4.i.i.for.inc20.4.i.i_crit_edge:         ; preds = %if.end12.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.4.i.i

if.end12.4.i.i.if.then25.thread.i.i_crit_edge:    ; preds = %if.end12.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

for.inc20.4.i.i:                                  ; preds = %if.end12.4.i.i.for.inc20.4.i.i_crit_edge, %for.inc20.3.i.i.for.inc20.4.i.i_crit_edge
  br i1 %cmp10.5.i.i, label %for.inc20.4.i.i.lor.lhs.false.i.i_crit_edge, label %if.end12.5.i.i

for.inc20.4.i.i.lor.lhs.false.i.i_crit_edge:      ; preds = %for.inc20.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

if.end12.5.i.i:                                   ; preds = %for.inc20.4.i.i
  %68 = ptrtoint ptr %arrayidx14.5.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx14.5.i.i, align 4
  %70 = ptrtoint ptr %entries31.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %entries31.i, align 4
  %add.ptr16.5.i.i = getelementptr i8, ptr %71, i32 %offset.0136.i.i
  %cmp17.5.i.i = icmp eq ptr %69, %add.ptr16.5.i.i
  br i1 %cmp17.5.i.i, label %if.end12.5.i.i.if.then25.thread.i.i_crit_edge, label %if.end12.5.i.i.lor.lhs.false.i.i_crit_edge

if.end12.5.i.i.lor.lhs.false.i.i_crit_edge:       ; preds = %if.end12.5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

if.end12.5.i.i.if.then25.thread.i.i_crit_edge:    ; preds = %if.end12.5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.thread.i.i

lor.lhs.false.i.i:                                ; preds = %if.end12.5.i.i.lor.lhs.false.i.i_crit_edge, %for.inc20.4.i.i.lor.lhs.false.i.i_crit_edge
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i, align 4
  %and24.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool.not.i.i51 = icmp eq i32 %and24.i.i, 0
  br i1 %tobool.not.i.i51, label %if.then25.i.i, label %if.else.i.i

if.then25.i.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp27.not.i.i = icmp eq i32 %73, 0
  br i1 %cmp27.not.i.i, label %if.then25.i.i.if.end34.i.i_crit_edge, label %if.then25.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

if.then25.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

if.then25.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

if.then25.thread.i.i:                             ; preds = %if.end12.5.i.i.if.then25.thread.i.i_crit_edge, %if.end12.4.i.i.if.then25.thread.i.i_crit_edge, %if.end12.3.i.i.if.then25.thread.i.i_crit_edge, %if.end12.2.i.i.if.then25.thread.i.i_crit_edge, %if.end12.1.i.i.if.then25.thread.i.i_crit_edge, %if.end12.i.i.if.then25.thread.i.i_crit_edge
  %i.1133.lcssa.i.i = phi i32 [ 0, %if.end12.i.i.if.then25.thread.i.i_crit_edge ], [ 1, %if.end12.1.i.i.if.then25.thread.i.i_crit_edge ], [ 2, %if.end12.2.i.i.if.then25.thread.i.i_crit_edge ], [ 3, %if.end12.3.i.i.if.then25.thread.i.i_crit_edge ], [ 4, %if.end12.4.i.i.if.then25.thread.i.i_crit_edge ], [ 5, %if.end12.5.i.i.if.then25.thread.i.i_crit_edge ]
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i.i = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp27.not148.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp27.not148.i.i, label %if.then31.i.i, label %if.then25.thread.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

if.then25.thread.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %if.then25.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

if.then31.i.i:                                    ; preds = %if.then25.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx33.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 %i.1133.lcssa.i.i
  %75 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i.i, ptr %arrayidx33.i.i, align 4
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then31.i.i, %if.then25.i.i.if.end34.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i)
  %cmp35.i.i = icmp ult i32 %sub.i.i, 48
  %add.i.i52 = add i32 %offset.0136.i.i, 48
  br i1 %cmp35.i.i, label %if.end34.i.i.while.end.i.i_crit_edge, label %if.end34.i.i.cleanup.i.i_crit_edge

if.end34.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end34.i.i.while.end.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %sub.i.i)
  %cmp38.i.i = icmp ult i32 %sub.i.i, 112
  br i1 %cmp38.i.i, label %if.else.i.i.while.end.i.i_crit_edge, label %if.end40.i.i

if.else.i.i.while.end.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.end40.i.i:                                     ; preds = %if.else.i.i
  %next_offset.i.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr.i.i, i32 0, i32 13
  %76 = ptrtoint ptr %next_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %next_offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %77)
  %cmp41.i.i = icmp ult i32 %sub.i.i, %77
  br i1 %cmp41.i.i, label %if.end40.i.i.while.end.i.i_crit_edge, label %if.end43.i.i

if.end40.i.i.while.end.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.end43.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %77)
  %cmp45.i.i = icmp ult i32 %77, 112
  %add49.i.i = add i32 %77, %offset.0136.i.i
  br i1 %cmp45.i.i, label %if.end43.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, label %if.end43.i.i.cleanup.i.i_crit_edge

if.end43.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end43.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

cleanup.i.i:                                      ; preds = %if.end43.i.i.cleanup.i.i_crit_edge, %if.end34.i.i.cleanup.i.i_crit_edge
  %offset.2.i.i = phi i32 [ %add.i.i52, %if.end34.i.i.cleanup.i.i_crit_edge ], [ %add49.i.i, %if.end43.i.i.cleanup.i.i_crit_edge ]
  %cmp5.i.i = icmp ugt i32 %38, %offset.2.i.i
  br i1 %cmp5.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.while.end.i.i_crit_edge

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.end40.i.i.while.end.i.i_crit_edge, %if.else.i.i.while.end.i.i_crit_edge, %if.end34.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %offset.0.lcssa.i.i = phi i32 [ %offset.2.i.i, %cleanup.i.i.while.end.i.i_crit_edge ], [ %offset.0136.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %offset.0136.i.i, %if.else.i.i.while.end.i.i_crit_edge ], [ %offset.0136.i.i, %if.end40.i.i.while.end.i.i_crit_edge ], [ %offset.0136.i.i, %if.end34.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %offset.0.lcssa.i.i)
  %cmp52.not.i.i = icmp eq i32 %38, %offset.0.lcssa.i.i
  br i1 %cmp52.not.i.i, label %while.end.i.i.for.body57.preheader.i.i_crit_edge, label %while.end.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

while.end.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

while.end.i.i.for.body57.preheader.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57.preheader.i.i

for.body57.preheader.i.i:                         ; preds = %while.end.i.i.for.body57.preheader.i.i_crit_edge, %if.end4.i.for.body57.preheader.i.i_crit_edge
  %78 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uglygep.i.i, align 4
  %tobool60.not.i.i = icmp ne ptr %79, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool63.not.i.i = icmp eq i32 %.pre.i, 0
  %or.cond.i.i = select i1 %tobool60.not.i.i, i1 true, i1 %tobool63.not.i.i
  br i1 %or.cond.i.i, label %for.inc66.i.i, label %for.body57.preheader.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.body57.preheader.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.body57.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

for.inc66.i.i:                                    ; preds = %for.body57.preheader.i.i
  %arrayidx59.1.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %arrayidx59.1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx59.1.i.i, align 4
  %tobool60.not.1.i.i = icmp ne ptr %81, null
  %and62.1.i.i = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.1.i.i)
  %tobool63.not.1.i.i = icmp eq i32 %and62.1.i.i, 0
  %or.cond156.i.i = select i1 %tobool60.not.1.i.i, i1 true, i1 %tobool63.not.1.i.i
  br i1 %or.cond156.i.i, label %for.inc66.1.i.i, label %for.inc66.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.inc66.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.inc66.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

for.inc66.1.i.i:                                  ; preds = %for.inc66.i.i
  %arrayidx59.2.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %arrayidx59.2.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx59.2.i.i, align 4
  %tobool60.not.2.i.i = icmp ne ptr %83, null
  %and62.2.i.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.2.i.i)
  %tobool63.not.2.i.i = icmp eq i32 %and62.2.i.i, 0
  %or.cond157.i.i = select i1 %tobool60.not.2.i.i, i1 true, i1 %tobool63.not.2.i.i
  br i1 %or.cond157.i.i, label %for.inc66.2.i.i, label %for.inc66.1.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.inc66.1.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.inc66.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

for.inc66.2.i.i:                                  ; preds = %for.inc66.1.i.i
  %arrayidx59.3.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %arrayidx59.3.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx59.3.i.i, align 4
  %tobool60.not.3.i.i = icmp ne ptr %85, null
  %and62.3.i.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.3.i.i)
  %tobool63.not.3.i.i = icmp eq i32 %and62.3.i.i, 0
  %or.cond158.i.i = select i1 %tobool60.not.3.i.i, i1 true, i1 %tobool63.not.3.i.i
  br i1 %or.cond158.i.i, label %for.inc66.3.i.i, label %for.inc66.2.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.inc66.2.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.inc66.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

for.inc66.3.i.i:                                  ; preds = %for.inc66.2.i.i
  %arrayidx59.4.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 4
  %86 = ptrtoint ptr %arrayidx59.4.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx59.4.i.i, align 4
  %tobool60.not.4.i.i = icmp ne ptr %87, null
  %and62.4.i.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.4.i.i)
  %tobool63.not.4.i.i = icmp eq i32 %and62.4.i.i, 0
  %or.cond159.i.i = select i1 %tobool60.not.4.i.i, i1 true, i1 %tobool63.not.4.i.i
  br i1 %or.cond159.i.i, label %for.inc66.4.i.i, label %for.inc66.3.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.inc66.3.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.inc66.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

for.inc66.4.i.i:                                  ; preds = %for.inc66.3.i.i
  %arrayidx59.5.i.i = getelementptr %struct.ebt_table_info, ptr %call18.i, i32 0, i32 2, i32 5
  %88 = ptrtoint ptr %arrayidx59.5.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx59.5.i.i, align 4
  %tobool60.not.5.i.i = icmp ne ptr %89, null
  %and62.5.i.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.5.i.i)
  %tobool63.not.5.i.i = icmp eq i32 %and62.5.i.i, 0
  %or.cond160.i.i = select i1 %tobool60.not.5.i.i, i1 true, i1 %tobool63.not.5.i.i
  br i1 %or.cond160.i.i, label %if.end7.i53, label %for.inc66.4.i.i.ebt_verify_pointers.exit.thread.i_crit_edge

for.inc66.4.i.i.ebt_verify_pointers.exit.thread.i_crit_edge: ; preds = %for.inc66.4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_verify_pointers.exit.thread.i

ebt_verify_pointers.exit.thread.i:                ; preds = %for.inc66.4.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %for.inc66.3.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %for.inc66.2.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %for.inc66.1.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %for.inc66.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %for.body57.preheader.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %while.end.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %if.end43.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %if.then25.thread.i.i.ebt_verify_pointers.exit.thread.i_crit_edge, %if.then25.i.i.ebt_verify_pointers.exit.thread.i_crit_edge
  %90 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -22, ptr %ret.i, align 4
  br label %free_counterstmp.i

if.end7.i53:                                      ; preds = %for.inc66.4.i.i
  %call8.i = call fastcc i32 @translate_table(ptr noundef %1, ptr noundef nonnull %tmp.i, ptr noundef nonnull %call18.i) #13
  %91 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call8.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end7.i53.free_counterstmp.i_crit_edge

if.end7.i53.free_counterstmp.i_crit_edge:         ; preds = %if.end7.i53
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_counterstmp.i

if.end11.i:                                       ; preds = %if.end7.i53
  %call.i.i201.i = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %tmp.i, ptr noundef nonnull %ret.i) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i201.i, null
  br i1 %tobool.not.i.i.i, label %find_table_lock.exit.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

find_table_lock.exit.i:                           ; preds = %if.end11.i
  %call1.i.i.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp.i) #13
  %call2.i.i.i = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %tmp.i, ptr noundef nonnull %ret.i) #13
  %tobool15.not.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %find_table_lock.exit.i.if.end17.i_crit_edge

find_table_lock.exit.i.if.end17.i_crit_edge:      ; preds = %find_table_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then16.i:                                      ; preds = %find_table_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -2, ptr %ret.i, align 4
  br label %free_iterate.i

if.end17.i:                                       ; preds = %find_table_lock.exit.i.if.end17.i_crit_edge, %if.end11.i.if.end17.i_crit_edge
  %cond.i.i219.i = phi ptr [ %call2.i.i.i, %find_table_lock.exit.i.if.end17.i_crit_edge ], [ %call.i.i201.i, %if.end11.i.if.end17.i_crit_edge ]
  %check.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 5
  %93 = ptrtoint ptr %check.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %check.i, align 4
  %tobool18.not.i = icmp eq ptr %94, null
  br i1 %tobool18.not.i, label %if.end17.i.if.end23.i55_crit_edge, label %land.lhs.true.i

if.end17.i.if.end23.i55_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i55

land.lhs.true.i:                                  ; preds = %if.end17.i
  %95 = ptrtoint ptr %valid_hooks1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %valid_hooks1.i.i, align 4
  %call20.i = call i32 %94(ptr noundef nonnull %call18.i, i32 noundef %96) #13
  %97 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call20.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i54 = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i54, label %land.lhs.true.i.if.end23.i55_crit_edge, label %land.lhs.true.i.free_unlock.i_crit_edge

land.lhs.true.i.free_unlock.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_unlock.i

land.lhs.true.i.if.end23.i55_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i55

if.end23.i55:                                     ; preds = %land.lhs.true.i.if.end23.i55_crit_edge, %if.end17.i.if.end23.i55_crit_edge
  %98 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool25.not.i = icmp eq i32 %99, 0
  br i1 %tobool25.not.i, label %if.end23.i55.if.end30.i_crit_edge, label %land.lhs.true26.i

if.end23.i55.if.end30.i_crit_edge:                ; preds = %if.end23.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true26.i:                                ; preds = %if.end23.i55
  %private.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 6
  %100 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %private.i, align 4
  %nentries.i56 = getelementptr inbounds %struct.ebt_table_info, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %nentries.i56 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nentries.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %103)
  %cmp28.not.i = icmp eq i32 %99, %103
  br i1 %cmp28.not.i, label %land.lhs.true26.i.if.end30.i_crit_edge, label %if.then29.i

land.lhs.true26.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -22, ptr %ret.i, align 4
  br label %free_unlock.i

if.end30.i:                                       ; preds = %land.lhs.true26.i.if.end30.i_crit_edge, %if.end23.i55.if.end30.i_crit_edge
  %private31.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 6
  %105 = ptrtoint ptr %private31.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %private31.i, align 4
  %nentries32.i = getelementptr inbounds %struct.ebt_table_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %nentries32.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nentries32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool33.not.i = icmp eq i32 %108, 0
  br i1 %tobool33.not.i, label %land.lhs.true34.i, label %if.end30.i.land.lhs.true42.i_crit_edge

if.end30.i.land.lhs.true42.i_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

land.lhs.true34.i:                                ; preds = %if.end30.i
  %109 = ptrtoint ptr %nentries4.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nentries4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool36.not.i = icmp eq i32 %110, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.if.end48.i_crit_edge, label %land.lhs.true37.i

land.lhs.true34.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %me.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 8
  %111 = ptrtoint ptr %me.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %me.i, align 4
  %call38.i = call zeroext i1 @try_module_get(ptr noundef %112) #13
  br i1 %call38.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -2, ptr %ret.i, align 4
  br label %free_unlock.i

if.else.i:                                        ; preds = %land.lhs.true37.i
  %114 = ptrtoint ptr %nentries32.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr.i = load i32, ptr %nentries32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool41.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool41.not.i, label %if.else.i.if.end48.i_crit_edge, label %if.else.i.land.lhs.true42.i_crit_edge

if.else.i.land.lhs.true42.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true42.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

land.lhs.true42.i:                                ; preds = %if.else.i.land.lhs.true42.i_crit_edge, %if.end30.i.land.lhs.true42.i_crit_edge
  %115 = ptrtoint ptr %nentries4.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nentries4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool44.not.i = icmp eq i32 %116, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %land.lhs.true42.i.if.end48.i_crit_edge

land.lhs.true42.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

if.then45.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  %me46.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 8
  %117 = ptrtoint ptr %me46.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %me46.i, align 4
  call void @module_put(ptr noundef %118) #13
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true42.i.if.end48.i_crit_edge, %if.else.i.if.end48.i_crit_edge, %land.lhs.true34.i.if.end48.i_crit_edge
  %lock.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i219.i, i32 0, i32 4
  call void @_raw_write_lock_bh(ptr noundef %lock.i) #13
  %119 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool50.not.i = icmp eq i32 %120, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end56.i_crit_edge, label %if.then51.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

if.then51.i:                                      ; preds = %if.end48.i
  %121 = ptrtoint ptr %private31.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %private31.i, align 4
  %counters.i57 = getelementptr inbounds %struct.ebt_table_info, ptr %122, i32 0, i32 6
  %nentries55.i = getelementptr inbounds %struct.ebt_table_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %nentries55.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nentries55.i, align 4
  %mul.i82 = shl i32 %124, 4
  %125 = call ptr @memcpy(ptr %counterstmp.0.i, ptr %counters.i57, i32 %mul.i82)
  %call31.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %126 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i, i32 %126)
  %cmp32.i = icmp ult i32 %call31.i, %126
  br i1 %cmp32.i, label %for.body.lr.ph.i, label %if.then51.i.if.end56.i_crit_edge

if.then51.i.if.end56.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

for.body.lr.ph.i:                                 ; preds = %if.then51.i
  %sub.i83 = add i32 %mul.i82, 127
  %and.i84 = and i32 %sub.i83, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp529.not.i = icmp eq i32 %124, 0
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.cond.backedge.i.for.body.i85_crit_edge, %for.body.lr.ph.i
  %call33.i = phi i32 [ %call31.i, %for.body.lr.ph.i ], [ %call.i86, %for.cond.backedge.i.for.body.i85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp1.i = icmp eq i32 %call33.i, 0
  br i1 %cmp1.i, label %for.body.i85.for.cond.backedge.i_crit_edge, label %if.end.i88

for.body.i85.for.cond.backedge.i_crit_edge:       ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %do.body.i90.for.cond.backedge.i_crit_edge, %if.end.i88.for.cond.backedge.i_crit_edge, %for.body.i85.for.cond.backedge.i_crit_edge
  %call.i86 = call i32 @cpumask_next(i32 noundef %call33.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %127 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i86, %127
  br i1 %cmp.i, label %for.cond.backedge.i.for.body.i85_crit_edge, label %for.cond.backedge.i.if.end56.i_crit_edge

for.cond.backedge.i.if.end56.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i

for.cond.backedge.i.for.body.i85_crit_edge:       ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i85

if.end.i88:                                       ; preds = %for.body.i85
  %mul3.i = mul i32 %call33.i, %and.i84
  %add.ptr.i87 = getelementptr i8, ptr %counters.i57, i32 %mul3.i
  br i1 %cmp529.not.i, label %if.end.i88.for.cond.backedge.i_crit_edge, label %if.end.i88.do.body.i90_crit_edge

if.end.i88.do.body.i90_crit_edge:                 ; preds = %if.end.i88
  br label %do.body.i90

if.end.i88.for.cond.backedge.i_crit_edge:         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge.i

do.body.i90:                                      ; preds = %do.body.i90.do.body.i90_crit_edge, %if.end.i88.do.body.i90_crit_edge
  %i.030.i = phi i32 [ %inc.i, %do.body.i90.do.body.i90_crit_edge ], [ 0, %if.end.i88.do.body.i90_crit_edge ]
  %arrayidx.i89 = getelementptr %struct.ebt_counter, ptr %add.ptr.i87, i32 %i.030.i
  %bcnt.i = getelementptr inbounds %struct.ebt_counter, ptr %arrayidx.i89, i32 0, i32 1
  %128 = ptrtoint ptr %bcnt.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %bcnt.i, align 8
  %arrayidx7.i = getelementptr %struct.ebt_counter, ptr %counterstmp.0.i, i32 %i.030.i
  %bcnt8.i = getelementptr %struct.ebt_counter, ptr %counterstmp.0.i, i32 %i.030.i, i32 1
  %130 = ptrtoint ptr %bcnt8.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %bcnt8.i, align 8
  %add9.i = add i64 %131, %129
  store i64 %add9.i, ptr %bcnt8.i, align 8
  %132 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx.i89, align 8
  %134 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx7.i, align 8
  %add13.i = add i64 %135, %133
  store i64 %add13.i, ptr %arrayidx7.i, align 8
  %inc.i = add nuw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %124
  br i1 %exitcond.not.i, label %do.body.i90.for.cond.backedge.i_crit_edge, label %do.body.i90.do.body.i90_crit_edge

do.body.i90.do.body.i90_crit_edge:                ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i90

do.body.i90.for.cond.backedge.i_crit_edge:        ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge.i

if.end56.i:                                       ; preds = %for.cond.backedge.i.if.end56.i_crit_edge, %if.then51.i.if.end56.i_crit_edge, %if.end48.i.if.end56.i_crit_edge
  %136 = ptrtoint ptr %private31.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call18.i, ptr %private31.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %lock.i) #13
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %137 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool60.not.i = icmp eq i32 %138, 0
  br i1 %tobool60.not.i, label %if.end56.i.if.end76.i_crit_edge, label %land.lhs.true61.i

if.end56.i.if.end76.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

land.lhs.true61.i:                                ; preds = %if.end56.i
  %counters62.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 6
  %139 = ptrtoint ptr %counters62.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %counters62.i, align 4
  %141 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 16) #13
  %142 = extractvalue { i32, i1 } %141, 1
  %143 = extractvalue { i32, i1 } %141, 0
  %retval.0.i.i58 = select i1 %142, i32 -1, i32 %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i58)
  %cmp9.i.i.i65 = icmp slt i32 %retval.0.i.i58, 0
  br i1 %cmp9.i.i.i65, label %land.rhs16.i.i.i68, label %if.then.i.i.i.i71

land.rhs16.i.i.i68:                               ; preds = %land.lhs.true61.i
  %.b71.i.i.i67 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i67, label %land.rhs16.i.i.i68.do.body.i_crit_edge, label %if.then27.i.i.i69, !prof !93

land.rhs16.i.i.i68.do.body.i_crit_edge:           ; preds = %land.rhs16.i.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then27.i.i.i69:                                ; preds = %land.rhs16.i.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %do.body.i

if.then.i.i.i.i71:                                ; preds = %land.lhs.true61.i
  call void @__check_object_size(ptr noundef %counterstmp.0.i, i32 noundef %retval.0.i.i58, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i.i72 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i72, label %if.then.i.i.i.i71.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i76

if.then.i.i.i.i71.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.end.i.i.i76:                                   ; preds = %if.then.i.i.i.i71
  %144 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %140, i32 %retval.0.i.i58, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i.i74 = extractvalue { i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i74)
  %cmp.i6.i.i75 = icmp eq i32 %asmresult.i.i.i74, 0
  br i1 %cmp.i6.i.i75, label %if.then2.i.i.i, label %if.end.i.i.i76.copy_to_user.exit.i_crit_edge

if.end.i.i.i76.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i76
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i77 = call zeroext i1 @__kasan_check_read(ptr noundef %counterstmp.0.i, i32 noundef %retval.0.i.i58) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %140, ptr noundef %counterstmp.0.i, i32 noundef %retval.0.i.i58) #13
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i76.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i71.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %143, %if.then.i.i.i.i71.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %143, %if.end.i.i.i76.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool66.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool66.not.i, label %copy_to_user.exit.i.if.end76.i_crit_edge, label %copy_to_user.exit.i.do.body.i_crit_edge

copy_to_user.exit.i.do.body.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

copy_to_user.exit.i.if.end76.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

do.body.i:                                        ; preds = %copy_to_user.exit.i.do.body.i_crit_edge, %if.then27.i.i.i69, %land.rhs16.i.i.i68.do.body.i_crit_edge
  %call68.i = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %do.body.i.if.end76.i_crit_edge, label %do.end.i

do.body.i.if.end76.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #22
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end.i, %do.body.i.if.end76.i_crit_edge, %copy_to_user.exit.i.if.end76.i_crit_edge, %if.end56.i.if.end76.i_crit_edge
  %entries.i78 = getelementptr inbounds %struct.ebt_table_info, ptr %106, i32 0, i32 4
  %145 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %106, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp77230.not.i = icmp eq i32 %146, 0
  br i1 %cmp77230.not.i, label %if.end76.i.if.end93.i_crit_edge, label %if.end76.i.for.body.i_crit_edge

if.end76.i.for.body.i_crit_edge:                  ; preds = %if.end76.i
  br label %for.body.i

if.end76.i.if.end93.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i

for.body.i:                                       ; preds = %if.end86.i.for.body.i_crit_edge, %if.end76.i.for.body.i_crit_edge
  %__i.0231.i = phi i32 [ %__i.1.i, %if.end86.i.for.body.i_crit_edge ], [ 0, %if.end76.i.for.body.i_crit_edge ]
  %147 = ptrtoint ptr %entries.i78 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %entries.i78, align 4
  %add.ptr.i = getelementptr i8, ptr %148, i32 %__i.0231.i
  %call78.i = call fastcc i32 @ebt_cleanup_entry(ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.not.i = icmp eq i32 %call78.i, 0
  br i1 %cmp79.not.i, label %if.end81.i, label %for.body.i.if.end93.i_crit_edge

for.body.i.if.end93.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i

if.end81.i:                                       ; preds = %for.body.i
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp82.not.i = icmp eq i32 %150, 0
  br i1 %cmp82.not.i, label %if.end81.i.if.end86.i_crit_edge, label %if.then83.i

if.end81.i.if.end86.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

if.then83.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr.i, i32 0, i32 13
  %151 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %next_offset.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %if.end81.i.if.end86.i_crit_edge
  %.pn200.i = phi i32 [ %152, %if.then83.i ], [ 48, %if.end81.i.if.end86.i_crit_edge ]
  %__i.1.i = add i32 %.pn200.i, %__i.0231.i
  %153 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %106, align 128
  %cmp77.i = icmp ult i32 %__i.1.i, %154
  br i1 %cmp77.i, label %if.end86.i.for.body.i_crit_edge, label %if.end86.i.if.end93.i_crit_edge

if.end86.i.if.end93.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i

if.end86.i.for.body.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end93.i:                                       ; preds = %if.end86.i.if.end93.i_crit_edge, %for.body.i.if.end93.i_crit_edge, %if.end76.i.if.end93.i_crit_edge
  %155 = ptrtoint ptr %entries.i78 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %entries.i78, align 4
  call void @vfree(ptr noundef %156) #13
  %chainstack.i.i = getelementptr inbounds %struct.ebt_table_info, ptr %106, i32 0, i32 3
  %157 = ptrtoint ptr %chainstack.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %chainstack.i.i, align 32
  %tobool.not.i202.i = icmp eq ptr %158, null
  br i1 %tobool.not.i202.i, label %if.end93.i.ebt_free_table_info.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end93.i.ebt_free_table_info.exit.i_crit_edge:  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ebt_free_table_info.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end93.i
  %call7.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %159 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %159)
  %cmp8.i.i = icmp ult i32 %call7.i.i, %159
  br i1 %cmp8.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i81_crit_edge

for.cond.preheader.i.i.for.end.i.i81_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i81

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %call9.i.i = phi i32 [ %call.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call7.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %160 = ptrtoint ptr %chainstack.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %chainstack.i.i, align 32
  %arrayidx.i.i79 = getelementptr ptr, ptr %161, i32 %call9.i.i
  %162 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i79, align 4
  call void @vfree(ptr noundef %163) #13
  %call.i.i = call i32 @cpumask_next(i32 noundef %call9.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %164 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i80 = icmp ult i32 %call.i.i, %164
  br i1 %cmp.i.i80, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i81_crit_edge

for.body.i.i.for.end.i.i81_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i81

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i81:                                    ; preds = %for.body.i.i.for.end.i.i81_crit_edge, %for.cond.preheader.i.i.for.end.i.i81_crit_edge
  %165 = ptrtoint ptr %chainstack.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chainstack.i.i, align 32
  call void @vfree(ptr noundef %166) #13
  br label %ebt_free_table_info.exit.i

ebt_free_table_info.exit.i:                       ; preds = %for.end.i.i81, %if.end93.i.ebt_free_table_info.exit.i_crit_edge
  call void @vfree(ptr noundef %106) #13
  br label %do_replace_finish.exit.sink.split

free_unlock.i:                                    ; preds = %if.then39.i, %if.then29.i, %land.lhs.true.i.free_unlock.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %free_iterate.i

free_iterate.i:                                   ; preds = %free_unlock.i, %if.then16.i
  %167 = ptrtoint ptr %call18.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %call18.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp104232.not.i = icmp eq i32 %168, 0
  br i1 %cmp104232.not.i, label %free_iterate.i.free_counterstmp.i_crit_edge, label %free_iterate.i.for.body105.i_crit_edge

free_iterate.i.for.body105.i_crit_edge:           ; preds = %free_iterate.i
  br label %for.body105.i

free_iterate.i.free_counterstmp.i_crit_edge:      ; preds = %free_iterate.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_counterstmp.i

for.body105.i:                                    ; preds = %if.end119.i.for.body105.i_crit_edge, %free_iterate.i.for.body105.i_crit_edge
  %__i99.0233.i = phi i32 [ %__i99.1.i, %if.end119.i.for.body105.i_crit_edge ], [ 0, %free_iterate.i.for.body105.i_crit_edge ]
  %169 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %entries.i, align 4
  %add.ptr107.i = getelementptr i8, ptr %170, i32 %__i99.0233.i
  %call108.i = call fastcc i32 @ebt_cleanup_entry(ptr noundef %add.ptr107.i, ptr noundef %1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.not.i = icmp eq i32 %call108.i, 0
  br i1 %cmp109.not.i, label %if.end111.i, label %for.body105.i.free_counterstmp.i_crit_edge

for.body105.i.free_counterstmp.i_crit_edge:       ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_counterstmp.i

if.end111.i:                                      ; preds = %for.body105.i
  %171 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp113.not.i = icmp eq i32 %172, 0
  br i1 %cmp113.not.i, label %if.end111.i.if.end119.i_crit_edge, label %if.then114.i

if.end111.i.if.end119.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119.i

if.then114.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset115.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr107.i, i32 0, i32 13
  %173 = ptrtoint ptr %next_offset115.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %next_offset115.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then114.i, %if.end111.i.if.end119.i_crit_edge
  %.pn.i = phi i32 [ %174, %if.then114.i ], [ 48, %if.end111.i.if.end119.i_crit_edge ]
  %__i99.1.i = add i32 %.pn.i, %__i99.0233.i
  %175 = ptrtoint ptr %call18.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %call18.i, align 128
  %cmp104.i = icmp ult i32 %__i99.1.i, %176
  br i1 %cmp104.i, label %if.end119.i.for.body105.i_crit_edge, label %if.end119.i.free_counterstmp.i_crit_edge

if.end119.i.free_counterstmp.i_crit_edge:         ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_counterstmp.i

if.end119.i.for.body105.i_crit_edge:              ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body105.i

free_counterstmp.i:                               ; preds = %if.end119.i.free_counterstmp.i_crit_edge, %for.body105.i.free_counterstmp.i_crit_edge, %free_iterate.i.free_counterstmp.i_crit_edge, %if.end7.i53.free_counterstmp.i_crit_edge, %ebt_verify_pointers.exit.thread.i
  call void @vfree(ptr noundef %counterstmp.0.i) #13
  %177 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %chainstack.i, align 32
  %tobool.not.i204.i = icmp eq ptr %178, null
  br i1 %tobool.not.i204.i, label %free_counterstmp.i.do_replace_finish.exit_crit_edge, label %for.cond.preheader.i207.i

free_counterstmp.i.do_replace_finish.exit_crit_edge: ; preds = %free_counterstmp.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace_finish.exit

for.cond.preheader.i207.i:                        ; preds = %free_counterstmp.i
  %call7.i205.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %179 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i205.i, i32 %179)
  %cmp8.i206.i = icmp ult i32 %call7.i205.i, %179
  br i1 %cmp8.i206.i, label %for.cond.preheader.i207.i.for.body.i212.i_crit_edge, label %for.cond.preheader.i207.i.for.end.i213.i_crit_edge

for.cond.preheader.i207.i.for.end.i213.i_crit_edge: ; preds = %for.cond.preheader.i207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i213.i

for.cond.preheader.i207.i.for.body.i212.i_crit_edge: ; preds = %for.cond.preheader.i207.i
  br label %for.body.i212.i

for.body.i212.i:                                  ; preds = %for.body.i212.i.for.body.i212.i_crit_edge, %for.cond.preheader.i207.i.for.body.i212.i_crit_edge
  %call9.i208.i = phi i32 [ %call.i210.i, %for.body.i212.i.for.body.i212.i_crit_edge ], [ %call7.i205.i, %for.cond.preheader.i207.i.for.body.i212.i_crit_edge ]
  %180 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %chainstack.i, align 32
  %arrayidx.i209.i = getelementptr ptr, ptr %181, i32 %call9.i208.i
  %182 = ptrtoint ptr %arrayidx.i209.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx.i209.i, align 4
  call void @vfree(ptr noundef %183) #13
  %call.i210.i = call i32 @cpumask_next(i32 noundef %call9.i208.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %184 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i211.i = icmp ult i32 %call.i210.i, %184
  br i1 %cmp.i211.i, label %for.body.i212.i.for.body.i212.i_crit_edge, label %for.body.i212.i.for.end.i213.i_crit_edge

for.body.i212.i.for.end.i213.i_crit_edge:         ; preds = %for.body.i212.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i213.i

for.body.i212.i.for.body.i212.i_crit_edge:        ; preds = %for.body.i212.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i212.i

for.end.i213.i:                                   ; preds = %for.body.i212.i.for.end.i213.i_crit_edge, %for.cond.preheader.i207.i.for.end.i213.i_crit_edge
  %185 = ptrtoint ptr %chainstack.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %chainstack.i, align 32
  br label %do_replace_finish.exit.sink.split

do_replace_finish.exit.sink.split:                ; preds = %for.end.i213.i, %ebt_free_table_info.exit.i
  %.sink = phi ptr [ %186, %for.end.i213.i ], [ %counterstmp.0.i, %ebt_free_table_info.exit.i ]
  call void @vfree(ptr noundef %.sink) #13
  br label %do_replace_finish.exit

do_replace_finish.exit:                           ; preds = %do_replace_finish.exit.sink.split, %free_counterstmp.i.do_replace_finish.exit_crit_edge
  %187 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %retval.1.i = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp38.i = icmp eq i32 %retval.1.i, 0
  br i1 %cmp38.i, label %do_replace_finish.exit.do_replace.exit_crit_edge, label %do_replace_finish.exit.free_entries.i_crit_edge

do_replace_finish.exit.free_entries.i_crit_edge:  ; preds = %do_replace_finish.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_entries.i

do_replace_finish.exit.do_replace.exit_crit_edge: ; preds = %do_replace_finish.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_replace.exit

free_entries.i:                                   ; preds = %do_replace_finish.exit.free_entries.i_crit_edge, %do_replace_finish.exit.thread, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.free_entries.i_crit_edge
  %ret.0.i = phi i32 [ %retval.1.i, %do_replace_finish.exit.free_entries.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.free_entries.i_crit_edge ], [ -12, %do_replace_finish.exit.thread ]
  %188 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %entries.i, align 4
  call void @vfree(ptr noundef %189) #13
  br label %free_newinfo.i

free_newinfo.i:                                   ; preds = %free_entries.i, %if.end23.i.free_newinfo.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %free_entries.i ], [ -12, %if.end23.i.free_newinfo.i_crit_edge ]
  call void @vfree(ptr noundef nonnull %call18.i) #13
  br label %do_replace.exit

do_replace.exit:                                  ; preds = %free_newinfo.i, %do_replace_finish.exit.do_replace.exit_crit_edge, %if.end13.i.do_replace.exit_crit_edge, %if.end10.i.do_replace.exit_crit_edge, %if.end7.i.do_replace.exit_crit_edge, %if.end.i.do_replace.exit_crit_edge, %if.then11.i.i.i.i.i
  %retval.0.i = phi i32 [ %ret.1.i, %free_newinfo.i ], [ -22, %if.end.i.do_replace.exit_crit_edge ], [ -12, %if.end7.i.do_replace.exit_crit_edge ], [ -12, %if.end10.i.do_replace.exit_crit_edge ], [ -12, %if.end13.i.do_replace.exit_crit_edge ], [ 0, %do_replace_finish.exit.do_replace.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp.i) #13
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %hlp.i) #13
  %190 = call ptr @memset(ptr %hlp.i, i32 255, i32 80)
  %src.coerce.fca.0.extract.i.i.i17 = extractvalue [2 x i32] %arg.coerce, 0
  %191 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i17 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i18 = extractvalue [2 x i32] %arg.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i18)
  %bf.cast.i.i.i.i19 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i18, 0
  br i1 %bf.cast.i.i.i.i19, label %if.end.i.i.i37, label %if.end8.i.i.i.i.i21

if.end8.i.i.i.i.i21:                              ; preds = %sw.bb3
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i.i.i.i20 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i.i20, label %if.end8.i.i.i.i.i21.if.then11.i.i.i.i.i36_crit_edge, label %land.lhs.true.i.i.i.i.i24

if.end8.i.i.i.i.i21.if.then11.i.i.i.i.i36_crit_edge: ; preds = %if.end8.i.i.i.i.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i36

land.lhs.true.i.i.i.i.i24:                        ; preds = %if.end8.i.i.i.i.i21
  %192 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %191, i32 80, i32 -1226833920) #21, !srcloc !96
  %asmresult.i.i.i.i.i22 = extractvalue { i32, i32 } %192, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i22)
  %cmp.i6.i.i.i.i23 = icmp eq i32 %asmresult.i.i.i.i.i22, 0
  br i1 %cmp.i6.i.i.i.i23, label %if.end.i.i.i.i.i32, label %land.lhs.true.i.i.i.i.i24.if.then11.i.i.i.i.i36_crit_edge, !prof !93

land.lhs.true.i.i.i.i.i24.if.then11.i.i.i.i.i36_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i36

if.end.i.i.i.i.i32:                               ; preds = %land.lhs.true.i.i.i.i.i24
  %call.i.i.i.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hlp.i, i32 noundef 80) #13
  %193 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i.i.i.i26 = and i32 %193, -16384
  %194 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i26 to ptr
  %cpu_domain.i.i.i.i.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 4
  %195 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i27) #7, !srcloc !97
  %and.i.i.i.i.i.i.i28 = and i32 %195, -13
  %or.i.i.i.i.i.i.i29 = or i32 %and.i.i.i.i.i.i.i28, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i29) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i.i.i.i30 = call i32 @arm_copy_from_user(ptr noundef nonnull %hlp.i, ptr noundef %191, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %195) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i30)
  %tobool4.not.i.i.i.i.i31 = icmp eq i32 %call1.i.i.i.i.i.i30, 0
  br i1 %tobool4.not.i.i.i.i.i31, label %if.end.i.i.i.i.i32.if.end.i41_crit_edge, label %if.end.i.i.i.i.i32.if.then11.i.i.i.i.i36_crit_edge, !prof !93

if.end.i.i.i.i.i32.if.then11.i.i.i.i.i36_crit_edge: ; preds = %if.end.i.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i.i.i36

if.end.i.i.i.i.i32.if.end.i41_crit_edge:          ; preds = %if.end.i.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i41

if.then11.i.i.i.i.i36:                            ; preds = %if.end.i.i.i.i.i32.if.then11.i.i.i.i.i36_crit_edge, %land.lhs.true.i.i.i.i.i24.if.then11.i.i.i.i.i36_crit_edge, %if.end8.i.i.i.i.i21.if.then11.i.i.i.i.i36_crit_edge
  %res.0.i.i3.i.i.i33 = phi i32 [ %call1.i.i.i.i.i.i30, %if.end.i.i.i.i.i32.if.then11.i.i.i.i.i36_crit_edge ], [ 80, %if.end8.i.i.i.i.i21.if.then11.i.i.i.i.i36_crit_edge ], [ 80, %land.lhs.true.i.i.i.i.i24.if.then11.i.i.i.i.i36_crit_edge ]
  %sub.i.i.i.i.i34 = sub i32 80, %res.0.i.i3.i.i.i33
  %add.ptr.i.i.i.i.i35 = getelementptr i8, ptr %hlp.i, i32 %sub.i.i.i.i.i34
  %196 = call ptr @memset(ptr %add.ptr.i.i.i.i.i35, i32 0, i32 %res.0.i.i3.i.i.i33)
  br label %update_counters.exit

if.end.i.i.i37:                                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  %197 = call ptr @memcpy(ptr %hlp.i, ptr %191, i32 80)
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.end.i.i.i37, %if.end.i.i.i.i.i32.if.end.i41_crit_edge
  %num_counters.i38 = getelementptr inbounds %struct.ebt_replace, ptr %hlp.i, i32 0, i32 5
  %198 = ptrtoint ptr %num_counters.i38 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_counters.i38, align 4
  %mul.i39 = shl i32 %199, 4
  %add.i40 = add i32 %mul.i39, 80
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i40, i32 %len)
  %cmp.not.i = icmp eq i32 %add.i40, %len
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i41.update_counters.exit_crit_edge

if.end.i41.update_counters.exit_crit_edge:        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_counters.exit

if.end2.i:                                        ; preds = %if.end.i41
  %counters.i42 = getelementptr inbounds %struct.ebt_replace, ptr %hlp.i, i32 0, i32 6
  %200 = ptrtoint ptr %counters.i42 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %counters.i42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #13
  %202 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i.i = icmp eq i32 %199, 0
  br i1 %cmp.i.i, label %if.end2.i.do_update_counters.exit.i_crit_edge, label %if.end.i.i

if.end2.i.do_update_counters.exit.i_crit_edge:    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_update_counters.exit.i

if.end.i.i:                                       ; preds = %if.end2.i
  %203 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %199, i32 16) #13
  %204 = extractvalue { i32, i1 } %203, 1
  %205 = extractvalue { i32, i1 } %203, 0
  %retval.0.i.i6.i = select i1 %204, i32 -1, i32 %205
  %call1.i.i = call noalias ptr @vmalloc(i32 noundef %retval.0.i.i6.i) #16
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.do_update_counters.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.do_update_counters.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_update_counters.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i1.i.i = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %hlp.i, ptr noundef nonnull %ret.i.i) #13
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %find_table_lock.exit.i.i, label %if.end3.i.i.if.end7.i.i_crit_edge

if.end3.i.i.if.end7.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i

find_table_lock.exit.i.i:                         ; preds = %if.end3.i.i
  %call1.i.i.i.i43 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef nonnull %hlp.i) #13
  %call2.i.i.i.i = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %hlp.i, ptr noundef nonnull %ret.i.i) #13
  %tobool5.not.i.i = icmp eq ptr %call2.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %find_table_lock.exit.i.i.free_tmp.i.i_crit_edge, label %find_table_lock.exit.i.i.if.end7.i.i_crit_edge

find_table_lock.exit.i.i.if.end7.i.i_crit_edge:   ; preds = %find_table_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i

find_table_lock.exit.i.i.free_tmp.i.i_crit_edge:  ; preds = %find_table_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_tmp.i.i

if.end7.i.i:                                      ; preds = %find_table_lock.exit.i.i.if.end7.i.i_crit_edge, %if.end3.i.i.if.end7.i.i_crit_edge
  %cond.i.i5.i.i = phi ptr [ %call2.i.i.i.i, %find_table_lock.exit.i.i.if.end7.i.i_crit_edge ], [ %call.i.i1.i.i, %if.end3.i.i.if.end7.i.i_crit_edge ]
  %private.i.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i5.i.i, i32 0, i32 6
  %206 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %private.i.i, align 4
  %nentries.i.i = getelementptr inbounds %struct.ebt_table_info, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %nentries.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %nentries.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %199)
  %cmp8.not.i.i = icmp eq i32 %209, %199
  br i1 %cmp8.not.i.i, label %if.end8.i.i.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %210 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 -22, ptr %ret.i.i, align 4
  br label %unlock_mutex.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i6.i)
  %cmp9.i.i.i.i = icmp slt i32 %retval.0.i.i6.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i7.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.if.then14.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !93

land.rhs16.i.i.i.i.if.then14.i.i_crit_edge:       ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then14.i.i

if.then.i.i.i.i7.i:                               ; preds = %if.end8.i.i.i.i
  call void @__check_object_size(ptr noundef nonnull %call1.i.i, i32 noundef %retval.0.i.i6.i, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i.i.i45 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i.i45, label %if.then.i.i.i.i7.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i7.i.if.end.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i7.i
  %211 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %201, i32 %retval.0.i.i6.i, i32 -1226833920) #21, !srcloc !96
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %211, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !93

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i.i

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i.i, i32 noundef %retval.0.i.i6.i) #13
  %212 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i.i.i = and i32 %212, -16384
  %213 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 4
  %214 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !97
  %and.i.i.i.i.i.i = and i32 %214, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call1.i.i, ptr noundef %201, i32 noundef %retval.0.i.i6.i) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.i7.i.if.end.i.i.i.i_crit_edge
  %res.0.i.i.i.i = phi i32 [ %205, %if.then.i.i.i.i7.i.if.end.i.i.i.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i7.i.i.i ], [ %205, %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %do.body.preheader.i.i, label %if.then11.i.i.i.i, !prof !93

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = sub i32 %retval.0.i.i6.i, %res.0.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i, i32 %sub.i.i.i.i
  %215 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i)
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.then11.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.if.then14.i.i_crit_edge
  %216 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -14, ptr %ret.i.i, align 4
  br label %unlock_mutex.i.i

do.body.preheader.i.i:                            ; preds = %if.end.i.i.i.i
  %lock.i.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i5.i.i, i32 0, i32 4
  call void @_raw_write_lock_bh(ptr noundef %lock.i.i) #13
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %i.09.i.i = phi i32 [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %do.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.ebt_counter, ptr %call1.i.i, i32 %i.09.i.i
  %bcnt.i.i = getelementptr %struct.ebt_counter, ptr %call1.i.i, i32 %i.09.i.i, i32 1
  %217 = ptrtoint ptr %bcnt.i.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %bcnt.i.i, align 8
  %219 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %private.i.i, align 4
  %bcnt20.i.i = getelementptr %struct.ebt_table_info, ptr %220, i32 0, i32 6, i32 %i.09.i.i, i32 1
  %221 = ptrtoint ptr %bcnt20.i.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %bcnt20.i.i, align 8
  %add.i.i = add i64 %222, %218
  store i64 %add.i.i, ptr %bcnt20.i.i, align 8
  %223 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %arrayidx.i.i, align 8
  %225 = load ptr, ptr %private.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.ebt_table_info, ptr %225, i32 0, i32 6, i32 %i.09.i.i
  %226 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx24.i.i, align 16
  %add26.i.i = add i64 %227, %224
  store i64 %add26.i.i, ptr %arrayidx24.i.i, align 16
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %199
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_write_unlock_bh(ptr noundef %lock.i.i) #13
  %228 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %ret.i.i, align 4
  br label %unlock_mutex.i.i

unlock_mutex.i.i:                                 ; preds = %for.end.i.i, %if.then14.i.i, %if.then9.i.i
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %free_tmp.i.i

free_tmp.i.i:                                     ; preds = %unlock_mutex.i.i, %find_table_lock.exit.i.i.free_tmp.i.i_crit_edge
  call void @vfree(ptr noundef nonnull %call1.i.i) #13
  %229 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %ret.i.i, align 4
  br label %do_update_counters.exit.i

do_update_counters.exit.i:                        ; preds = %free_tmp.i.i, %if.end.i.i.do_update_counters.exit.i_crit_edge, %if.end2.i.do_update_counters.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %230, %free_tmp.i.i ], [ -22, %if.end2.i.do_update_counters.exit.i_crit_edge ], [ -12, %if.end.i.i.do_update_counters.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #13
  br label %update_counters.exit

update_counters.exit:                             ; preds = %do_update_counters.exit.i, %if.end.i41.update_counters.exit_crit_edge, %if.then11.i.i.i.i.i36
  %retval.0.i46 = phi i32 [ %retval.0.i.i, %do_update_counters.exit.i ], [ -22, %if.end.i41.update_counters.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i36 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %hlp.i) #13
  br label %cleanup

cleanup:                                          ; preds = %update_counters.exit, %do_replace.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i46, %update_counters.exit ], [ %retval.0.i, %do_replace.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_ebt_get_ctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, ptr noundef %user, ptr nocapture noundef readonly %len) #0 align 64 {
entry:
  %tmp.i = alloca %struct.ebt_replace, align 4
  %tmp = alloca %struct.ebt_replace, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp) #13
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #13
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ret, align 4, !annotation !101
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 12) #13
  br i1 %call1, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 80, i32 -1226833920) #21
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !93

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 80) #13
  %7 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !97
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %user, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !93

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i69 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 80, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 80, %res.0.i.i69
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i69)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds [32 x i8], ptr %tmp, i32 0, i32 31
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %call.i.i60 = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %tmp, ptr noundef nonnull %ret) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i60, null
  br i1 %tobool.not.i.i, label %find_table_lock.exit, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

find_table_lock.exit:                             ; preds = %if.end4
  %call1.i.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp) #13
  %call2.i.i = call fastcc ptr @find_inlist_lock_noload(ptr noundef %1, ptr noundef nonnull %tmp, ptr noundef nonnull %ret) #13
  %tobool7.not = icmp eq ptr %call2.i.i, null
  br i1 %tobool7.not, label %if.then8, label %find_table_lock.exit.if.end9_crit_edge

find_table_lock.exit.if.end9_crit_edge:           ; preds = %find_table_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %find_table_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret, align 4
  br label %cleanup

if.end9:                                          ; preds = %find_table_lock.exit.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %cond.i.i74 = phi ptr [ %call2.i.i, %find_table_lock.exit.if.end9_crit_edge ], [ %call.i.i60, %if.end4.if.end9_crit_edge ]
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %sw.default [
    i32 128, label %if.end9.sw.bb_crit_edge
    i32 130, label %if.end9.sw.bb_crit_edge100
    i32 129, label %if.end9.sw.bb31_crit_edge
    i32 131, label %if.end9.sw.bb31_crit_edge101
  ]

if.end9.sw.bb31_crit_edge101:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb31

if.end9.sw.bb31_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb31

if.end9.sw.bb_crit_edge100:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge100
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %16)
  %cmp.not = icmp eq i32 %16, 80
  br i1 %cmp.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -22, ptr %ret, align 4
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cmd)
  %cmp12 = icmp eq i32 %cmd, 128
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %private = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 6
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private, align 4
  %nentries = getelementptr inbounds %struct.ebt_table_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nentries, align 4
  %nentries14 = getelementptr inbounds %struct.ebt_replace, ptr %tmp, i32 0, i32 2
  %22 = ptrtoint ptr %nentries14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nentries14, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 128
  %entries_size16 = getelementptr inbounds %struct.ebt_replace, ptr %tmp, i32 0, i32 3
  %25 = ptrtoint ptr %entries_size16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %entries_size16, align 4
  %valid_hooks = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 3
  br label %if.end26

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %table = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 2
  %26 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %table, align 4
  %nentries18 = getelementptr inbounds %struct.ebt_replace_kernel, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nentries18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nentries18, align 4
  %nentries19 = getelementptr inbounds %struct.ebt_replace, ptr %tmp, i32 0, i32 2
  %30 = ptrtoint ptr %nentries19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nentries19, align 4
  %entries_size21 = getelementptr inbounds %struct.ebt_replace_kernel, ptr %27, i32 0, i32 3
  %31 = ptrtoint ptr %entries_size21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entries_size21, align 4
  %entries_size22 = getelementptr inbounds %struct.ebt_replace, ptr %tmp, i32 0, i32 3
  %33 = ptrtoint ptr %entries_size22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %entries_size22, align 4
  %34 = load ptr, ptr %table, align 4
  %valid_hooks24 = getelementptr inbounds %struct.ebt_replace_kernel, ptr %34, i32 0, i32 1
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then13
  %.sink.in = phi ptr [ %valid_hooks, %if.then13 ], [ %valid_hooks24, %if.else ]
  %35 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.sink = load i32, ptr %.sink.in, align 4
  %36 = getelementptr inbounds %struct.ebt_replace, ptr %tmp, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %36, align 4
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %39)
  %cmp1.i.i51 = icmp ugt i32 %39, 80
  br i1 %cmp1.i.i51, label %if.then3.i.i, label %if.then.i.i.i, !prof !92

if.then3.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef 80, i32 noundef %39) #13
  br label %if.then29

if.then.i.i.i:                                    ; preds = %if.end26
  call void @__check_object_size(ptr noundef nonnull %tmp, i32 noundef %39, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i54 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i54, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i57

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i57:                                     ; preds = %if.then.i.i.i
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 %39, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i55 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i55)
  %cmp.i6.i56 = icmp eq i32 %asmresult.i.i55, 0
  br i1 %cmp.i6.i56, label %if.then2.i.i, label %if.end.i.i57.copy_to_user.exit_crit_edge

if.end.i.i57.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef %39) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user, ptr noundef nonnull %tmp, i32 noundef %39) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i57.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i59 = phi i32 [ %39, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %39, %if.end.i.i57.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i59)
  %cmp28.not = icmp eq i32 %n.addr.0.i59, 0
  br i1 %cmp28.not, label %if.end30, label %copy_to_user.exit.if.then29_crit_edge

copy_to_user.exit.if.then29_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.then29:                                        ; preds = %copy_to_user.exit.if.then29_crit_edge, %if.then3.i.i
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -14, ptr %ret, align 4
  br label %sw.epilog

if.end30:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ret, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end9.sw.bb31_crit_edge, %if.end9.sw.bb31_crit_edge101
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp.i) #13
  %43 = call ptr @memset(ptr %tmp.i, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %cmd)
  %cmp.i = icmp eq i32 %cmd, 129
  br i1 %cmp.i, label %if.then.i61, label %if.else.i

if.then.i61:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  %private.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 6
  %44 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private.i, align 4
  %nentries3.i = getelementptr inbounds %struct.ebt_table_info, ptr %45, i32 0, i32 1
  %entries5.i = getelementptr inbounds %struct.ebt_table_info, ptr %45, i32 0, i32 4
  %counters.i = getelementptr inbounds %struct.ebt_table_info, ptr %45, i32 0, i32 6
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  %table.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 2
  %46 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %table.i, align 4
  %entries_size7.i = getelementptr inbounds %struct.ebt_replace_kernel, ptr %47, i32 0, i32 3
  %nentries9.i = getelementptr inbounds %struct.ebt_replace_kernel, ptr %47, i32 0, i32 2
  %entries11.i = getelementptr inbounds %struct.ebt_replace_kernel, ptr %47, i32 0, i32 7
  %counters13.i = getelementptr inbounds %struct.ebt_replace_kernel, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %counters13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %counters13.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i61
  %oldcounters.0.i = phi ptr [ %counters.i, %if.then.i61 ], [ %49, %if.else.i ]
  %entries_size.0.in.i = phi ptr [ %45, %if.then.i61 ], [ %entries_size7.i, %if.else.i ]
  %nentries.0.in.i = phi ptr [ %nentries3.i, %if.then.i61 ], [ %nentries9.i, %if.else.i ]
  %entries.0.in.i = phi ptr [ %entries5.i, %if.then.i61 ], [ %entries11.i, %if.else.i ]
  %50 = ptrtoint ptr %entries.0.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %entries.0.i = load ptr, ptr %entries.0.in.i, align 4
  %51 = ptrtoint ptr %nentries.0.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %nentries.0.i = load i32, ptr %nentries.0.in.i, align 4
  %52 = ptrtoint ptr %entries_size.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %entries_size.0.i = load i32, ptr %entries_size.0.in.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #13
  %call.i.i.i62 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i62, label %if.end.i.if.then11.i.i.i_crit_edge, label %if.end.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 80) #13
  %53 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !97
  %and.i.i.i.i.i = and i32 %55, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %user, i32 noundef 80) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end15.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !93

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i108.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 80, %if.end.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 80, %res.0.i.i108.i
  %add.ptr.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i
  %56 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i108.i)
  br label %copy_everything_to_user.exit

if.end15.i:                                       ; preds = %if.end.i.i.i
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %add.i = add i32 %entries_size.0.i, 80
  %num_counters.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 5
  %59 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool16.not.i = icmp eq i32 %60, 0
  %mul.i = shl i32 %nentries.0.i, 4
  %spec.select.i = select i1 %tobool16.not.i, i32 0, i32 %mul.i
  %add17.i = add i32 %add.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add17.i)
  %cmp18.not.i = icmp eq i32 %58, %add17.i
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end15.i.copy_everything_to_user.exit_crit_edge

if.end15.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end20.i:                                       ; preds = %if.end15.i
  %nentries21.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 2
  %61 = ptrtoint ptr %nentries21.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nentries21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %nentries.0.i)
  %cmp22.not.i = icmp eq i32 %62, %nentries.0.i
  br i1 %cmp22.not.i, label %if.end24.i, label %if.end20.i.copy_everything_to_user.exit_crit_edge

if.end20.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end24.i:                                       ; preds = %if.end20.i
  %entries_size25.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 3
  %63 = ptrtoint ptr %entries_size25.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %entries_size25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %entries_size.0.i)
  %cmp26.not.i = icmp eq i32 %64, %entries_size.0.i
  br i1 %cmp26.not.i, label %if.end28.i, label %if.end24.i.copy_everything_to_user.exit_crit_edge

if.end24.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end28.i:                                       ; preds = %if.end24.i
  %counters29.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 6
  %65 = ptrtoint ptr %counters29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %counters29.i, align 4
  br i1 %tobool16.not.i, label %if.end28.i.for.cond.preheader.i_crit_edge, label %if.end.i.i63

if.end28.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

if.end.i.i63:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %nentries.0.i)
  %cmp1.not.i.i = icmp eq i32 %60, %nentries.0.i
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %if.end.i.i63.copy_everything_to_user.exit_crit_edge

if.end.i.i63.copy_everything_to_user.exit_crit_edge: ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end3.i.i:                                      ; preds = %if.end.i.i63
  %67 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nentries.0.i, i32 16) #13
  %68 = extractvalue { i32, i1 } %67, 1
  %69 = extractvalue { i32, i1 } %67, 0
  %retval.0.i.i.i = select i1 %68, i32 -1, i32 %69
  %call4.i.i = call noalias ptr @vmalloc(i32 noundef %retval.0.i.i.i) #16
  %tobool.not.i.i64 = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i.i64, label %if.end3.i.i.copy_everything_to_user.exit_crit_edge, label %if.end6.i.i

if.end3.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %lock.i.i = getelementptr inbounds %struct.ebt_table, ptr %cond.i.i74, i32 0, i32 4
  call void @_raw_write_lock_bh(ptr noundef %lock.i.i) #13
  %70 = call ptr @memcpy(ptr %call4.i.i, ptr %oldcounters.0.i, i32 %mul.i)
  %call31.i.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i.i.i, i32 %71)
  %cmp32.i.i.i = icmp ult i32 %call31.i.i.i, %71
  br i1 %cmp32.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end6.i.i.get_counters.exit.i.i_crit_edge

if.end6.i.i.get_counters.exit.i.i_crit_edge:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_counters.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end6.i.i
  %sub.i.i83.i = add i32 %mul.i, 127
  %and.i.i.i = and i32 %sub.i.i83.i, -128
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %call33.i.i.i = phi i32 [ %call31.i.i.i, %for.body.lr.ph.i.i.i ], [ %call.i.i85.i, %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %cmp1.i.i84.i = icmp eq i32 %call33.i.i.i, 0
  br i1 %cmp1.i.i84.i, label %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %do.body.i.preheader.i.i

for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %do.body.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.body.i.i.i.for.cond.backedge.i.i.i_crit_edge
  %call.i.i85.i = call i32 @cpumask_next(i32 noundef %call33.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp.i.i86.i = icmp ult i32 %call.i.i85.i, %71
  br i1 %cmp.i.i86.i, label %for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.backedge.i.i.i.get_counters.exit.i.i_crit_edge

for.cond.backedge.i.i.i.get_counters.exit.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_counters.exit.i.i

for.cond.backedge.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.body.i.preheader.i.i:                          ; preds = %for.body.i.i.i
  %mul3.i.i.i = mul i32 %call33.i.i.i, %and.i.i.i
  %add.ptr.i.i87.i = getelementptr i8, ptr %oldcounters.0.i, i32 %mul3.i.i.i
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.preheader.i.i
  %i.030.i.i.i = phi i32 [ %inc.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %do.body.i.preheader.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.ebt_counter, ptr %add.ptr.i.i87.i, i32 %i.030.i.i.i
  %bcnt.i.i.i = getelementptr inbounds %struct.ebt_counter, ptr %arrayidx.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %bcnt.i.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %bcnt.i.i.i, align 8
  %arrayidx7.i.i.i = getelementptr %struct.ebt_counter, ptr %call4.i.i, i32 %i.030.i.i.i
  %bcnt8.i.i.i = getelementptr %struct.ebt_counter, ptr %call4.i.i, i32 %i.030.i.i.i, i32 1
  %74 = ptrtoint ptr %bcnt8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %bcnt8.i.i.i, align 8
  %add9.i.i.i = add i64 %75, %73
  store i64 %add9.i.i.i, ptr %bcnt8.i.i.i, align 8
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.i.i.i, align 8
  %78 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx7.i.i.i, align 8
  %add13.i.i.i = add i64 %79, %77
  store i64 %add13.i.i.i, ptr %arrayidx7.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.030.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %nentries.0.i
  br i1 %exitcond.not.i.i.i, label %do.body.i.i.i.for.cond.backedge.i.i.i_crit_edge, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

do.body.i.i.i.for.cond.backedge.i.i.i_crit_edge:  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge.i.i.i

get_counters.exit.i.i:                            ; preds = %for.cond.backedge.i.i.i.get_counters.exit.i.i_crit_edge, %if.end6.i.i.get_counters.exit.i.i_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %lock.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %get_counters.exit.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_counters_to_user.exit.thread137.i_crit_edge, label %if.then27.i.i.i.i, !prof !93

land.rhs16.i.i.i.i.copy_counters_to_user.exit.thread137.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_counters_to_user.exit.thread137.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_counters_to_user.exit.thread137.i

if.then.i.i.i.i.i:                                ; preds = %get_counters.exit.i.i
  call void @__check_object_size(ptr noundef nonnull %call4.i.i, i32 noundef %retval.0.i.i.i, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i.i88.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i88.i, label %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %80 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %66, i32 %retval.0.i.i.i, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call4.i.i, i32 noundef %retval.0.i.i.i) #13
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %66, ptr noundef nonnull %call4.i.i, i32 noundef %retval.0.i.i.i) #13
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %69, %if.then.i.i.i.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %69, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  br i1 %tobool10.not.i.i, label %copy_counters_to_user.exit.i, label %copy_to_user.exit.i.i.copy_counters_to_user.exit.thread137.i_crit_edge

copy_to_user.exit.i.i.copy_counters_to_user.exit.thread137.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_counters_to_user.exit.thread137.i

copy_counters_to_user.exit.thread137.i:           ; preds = %copy_to_user.exit.i.i.copy_counters_to_user.exit.thread137.i_crit_edge, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_counters_to_user.exit.thread137.i_crit_edge
  call void @vfree(ptr noundef nonnull %call4.i.i) #13
  br label %copy_everything_to_user.exit

copy_counters_to_user.exit.i:                     ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @vfree(ptr noundef nonnull %call4.i.i) #13
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %copy_counters_to_user.exit.i, %if.end28.i.for.cond.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries_size.0.i)
  %cmp35129.not.i = icmp eq i32 %entries_size.0.i, 0
  br i1 %cmp35129.not.i, label %for.cond.preheader.i.if.then48.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then48.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %entries36.i = getelementptr inbounds %struct.ebt_replace, ptr %tmp.i, i32 0, i32 7
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %entries.0.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end46.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %__i.0130.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %__i.1.i, %if.end46.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %entries.0.i, i32 %__i.0130.i
  %81 = ptrtoint ptr %entries36.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %entries36.i, align 4
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i90.i = icmp eq i32 %84, 0
  %add.ptr.i.i65 = getelementptr i8, ptr %82, i32 %__i.0130.i
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i.i93.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %cmp.i90.i, label %if.end8.i.i.i94.i, label %if.end8.i.i117.i.i

if.end8.i.i.i94.i:                                ; preds = %for.body.i
  br i1 %call.i.i.i93.i, label %if.end8.i.i.i94.i.copy_everything_to_user.exit_crit_edge, label %if.end.i.i.i97.i

if.end8.i.i.i94.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end8.i.i.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end.i.i.i97.i:                                 ; preds = %if.end8.i.i.i94.i
  %85 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i65, i32 48, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i.i95.i = extractvalue { i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i95.i)
  %cmp.i6.i.i96.i = icmp eq i32 %asmresult.i.i.i95.i, 0
  br i1 %cmp.i6.i.i96.i, label %copy_to_user.exit.i102.i, label %if.end.i.i.i97.i.copy_everything_to_user.exit_crit_edge

if.end.i.i.i97.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end.i.i.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

copy_to_user.exit.i102.i:                         ; preds = %if.end.i.i.i97.i
  %call.i.i.i.i98.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 48) #13
  %call.i12.i.i.i99.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i.i65, ptr noundef %add.ptr.i, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call.i12.i.i.i99.i, 0
  br i1 %tobool.not.i100.i, label %copy_to_user.exit.i102.i.if.end40.i_crit_edge, label %copy_to_user.exit.i102.i.copy_everything_to_user.exit_crit_edge

copy_to_user.exit.i102.i.copy_everything_to_user.exit_crit_edge: ; preds = %copy_to_user.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

copy_to_user.exit.i102.i.if.end40.i_crit_edge:    ; preds = %copy_to_user.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.end8.i.i117.i.i:                               ; preds = %for.body.i
  br i1 %call.i.i.i93.i, label %if.end8.i.i117.i.i.copy_everything_to_user.exit_crit_edge, label %if.end.i.i121.i.i

if.end8.i.i117.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end8.i.i117.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end.i.i121.i.i:                                ; preds = %if.end8.i.i117.i.i
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i65, i32 112, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i119.i.i = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i119.i.i)
  %cmp.i6.i120.i.i = icmp eq i32 %asmresult.i.i119.i.i, 0
  br i1 %cmp.i6.i120.i.i, label %copy_to_user.exit126.i.i, label %if.end.i.i121.i.i.copy_everything_to_user.exit_crit_edge

if.end.i.i121.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.end.i.i121.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

copy_to_user.exit126.i.i:                         ; preds = %if.end.i.i121.i.i
  %call.i.i.i122.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 112) #13
  %call.i12.i.i123.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr.i.i65, ptr noundef %add.ptr.i, i32 noundef 112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i123.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i12.i.i123.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %copy_to_user.exit126.i.i.copy_everything_to_user.exit_crit_edge

copy_to_user.exit126.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %copy_to_user.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end10.i.i:                                     ; preds = %copy_to_user.exit126.i.i
  %target_offset.i.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr.i, i32 0, i32 12
  %87 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %target_offset.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i, i32 %88
  %sub.ptr.lhs.cast12.i.i = ptrtoint ptr %add.ptr11.i.i to i32
  %sub.ptr.sub14.i.i = sub i32 %sub.ptr.lhs.cast12.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr15.i.i = getelementptr i8, ptr %82, i32 %sub.ptr.sub14.i.i
  %watchers_offset.i.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr.i, i32 0, i32 11
  %89 = ptrtoint ptr %watchers_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %watchers_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %90)
  %cmp17153.i.i = icmp ugt i32 %90, 112
  br i1 %cmp17153.i.i, label %if.end10.i.i.for.body.i.i_crit_edge, label %if.end10.i.i.if.then25.i.i_crit_edge

if.end10.i.i.if.then25.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i.i

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end10.i.i.for.body.i.i_crit_edge
  %__i.0154.i.i = phi i32 [ %add23.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 112, %if.end10.i.i.for.body.i.i_crit_edge ]
  %add.ptr18.i.i = getelementptr i8, ptr %add.ptr.i, i32 %__i.0154.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr18.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i.i103.i = getelementptr i8, ptr %82, i32 %sub.ptr.sub.i.i.i
  %91 = ptrtoint ptr %add.ptr18.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr18.i.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.xt_match, ptr %92, i32 0, i32 1
  %data.i.i.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr18.i.i, i32 0, i32 2
  %usersize.i.i.i = getelementptr inbounds %struct.xt_match, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %usersize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usersize.i.i.i, align 4
  %match_size.i.i.i = getelementptr inbounds %struct.ebt_entry_match, ptr %add.ptr18.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %match_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %match_size.i.i.i, align 4
  %revision.i.i.i = getelementptr inbounds %struct.xt_match, ptr %92, i32 0, i32 2
  %97 = ptrtoint ptr %revision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %revision.i.i.i, align 1
  %call.i.i104.i = call fastcc i32 @ebt_obj_to_user(ptr noundef %add.ptr.i.i103.i, ptr noundef %name.i.i.i, ptr noundef %data.i.i.i, i32 noundef %94, i32 noundef %96, i8 noundef zeroext %98) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104.i)
  %cmp20.not.i.i = icmp eq i32 %call.i.i104.i, 0
  br i1 %cmp20.not.i.i, label %for.inc.i.i, label %for.body.i.i.copy_everything_to_user.exit_crit_edge

for.body.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %99 = ptrtoint ptr %match_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %match_size.i.i.i, align 4
  %add.i.i = add i32 %__i.0154.i.i, 36
  %add23.i.i = add i32 %add.i.i, %100
  %101 = ptrtoint ptr %watchers_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %watchers_offset.i.i, align 4
  %cmp17.i.i = icmp ult i32 %add23.i.i, %102
  br i1 %cmp17.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.then25.i.i_crit_edge

for.inc.i.i.if.then25.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.then25.i.i:                                    ; preds = %for.inc.i.i.if.then25.i.i_crit_edge, %if.end10.i.i.if.then25.i.i_crit_edge
  %__i.0.lcssa.i.i = phi i32 [ 112, %if.end10.i.i.if.then25.i.i_crit_edge ], [ %add23.i.i, %for.inc.i.i.if.then25.i.i_crit_edge ]
  %103 = ptrtoint ptr %watchers_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %watchers_offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa.i.i, i32 %104)
  %cmp27.not.i.i = icmp eq i32 %__i.0.lcssa.i.i, %104
  br i1 %cmp27.not.i.i, label %if.end33.i.i, label %if.then25.i.i.copy_everything_to_user.exit_crit_edge

if.then25.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

if.end33.i.i:                                     ; preds = %if.then25.i.i
  %105 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %target_offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa.i.i, i32 %106)
  %cmp39155.i.i = icmp ult i32 %__i.0.lcssa.i.i, %106
  br i1 %cmp39155.i.i, label %if.end33.i.i.for.body40.i.i_crit_edge, label %if.end33.i.i.if.then51.i.i_crit_edge

if.end33.i.i.if.then51.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51.i.i

if.end33.i.i.for.body40.i.i_crit_edge:            ; preds = %if.end33.i.i
  br label %for.body40.i.i

for.body40.i.i:                                   ; preds = %for.inc46.i.i.for.body40.i.i_crit_edge, %if.end33.i.i.for.body40.i.i_crit_edge
  %__i34.0156.i.i = phi i32 [ %add48.i.i, %for.inc46.i.i.for.body40.i.i_crit_edge ], [ %__i.0.lcssa.i.i, %if.end33.i.i.for.body40.i.i_crit_edge ]
  %add.ptr41.i.i = getelementptr i8, ptr %add.ptr.i, i32 %__i34.0156.i.i
  %sub.ptr.lhs.cast.i127.i.i = ptrtoint ptr %add.ptr41.i.i to i32
  %sub.ptr.sub.i129.i.i = sub i32 %sub.ptr.lhs.cast.i127.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i130.i.i = getelementptr i8, ptr %82, i32 %sub.ptr.sub.i129.i.i
  %107 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr41.i.i, align 4
  %name.i131.i.i = getelementptr inbounds %struct.xt_target, ptr %108, i32 0, i32 1
  %data.i132.i.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr41.i.i, i32 0, i32 2
  %usersize.i133.i.i = getelementptr inbounds %struct.xt_target, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %usersize.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %usersize.i133.i.i, align 4
  %watcher_size.i.i.i = getelementptr inbounds %struct.ebt_entry_watcher, ptr %add.ptr41.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %watcher_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %watcher_size.i.i.i, align 4
  %revision.i134.i.i = getelementptr inbounds %struct.xt_target, ptr %108, i32 0, i32 2
  %113 = ptrtoint ptr %revision.i134.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %revision.i134.i.i, align 1
  %call.i135.i.i = call fastcc i32 @ebt_obj_to_user(ptr noundef %add.ptr.i130.i.i, ptr noundef %name.i131.i.i, ptr noundef %data.i132.i.i, i32 noundef %110, i32 noundef %112, i8 noundef zeroext %114) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i.i)
  %cmp43.not.i.i = icmp eq i32 %call.i135.i.i, 0
  br i1 %cmp43.not.i.i, label %for.inc46.i.i, label %for.body40.i.i.copy_everything_to_user.exit_crit_edge

for.body40.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

for.inc46.i.i:                                    ; preds = %for.body40.i.i
  %115 = ptrtoint ptr %watcher_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %watcher_size.i.i.i, align 4
  %add47.i.i = add i32 %__i34.0156.i.i, 36
  %add48.i.i = add i32 %add47.i.i, %116
  %117 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %target_offset.i.i, align 4
  %cmp39.i.i = icmp ult i32 %add48.i.i, %118
  br i1 %cmp39.i.i, label %for.inc46.i.i.for.body40.i.i_crit_edge, label %for.inc46.i.i.if.then51.i.i_crit_edge

for.inc46.i.i.if.then51.i.i_crit_edge:            ; preds = %for.inc46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51.i.i

for.inc46.i.i.for.body40.i.i_crit_edge:           ; preds = %for.inc46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body40.i.i

if.then51.i.i:                                    ; preds = %for.inc46.i.i.if.then51.i.i_crit_edge, %if.end33.i.i.if.then51.i.i_crit_edge
  %__i34.0.lcssa.i.i = phi i32 [ %__i.0.lcssa.i.i, %if.end33.i.i.if.then51.i.i_crit_edge ], [ %add48.i.i, %for.inc46.i.i.if.then51.i.i_crit_edge ]
  %119 = ptrtoint ptr %target_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %target_offset.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %__i34.0.lcssa.i.i, i32 %120)
  %cmp53.not.i.i = icmp eq i32 %__i34.0.lcssa.i.i, %120
  br i1 %cmp53.not.i.i, label %ebt_entry_to_user.exit.i, label %if.then51.i.i.copy_everything_to_user.exit_crit_edge

if.then51.i.i.copy_everything_to_user.exit_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

ebt_entry_to_user.exit.i:                         ; preds = %if.then51.i.i
  %121 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr11.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.xt_target, ptr %122, i32 0, i32 1
  %data.i.i = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr11.i.i, i32 0, i32 2
  %usersize.i.i = getelementptr inbounds %struct.xt_target, ptr %122, i32 0, i32 9
  %123 = ptrtoint ptr %usersize.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %usersize.i.i, align 4
  %target_size.i.i = getelementptr inbounds %struct.ebt_entry_target, ptr %add.ptr11.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %target_size.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %target_size.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.xt_target, ptr %122, i32 0, i32 2
  %127 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %revision.i.i, align 1
  %call64.i.i = call fastcc i32 @ebt_obj_to_user(ptr noundef %add.ptr15.i.i, ptr noundef %name.i.i, ptr noundef %data.i.i, i32 noundef %124, i32 noundef %126, i8 noundef zeroext %128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i.i)
  %cmp38.not.i = icmp eq i32 %call64.i.i, 0
  br i1 %cmp38.not.i, label %ebt_entry_to_user.exit.i.if.end40.i_crit_edge, label %ebt_entry_to_user.exit.i.copy_everything_to_user.exit_crit_edge

ebt_entry_to_user.exit.i.copy_everything_to_user.exit_crit_edge: ; preds = %ebt_entry_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_everything_to_user.exit

ebt_entry_to_user.exit.i.if.end40.i_crit_edge:    ; preds = %ebt_entry_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.end40.i:                                       ; preds = %ebt_entry_to_user.exit.i.if.end40.i_crit_edge, %copy_to_user.exit.i102.i.if.end40.i_crit_edge
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp41.not.i = icmp eq i32 %130, 0
  br i1 %cmp41.not.i, label %if.end40.i.if.end46.i_crit_edge, label %if.then42.i

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  %next_offset.i = getelementptr inbounds %struct.ebt_entry, ptr %add.ptr.i, i32 0, i32 13
  %131 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %next_offset.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end46.i_crit_edge
  %.pn.i = phi i32 [ %132, %if.then42.i ], [ 48, %if.end40.i.if.end46.i_crit_edge ]
  %__i.1.i = add i32 %.pn.i, %__i.0130.i
  %cmp35.i = icmp ult i32 %__i.1.i, %entries_size.0.i
  br i1 %cmp35.i, label %if.end46.i.for.body.i_crit_edge, label %if.end46.i.if.then48.i_crit_edge

if.end46.i.if.then48.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then48.i

if.end46.i.for.body.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then48.i:                                      ; preds = %if.end46.i.if.then48.i_crit_edge, %for.cond.preheader.i.if.then48.i_crit_edge
  %__i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.then48.i_crit_edge ], [ %__i.1.i, %if.end46.i.if.then48.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__i.0.lcssa.i, i32 %entries_size.0.i)
  %cmp49.not.i = icmp eq i32 %__i.0.lcssa.i, %entries_size.0.i
  %spec.select82.i = select i1 %cmp49.not.i, i32 0, i32 -22
  br label %copy_everything_to_user.exit

copy_everything_to_user.exit:                     ; preds = %if.then48.i, %ebt_entry_to_user.exit.i.copy_everything_to_user.exit_crit_edge, %if.then51.i.i.copy_everything_to_user.exit_crit_edge, %for.body40.i.i.copy_everything_to_user.exit_crit_edge, %if.then25.i.i.copy_everything_to_user.exit_crit_edge, %for.body.i.i.copy_everything_to_user.exit_crit_edge, %copy_to_user.exit126.i.i.copy_everything_to_user.exit_crit_edge, %if.end.i.i121.i.i.copy_everything_to_user.exit_crit_edge, %if.end8.i.i117.i.i.copy_everything_to_user.exit_crit_edge, %copy_to_user.exit.i102.i.copy_everything_to_user.exit_crit_edge, %if.end.i.i.i97.i.copy_everything_to_user.exit_crit_edge, %if.end8.i.i.i94.i.copy_everything_to_user.exit_crit_edge, %copy_counters_to_user.exit.thread137.i, %if.end3.i.i.copy_everything_to_user.exit_crit_edge, %if.end.i.i63.copy_everything_to_user.exit_crit_edge, %if.end24.i.copy_everything_to_user.exit_crit_edge, %if.end20.i.copy_everything_to_user.exit_crit_edge, %if.end15.i.copy_everything_to_user.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %if.end15.i.copy_everything_to_user.exit_crit_edge ], [ -22, %if.end20.i.copy_everything_to_user.exit_crit_edge ], [ -22, %if.end24.i.copy_everything_to_user.exit_crit_edge ], [ %spec.select82.i, %if.then48.i ], [ -14, %if.then11.i.i.i ], [ -12, %if.end3.i.i.copy_everything_to_user.exit_crit_edge ], [ -22, %if.end.i.i63.copy_everything_to_user.exit_crit_edge ], [ -14, %copy_counters_to_user.exit.thread137.i ], [ %call.i135.i.i, %for.body40.i.i.copy_everything_to_user.exit_crit_edge ], [ %call.i.i104.i, %for.body.i.i.copy_everything_to_user.exit_crit_edge ], [ %call64.i.i, %ebt_entry_to_user.exit.i.copy_everything_to_user.exit_crit_edge ], [ -14, %copy_to_user.exit.i102.i.copy_everything_to_user.exit_crit_edge ], [ -22, %if.then51.i.i.copy_everything_to_user.exit_crit_edge ], [ -22, %if.then25.i.i.copy_everything_to_user.exit_crit_edge ], [ -14, %if.end.i.i121.i.i.copy_everything_to_user.exit_crit_edge ], [ -14, %if.end8.i.i117.i.i.copy_everything_to_user.exit_crit_edge ], [ -14, %if.end.i.i.i97.i.copy_everything_to_user.exit_crit_edge ], [ -14, %if.end8.i.i.i94.i.copy_everything_to_user.exit_crit_edge ], [ -14, %copy_to_user.exit126.i.i.copy_everything_to_user.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp.i) #13
  %133 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %retval.0.i, ptr %ret, align 4
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %134 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -22, ptr %ret, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %copy_everything_to_user.exit, %if.end30, %if.then29, %if.then10
  %135 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then8, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %136, %sw.epilog ], [ %13, %if.then8 ], [ -1, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_inlist_lock_noload(ptr noundef %net, ptr nocapture noundef readonly %name, ptr nocapture noundef writeonly %error) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load i32, ptr @ebt_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %table.0.in = phi ptr [ %call, %entry ], [ %table.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %table.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %table.0 = load ptr, ptr %table.0.in, align 4
  %cmp.not = icmp eq ptr %table.0, %call
  br i1 %cmp.not, label %for.cond.for.cond13_crit_edge, label %for.body

for.cond.for.cond13_crit_edge:                    ; preds = %for.cond
  br label %for.cond13

for.body:                                         ; preds = %for.cond
  %name2 = getelementptr inbounds %struct.ebt_table, ptr %table.0, i32 0, i32 1
  %call3 = tail call i32 @strcmp(ptr noundef %name2, ptr noundef %name) #17
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup62_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.body.cleanup62_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

for.cond13:                                       ; preds = %for.body17.for.cond13_crit_edge, %for.cond.for.cond13_crit_edge
  %tmpl.0.in = phi ptr [ %tmpl.0, %for.body17.for.cond13_crit_edge ], [ @template_tables, %for.cond.for.cond13_crit_edge ]
  %2 = ptrtoint ptr %tmpl.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmpl.0 = load ptr, ptr %tmpl.0.in, align 4
  %cmp15.not = icmp eq ptr %tmpl.0, @template_tables
  br i1 %cmp15.not, label %for.cond13.for.cond43.preheader_crit_edge, label %for.body17

for.cond13.for.cond43.preheader_crit_edge:        ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond43.preheader

for.body17:                                       ; preds = %for.cond13
  %name18 = getelementptr inbounds %struct.ebt_template, ptr %tmpl.0, i32 0, i32 1
  %call20 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %name18) #17
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %for.body17.for.cond13_crit_edge

for.body17.for.cond13_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13

if.then22:                                        ; preds = %for.body17
  %owner23 = getelementptr inbounds %struct.ebt_template, ptr %tmpl.0, i32 0, i32 2
  %3 = ptrtoint ptr %owner23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner23, align 4
  %call24 = tail call zeroext i1 @try_module_get(ptr noundef %4) #13
  br i1 %call24, label %if.end26, label %if.then22.out_crit_edge

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end26:                                         ; preds = %if.then22
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  %table_init = getelementptr inbounds %struct.ebt_template, ptr %tmpl.0, i32 0, i32 3
  %5 = ptrtoint ptr %table_init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %table_init, align 4
  %call27 = tail call i32 %6(ptr noundef %net) #13
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call27, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %cleanup.thread2, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @module_put(ptr noundef %4) #13
  br label %cleanup62

cleanup.thread2:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @ebt_mutex, i32 noundef 0) #13
  tail call void @module_put(ptr noundef %4) #13
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %cleanup.thread2, %for.cond13.for.cond43.preheader_crit_edge
  br label %for.cond43

for.cond43:                                       ; preds = %for.body48.for.cond43_crit_edge, %for.cond43.preheader
  %table.1.in = phi ptr [ %table.1, %for.body48.for.cond43_crit_edge ], [ %call, %for.cond43.preheader ]
  %8 = ptrtoint ptr %table.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %table.1 = load ptr, ptr %table.1.in, align 4
  %cmp46.not = icmp eq ptr %table.1, %call
  br i1 %cmp46.not, label %for.cond43.out_crit_edge, label %for.body48

for.cond43.out_crit_edge:                         ; preds = %for.cond43
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body48:                                       ; preds = %for.cond43
  %name49 = getelementptr inbounds %struct.ebt_table, ptr %table.1, i32 0, i32 1
  %call51 = tail call i32 @strcmp(ptr noundef %name49, ptr noundef %name) #17
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %for.body48.cleanup62_crit_edge, label %for.body48.for.cond43_crit_edge

for.body48.for.cond43_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond43

for.body48.cleanup62_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup62

out:                                              ; preds = %for.cond43.out_crit_edge, %if.then22.out_crit_edge
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2, ptr %error, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ebt_mutex) #13
  br label %cleanup62

cleanup62:                                        ; preds = %out, %for.body48.cleanup62_crit_edge, %cleanup.thread, %for.body.cleanup62_crit_edge
  %retval.1 = phi ptr [ null, %out ], [ null, %cleanup.thread ], [ %table.1, %for.body48.cleanup62_crit_edge ], [ %table.0, %for.body.cleanup62_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ebt_obj_to_user(ptr noundef %um, ptr noundef %_name, ptr noundef %data, i32 noundef %usersize, i32 noundef %datasize, i8 noundef zeroext %revision) unnamed_addr #3 align 64 {
entry:
  %name = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %name) #13
  %0 = call ptr @memset(ptr %name, i32 0, i32 31)
  %call = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %_name, i32 noundef 31) #13
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %1 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %um, i32 31, i32 -1226833920) #21, !srcloc !100
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %name, i32 noundef 31) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %um, ptr noundef nonnull %name, i32 noundef 31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %um, i32 31
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1451) #13
  %2 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !97
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %5 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i8 %revision, i32 -1226833921) #13, !srcloc !102
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %add.ptr11 = getelementptr i8, ptr %um, i32 32
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1452) #13
  %6 = call i32 @llvm.read_register.i32(metadata !81) #13
  %and.i.i.i1 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i1 to ptr
  %cpu_domain.i.i2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i2) #7, !srcloc !97
  %and.i3 = and i32 %8, -13
  %or.i4 = or i32 %and.i3, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i4) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  %9 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr11, i32 %datasize, i32 -1226833921) #13, !srcloc !103
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #13, !srcloc !98
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool24.not = icmp eq i32 %9, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr26 = getelementptr i8, ptr %um, i32 36
  %add = add i32 %datasize, 7
  %and = and i32 %add, -8
  %call27 = call i32 @xt_data_to_user(ptr noundef %add.ptr26, ptr noundef %data, i32 noundef %usersize, i32 noundef %datasize, i32 noundef %and) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false25, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %lor.lhs.false6.cleanup_crit_edge ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false25 ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %name) #13
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_data_to_user(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_pernet_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ebt_pernet_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !58, !59, !61, !63, !65, !66, !68, !70, !72, !73, !74, !75, !77, !79}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebtables.c", i32 263, i32 8}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/bridge/netfilter/ebtables.c", i32 281, i32 7}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/bridge/netfilter/ebtables.c", i32 293, i32 7}
!7 = !{ptr @ebt_register_table.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/bridge/netfilter/ebtables.c", i32 1240, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/bridge/netfilter/ebtables.c", i32 1302, i32 7}
!12 = !{ptr @__ksymtab_ebt_register_template, !13, !"__ksymtab_ebt_register_template", i1 false, i1 false}
!13 = !{!"../net/bridge/netfilter/ebtables.c", i32 1322, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/bridge/netfilter/ebtables.c", i32 1340, i32 2}
!16 = !{ptr @__ksymtab_ebt_unregister_template, !17, !"__ksymtab_ebt_unregister_template", i1 false, i1 false}
!17 = !{!"../net/bridge/netfilter/ebtables.c", i32 1342, i32 1}
!18 = !{ptr @__ksymtab_ebt_unregister_table_pre_exit, !19, !"__ksymtab_ebt_unregister_table_pre_exit", i1 false, i1 false}
!19 = !{!"../net/bridge/netfilter/ebtables.c", i32 1369, i32 1}
!20 = !{ptr @__ksymtab_ebt_register_table, !21, !"__ksymtab_ebt_register_table", i1 false, i1 false}
!21 = !{!"../net/bridge/netfilter/ebtables.c", i32 2597, i32 1}
!22 = !{ptr @__ksymtab_ebt_unregister_table, !23, !"__ksymtab_ebt_unregister_table", i1 false, i1 false}
!23 = !{!"../net/bridge/netfilter/ebtables.c", i32 2598, i32 1}
!24 = !{ptr @__ksymtab_ebt_do_table, !25, !"__ksymtab_ebt_do_table", i1 false, i1 false}
!25 = !{!"../net/bridge/netfilter/ebtables.c", i32 2599, i32 1}
!26 = !{ptr @__initcall__kmod_ebtables__583_2600_ebtables_init6, !27, !"__initcall__kmod_ebtables__583_2600_ebtables_init6", i1 false, i1 false}
!27 = !{!"../net/bridge/netfilter/ebtables.c", i32 2600, i32 1}
!28 = !{ptr @__exitcall_ebtables_fini, !29, !"__exitcall_ebtables_fini", i1 false, i1 false}
!29 = !{!"../net/bridge/netfilter/ebtables.c", i32 2601, i32 1}
!30 = !{ptr @__UNIQUE_ID_file584, !31, !"__UNIQUE_ID_file584", i1 false, i1 false}
!31 = !{!"../net/bridge/netfilter/ebtables.c", i32 2602, i32 1}
!32 = !{ptr @__UNIQUE_ID_license585, !31, !"__UNIQUE_ID_license585", i1 false, i1 false}
!33 = !{ptr @ebt_pernet_id, !34, !"ebt_pernet_id", i1 false, i1 false}
!34 = !{!"../net/bridge/netfilter/ebtables.c", i32 55, i32 21}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/bridge/netfilter/../br_private.h", i32 416, i32 9}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bridge/netfilter/ebtables.c", i32 825, i32 25}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bridge/netfilter/ebtables.c", i32 409, i32 3}
!53 = !{ptr @ebt_standard_target, !54, !"ebt_standard_target", i1 false, i1 false}
!54 = !{!"../net/bridge/netfilter/ebtables.c", i32 80, i32 25}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/bridge/netfilter/ebtables.c", i32 57, i32 8}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ebt_mutex, !56, !"ebt_mutex", i1 false, i1 false}
!59 = !{ptr @template_tables, !60, !"template_tables", i1 false, i1 false}
!60 = !{!"../net/bridge/netfilter/ebtables.c", i32 56, i32 8}
!61 = !{ptr @ebt_sockopts, !62, !"ebt_sockopts", i1 false, i1 false}
!62 = !{!"../net/bridge/netfilter/ebtables.c", i32 2542, i32 30}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bridge/netfilter/ebtables.c", i32 1078, i32 3}
!72 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @do_replace_finish._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @do_replace_finish._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/bridge/netfilter/ebtables.c", i32 379, i32 37}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/bridge/netfilter/ebtables.c", i32 370, i32 9}
!79 = !{ptr @ebt_net_ops, !80, !"ebt_net_ops", i1 false, i1 false}
!80 = !{!"../net/bridge/netfilter/ebtables.c", i32 2561, i32 33}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i8 0, i8 2}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2149961067}
!95 = !{i64 2149961333}
!96 = !{i64 2153157246, i64 2153157271}
!97 = !{i64 5648740}
!98 = !{i64 5648937}
!99 = !{i64 2153134170}
!100 = !{i64 2153157927, i64 2153157952}
!101 = !{!"auto-init"}
!102 = !{i64 2158347827, i64 2158348107, i64 2158348441, i64 2158348775}
!103 = !{i64 2158360664, i64 2158360944, i64 2158361278, i64 2158361612}
