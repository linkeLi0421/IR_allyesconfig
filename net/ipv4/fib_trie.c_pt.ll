; ModuleID = '/llk/IR_all_yes/net/ipv4/fib_trie.c_pt.bc'
source_filename = "../net/ipv4/fib_trie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib_alias_hw_flags_set\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_alias_hw_flags_set\09\09\09\09"
module asm "\09.long\09__crc_fib_alias_hw_flags_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_alias_hw_flags_set:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_alias_hw_flags_set\22\09\09\09\09\09"
module asm "__kstrtabns_fib_alias_hw_flags_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_table_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_table_lookup\09\09\09\09"
module asm "\09.long\09__crc_fib_table_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_table_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_table_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_fib_table_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fib_prop = type { i32, i8 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.key_vector = type { i32, i8, i8, i8, %union.anon.198 }
%union.anon.198 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.fib_alias = type { %struct.hlist_node, ptr, i8, i8, i8, i8, i32, i16, i8, i8, i8, %struct.callback_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.191, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.191 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.197, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.197 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.149, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.149 = type { %struct.in6_addr }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.trie = type { [1 x %struct.key_vector], ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%union.flowi_uli = type { i32 }
%struct.trie_use_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.147 }
%union.anon.147 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.151, %struct.list_head, ptr }
%union.anon.151 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.148 }
%union.anon.148 = type { %struct.fib_nh }
%struct.tnode = type { %struct.callback_head, i32, i32, ptr, [1 x %struct.key_vector] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.fib_trie_iter = type { %struct.seq_net_private, ptr, ptr, i32, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.trie_stat = type { i32, i32, i32, i32, i32, i32, [32 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fib_route_iter = type { %struct.seq_net_private, ptr, ptr, i64, i32 }

@sysctl_fib_sync_mem = dso_local global { i32, [28 x i8] } { i32 524288, [28 x i8] zeroinitializer }, align 32
@sysctl_fib_sync_mem_min = dso_local global { i32, [28 x i8] } { i32 65536, [28 x i8] zeroinitializer }, align 32
@sysctl_fib_sync_mem_max = dso_local global { i32, [28 x i8] } { i32 67108864, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/fib_trie.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_fib_alias_hw_flags_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_alias_hw_flags_set = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_alias_hw_flags_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_alias_hw_flags_set to i32), ptr @__kstrtab_fib_alias_hw_flags_set, ptr @__kstrtabns_fib_alias_hw_flags_set }, section "___ksymtab_gpl+fib_alias_hw_flags_set", align 4
@fib_table_insert.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fib_trie\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fib_table_insert\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Insert table=%u %08x/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@fn_alias_kmem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@fib_table_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fib_table_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fib_table_lookup.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_table_lookup.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_table_lookup.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_table_lookup.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@fib_props = external dso_local local_unnamed_addr constant [12 x %struct.fib_prop], align 4
@__kstrtab_fib_table_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_table_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_table_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_table_lookup to i32), ptr @__kstrtab_fib_table_lookup, ptr @__kstrtabns_fib_table_lookup }, section "___ksymtab_gpl+fib_table_lookup", align 4
@fib_table_delete.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 1, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fib_table_delete\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Deleting %08x/%d tos=%d t=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@fib_table_flush_external.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@fib_table_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_table_flush.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.14, i8 2, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fib_table_flush\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trie_flush found=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@fib_info_notify_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_notify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip_fib_alias\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip_fib_trie\00", [20 x i8] zeroinitializer }, align 32
@trie_leaf_kmem = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@fib_trie_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fib_trie_seq_start, ptr @fib_trie_seq_stop, ptr @fib_trie_seq_next, ptr @fib_trie_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fib_triestat\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"route\00", [26 x i8] zeroinitializer }, align 32
@fib_route_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fib_route_seq_start, ptr @fib_route_seq_stop, ptr @fib_route_seq_next, ptr @fib_route_seq_show }, [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@fib_find_matching_alias.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fib_valid_key_len.__msg = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid prefix length\00", [42 x i8] zeroinitializer }, align 32
@fib_valid_key_len.__msg.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid prefix for given prefix length\00", [57 x i8] zeroinitializer }, align 32
@fib_find_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_insert_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tnode_new.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str, ptr @.str.24, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tnode_new\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AT %p s=%zu %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@put_child.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@node_push_suffix.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_ignore_linkdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_fib_table_lookup = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/fib.h\00", [37 x i8] zeroinitializer }, align 32
@trace_fib_table_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@nexthop_is_blackhole.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@nexthop_is_blackhole.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_get_nhc_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_get_nhc_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_get_nhc_lookup.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_num_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_fib_nhc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_fib_nhc.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@node_pull_suffix.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@leaf_walk_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@leaf_walk_rcu.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@leaf_walk_rcu.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_free.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@update_suffix.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str, ptr @.str.37, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resize\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"In tnode_resize %p inflate_threshold=%d threshold=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@resize.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@resize.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str, ptr @.str.44, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inflate\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"In inflate\0A\00", [20 x i8] zeroinitializer }, align 32
@inflate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inflate.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@replace.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@replace.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@update_children.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@update_children.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tnode_free_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@halve.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str, ptr @.str.54, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"halve\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In halve\0A\00", [22 x i8] zeroinitializer }, align 32
@halve.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@halve.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@collapse.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@collapse.__warned.56 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__fib_info_notify_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__fib_info_notify_update.__warned.57 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_leaf_notify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fn_trie_dump_leaf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fib_trie_get_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_get_next.__UNIQUE_ID_ddebug734 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str, ptr @.str.59, i8 2, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fib_trie_get_next\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"get_next iter={node=%p index=%d depth=%d}\0A\00", [53 x i8] zeroinitializer }, align 32
@fib_trie_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_get_next.__warned.60 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_seq_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_seq_next.__warned.61 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_trie_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  +-- %pI4/%zu %u %u %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  |-- %pI4\0A\00", [20 x i8] zeroinitializer }, align 32
@fib_trie_seq_show.__warned.64 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  /%zu %s %s\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" tos=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Local:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Main:\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Id %d:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"universe\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"site\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nowhere\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scope=%d\00", [23 x i8] zeroinitializer }, align 32
@rtn_type_names = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"type %u\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNSPEC\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNICAST\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOCAL\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BROADCAST\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ANYCAST\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MULTICAST\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BLACKHOLE\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UNREACHABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PROHIBIT\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"THROW\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NAT\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XRESOLVE\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Basic info: size of leaf: %zd bytes, size of tnode: %zd bytes.\0A\00", [32 x i8] zeroinitializer }, align 32
@fib_triestat_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trie_collect_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09Aver depth:     %u.%02d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Max depth:      %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Leaves:         %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Prefixes:       %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Internal nodes: %u\0A\09\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  %u: %u\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09Pointers: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Null ptrs: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Total size: %u  kB\0A\00", [44 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0ACounters:\0A---------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gets = %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"backtracks = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"semantic match passed = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"semantic match miss = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"null node hit= %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"skipped node resize = %u\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%-127s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Iface\09Destination\09Gateway \09Flags\09RefCnt\09Use\09Metric\09Mask\09\09MTU\09Window\09IRTT\00", [55 x i8] zeroinitializer }, align 32
@fib_route_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.110 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s\09%08X\09%08X\09%04X\09%d\09%u\09%d\09%08X\09%d\09%u\09%u\00", [55 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*\09%08X\09%08X\09%04X\09%d\09%u\09%d\09%08X\09%d\09%u\09%u\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 255]
@__sancov_gen_cov_switch_values.114 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 200, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"sysctl_fib_sync_mem\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 180, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"sysctl_fib_sync_mem_min\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 181, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"sysctl_fib_sync_mem_max\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 182, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1080, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1226, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1452, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1565, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1726, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1978, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2095, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2385, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2389, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"fib_trie_seq_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2823, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3025, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3029, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"fib_route_seq_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3012, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 695, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 723, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1190, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1195, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 388, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 258, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/trace/events/fib.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 13, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 108, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 343, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 855, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 542, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"tnode_free_size\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 173, i32 21 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 637, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2444, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2793, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2802, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2808, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2815, i32 21 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2612, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2614, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2616, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2740, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2746, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2747, i32 29 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2748, i32 29 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2749, i32 29 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2750, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2752, i32 22 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"rtn_type_names\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2757, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2776, i32 21 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2758, i32 17 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2759, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2760, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2761, i32 20 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2762, i32 18 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2763, i32 20 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2764, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2765, i32 22 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2766, i32 19 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2767, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2768, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2769, i32 19 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2626, i32 6 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2548, i32 18 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2550, i32 18 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2552, i32 18 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2555, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2558, i32 18 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2568, i32 20 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2572, i32 18 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2575, i32 18 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2576, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2598, i32 18 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2599, i32 18 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2600, i32 18 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2601, i32 18 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2603, i32 18 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2604, i32 18 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2605, i32 18 }
@___asan_gen_.372 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2089, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2959, i32 19 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2959, i32 31 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2989, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 2991, i32 44 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [23 x i8] c"../net/ipv4/fib_trie.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3001, i32 8 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__ksymtab_fib_alias_hw_flags_set, ptr @__ksymtab_fib_table_lookup, ptr @sysctl_fib_sync_mem, ptr @sysctl_fib_sync_mem_min, ptr @sysctl_fib_sync_mem_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @fib_trie_seq_ops, ptr @.str.17, ptr @.str.18, ptr @fib_route_seq_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @fib_valid_key_len.__msg, ptr @fib_valid_key_len.__msg.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.36, ptr @.str.37, ptr @.str.43, ptr @.str.44, ptr @tnode_free_size, ptr @.str.53, ptr @.str.54, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @rtn_type_names, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_fib_sync_mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_fib_sync_mem_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_fib_sync_mem_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_trie_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_route_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_valid_key_len.__msg to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_valid_key_len.__msg.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tnode_free_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtn_type_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_alias_hw_flags_set(ptr noundef %net, ptr noundef %fri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dst_len.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 3
  %4 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_len.i, align 4
  %tb_id.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 1
  %6 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tb_id.i, align 4
  %call.i158 = tail call ptr @fib_get_table(ptr noundef %net, i32 noundef %7) #12
  %tobool.not.i159 = icmp eq ptr %call.i158, null
  br i1 %tobool.not.i159, label %rcu_read_lock.exit.out_crit_edge, label %if.end.i

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %tb_data.i = getelementptr inbounds %struct.fib_table, ptr %call.i158, i32 0, i32 4
  %8 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb_data.i, align 4
  %dst.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 2
  %10 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond19.i.i.do.body.i.i_crit_edge, %if.end.i
  %index.0.i.i = phi i32 [ 0, %if.end.i ], [ %shr.i.i, %do.cond19.i.i.do.body.i.i_crit_edge ]
  %n.0.i.i = phi ptr [ %9, %if.end.i ], [ %14, %do.cond19.i.i.do.body.i.i_crit_edge ]
  %12 = getelementptr inbounds %struct.key_vector, ptr %n.0.i.i, i32 0, i32 4
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %12, i32 0, i32 %index.0.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %lor.lhs.false.i.i

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i.i

lor.lhs.false.i.i:                                ; preds = %do.body.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end9.i.i_crit_edge

lor.lhs.false.i.i.do.end9.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end9.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b31.i.i = load i1, ptr @fib_find_node.__warned, align 1
  br i1 %.b31.i.i, label %land.lhs.true6.i.i.do.end9.i.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 942, ptr noundef nonnull @.str.4) #12
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true6.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i.i.do.end9.i.i_crit_edge, %lor.lhs.false.i.i.do.end9.i.i_crit_edge, %do.body.i.i.do.end9.i.i_crit_edge
  %tobool11.not.i.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i.i, label %do.end9.i.i.out_crit_edge, label %if.end13.i.i

do.end9.i.i.out_crit_edge:                        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13.i.i:                                     ; preds = %do.end9.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %xor.i.i = xor i32 %16, %11
  %pos.i.i = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pos.i.i, align 4
  %conv.i.i = zext i8 %18 to i32
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  %bits.i.i = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits.i.i, align 1
  %conv15.i.i = zext i8 %20 to i32
  %shr.highbits.i.i = lshr i32 %shr.i.i, %conv15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits.i.i)
  %cmp.not.i.i = icmp eq i32 %shr.highbits.i.i, 0
  br i1 %cmp.not.i.i, label %do.cond19.i.i, label %if.end13.i.i.out_crit_edge

if.end13.i.i.out_crit_edge:                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.cond19.i.i:                                    ; preds = %if.end13.i.i
  %tobool21.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool21.not.i.i, label %do.body.i, label %do.cond19.i.i.do.body.i.i_crit_edge

do.cond19.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i:                                        ; preds = %do.cond19.i.i
  %call5.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i160, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i160:                               ; preds = %do.body.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i160.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i160.do.end.i_crit_edge:            ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i160
  %.b82.i = load i1, ptr @fib_find_matching_alias.__warned, align 1
  br i1 %.b82.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_matching_alias.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1028, ptr noundef nonnull @.str.9) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then11.i, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true.i160.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %21 = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %fa.088.i = load volatile ptr, ptr %21, align 4
  %tobool20.not89.i = icmp eq ptr %fa.088.i, null
  br i1 %tobool20.not89.i, label %do.end.i.out_crit_edge, label %for.body.lr.ph.i

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %23 = trunc i32 %5 to i8
  %24 = sub i8 32, %23
  %tos.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fa.090.i = phi ptr [ %fa.088.i, %for.body.lr.ph.i ], [ %fa.0.i, %for.inc.i.for.body.i_crit_edge ]
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 5
  %25 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fa_slen.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %24)
  %cmp.i = icmp eq i8 %26, %24
  br i1 %cmp.i, label %land.lhs.true24.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true24.i:                                ; preds = %for.body.i
  %tb_id25.i = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 6
  %27 = ptrtoint ptr %tb_id25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tb_id25.i, align 4
  %29 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tb_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp27.i = icmp eq i32 %28, %30
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true24.i.for.inc.i_crit_edge

land.lhs.true24.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %fa_tos.i = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 2
  %31 = ptrtoint ptr %fa_tos.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fa_tos.i, align 4
  %33 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp32.i = icmp eq i8 %32, %34
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true29.i.for.inc.i_crit_edge

land.lhs.true29.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %fa_info.i = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 1
  %35 = ptrtoint ptr %fa_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fa_info.i, align 4
  %37 = ptrtoint ptr %fri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fri, align 4
  %cmp35.i = icmp eq ptr %36, %38
  br i1 %cmp35.i, label %land.lhs.true37.i, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %fa_type.i = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 3
  %39 = ptrtoint ptr %fa_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fa_type.i, align 1
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp40.i = icmp eq i8 %40, %42
  br i1 %cmp40.i, label %do.end, label %land.lhs.true37.i.for.inc.i_crit_edge

land.lhs.true37.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true37.i.for.inc.i_crit_edge, %land.lhs.true34.i.for.inc.i_crit_edge, %land.lhs.true29.i.for.inc.i_crit_edge, %land.lhs.true24.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %43 = ptrtoint ptr %fa.090.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %fa.0.i = load volatile ptr, ptr %fa.090.i, align 4
  %tobool20.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool20.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %land.lhs.true37.i
  %fa_info.i.le = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 1
  %offload = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 8
  %44 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %offload, align 2
  %offload1 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 6
  %46 = ptrtoint ptr %offload1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %offload1, align 2
  %bf.lshr = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %bf.lshr)
  %cmp = icmp eq i8 %45, %bf.lshr
  br i1 %cmp, label %do.end6, label %do.end.do.body34_crit_edge

do.end.do.body34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.end6:                                          ; preds = %do.end
  %trap = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 9
  %47 = ptrtoint ptr %trap to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %trap, align 1
  %bf.lshr11 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr11, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %bf.clear)
  %cmp13 = icmp eq i8 %48, %bf.clear
  br i1 %cmp13, label %do.end18, label %do.end6.do.body34_crit_edge

do.end6.do.body34_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.end18:                                         ; preds = %do.end6
  %offload_failed = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 10
  %49 = ptrtoint ptr %offload_failed to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load volatile i8, ptr %offload_failed, align 4
  %bf.lshr23 = lshr i8 %bf.load, 5
  %bf.clear24 = and i8 %bf.lshr23, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %bf.clear24)
  %cmp26 = icmp eq i8 %50, %bf.clear24
  br i1 %cmp26, label %do.end18.out_crit_edge, label %do.end18.do.body34_crit_edge

do.end18.do.body34_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

do.end18.out_crit_edge:                           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body34:                                        ; preds = %do.end18.do.body34_crit_edge, %do.end6.do.body34_crit_edge, %do.end.do.body34_crit_edge
  %51 = ptrtoint ptr %offload to i32
  call void @__asan_store1_noabort(i32 %51)
  store volatile i8 %bf.lshr, ptr %offload, align 2
  %52 = ptrtoint ptr %offload1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load49 = load i8, ptr %offload1, align 2
  %bf.lshr50 = lshr i8 %bf.load49, 6
  %bf.clear51 = and i8 %bf.lshr50, 1
  %trap52 = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 9
  %53 = ptrtoint ptr %trap52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store volatile i8 %bf.clear51, ptr %trap52, align 1
  %sysctl_fib_notify_on_flag_change = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 117
  %54 = ptrtoint ptr %sysctl_fib_notify_on_flag_change to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sysctl_fib_notify_on_flag_change, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp58 = icmp eq i8 %55, 2
  br i1 %cmp58, label %do.end63, label %do.body34.do.body80_crit_edge

do.body34.do.body80_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80

do.end63:                                         ; preds = %do.body34
  %offload_failed65 = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 10
  %56 = ptrtoint ptr %offload_failed65 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %offload_failed65, align 4
  %58 = ptrtoint ptr %offload1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load68 = load i8, ptr %offload1, align 2
  %bf.lshr69 = lshr i8 %bf.load68, 5
  %bf.clear70 = and i8 %bf.lshr69, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %bf.clear70)
  %cmp72 = icmp eq i8 %57, %bf.clear70
  br i1 %cmp72, label %do.end63.out_crit_edge, label %do.end63.do.body80_crit_edge

do.end63.do.body80_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body80

do.end63.out_crit_edge:                           ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body80:                                        ; preds = %do.end63.do.body80_crit_edge, %do.body34.do.body80_crit_edge
  %59 = ptrtoint ptr %offload1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load82 = load i8, ptr %offload1, align 2
  %bf.lshr83 = lshr i8 %bf.load82, 5
  %bf.clear84 = and i8 %bf.lshr83, 1
  %offload_failed85 = getelementptr inbounds %struct.fib_alias, ptr %fa.090.i, i32 0, i32 10
  %60 = ptrtoint ptr %offload_failed85 to i32
  call void @__asan_store1_noabort(i32 %60)
  store volatile i8 %bf.clear84, ptr %offload_failed85, align 4
  %61 = ptrtoint ptr %sysctl_fib_notify_on_flag_change to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sysctl_fib_notify_on_flag_change, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool92.not = icmp eq i8 %62, 0
  br i1 %tobool92.not, label %do.body80.out_crit_edge, label %if.end94

do.body80.out_crit_edge:                          ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end94:                                         ; preds = %do.body80
  %63 = ptrtoint ptr %fa_info.i.le to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fa_info.i.le, align 4
  %call95 = tail call i32 @fib_nlmsg_size(ptr noundef %64) #12
  %sub.i.i = add i32 %call95, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i161 = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool97.not = icmp eq ptr %call.i.i161, null
  br i1 %tobool97.not, label %if.end94.errout_crit_edge, label %if.end99

if.end94.errout_crit_edge:                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end99:                                         ; preds = %if.end94
  %call100 = tail call i32 @fib_dump_info(ptr noundef nonnull %call.i.i161, i32 noundef 0, i32 noundef 0, i32 noundef 24, ptr noundef %fri, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end131

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call100)
  %cmp104 = icmp eq i32 %call100, -90
  br i1 %cmp104, label %do.end117, label %if.then103.if.end123_crit_edge, !prof !333

if.then103.if.end123_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123

do.end117:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #12
  br label %if.end123

if.end123:                                        ; preds = %do.end117, %if.then103.if.end123_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i161, i32 noundef 0) #12
  br label %errout

if.end131:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i161, ptr noundef %net, i32 noundef 0, i32 noundef 7, ptr noundef null, i32 noundef 2592) #12
  br label %out

errout:                                           ; preds = %if.end123, %if.end94.errout_crit_edge
  %err.0 = phi i32 [ %call100, %if.end123 ], [ -105, %if.end94.errout_crit_edge ]
  tail call void @rtnl_set_sk_err(ptr noundef %net, i32 noundef 7, i32 noundef %err.0) #12
  br label %out

out:                                              ; preds = %errout, %if.end131, %do.body80.out_crit_edge, %do.end63.out_crit_edge, %do.end18.out_crit_edge, %for.inc.i.out_crit_edge, %do.end.i.out_crit_edge, %if.end13.i.i.out_crit_edge, %do.end9.i.i.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i162 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i162, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i165

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i165:                               ; preds = %out
  %call1.i163 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %65 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i169 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i170, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nlmsg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_dump_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_table_insert(ptr noundef %net, ptr nocapture noundef %tb, ptr noundef %cfg, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg, align 4
  %conv = zext i8 %3 to i32
  %sub = sub i8 32, %3
  %fc_tos = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %fc_tos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fc_tos, align 1
  %fc_dst = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 7
  %6 = ptrtoint ptr %fc_dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp.i = icmp ugt i8 %3, 32
  br i1 %cmp.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup265_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body.i.cleanup265_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup265

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp5.not.i = icmp eq i8 %3, 32
  %shl.i = shl i32 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool8.not.i = icmp eq i32 %shl.i, 0
  %or.cond.i = select i1 %cmp5.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %do.body, label %do.body10.i

do.body10.i:                                      ; preds = %if.end3.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg.22) #12
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.cleanup265_crit_edge, label %do.body10.i.return.sink.split.i_crit_edge

do.body10.i.return.sink.split.i_crit_edge:        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body10.i.cleanup265_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup265

return.sink.split.i:                              ; preds = %do.body10.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %fib_valid_key_len.__msg.22.sink.i = phi ptr [ @fib_valid_key_len.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @fib_valid_key_len.__msg.22, %do.body10.i.return.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fib_valid_key_len.__msg.22.sink.i, ptr %extack, align 4
  br label %cleanup265

do.body:                                          ; preds = %if.end3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fib_table_insert.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib_table_insert, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !335

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %9 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tb_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fib_table_insert.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %7, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call8 = tail call ptr @fib_create_info(ptr noundef %cfg, ptr noundef %extack) #12
  %cmp.i422 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i422, label %if.then10, label %do.end.do.body.i423_crit_edge

do.end.do.body.i423_crit_edge:                    ; preds = %do.end
  br label %do.body.i423

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call8 to i32
  br label %cleanup265

do.body.i423:                                     ; preds = %do.cond19.i.do.body.i423_crit_edge, %do.end.do.body.i423_crit_edge
  %index.0.i = phi i32 [ %shr.i, %do.cond19.i.do.body.i423_crit_edge ], [ 0, %do.end.do.body.i423_crit_edge ]
  %n.0.i = phi ptr [ %14, %do.cond19.i.do.body.i423_crit_edge ], [ %1, %do.end.do.body.i423_crit_edge ]
  %12 = getelementptr inbounds %struct.key_vector, ptr %n.0.i, i32 0, i32 4
  %arrayidx.i = getelementptr [0 x ptr], ptr %12, i32 0, i32 %index.0.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %do.body.i423.do.end9.i_crit_edge, label %lor.lhs.false.i

do.body.i423.do.end9.i_crit_edge:                 ; preds = %do.body.i423
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %do.body.i423
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i424 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i424, label %land.lhs.true.i, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @fib_find_node.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 942, ptr noundef nonnull @.str.4) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %lor.lhs.false.i.do.end9.i_crit_edge, %do.body.i423.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i, label %do.end9.i.fib_find_node.exit.thread_crit_edge, label %if.end13.i

do.end9.i.fib_find_node.exit.thread_crit_edge:    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_node.exit.thread

if.end13.i:                                       ; preds = %do.end9.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %xor.i = xor i32 %16, %7
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pos.i, align 4
  %conv.i425 = zext i8 %18 to i32
  %shr.i = lshr i32 %xor.i, %conv.i425
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits.i, align 1
  %conv15.i = zext i8 %20 to i32
  %shr.highbits.i = lshr i32 %shr.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits.i)
  %cmp.not.i = icmp eq i32 %shr.highbits.i, 0
  br i1 %cmp.not.i, label %do.cond19.i, label %if.end13.i.fib_find_node.exit.thread_crit_edge

if.end13.i.fib_find_node.exit.thread_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_node.exit.thread

do.cond19.i:                                      ; preds = %if.end13.i
  %tobool21.not.i = icmp eq i8 %20, 0
  br i1 %tobool21.not.i, label %cond.true, label %do.cond19.i.do.body.i423_crit_edge

do.cond19.i.do.body.i423_crit_edge:               ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i423

fib_find_node.exit.thread:                        ; preds = %if.end13.i.fib_find_node.exit.thread_crit_edge, %do.end9.i.fib_find_node.exit.thread_crit_edge
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %n.0.i, ptr %tp, align 4
  br label %if.end148

cond.true:                                        ; preds = %do.cond19.i
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %n.0.i, ptr %tp, align 4
  %23 = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 4
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %call8, i32 0, i32 13
  %24 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fib_priority, align 4
  %tb_id15 = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %26 = ptrtoint ptr %tb_id15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tb_id15, align 4
  %tobool.not.i426 = icmp eq ptr %23, null
  br i1 %tobool.not.i426, label %cond.true.if.end148_crit_edge, label %for.cond.preheader.i

cond.true.if.end148_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

for.cond.preheader.i:                             ; preds = %cond.true
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %fa.078.i = load ptr, ptr %23, align 4
  %tobool3.not79.i = icmp eq ptr %fa.078.i, null
  br i1 %tobool3.not79.i, label %for.cond.preheader.i.if.end148_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end148_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %fa.080.i = phi ptr [ %fa.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fa.078.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 5
  %29 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fa_slen.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %sub)
  %cmp.i427 = icmp ult i8 %30, %sub
  br i1 %cmp.i427, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %sub)
  %cmp11.not.i = icmp eq i8 %30, %sub
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end7.i.if.end148_crit_edge

if.end7.i.if.end148_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.end14.i:                                       ; preds = %if.end7.i
  %tb_id15.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 6
  %31 = ptrtoint ptr %tb_id15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tb_id15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %27)
  %cmp16.i = icmp ugt i32 %32, %27
  br i1 %cmp16.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end19.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %27)
  %cmp21.not.i.not = icmp eq i32 %32, %27
  br i1 %cmp21.not.i.not, label %if.end27.i, label %if.end19.i.if.end148_crit_edge

if.end19.i.if.end148_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.end27.i:                                       ; preds = %if.end19.i
  %fa_tos.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 2
  %33 = ptrtoint ptr %fa_tos.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fa_tos.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %5)
  %cmp30.i = icmp ugt i8 %34, %5
  br i1 %cmp30.i, label %if.end27.i.for.inc.i_crit_edge, label %if.end33.i

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end33.i:                                       ; preds = %if.end27.i
  %fa_info.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 1
  %35 = ptrtoint ptr %fa_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fa_info.i, align 4
  %fib_priority.i = getelementptr inbounds %struct.fib_info, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %fib_priority.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fib_priority.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %25)
  %cmp34.not.i = icmp uge i32 %38, %25
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %5)
  %cmp39.i = icmp ult i8 %34, %5
  %or.cond.i428 = select i1 %cmp34.not.i, i1 true, i1 %cmp39.i
  br i1 %or.cond.i428, label %land.lhs.true, label %if.end33.i.for.inc.i_crit_edge

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end33.i.for.inc.i_crit_edge, %if.end27.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %fa.080.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %fa.0.i = load ptr, ptr %fa.080.i, align 4
  %tobool3.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool3.not.i, label %for.inc.i.if.end148_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end148_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

land.lhs.true:                                    ; preds = %if.end33.i
  %fa_slen.i.le = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 5
  %fa_tos.i.le = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 2
  %fa_info.i.le = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 1
  %40 = ptrtoint ptr %fa_tos.i.le to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fa_tos.i.le, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %5)
  %cmp = icmp eq i8 %41, %5
  br i1 %cmp, label %land.lhs.true21, label %land.lhs.true.if.end148_crit_edge

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

land.lhs.true21:                                  ; preds = %land.lhs.true
  %42 = ptrtoint ptr %fa_info.i.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fa_info.i.le, align 4
  %fib_priority22 = getelementptr inbounds %struct.fib_info, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %fib_priority22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fib_priority22, align 4
  %46 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fib_priority, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp24 = icmp eq i32 %45, %47
  br i1 %cmp24, label %if.then26, label %land.lhs.true21.if.end148_crit_edge

land.lhs.true21.if.end148_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

if.then26:                                        ; preds = %land.lhs.true21
  %fc_nlflags = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 19
  %48 = ptrtoint ptr %fc_nlflags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fc_nlflags, align 4
  %and = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %for.body.lr.ph, label %if.then26.out_crit_edge

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %if.then26
  %fc_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fa.0521 = phi ptr [ %fa.080.i, %for.body.lr.ph ], [ %67, %for.inc.for.body_crit_edge ]
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0521, i32 0, i32 5
  %50 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fa_slen, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %sub)
  %cmp36.not = icmp eq i8 %51, %sub
  br i1 %cmp36.not, label %lor.lhs.false, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body
  %tb_id38 = getelementptr inbounds %struct.fib_alias, ptr %fa.0521, i32 0, i32 6
  %52 = ptrtoint ptr %tb_id38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tb_id38, align 4
  %54 = ptrtoint ptr %tb_id15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tb_id15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp40.not = icmp eq i32 %53, %55
  br i1 %cmp40.not, label %lor.lhs.false42, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %fa_tos43 = getelementptr inbounds %struct.fib_alias, ptr %fa.0521, i32 0, i32 2
  %56 = ptrtoint ptr %fa_tos43 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fa_tos43, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %5)
  %cmp46.not = icmp eq i8 %57, %5
  br i1 %cmp46.not, label %if.end49, label %lor.lhs.false42.for.end_crit_edge

lor.lhs.false42.for.end_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end49:                                         ; preds = %lor.lhs.false42
  %fa_info50 = getelementptr inbounds %struct.fib_alias, ptr %fa.0521, i32 0, i32 1
  %58 = ptrtoint ptr %fa_info50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fa_info50, align 4
  %fib_priority51 = getelementptr inbounds %struct.fib_info, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %fib_priority51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fib_priority51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %45)
  %cmp53.not = icmp eq i32 %61, %45
  br i1 %cmp53.not, label %if.end56, label %if.end49.for.end_crit_edge

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end56:                                         ; preds = %if.end49
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0521, i32 0, i32 3
  %62 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fa_type, align 1
  %64 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fc_type, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp59 = icmp eq i8 %63, %65
  %cmp63 = icmp eq ptr %59, %call8
  %or.cond = select i1 %cmp59, i1 %cmp63, i1 false
  br i1 %or.cond, label %if.end56.for.end_crit_edge, label %for.inc

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end56
  %66 = ptrtoint ptr %fa.0521 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fa.0521, align 4
  %tobool33.not = icmp eq ptr %67, null
  br i1 %tobool33.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end56.for.end_crit_edge, %if.end49.for.end_crit_edge, %lor.lhs.false42.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge
  %fa.0.lcssa = phi ptr [ null, %for.inc.for.end_crit_edge ], [ %fa.0521, %lor.lhs.false42.for.end_crit_edge ], [ %fa.0521, %lor.lhs.false.for.end_crit_edge ], [ %fa.0521, %for.body.for.end_crit_edge ], [ %fa.0521, %if.end49.for.end_crit_edge ], [ %fa.0521, %if.end56.for.end_crit_edge ]
  %fa_match.0 = phi ptr [ null, %for.inc.for.end_crit_edge ], [ null, %lor.lhs.false42.for.end_crit_edge ], [ null, %lor.lhs.false.for.end_crit_edge ], [ null, %for.body.for.end_crit_edge ], [ null, %if.end49.for.end_crit_edge ], [ %fa.0521, %if.end56.for.end_crit_edge ]
  %and75 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %tobool133.not = icmp eq ptr %fa_match.0, null
  br i1 %tobool76.not, label %if.end132, label %if.then77

if.then77:                                        ; preds = %for.end
  br i1 %tobool133.not, label %if.end86, label %if.then81

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %cmp82 = icmp eq ptr %fa.080.i, %fa_match.0
  %spec.select418 = select i1 %cmp82, i32 0, i32 -17
  br label %out

if.end86:                                         ; preds = %if.then77
  %68 = load ptr, ptr @fn_alias_kmem, align 4
  %call87 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %68, i32 noundef 3264) #12
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end86.out_crit_edge, label %if.end90

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end90:                                         ; preds = %if.end86
  %69 = ptrtoint ptr %fa_info.i.le to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fa_info.i.le, align 4
  %71 = ptrtoint ptr %fa_tos.i.le to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %fa_tos.i.le, align 4
  %fa_tos93 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 2
  %73 = ptrtoint ptr %fa_tos93 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %fa_tos93, align 4
  %fa_info94 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 1
  %74 = ptrtoint ptr %fa_info94 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call8, ptr %fa_info94, align 8
  %fc_type95 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  %75 = ptrtoint ptr %fc_type95 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fc_type95, align 4
  %fa_type96 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 3
  %77 = ptrtoint ptr %fa_type96 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %fa_type96, align 1
  %fa_state = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 4
  %78 = ptrtoint ptr %fa_state to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fa_state, align 2
  %and98 = and i8 %79, -2
  %fa_state100 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 4
  %80 = ptrtoint ptr %fa_state100 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %and98, ptr %fa_state100, align 2
  %81 = ptrtoint ptr %fa_slen.i.le to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fa_slen.i.le, align 1
  %fa_slen102 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 5
  %83 = ptrtoint ptr %fa_slen102 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %fa_slen102, align 1
  %84 = ptrtoint ptr %tb_id15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tb_id15, align 4
  %tb_id104 = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 6
  %86 = ptrtoint ptr %tb_id104 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tb_id104, align 8
  %fa_default = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 7
  %87 = ptrtoint ptr %fa_default to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %fa_default, align 4
  %offload = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 8
  %88 = ptrtoint ptr %offload to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %offload, align 2
  %trap = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 9
  %89 = ptrtoint ptr %trap to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %trap, align 1
  %offload_failed = getelementptr inbounds %struct.fib_alias, ptr %call87, i32 0, i32 10
  %90 = ptrtoint ptr %offload_failed to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %offload_failed, align 8
  %91 = ptrtoint ptr %fa.080.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fa.080.i, align 4
  %93 = ptrtoint ptr %call87 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %call87, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %fa.080.i, i32 0, i32 1
  %94 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pprev.i, align 4
  %pprev5.i = getelementptr inbounds %struct.hlist_node, ptr %call87, i32 0, i32 1
  %96 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %95, ptr %pprev5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %97 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pprev5.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %call87, ptr %98, align 4
  %tobool.not.i430 = icmp eq ptr %92, null
  br i1 %tobool.not.i430, label %if.end90.for.cond.preheader.i434_crit_edge, label %do.body50.i

if.end90.for.cond.preheader.i434_crit_edge:       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i434

do.body50.i:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %call87 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call87, align 8
  %pprev53.i = getelementptr inbounds %struct.hlist_node, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %pprev53.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %call87, ptr %pprev53.i, align 4
  br label %for.cond.preheader.i434

for.cond.preheader.i434:                          ; preds = %do.body50.i, %if.end90.for.cond.preheader.i434_crit_edge
  %103 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 4
  %104 = ptrtoint ptr %fa_slen.i.le to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fa_slen.i.le, align 1
  %106 = ptrtoint ptr %tb_id15 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tb_id15, align 4
  %108 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %108)
  %fa.078.i432 = load ptr, ptr %23, align 4
  %tobool3.not79.i433 = icmp eq ptr %fa.078.i432, null
  br i1 %tobool3.not79.i433, label %for.cond.preheader.i434.fib_find_alias.exit452_crit_edge, label %for.cond.preheader.i434.for.body.i438_crit_edge

for.cond.preheader.i434.for.body.i438_crit_edge:  ; preds = %for.cond.preheader.i434
  br label %for.body.i438

for.cond.preheader.i434.fib_find_alias.exit452_crit_edge: ; preds = %for.cond.preheader.i434
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit452

for.body.i438:                                    ; preds = %for.inc.i448.for.body.i438_crit_edge, %for.cond.preheader.i434.for.body.i438_crit_edge
  %fa.080.i435 = phi ptr [ %fa.0.i446, %for.inc.i448.for.body.i438_crit_edge ], [ %fa.078.i432, %for.cond.preheader.i434.for.body.i438_crit_edge ]
  %fa_slen.i436 = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i435, i32 0, i32 5
  %109 = ptrtoint ptr %fa_slen.i436 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fa_slen.i436, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %105)
  %cmp.i437 = icmp ult i8 %110, %105
  br i1 %cmp.i437, label %for.body.i438.for.inc.i448_crit_edge, label %if.end7.i440

for.body.i438.for.inc.i448_crit_edge:             ; preds = %for.body.i438
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i448

if.end7.i440:                                     ; preds = %for.body.i438
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %105)
  %cmp11.not.i439 = icmp eq i8 %110, %105
  br i1 %cmp11.not.i439, label %if.end14.i443, label %if.end7.i440.fib_find_alias.exit452_crit_edge

if.end7.i440.fib_find_alias.exit452_crit_edge:    ; preds = %if.end7.i440
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit452

if.end14.i443:                                    ; preds = %if.end7.i440
  %tb_id15.i441 = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i435, i32 0, i32 6
  %111 = ptrtoint ptr %tb_id15.i441 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tb_id15.i441, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %107)
  %cmp16.i442 = icmp ugt i32 %112, %107
  br i1 %cmp16.i442, label %if.end14.i443.for.inc.i448_crit_edge, label %if.end19.i445

if.end14.i443.for.inc.i448_crit_edge:             ; preds = %if.end14.i443
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i448

if.end19.i445:                                    ; preds = %if.end14.i443
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %107)
  %cmp21.not.i444.not = icmp eq i32 %112, %107
  %.mux.le.i449 = select i1 %cmp21.not.i444.not, ptr %fa.080.i435, ptr null
  br label %fib_find_alias.exit452

for.inc.i448:                                     ; preds = %if.end14.i443.for.inc.i448_crit_edge, %for.body.i438.for.inc.i448_crit_edge
  %113 = ptrtoint ptr %fa.080.i435 to i32
  call void @__asan_load4_noabort(i32 %113)
  %fa.0.i446 = load ptr, ptr %fa.080.i435, align 4
  %tobool3.not.i447 = icmp eq ptr %fa.0.i446, null
  br i1 %tobool3.not.i447, label %for.inc.i448.fib_find_alias.exit452_crit_edge, label %for.inc.i448.for.body.i438_crit_edge

for.inc.i448.for.body.i438_crit_edge:             ; preds = %for.inc.i448
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i438

for.inc.i448.fib_find_alias.exit452_crit_edge:    ; preds = %for.inc.i448
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit452

fib_find_alias.exit452:                           ; preds = %for.inc.i448.fib_find_alias.exit452_crit_edge, %if.end19.i445, %if.end7.i440.fib_find_alias.exit452_crit_edge, %for.cond.preheader.i434.fib_find_alias.exit452_crit_edge
  %retval.0.i451 = phi ptr [ %.mux.le.i449, %if.end19.i445 ], [ null, %for.cond.preheader.i434.fib_find_alias.exit452_crit_edge ], [ null, %for.inc.i448.fib_find_alias.exit452_crit_edge ], [ null, %if.end7.i440.fib_find_alias.exit452_crit_edge ]
  %cmp110 = icmp eq ptr %retval.0.i451, %call87
  br i1 %cmp110, label %if.then112, label %fib_find_alias.exit452.if.end120_crit_edge

fib_find_alias.exit452.if.end120_crit_edge:       ; preds = %fib_find_alias.exit452
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then112:                                       ; preds = %fib_find_alias.exit452
  %call114 = tail call fastcc i32 @call_fib_entry_notifiers(ptr noundef %net, i32 noundef 0, i32 noundef %7, i32 noundef %conv, ptr noundef nonnull %call87, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then112.if.end120_crit_edge, label %if.then116

if.then112.if.end120_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then116:                                       ; preds = %if.then112
  %114 = ptrtoint ptr %call87 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call87, align 8
  %116 = ptrtoint ptr %fa.080.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %fa.080.i, align 4
  %117 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pprev5.i, align 4
  %119 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %118, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !336
  %120 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pprev.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %fa.080.i, ptr %121, align 4
  %tobool.not.i455 = icmp eq ptr %115, null
  br i1 %tobool.not.i455, label %if.then116.cleanup144_crit_edge, label %do.body50.i457

if.then116.cleanup144_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup144

do.body50.i457:                                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %fa.080.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fa.080.i, align 4
  %pprev53.i456 = getelementptr inbounds %struct.hlist_node, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %pprev53.i456 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %fa.080.i, ptr %pprev53.i456, align 4
  br label %cleanup144

if.end120:                                        ; preds = %if.then112.if.end120_crit_edge, %fib_find_alias.exit452.if.end120_crit_edge
  %126 = ptrtoint ptr %tb_id15 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tb_id15, align 4
  %fc_nlinfo = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %7, ptr noundef nonnull %call87, i32 noundef %conv, i32 noundef %127, ptr noundef %fc_nlinfo, i32 noundef 256) #12
  %rcu.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__alias_free_mem) #12
  tail call void @fib_release_info(ptr noundef %70) #12
  %128 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool126.not = icmp eq i8 %128, 0
  br i1 %tobool126.not, label %if.end120.cleanup265_crit_edge, label %if.then127

if.end120.cleanup265_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup265

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %nl_net = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20, i32 1
  %129 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nl_net, align 4
  tail call void @rt_cache_flush(ptr noundef %130) #12
  br label %cleanup265

if.end132:                                        ; preds = %for.end
  br i1 %tobool133.not, label %cleanup144.thread506, label %if.end132.out_crit_edge

if.end132.out_crit_edge:                          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup144.thread506:                             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  %and137 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  %cond.fa.0 = select i1 %tobool138.not, ptr %fa.080.i, ptr %fa.0.lcssa
  %131 = or i32 %and137, 1024
  br label %if.end148

cleanup144:                                       ; preds = %do.body50.i457, %if.then116.cleanup144_crit_edge
  %132 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev5.i, align 4
  br label %out_free_new_fa

if.end148:                                        ; preds = %cleanup144.thread506, %land.lhs.true21.if.end148_crit_edge, %land.lhs.true.if.end148_crit_edge, %for.inc.i.if.end148_crit_edge, %if.end19.i.if.end148_crit_edge, %if.end7.i.if.end148_crit_edge, %for.cond.preheader.i.if.end148_crit_edge, %cond.true.if.end148_crit_edge, %fib_find_node.exit.thread
  %n.1.i485492 = phi ptr [ %14, %land.lhs.true21.if.end148_crit_edge ], [ %14, %land.lhs.true.if.end148_crit_edge ], [ %14, %cleanup144.thread506 ], [ %14, %for.cond.preheader.i.if.end148_crit_edge ], [ %14, %cond.true.if.end148_crit_edge ], [ null, %fib_find_node.exit.thread ], [ %14, %if.end7.i.if.end148_crit_edge ], [ %14, %for.inc.i.if.end148_crit_edge ], [ %14, %if.end19.i.if.end148_crit_edge ]
  %tobool14.not486491 = phi i1 [ false, %land.lhs.true21.if.end148_crit_edge ], [ false, %land.lhs.true.if.end148_crit_edge ], [ false, %cleanup144.thread506 ], [ false, %for.cond.preheader.i.if.end148_crit_edge ], [ false, %cond.true.if.end148_crit_edge ], [ true, %fib_find_node.exit.thread ], [ false, %if.end7.i.if.end148_crit_edge ], [ false, %for.inc.i.if.end148_crit_edge ], [ false, %if.end19.i.if.end148_crit_edge ]
  %nlflags.2 = phi i32 [ 1536, %land.lhs.true21.if.end148_crit_edge ], [ 1536, %land.lhs.true.if.end148_crit_edge ], [ %131, %cleanup144.thread506 ], [ 1536, %for.cond.preheader.i.if.end148_crit_edge ], [ 1536, %cond.true.if.end148_crit_edge ], [ 1536, %fib_find_node.exit.thread ], [ 1536, %if.end7.i.if.end148_crit_edge ], [ 1536, %for.inc.i.if.end148_crit_edge ], [ 1536, %if.end19.i.if.end148_crit_edge ]
  %fa.3 = phi ptr [ %fa.080.i, %land.lhs.true21.if.end148_crit_edge ], [ %fa.080.i, %land.lhs.true.if.end148_crit_edge ], [ %cond.fa.0, %cleanup144.thread506 ], [ null, %for.cond.preheader.i.if.end148_crit_edge ], [ null, %cond.true.if.end148_crit_edge ], [ null, %fib_find_node.exit.thread ], [ null, %if.end7.i.if.end148_crit_edge ], [ null, %for.inc.i.if.end148_crit_edge ], [ null, %if.end19.i.if.end148_crit_edge ]
  %fc_nlflags149 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 19
  %133 = ptrtoint ptr %fc_nlflags149 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fc_nlflags149, align 4
  %and150 = and i32 %134, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end148.out_crit_edge, label %if.end153

if.end148.out_crit_edge:                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end153:                                        ; preds = %if.end148
  %135 = load ptr, ptr @fn_alias_kmem, align 4
  %call157 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %135, i32 noundef 3264) #12
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.end153.out_crit_edge, label %if.end160

if.end153.out_crit_edge:                          ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end160:                                        ; preds = %if.end153
  %fa_info161 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 1
  %136 = ptrtoint ptr %fa_info161 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call8, ptr %fa_info161, align 8
  %fa_tos162 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 2
  %137 = ptrtoint ptr %fa_tos162 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %5, ptr %fa_tos162, align 4
  %fc_type163 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  %138 = ptrtoint ptr %fc_type163 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %fc_type163, align 4
  %fa_type164 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 3
  %140 = ptrtoint ptr %fa_type164 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %fa_type164, align 1
  %fa_state165 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 4
  %141 = ptrtoint ptr %fa_state165 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %fa_state165, align 2
  %fa_slen166 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 5
  %142 = ptrtoint ptr %fa_slen166 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %sub, ptr %fa_slen166, align 1
  %tb_id167 = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %143 = ptrtoint ptr %tb_id167 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tb_id167, align 4
  %tb_id168 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 6
  %145 = ptrtoint ptr %tb_id168 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %tb_id168, align 8
  %fa_default169 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 7
  %146 = ptrtoint ptr %fa_default169 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -1, ptr %fa_default169, align 4
  %offload170 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 8
  %147 = ptrtoint ptr %offload170 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %offload170, align 2
  %trap171 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 9
  %148 = ptrtoint ptr %trap171 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %trap171, align 1
  %offload_failed172 = getelementptr inbounds %struct.fib_alias, ptr %call157, i32 0, i32 10
  %149 = ptrtoint ptr %offload_failed172 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %offload_failed172, align 8
  %150 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tp, align 4
  %call173 = tail call fastcc i32 @fib_insert_alias(ptr noundef %1, ptr noundef %151, ptr noundef %n.1.i485492, ptr noundef nonnull %call157, ptr noundef %fa.3, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end160.out_free_new_fa_crit_edge

if.end160.out_free_new_fa_crit_edge:              ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_new_fa

if.end176:                                        ; preds = %if.end160
  br i1 %tobool14.not486491, label %cond.false179, label %if.end176.cond.end181_crit_edge

if.end176.cond.end181_crit_edge:                  ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end181

cond.false179:                                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  %call180 = call fastcc ptr @fib_find_node(ptr noundef %1, ptr noundef nonnull %tp, i32 noundef %7)
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false179, %if.end176.cond.end181_crit_edge
  %cond182 = phi ptr [ %call180, %cond.false179 ], [ %n.1.i485492, %if.end176.cond.end181_crit_edge ]
  %tobool183.not = icmp eq ptr %cond182, null
  br i1 %tobool183.not, label %land.rhs, label %if.end238.critedge

land.rhs:                                         ; preds = %cond.end181
  %.b417 = load i1, ptr @fib_table_insert.__already_done, align 1
  br i1 %.b417, label %land.rhs.out_free_new_fa_crit_edge, label %if.then202, !prof !337

land.rhs.out_free_new_fa_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_new_fa

if.then202:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1375, i32 noundef 9, ptr noundef null) #12
  br label %out_free_new_fa

if.end238.critedge:                               ; preds = %cond.end181
  %152 = getelementptr inbounds %struct.key_vector, ptr %cond182, i32 0, i32 4
  %153 = ptrtoint ptr %fa_slen166 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %fa_slen166, align 1
  %155 = ptrtoint ptr %tb_id167 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tb_id167, align 4
  %tobool.not.i459 = icmp eq ptr %152, null
  br i1 %tobool.not.i459, label %if.end238.critedge.fib_find_alias.exit480_crit_edge, label %for.cond.preheader.i462

if.end238.critedge.fib_find_alias.exit480_crit_edge: ; preds = %if.end238.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit480

for.cond.preheader.i462:                          ; preds = %if.end238.critedge
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %157)
  %fa.078.i460 = load ptr, ptr %152, align 4
  %tobool3.not79.i461 = icmp eq ptr %fa.078.i460, null
  br i1 %tobool3.not79.i461, label %for.cond.preheader.i462.fib_find_alias.exit480_crit_edge, label %for.cond.preheader.i462.for.body.i466_crit_edge

for.cond.preheader.i462.for.body.i466_crit_edge:  ; preds = %for.cond.preheader.i462
  br label %for.body.i466

for.cond.preheader.i462.fib_find_alias.exit480_crit_edge: ; preds = %for.cond.preheader.i462
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit480

for.body.i466:                                    ; preds = %for.inc.i476.for.body.i466_crit_edge, %for.cond.preheader.i462.for.body.i466_crit_edge
  %fa.080.i463 = phi ptr [ %fa.0.i474, %for.inc.i476.for.body.i466_crit_edge ], [ %fa.078.i460, %for.cond.preheader.i462.for.body.i466_crit_edge ]
  %fa_slen.i464 = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i463, i32 0, i32 5
  %158 = ptrtoint ptr %fa_slen.i464 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %fa_slen.i464, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %154)
  %cmp.i465 = icmp ult i8 %159, %154
  br i1 %cmp.i465, label %for.body.i466.for.inc.i476_crit_edge, label %if.end7.i468

for.body.i466.for.inc.i476_crit_edge:             ; preds = %for.body.i466
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i476

if.end7.i468:                                     ; preds = %for.body.i466
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %154)
  %cmp11.not.i467 = icmp eq i8 %159, %154
  br i1 %cmp11.not.i467, label %if.end14.i471, label %if.end7.i468.fib_find_alias.exit480_crit_edge

if.end7.i468.fib_find_alias.exit480_crit_edge:    ; preds = %if.end7.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit480

if.end14.i471:                                    ; preds = %if.end7.i468
  %tb_id15.i469 = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i463, i32 0, i32 6
  %160 = ptrtoint ptr %tb_id15.i469 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tb_id15.i469, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %156)
  %cmp16.i470 = icmp ugt i32 %161, %156
  br i1 %cmp16.i470, label %if.end14.i471.for.inc.i476_crit_edge, label %if.end19.i473

if.end14.i471.for.inc.i476_crit_edge:             ; preds = %if.end14.i471
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i476

if.end19.i473:                                    ; preds = %if.end14.i471
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %156)
  %cmp21.not.i472.not = icmp eq i32 %161, %156
  %.mux.le.i477 = select i1 %cmp21.not.i472.not, ptr %fa.080.i463, ptr null
  br label %fib_find_alias.exit480

for.inc.i476:                                     ; preds = %if.end14.i471.for.inc.i476_crit_edge, %for.body.i466.for.inc.i476_crit_edge
  %162 = ptrtoint ptr %fa.080.i463 to i32
  call void @__asan_load4_noabort(i32 %162)
  %fa.0.i474 = load ptr, ptr %fa.080.i463, align 4
  %tobool3.not.i475 = icmp eq ptr %fa.0.i474, null
  br i1 %tobool3.not.i475, label %for.inc.i476.fib_find_alias.exit480_crit_edge, label %for.inc.i476.for.body.i466_crit_edge

for.inc.i476.for.body.i466_crit_edge:             ; preds = %for.inc.i476
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i466

for.inc.i476.fib_find_alias.exit480_crit_edge:    ; preds = %for.inc.i476
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit480

fib_find_alias.exit480:                           ; preds = %for.inc.i476.fib_find_alias.exit480_crit_edge, %if.end19.i473, %if.end7.i468.fib_find_alias.exit480_crit_edge, %for.cond.preheader.i462.fib_find_alias.exit480_crit_edge, %if.end238.critedge.fib_find_alias.exit480_crit_edge
  %retval.0.i479 = phi ptr [ null, %if.end238.critedge.fib_find_alias.exit480_crit_edge ], [ %.mux.le.i477, %if.end19.i473 ], [ null, %for.cond.preheader.i462.fib_find_alias.exit480_crit_edge ], [ null, %for.inc.i476.fib_find_alias.exit480_crit_edge ], [ null, %if.end7.i468.fib_find_alias.exit480_crit_edge ]
  %cmp242 = icmp eq ptr %retval.0.i479, %call157
  br i1 %cmp242, label %if.then244, label %fib_find_alias.exit480.if.end254_crit_edge

fib_find_alias.exit480.if.end254_crit_edge:       ; preds = %fib_find_alias.exit480
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end254

if.then244:                                       ; preds = %fib_find_alias.exit480
  %call247 = tail call fastcc i32 @call_fib_entry_notifiers(ptr noundef %net, i32 noundef 0, i32 noundef %7, i32 noundef %conv, ptr noundef nonnull %call157, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then244.if.end254_crit_edge, label %out_remove_new_fa

if.then244.if.end254_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end254

if.end254:                                        ; preds = %if.then244.if.end254_crit_edge, %fib_find_alias.exit480.if.end254_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool255.not = icmp eq i8 %3, 0
  br i1 %tobool255.not, label %if.then256, label %if.end254.if.end257_crit_edge

if.end254.if.end257_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end257

if.then256:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #14
  %tb_num_default = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 2
  %163 = ptrtoint ptr %tb_num_default to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tb_num_default, align 4
  %inc = add i32 %164, 1
  store i32 %inc, ptr %tb_num_default, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end254.if.end257_crit_edge
  %fc_nlinfo258 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20
  %nl_net259 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20, i32 1
  %165 = ptrtoint ptr %nl_net259 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %nl_net259, align 4
  tail call void @rt_cache_flush(ptr noundef %166) #12
  %167 = ptrtoint ptr %tb_id168 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tb_id168, align 8
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %7, ptr noundef nonnull %call157, i32 noundef %conv, i32 noundef %168, ptr noundef %fc_nlinfo258, i32 noundef %nlflags.2) #12
  br label %cleanup265

out_remove_new_fa:                                ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tp, align 4
  tail call fastcc void @fib_remove_alias(ptr noundef %1, ptr noundef %170, ptr noundef nonnull %cond182, ptr noundef nonnull %call157)
  br label %out_free_new_fa

out_free_new_fa:                                  ; preds = %out_remove_new_fa, %if.then202, %land.rhs.out_free_new_fa_crit_edge, %if.end160.out_free_new_fa_crit_edge, %cleanup144
  %err.4 = phi i32 [ %call114, %cleanup144 ], [ %call173, %if.end160.out_free_new_fa_crit_edge ], [ %call247, %out_remove_new_fa ], [ 0, %if.then202 ], [ 0, %land.rhs.out_free_new_fa_crit_edge ]
  %new_fa.2 = phi ptr [ %call87, %cleanup144 ], [ %call157, %if.end160.out_free_new_fa_crit_edge ], [ %call157, %out_remove_new_fa ], [ %call157, %if.then202 ], [ %call157, %land.rhs.out_free_new_fa_crit_edge ]
  %171 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %171, ptr noundef %new_fa.2) #12
  br label %out

out:                                              ; preds = %out_free_new_fa, %if.end153.out_crit_edge, %if.end148.out_crit_edge, %if.end132.out_crit_edge, %if.end86.out_crit_edge, %if.then81, %if.then26.out_crit_edge
  %err.5 = phi i32 [ %err.4, %out_free_new_fa ], [ -105, %if.end153.out_crit_edge ], [ -2, %if.end148.out_crit_edge ], [ -17, %if.end132.out_crit_edge ], [ -105, %if.end86.out_crit_edge ], [ %spec.select418, %if.then81 ], [ -17, %if.then26.out_crit_edge ]
  tail call void @fib_release_info(ptr noundef %call8) #12
  br label %cleanup265

cleanup265:                                       ; preds = %out, %if.end257, %if.then127, %if.end120.cleanup265_crit_edge, %if.then10, %return.sink.split.i, %do.body10.i.cleanup265_crit_edge, %do.body.i.cleanup265_crit_edge
  %retval.0 = phi i32 [ 0, %if.end257 ], [ %11, %if.then10 ], [ %err.5, %out ], [ -22, %do.body.i.cleanup265_crit_edge ], [ -22, %do.body10.i.cleanup265_crit_edge ], [ -22, %return.sink.split.i ], [ 0, %if.then127 ], [ 0, %if.end120.cleanup265_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_create_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib_find_node(ptr noundef %t, ptr nocapture noundef writeonly %tp, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond19.do.body_crit_edge, %entry
  %index.0 = phi i32 [ 0, %entry ], [ %shr, %do.cond19.do.body_crit_edge ]
  %n.0 = phi ptr [ %t, %entry ], [ %2, %do.cond19.do.body_crit_edge ]
  %0 = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 4
  %arrayidx = getelementptr [0 x ptr], ptr %0, i32 0, i32 %index.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %do.body.do.end9_crit_edge, label %lor.lhs.false

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

lor.lhs.false:                                    ; preds = %do.body
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @fib_find_node.__warned, align 1
  br i1 %.b31, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 942, ptr noundef nonnull @.str.4) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %do.body.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %do.end9.do.end22_crit_edge, label %if.end13

do.end9.do.end22_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

if.end13:                                         ; preds = %do.end9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %xor = xor i32 %4, %key
  %pos = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pos, align 4
  %conv = zext i8 %6 to i32
  %shr = lshr i32 %xor, %conv
  %bits = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits, align 1
  %conv15 = zext i8 %8 to i32
  %shr.highbits = lshr i32 %shr, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits)
  %cmp.not = icmp eq i32 %shr.highbits, 0
  br i1 %cmp.not, label %do.cond19, label %if.end13.do.end22_crit_edge

if.end13.do.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.cond19:                                        ; preds = %if.end13
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %do.cond19.do.end22_crit_edge, label %do.cond19.do.body_crit_edge

do.cond19.do.body_crit_edge:                      ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond19.do.end22_crit_edge:                     ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.end22:                                         ; preds = %do.cond19.do.end22_crit_edge, %if.end13.do.end22_crit_edge, %do.end9.do.end22_crit_edge
  %n.1 = phi ptr [ %2, %do.cond19.do.end22_crit_edge ], [ null, %do.end9.do.end22_crit_edge ], [ null, %if.end13.do.end22_crit_edge ]
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %n.0, ptr %tp, align 4
  ret ptr %n.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @call_fib_entry_notifiers(ptr noundef %net, i32 noundef %event_type, i32 noundef %dst, i32 noundef %dst_len, ptr nocapture noundef readonly %fa, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fib_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #12
  %0 = getelementptr inbounds i8, ptr %info, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %info, align 4
  %extack2 = getelementptr inbounds %struct.fib_notifier_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %extack2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %extack, ptr %extack2, align 4
  %dst3 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %dst3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dst, ptr %dst3, align 4
  %dst_len4 = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %dst_len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dst_len, ptr %dst_len4, align 4
  %fi = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 3
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 1
  %6 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fa_info, align 4
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %fi, align 4
  %tos = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 4
  %fa_tos = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 2
  %9 = ptrtoint ptr %fa_tos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fa_tos, align 4
  %11 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tos, align 4
  %type = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 5
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 3
  %12 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fa_type, align 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %type, align 1
  %tb_id = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info, i32 0, i32 6
  %tb_id5 = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 6
  %15 = ptrtoint ptr %tb_id5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tb_id5, align 4
  %17 = ptrtoint ptr %tb_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tb_id, align 4
  %call = call i32 @call_fib4_notifiers(ptr noundef %net, i32 noundef %event_type, ptr noundef nonnull %info) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtmsg_fib(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_release_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_insert_alias(ptr nocapture noundef readonly %t, ptr noundef %tp, ptr noundef %l, ptr noundef %new, ptr noundef %fa, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %l, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @fib_insert_node(ptr noundef %t, ptr noundef %tp, ptr noundef %new, i32 noundef %key)
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %fa, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %fa, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %pprev3.i = getelementptr inbounds %struct.hlist_node, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %pprev3.i, align 4
  %3 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fa, ptr %new, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !338
  %4 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev3.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %new, ptr %5, align 4
  br label %if.end41.sink.split

if.else:                                          ; preds = %if.end
  %7 = getelementptr inbounds %struct.key_vector, ptr %l, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool4.not = icmp eq ptr %9, null
  %tb_id = getelementptr inbounds %struct.fib_alias, ptr %new, i32 0, i32 6
  br i1 %tobool4.not, label %if.end41.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %new, i32 0, i32 5
  %10 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fa_slen, align 1
  %fa_slen797 = getelementptr inbounds %struct.fib_alias, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %fa_slen797 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fa_slen797, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp98 = icmp ult i8 %11, %13
  br i1 %cmp98, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.if.end11_crit_edge

for.body.lr.ph.if.end11_crit_edge:                ; preds = %for.body.lr.ph
  br label %if.end11

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end22
  %fa_slen7 = getelementptr inbounds %struct.fib_alias, ptr %22, i32 0, i32 5
  %14 = ptrtoint ptr %fa_slen7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fa_slen7, align 1
  %cmp = icmp ult i8 %11, %15
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %for.body.lr.ph.if.end11_crit_edge
  %16 = phi i8 [ %15, %for.body.if.end11_crit_edge ], [ %13, %for.body.lr.ph.if.end11_crit_edge ]
  %last.083100 = phi ptr [ %22, %for.body.if.end11_crit_edge ], [ %9, %for.body.lr.ph.if.end11_crit_edge ]
  %fa.addr.08499 = phi ptr [ %last.083100, %for.body.if.end11_crit_edge ], [ null, %for.body.lr.ph.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %16)
  %cmp16 = icmp eq i8 %11, %16
  br i1 %cmp16, label %land.lhs.true, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end11
  %17 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tb_id, align 4
  %tb_id18 = getelementptr inbounds %struct.fib_alias, ptr %last.083100, i32 0, i32 6
  %19 = ptrtoint ptr %tb_id18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tb_id18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp19 = icmp ugt i32 %18, %20
  br i1 %cmp19, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %21 = ptrtoint ptr %last.083100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last.083100, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %if.end22.if.then35_crit_edge, label %for.body

if.end22.if.then35_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge
  %fa.addr.084.lcssa = phi ptr [ null, %for.body.lr.ph.for.end_crit_edge ], [ %fa.addr.08499, %land.lhs.true.for.end_crit_edge ], [ %last.083100, %for.body.for.end_crit_edge ]
  %tobool34.not = icmp eq ptr %fa.addr.084.lcssa, null
  br i1 %tobool34.not, label %if.else38, label %for.end.if.then35_crit_edge

for.end.if.then35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.then35:                                        ; preds = %for.end.if.then35_crit_edge, %if.end22.if.then35_crit_edge
  %fa.addr.0.lcssa92 = phi ptr [ %fa.addr.084.lcssa, %for.end.if.then35_crit_edge ], [ %last.083100, %if.end22.if.then35_crit_edge ]
  %23 = ptrtoint ptr %fa.addr.0.lcssa92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fa.addr.0.lcssa92, align 4
  %25 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %new, align 4
  %pprev.i78 = getelementptr inbounds %struct.hlist_node, ptr %new, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i78 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %fa.addr.0.lcssa92, ptr %pprev.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !339
  %27 = ptrtoint ptr %fa.addr.0.lcssa92 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %new, ptr %fa.addr.0.lcssa92, align 4
  %28 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.then35.if.end41_crit_edge, label %do.body47.i

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body47.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %pprev50.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  br label %if.end41.sink.split

if.else38:                                        ; preds = %for.end
  %30 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %9, ptr %new, align 4
  %pprev.i79 = getelementptr inbounds %struct.hlist_node, ptr %new, i32 0, i32 1
  %31 = ptrtoint ptr %pprev.i79 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %7, ptr %pprev.i79, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !340
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %new, ptr %7, align 4
  br i1 %tobool4.not, label %if.else38.if.end41_crit_edge, label %do.body49.i

if.else38.if.end41_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body49.i:                                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  br label %if.end41.sink.split

if.end41.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %9, ptr %new, align 4
  %pprev.i79.c = getelementptr inbounds %struct.hlist_node, ptr %new, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i79.c to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %7, ptr %pprev.i79.c, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !340
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.end41.critedge, %do.body49.i, %do.body47.i, %if.then2
  %.sink = phi ptr [ %7, %if.end41.critedge ], [ %pprev51.i, %do.body49.i ], [ %pprev50.i, %do.body47.i ], [ %pprev.i, %if.then2 ]
  %35 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %new, ptr %.sink, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else38.if.end41_crit_edge, %if.then35.if.end41_crit_edge
  %slen = getelementptr inbounds %struct.key_vector, ptr %l, i32 0, i32 3
  %36 = ptrtoint ptr %slen to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %slen, align 2
  %fa_slen43 = getelementptr inbounds %struct.fib_alias, ptr %new, i32 0, i32 5
  %38 = ptrtoint ptr %fa_slen43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fa_slen43, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp45 = icmp ult i8 %37, %39
  br i1 %cmp45, label %if.then47, label %if.end41.return_crit_edge

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then47:                                        ; preds = %if.end41
  %40 = ptrtoint ptr %slen to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %slen, align 2
  %41 = ptrtoint ptr %fa_slen43 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fa_slen43, align 1
  %slen113.i = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 3
  %43 = ptrtoint ptr %slen113.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %slen113.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %42)
  %cmp14.i = icmp ult i8 %44, %42
  br i1 %cmp14.i, label %if.then47.while.body.i_crit_edge, label %if.then47.return_crit_edge

if.then47.return_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then47.while.body.i_crit_edge:                 ; preds = %if.then47
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.then47.while.body.i_crit_edge
  %slen116.i = phi ptr [ %slen1.i, %do.end.i.while.body.i_crit_edge ], [ %slen113.i, %if.then47.while.body.i_crit_edge ]
  %tn.addr.015.i = phi ptr [ %47, %do.end.i.while.body.i_crit_edge ], [ %tp, %if.then47.while.body.i_crit_edge ]
  %45 = ptrtoint ptr %slen116.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %slen116.i, align 2
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %while.body.i.do.end.i_crit_edge, label %land.lhs.true.i

while.body.i.do.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i81 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @node_push_suffix.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @node_push_suffix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 929, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %while.body.i.do.end.i_crit_edge
  %parent.i = getelementptr i8, ptr %tn.addr.015.i, i32 -4
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 4
  %slen1.i = getelementptr inbounds %struct.key_vector, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %slen1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %slen1.i, align 2
  %cmp.i = icmp ult i8 %49, %42
  br i1 %cmp.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

return:                                           ; preds = %do.end.i.return_crit_edge, %if.then47.return_crit_edge, %if.end41.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end41.return_crit_edge ], [ 0, %if.then47.return_crit_edge ], [ 0, %do.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_remove_alias(ptr nocapture noundef readonly %t, ptr noundef %tp, ptr noundef %l, ptr noundef %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev1 = getelementptr inbounds %struct.hlist_node, ptr %old, i32 0, i32 1
  %0 = ptrtoint ptr %pprev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev1, align 4
  %2 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

entry.hlist_del_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %entry.hlist_del_rcu.exit_crit_edge
  %6 = ptrtoint ptr %pprev1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev1, align 4
  %7 = getelementptr inbounds %struct.key_vector, ptr %l, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %if.then, label %if.end8

if.then:                                          ; preds = %hlist_del_rcu.exit
  %slen = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 3
  %10 = ptrtoint ptr %slen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %slen, align 2
  %slen3 = getelementptr inbounds %struct.key_vector, ptr %l, i32 0, i32 3
  %12 = ptrtoint ptr %slen3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slen3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp eq i8 %11, %13
  br i1 %cmp, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6:                                         ; preds = %if.then
  %pos = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 1
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %15)
  %cmp31.i = icmp ugt i8 %11, %15
  br i1 %cmp31.i, label %if.then6.while.body.i_crit_edge, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6.while.body.i_crit_edge:                  ; preds = %if.then6
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.then6.while.body.i_crit_edge
  %node_slen.035.i = phi i8 [ %node_slen.0.i, %do.end.i.while.body.i_crit_edge ], [ %11, %if.then6.while.body.i_crit_edge ]
  %tn.addr.034.i = phi ptr [ %17, %do.end.i.while.body.i_crit_edge ], [ %tp, %if.then6.while.body.i_crit_edge ]
  %call.i = tail call fastcc zeroext i8 @update_suffix(ptr noundef %tn.addr.034.i) #12
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.035.i, i8 %call.i)
  %cmp10.i = icmp eq i8 %node_slen.035.i, %call.i
  br i1 %cmp10.i, label %while.body.i.if.end_crit_edge, label %do.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %while.body.i
  %call12.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call12.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i27 = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @node_pull_suffix.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true14.i.do.end.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end.i_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @node_pull_suffix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %land.lhs.true14.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %parent.i = getelementptr i8, ptr %tn.addr.034.i, i32 -4
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 4
  %node_slen.0.in.i = getelementptr inbounds %struct.key_vector, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %node_slen.0.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %node_slen.0.i = load i8, ptr %node_slen.0.in.i, align 2
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.0.i, i8 %20)
  %cmp.i = icmp ugt i8 %node_slen.0.i, %20
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.0.i, i8 %call.i)
  %cmp6.i = icmp ugt i8 %node_slen.0.i, %call.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end:                                           ; preds = %do.end.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %if.then6.if.end_crit_edge, %if.then.if.end_crit_edge
  %pos.i28 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 1
  %21 = ptrtoint ptr %pos.i28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pos.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %22)
  %cmp.i29 = icmp ugt i8 %22, 31
  br i1 %cmp.i29, label %do.body.i30, label %get_index.exit.i

do.body.i30:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %23 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr null, ptr %23, align 4
  br label %put_child_root.exit

get_index.exit.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %l, align 4
  %conv.i.i = zext i8 %22 to i32
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tp, align 4
  %xor.i.i = xor i32 %28, %26
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  tail call fastcc void @put_child(ptr noundef %tp, i32 noundef %shr.i.i, ptr noundef null) #12
  br label %put_child_root.exit

put_child_root.exit:                              ; preds = %get_index.exit.i, %do.body.i30
  %add.ptr.i = getelementptr i8, ptr %l, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i, ptr noundef nonnull @__node_free_rcu) #12
  %29 = ptrtoint ptr %pos.i28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pos.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp4.i = icmp ult i8 %30, 32
  br i1 %cmp4.i, label %put_child_root.exit.while.body.i34_crit_edge, label %put_child_root.exit.cleanup_crit_edge

put_child_root.exit.cleanup_crit_edge:            ; preds = %put_child_root.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

put_child_root.exit.while.body.i34_crit_edge:     ; preds = %put_child_root.exit
  br label %while.body.i34

while.body.i34:                                   ; preds = %while.body.i34.while.body.i34_crit_edge, %put_child_root.exit.while.body.i34_crit_edge
  %tn.addr.05.i = phi ptr [ %call.i31, %while.body.i34.while.body.i34_crit_edge ], [ %tp, %put_child_root.exit.while.body.i34_crit_edge ]
  %call.i31 = tail call fastcc ptr @resize(ptr noundef %t, ptr noundef %tn.addr.05.i) #12
  %pos.i32 = getelementptr inbounds %struct.key_vector, ptr %call.i31, i32 0, i32 1
  %31 = ptrtoint ptr %pos.i32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pos.i32, align 4
  %cmp.i33 = icmp ult i8 %32, 32
  br i1 %cmp.i33, label %while.body.i34.while.body.i34_crit_edge, label %while.body.i34.cleanup_crit_edge

while.body.i34.cleanup_crit_edge:                 ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.i34.while.body.i34_crit_edge:          ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i34

if.end8:                                          ; preds = %hlist_del_rcu.exit
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %tobool9.not = icmp eq ptr %34, null
  br i1 %tobool9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fa_slen, align 1
  %slen12 = getelementptr inbounds %struct.key_vector, ptr %l, i32 0, i32 3
  %37 = ptrtoint ptr %slen12 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %slen12, align 2
  %38 = load i8, ptr %fa_slen, align 1
  %node_slen.0.in28.i35 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 3
  %39 = ptrtoint ptr %node_slen.0.in28.i35 to i32
  call void @__asan_load1_noabort(i32 %39)
  %node_slen.029.i36 = load i8, ptr %node_slen.0.in28.i35, align 2
  %pos30.i37 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 1
  %40 = ptrtoint ptr %pos30.i37 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pos30.i37, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.029.i36, i8 %41)
  %cmp31.i38 = icmp ugt i8 %node_slen.029.i36, %41
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.029.i36, i8 %38)
  %cmp632.i39 = icmp ugt i8 %node_slen.029.i36, %38
  %or.cond33.i40 = and i1 %cmp632.i39, %cmp31.i38
  br i1 %or.cond33.i40, label %if.end11.while.body.i45_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.while.body.i45_crit_edge:                ; preds = %if.end11
  br label %while.body.i45

while.body.i45:                                   ; preds = %do.end.i61.while.body.i45_crit_edge, %if.end11.while.body.i45_crit_edge
  %node_slen.035.i41 = phi i8 [ %node_slen.0.i56, %do.end.i61.while.body.i45_crit_edge ], [ %node_slen.029.i36, %if.end11.while.body.i45_crit_edge ]
  %tn.addr.034.i42 = phi ptr [ %43, %do.end.i61.while.body.i45_crit_edge ], [ %tp, %if.end11.while.body.i45_crit_edge ]
  %call.i43 = tail call fastcc zeroext i8 @update_suffix(ptr noundef %tn.addr.034.i42) #12
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.035.i41, i8 %call.i43)
  %cmp10.i44 = icmp eq i8 %node_slen.035.i41, %call.i43
  br i1 %cmp10.i44, label %while.body.i45.cleanup_crit_edge, label %do.body.i47

while.body.i45.cleanup_crit_edge:                 ; preds = %while.body.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i47:                                      ; preds = %while.body.i45
  %call12.i46 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call12.i46, label %do.body.i47.do.end.i61_crit_edge, label %land.lhs.true.i50

do.body.i47.do.end.i61_crit_edge:                 ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

land.lhs.true.i50:                                ; preds = %do.body.i47
  %call13.i48 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i48)
  %tobool.not.i49 = icmp eq i32 %call13.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.do.end.i61_crit_edge, label %land.lhs.true14.i52

land.lhs.true.i50.do.end.i61_crit_edge:           ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

land.lhs.true14.i52:                              ; preds = %land.lhs.true.i50
  %.b27.i51 = load i1, ptr @node_pull_suffix.__warned, align 1
  br i1 %.b27.i51, label %land.lhs.true14.i52.do.end.i61_crit_edge, label %if.then16.i53

land.lhs.true14.i52.do.end.i61_crit_edge:         ; preds = %land.lhs.true14.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

if.then16.i53:                                    ; preds = %land.lhs.true14.i52
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @node_pull_suffix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 920, ptr noundef nonnull @.str.12) #12
  br label %do.end.i61

do.end.i61:                                       ; preds = %if.then16.i53, %land.lhs.true14.i52.do.end.i61_crit_edge, %land.lhs.true.i50.do.end.i61_crit_edge, %do.body.i47.do.end.i61_crit_edge
  %parent.i54 = getelementptr i8, ptr %tn.addr.034.i42, i32 -4
  %42 = ptrtoint ptr %parent.i54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i54, align 4
  %node_slen.0.in.i55 = getelementptr inbounds %struct.key_vector, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %node_slen.0.in.i55 to i32
  call void @__asan_load1_noabort(i32 %44)
  %node_slen.0.i56 = load i8, ptr %node_slen.0.in.i55, align 2
  %pos.i57 = getelementptr inbounds %struct.key_vector, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %pos.i57 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pos.i57, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.0.i56, i8 %46)
  %cmp.i58 = icmp ugt i8 %node_slen.0.i56, %46
  call void @__sanitizer_cov_trace_cmp1(i8 %node_slen.0.i56, i8 %call.i43)
  %cmp6.i59 = icmp ugt i8 %node_slen.0.i56, %call.i43
  %or.cond.i60 = select i1 %cmp.i58, i1 %cmp6.i59, i1 false
  br i1 %or.cond.i60, label %do.end.i61.while.body.i45_crit_edge, label %do.end.i61.cleanup_crit_edge

do.end.i61.cleanup_crit_edge:                     ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i61.while.body.i45_crit_edge:              ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i45

cleanup:                                          ; preds = %do.end.i61.cleanup_crit_edge, %while.body.i45.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %while.body.i34.cleanup_crit_edge, %put_child_root.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fib_lookup_good_nhc(ptr nocapture noundef readonly %nhc, i32 noundef %fib_flags, ptr nocapture noundef readonly %flp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 6
  %0 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nhc_flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhc, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 78
  %5 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %if.end.do.end8.i_crit_edge, label %lor.lhs.false.i

if.end.do.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b23.i = load i1, ptr @ip_ignore_linkdown.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_ignore_linkdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 258, ptr noundef nonnull @.str.4) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.end.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %6, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end10_crit_edge, label %land.lhs.true11.i

do.end8.i.if.end10_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true11.i:                                ; preds = %do.end8.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 35, i32 6
  %11 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %12, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not.i = icmp eq i32 %14, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %land.lhs.true11.i.land.lhs.true_crit_edge

land.lhs.true11.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false15.i:                                ; preds = %land.lhs.true11.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %6, i32 0, i32 21, i32 1, i32 28
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.if.end10_crit_edge, label %lor.lhs.false15.i.land.lhs.true_crit_edge

lor.lhs.false15.i.land.lhs.true_crit_edge:        ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false15.i.if.end10_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false15.i.land.lhs.true_crit_edge, %land.lhs.true11.i.land.lhs.true_crit_edge
  %17 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nhc_flags, align 1
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp ne i8 %19, 0
  %and7 = and i32 %fib_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = and i1 %tobool8.not, %tobool5.not
  br i1 %or.cond, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %lor.lhs.false15.i.if.end10_crit_edge, %do.end8.i.if.end10_crit_edge
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 6
  %20 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flowic_flags, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool13.not = icmp eq i8 %22, 0
  br i1 %tobool13.not, label %if.then14, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then14:                                        ; preds = %if.end10
  %23 = ptrtoint ptr %flp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp eq i32 %24, 0
  br i1 %tobool16.not, label %if.then14.if.end23_crit_edge, label %land.lhs.true17

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true17:                                  ; preds = %if.then14
  %nhc_oif = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 2
  %25 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nhc_oif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not = icmp eq i32 %24, %26
  br i1 %cmp.not, label %land.lhs.true17.if.end23_crit_edge, label %land.lhs.true17.return_crit_edge

land.lhs.true17.return_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true17.if.end23_crit_edge, %if.then14.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  br label %return

return:                                           ; preds = %if.end23, %land.lhs.true17.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end23 ], [ false, %entry.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %land.lhs.true17.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_table_lookup(ptr noundef %tb, ptr noundef %flp, ptr nocapture noundef writeonly %res, i32 noundef %fib_flags) #0 align 64 {
entry:
  %nhsel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  %stats1 = getelementptr inbounds %struct.trie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %flp, i32 0, i32 2
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr, align 4
  %6 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end9_crit_edge, label %lor.lhs.false

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b745 = load i1, ptr @fib_table_lookup.__warned, align 1
  br i1 %.b745, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1452, ptr noundef nonnull @.str.4) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.then12, label %do.body15

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %9 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tb_id, align 4
  tail call fastcc void @trace_fib_table_lookup(i32 noundef %10, ptr noundef %flp, ptr noundef null, i32 noundef -11)
  br label %cleanup630

do.body15:                                        ; preds = %do.end9
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %12 = ptrtoint ptr %3 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx32, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add33 = add i32 %21, 1
  store i32 %add33, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then48, label %do.body15.do.end51_crit_edge, !prof !333

do.body15.do.end51_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end51

if.then48:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body15.do.end51_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #12, !srcloc !344
  br label %for.cond

for.cond:                                         ; preds = %do.end95.for.cond_crit_edge, %do.end51
  %cindex.0 = phi i32 [ 0, %do.end51 ], [ %spec.select, %do.end95.for.cond_crit_edge ]
  %pn.0 = phi ptr [ %1, %do.end51 ], [ %spec.select746, %do.end95.for.cond_crit_edge ]
  %n.0 = phi ptr [ %8, %do.end51 ], [ %33, %do.end95.for.cond_crit_edge ]
  %23 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n.0, align 4
  %xor = xor i32 %24, %5
  %pos = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 1
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pos, align 4
  %conv59 = zext i8 %26 to i32
  %shr = lshr i32 %xor, %conv59
  %bits = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 2
  %27 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits, align 1
  %conv60 = zext i8 %28 to i32
  %shr.highbits = lshr i32 %shr, %conv60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits)
  %cmp61.not = icmp eq i32 %shr.highbits, 0
  br i1 %cmp61.not, label %if.end64, label %for.cond.for.cond108_crit_edge

for.cond.for.cond108_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond108

if.end64:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool66.not = icmp eq i8 %28, 0
  br i1 %tobool66.not, label %if.end64.found_crit_edge, label %if.end68

if.end64.found_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

if.end68:                                         ; preds = %if.end64
  %slen = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 3
  %29 = ptrtoint ptr %slen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %slen, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %26)
  %cmp72 = icmp ugt i8 %30, %26
  %spec.select = select i1 %cmp72, i32 %shr, i32 %cindex.0
  %spec.select746 = select i1 %cmp72, ptr %n.0, ptr %pn.0
  %31 = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 4
  %arrayidx80 = getelementptr [0 x ptr], ptr %31, i32 0, i32 %shr
  %32 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx80, align 4
  %call82 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call82, label %if.end68.do.end95_crit_edge, label %lor.lhs.false84

if.end68.do.end95_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

lor.lhs.false84:                                  ; preds = %if.end68
  %call85 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.lhs.true87, label %lor.lhs.false84.do.end95_crit_edge

lor.lhs.false84.do.end95_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

land.lhs.true87:                                  ; preds = %lor.lhs.false84
  %call88 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true87.do.end95_crit_edge, label %land.lhs.true90

land.lhs.true87.do.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %.b737744 = load i1, ptr @fib_table_lookup.__warned.5, align 1
  br i1 %.b737744, label %land.lhs.true90.do.end95_crit_edge, label %if.then92

land.lhs.true90.do.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end95

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_lookup.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1495, ptr noundef nonnull @.str.4) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %land.lhs.true90.do.end95_crit_edge, %land.lhs.true87.do.end95_crit_edge, %lor.lhs.false84.do.end95_crit_edge, %if.end68.do.end95_crit_edge
  %tobool97.not = icmp eq ptr %33, null
  br i1 %tobool97.not, label %do.end95.backtrace_crit_edge, label %do.end95.for.cond_crit_edge, !prof !333

do.end95.for.cond_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

do.end95.backtrace_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %backtrace

for.cond108:                                      ; preds = %do.end154.for.cond108_crit_edge, %for.cond.for.cond108_crit_edge
  %cindex.2 = phi i32 [ %cindex.3, %do.end154.for.cond108_crit_edge ], [ %cindex.0, %for.cond.for.cond108_crit_edge ]
  %pn.2 = phi ptr [ %pn.3, %do.end154.for.cond108_crit_edge ], [ %pn.0, %for.cond.for.cond108_crit_edge ]
  %n.1 = phi ptr [ %44, %do.end154.for.cond108_crit_edge ], [ %n.0, %for.cond.for.cond108_crit_edge ]
  %34 = getelementptr inbounds %struct.key_vector, ptr %n.1, i32 0, i32 4
  %35 = ptrtoint ptr %n.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n.1, align 4
  %xor.i = xor i32 %36, %5
  %sub.i = sub i32 0, %36
  %or.i = or i32 %36, %sub.i
  %and.i749 = and i32 %xor.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i749)
  %tobool111.not = icmp eq i32 %and.i749, 0
  br i1 %tobool111.not, label %lor.lhs.false118, label %for.cond108.backtrace_crit_edge, !prof !337

for.cond108.backtrace_crit_edge:                  ; preds = %for.cond108
  call void @__sanitizer_cov_trace_pc() #14
  br label %backtrace

lor.lhs.false118:                                 ; preds = %for.cond108
  %slen119 = getelementptr inbounds %struct.key_vector, ptr %n.1, i32 0, i32 3
  %37 = ptrtoint ptr %slen119 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %slen119, align 2
  %pos121 = getelementptr inbounds %struct.key_vector, ptr %n.1, i32 0, i32 1
  %39 = ptrtoint ptr %pos121 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pos121, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp123 = icmp eq i8 %38, %40
  br i1 %cmp123, label %lor.lhs.false118.backtrace_crit_edge, label %if.end126

lor.lhs.false118.backtrace_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #14
  br label %backtrace

if.end126:                                        ; preds = %lor.lhs.false118
  %bits127 = getelementptr inbounds %struct.key_vector, ptr %n.1, i32 0, i32 2
  %41 = ptrtoint ptr %bits127 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool128.not = icmp eq i8 %42, 0
  br i1 %tobool128.not, label %if.end126.found_crit_edge, label %if.end126.while.cond_crit_edge, !prof !333

if.end126.while.cond_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end126.found_crit_edge:                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

while.cond:                                       ; preds = %while.end, %if.end126.while.cond_crit_edge
  %cptr.0 = phi ptr [ %arrayidx312, %while.end ], [ %34, %if.end126.while.cond_crit_edge ]
  %cindex.3 = phi i32 [ %and, %while.end ], [ %cindex.2, %if.end126.while.cond_crit_edge ]
  %pn.3 = phi ptr [ %pn.5.lcssa, %while.end ], [ %pn.2, %if.end126.while.cond_crit_edge ]
  %43 = ptrtoint ptr %cptr.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %cptr.0, align 4
  %call144 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %land.lhs.true146, label %while.cond.do.end154_crit_edge

while.cond.do.end154_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154

land.lhs.true146:                                 ; preds = %while.cond
  %call147 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %land.lhs.true146.do.end154_crit_edge, label %land.lhs.true149

land.lhs.true146.do.end154_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154

land.lhs.true149:                                 ; preds = %land.lhs.true146
  %.b738741 = load i1, ptr @fib_table_lookup.__warned.6, align 1
  br i1 %.b738741, label %land.lhs.true149.do.end154_crit_edge, label %if.then151

land.lhs.true149.do.end154_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154

if.then151:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_lookup.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1521, ptr noundef nonnull @.str.4) #12
  br label %do.end154

do.end154:                                        ; preds = %if.then151, %land.lhs.true149.do.end154_crit_edge, %land.lhs.true146.do.end154_crit_edge, %while.cond.do.end154_crit_edge
  %cmp156 = icmp eq ptr %44, null
  br i1 %cmp156, label %do.end154.backtrace_crit_edge, label %do.end154.for.cond108_crit_edge

do.end154.for.cond108_crit_edge:                  ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond108

do.end154.backtrace_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %backtrace

backtrace:                                        ; preds = %do.end623, %do.end154.backtrace_crit_edge, %lor.lhs.false118.backtrace_crit_edge, %for.cond108.backtrace_crit_edge, %do.end95.backtrace_crit_edge
  %cindex.4 = phi i32 [ %cindex.3, %do.end154.backtrace_crit_edge ], [ %cindex.7, %do.end623 ], [ %cindex.2, %lor.lhs.false118.backtrace_crit_edge ], [ %cindex.2, %for.cond108.backtrace_crit_edge ], [ %spec.select, %do.end95.backtrace_crit_edge ]
  %pn.4 = phi ptr [ %pn.3, %do.end154.backtrace_crit_edge ], [ %pn.7, %do.end623 ], [ %pn.2, %lor.lhs.false118.backtrace_crit_edge ], [ %pn.2, %for.cond108.backtrace_crit_edge ], [ %spec.select746, %do.end95.backtrace_crit_edge ]
  %n.2 = phi ptr [ null, %do.end154.backtrace_crit_edge ], [ %n.3, %do.end623 ], [ %n.1, %lor.lhs.false118.backtrace_crit_edge ], [ %n.1, %for.cond108.backtrace_crit_edge ], [ null, %do.end95.backtrace_crit_edge ]
  %tobool158.not = icmp eq ptr %n.2, null
  br i1 %tobool158.not, label %do.body161, label %backtrace.if.end218_crit_edge

backtrace.if.end218_crit_edge:                    ; preds = %backtrace
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

do.body161:                                       ; preds = %backtrace
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %null_node_hit = getelementptr inbounds %struct.trie_use_stats, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %null_node_hit to i32
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %arrayidx186 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx186, align 4
  %add187 = add i32 %50, %46
  %51 = inttoptr i32 %add187 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add188 = add i32 %53, 1
  store i32 %add188, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i750 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i750)
  %tobool199.not = icmp eq i32 %and.i.i750, 0
  br i1 %tobool199.not, label %if.then208, label %do.body161.do.end211_crit_edge, !prof !333

do.body161.do.end211_crit_edge:                   ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end211

if.then208:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end211

do.end211:                                        ; preds = %if.then208, %do.body161.do.end211_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #12, !srcloc !344
  br label %if.end218

if.end218:                                        ; preds = %do.end211, %backtrace.if.end218_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.4)
  %tobool220.not814 = icmp eq i32 %cindex.4, 0
  br i1 %tobool220.not814, label %while.body223.lr.ph, label %if.end218.while.end_crit_edge

if.end218.while.end_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body223.lr.ph:                              ; preds = %if.end218
  %backtrack = getelementptr inbounds %struct.trie_use_stats, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %backtrack to i32
  br label %while.body223

while.body223:                                    ; preds = %cleanup.while.body223_crit_edge, %while.body223.lr.ph
  %pn.5815 = phi ptr [ %pn.4, %while.body223.lr.ph ], [ %72, %cleanup.while.body223_crit_edge ]
  %56 = ptrtoint ptr %pn.5815 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pn.5815, align 4
  %pos225 = getelementptr inbounds %struct.key_vector, ptr %pn.5815, i32 0, i32 1
  %58 = ptrtoint ptr %pos225 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pos225, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %59)
  %cmp227 = icmp ugt i8 %59, 31
  br i1 %cmp227, label %cleanup.thread, label %do.body233

cleanup.thread:                                   ; preds = %while.body223
  call void @__sanitizer_cov_trace_pc() #14
  %tb_id230 = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %60 = ptrtoint ptr %tb_id230 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tb_id230, align 4
  tail call fastcc void @trace_fib_table_lookup(i32 noundef %61, ptr noundef %flp, ptr noundef null, i32 noundef -11)
  br label %cleanup630

do.body233:                                       ; preds = %while.body223
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %63 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu, align 4
  %arrayidx258 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx258, align 4
  %add259 = add i32 %66, %55
  %67 = inttoptr i32 %add259 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add260 = add i32 %69, 1
  store i32 %add260, ptr %67, align 4
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i751 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i751)
  %tobool271.not = icmp eq i32 %and.i.i751, 0
  br i1 %tobool271.not, label %if.then280, label %do.body233.do.end283_crit_edge, !prof !333

do.body233.do.end283_crit_edge:                   ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end283

if.then280:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end283

do.end283:                                        ; preds = %if.then280, %do.body233.do.end283_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #12, !srcloc !344
  %parent = getelementptr i8, ptr %pn.5815, i32 -4
  %71 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %parent, align 4
  %call296 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call296, label %do.end283.do.end309_crit_edge, label %lor.lhs.false298

do.end283.do.end309_crit_edge:                    ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end309

lor.lhs.false298:                                 ; preds = %do.end283
  %call299 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %land.lhs.true301, label %lor.lhs.false298.do.end309_crit_edge

lor.lhs.false298.do.end309_crit_edge:             ; preds = %lor.lhs.false298
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end309

land.lhs.true301:                                 ; preds = %lor.lhs.false298
  %call302 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %land.lhs.true301.do.end309_crit_edge, label %land.lhs.true304

land.lhs.true301.do.end309_crit_edge:             ; preds = %land.lhs.true301
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end309

land.lhs.true304:                                 ; preds = %land.lhs.true301
  %.b739742 = load i1, ptr @fib_table_lookup.__warned.7, align 1
  br i1 %.b739742, label %land.lhs.true304.do.end309_crit_edge, label %if.then306

land.lhs.true304.do.end309_crit_edge:             ; preds = %land.lhs.true304
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end309

if.then306:                                       ; preds = %land.lhs.true304
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_lookup.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1548, ptr noundef nonnull @.str.4) #12
  br label %do.end309

do.end309:                                        ; preds = %if.then306, %land.lhs.true304.do.end309_crit_edge, %land.lhs.true301.do.end309_crit_edge, %lor.lhs.false298.do.end309_crit_edge, %do.end283.do.end309_crit_edge
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %74)
  %cmp.i = icmp eq i8 %74, 32
  br i1 %cmp.i, label %do.end309.cleanup_crit_edge, label %if.end.i

do.end309.cleanup_crit_edge:                      ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 4
  %xor.i752 = xor i32 %76, %57
  %shr.i = lshr i32 %xor.i752, %conv.i
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end309.cleanup_crit_edge
  %cindex.6 = phi i32 [ %shr.i, %if.end.i ], [ 0, %do.end309.cleanup_crit_edge ]
  %tobool220.not = icmp eq i32 %cindex.6, 0
  br i1 %tobool220.not, label %cleanup.while.body223_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body223_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body223

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end218.while.end_crit_edge
  %cindex.5.lcssa = phi i32 [ %cindex.4, %if.end218.while.end_crit_edge ], [ %cindex.6, %cleanup.while.end_crit_edge ]
  %pn.5.lcssa = phi ptr [ %pn.4, %if.end218.while.end_crit_edge ], [ %72, %cleanup.while.end_crit_edge ]
  %sub = add i32 %cindex.5.lcssa, -1
  %and = and i32 %sub, %cindex.5.lcssa
  %77 = getelementptr inbounds %struct.key_vector, ptr %pn.5.lcssa, i32 0, i32 4
  %arrayidx312 = getelementptr [0 x ptr], ptr %77, i32 0, i32 %and
  br label %while.cond

found:                                            ; preds = %if.end126.found_crit_edge, %if.end64.found_crit_edge
  %cindex.7 = phi i32 [ %cindex.2, %if.end126.found_crit_edge ], [ %cindex.0, %if.end64.found_crit_edge ]
  %pn.7 = phi ptr [ %pn.2, %if.end126.found_crit_edge ], [ %pn.0, %if.end64.found_crit_edge ]
  %n.3 = phi ptr [ %n.1, %if.end126.found_crit_edge ], [ %n.0, %if.end64.found_crit_edge ]
  %78 = ptrtoint ptr %n.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n.3, align 4
  %xor316 = xor i32 %79, %5
  %call318 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %land.lhs.true320, label %found.do.end328_crit_edge

found.do.end328_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end328

land.lhs.true320:                                 ; preds = %found
  %call321 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %land.lhs.true320.do.end328_crit_edge, label %land.lhs.true323

land.lhs.true320.do.end328_crit_edge:             ; preds = %land.lhs.true320
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end328

land.lhs.true323:                                 ; preds = %land.lhs.true320
  %.b740743 = load i1, ptr @fib_table_lookup.__warned.8, align 1
  br i1 %.b740743, label %land.lhs.true323.do.end328_crit_edge, label %if.then325

land.lhs.true323.do.end328_crit_edge:             ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end328

if.then325:                                       ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_lookup.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1565, ptr noundef nonnull @.str.9) #12
  br label %do.end328

do.end328:                                        ; preds = %if.then325, %land.lhs.true323.do.end328_crit_edge, %land.lhs.true320.do.end328_crit_edge, %found.do.end328_crit_edge
  %80 = getelementptr inbounds %struct.key_vector, ptr %n.3, i32 0, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %fa.0811 = load volatile ptr, ptr %80, align 4
  %tobool338.not812 = icmp eq ptr %fa.0811, null
  br i1 %tobool338.not812, label %do.end328.do.body573_crit_edge, label %for.body.lr.ph

do.end328.do.body573_crit_edge:                   ; preds = %do.end328
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body573

for.body.lr.ph:                                   ; preds = %do.end328
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 3
  %flowic_scope = getelementptr inbounds %struct.flowi_common, ptr %flp, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc555.for.body_crit_edge, %for.body.lr.ph
  %fa.0813 = phi ptr [ %fa.0811, %for.body.lr.ph ], [ %fa.0, %for.inc555.for.body_crit_edge ]
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 1
  %82 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fa_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nhsel) #12
  %84 = ptrtoint ptr %nhsel to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %nhsel, align 4, !annotation !345
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 5
  %85 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fa_slen, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %86)
  %cmp340 = icmp ugt i8 %86, 31
  %conv339 = zext i8 %86 to i32
  %xor316.highbits = lshr i32 %xor316, %conv339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor316.highbits)
  %cmp346.not = icmp eq i32 %xor316.highbits, 0
  %or.cond = select i1 %cmp340, i1 true, i1 %cmp346.not
  br i1 %or.cond, label %if.end350, label %for.body.for.inc555_crit_edge

for.body.for.inc555_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

if.end350:                                        ; preds = %for.body
  %fa_tos = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 2
  %87 = ptrtoint ptr %fa_tos to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fa_tos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool352.not = icmp eq i8 %88, 0
  br i1 %tobool352.not, label %if.end350.if.end360_crit_edge, label %land.lhs.true353

if.end350.if.end360_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end360

land.lhs.true353:                                 ; preds = %if.end350
  %89 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %flowic_tos, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp357.not = icmp eq i8 %88, %90
  br i1 %cmp357.not, label %land.lhs.true353.if.end360_crit_edge, label %land.lhs.true353.for.inc555_crit_edge

land.lhs.true353.for.inc555_crit_edge:            ; preds = %land.lhs.true353
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

land.lhs.true353.if.end360_crit_edge:             ; preds = %land.lhs.true353
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end360

if.end360:                                        ; preds = %land.lhs.true353.if.end360_crit_edge, %if.end350.if.end360_crit_edge
  %fib_dead = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 7
  %91 = ptrtoint ptr %fib_dead to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fib_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool361.not = icmp eq i8 %92, 0
  br i1 %tobool361.not, label %if.end363, label %if.end360.for.inc555_crit_edge

if.end360.for.inc555_crit_edge:                   ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

if.end363:                                        ; preds = %if.end360
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 9
  %93 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %fib_scope, align 2
  %95 = ptrtoint ptr %flowic_scope to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flowic_scope, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp368 = icmp ult i8 %94, %96
  br i1 %cmp368, label %if.end363.for.inc555_crit_edge, label %if.end371

if.end363.for.inc555_crit_edge:                   ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

if.end371:                                        ; preds = %if.end363
  %fa_state.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 4
  %97 = ptrtoint ptr %fa_state.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %fa_state.i, align 2
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end371.fib_alias_accessed.exit_crit_edge

if.end371.fib_alias_accessed.exit_crit_edge:      ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_alias_accessed.exit

if.then.i:                                        ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #14
  %or.i753 = or i8 %98, 1
  %100 = ptrtoint ptr %fa_state.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %or.i753, ptr %fa_state.i, align 2
  br label %fib_alias_accessed.exit

fib_alias_accessed.exit:                          ; preds = %if.then.i, %if.end371.fib_alias_accessed.exit_crit_edge
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 3
  %101 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %fa_type, align 1
  %idxprom = zext i8 %102 to i32
  %arrayidx372 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %idxprom
  %103 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx372, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp373 = icmp slt i32 %104, 0
  br i1 %cmp373, label %fib_alias_accessed.exit.do.body383_crit_edge, label %if.end441, !prof !333

fib_alias_accessed.exit.do.body383_crit_edge:     ; preds = %fib_alias_accessed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body383

do.body383:                                       ; preds = %if.then457, %fib_alias_accessed.exit.do.body383_crit_edge
  %err.0 = phi i32 [ %121, %if.then457 ], [ %104, %fib_alias_accessed.exit.do.body383_crit_edge ]
  %105 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %semantic_match_passed = getelementptr inbounds %struct.trie_use_stats, ptr %3, i32 0, i32 2
  %106 = ptrtoint ptr %semantic_match_passed to i32
  %107 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu, align 4
  %arrayidx408 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx408, align 4
  %add409 = add i32 %110, %106
  %111 = inttoptr i32 %add409 to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add410 = add i32 %113, 1
  store i32 %add410, ptr %111, align 4
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i755 = and i32 %114, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i755)
  %tobool421.not = icmp eq i32 %and.i.i755, 0
  br i1 %tobool421.not, label %if.then430, label %do.body383.do.end433_crit_edge, !prof !333

do.body383.do.end433_crit_edge:                   ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end433

if.then430:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end433

do.end433:                                        ; preds = %if.then430, %do.body383.do.end433_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %105) #12, !srcloc !344
  %tb_id440 = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %115 = ptrtoint ptr %tb_id440 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tb_id440, align 4
  tail call fastcc void @trace_fib_table_lookup(i32 noundef %116, ptr noundef %flp, ptr noundef null, i32 noundef %err.0)
  br label %cleanup549.thread775

if.end441:                                        ; preds = %fib_alias_accessed.exit
  %fib_flags442 = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 6
  %117 = ptrtoint ptr %fib_flags442 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fib_flags442, align 4
  %and443 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %tobool444.not = icmp eq i32 %and443, 0
  br i1 %tobool444.not, label %if.end446, label %if.end441.for.inc555_crit_edge

if.end441.for.inc555_crit_edge:                   ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

if.end446:                                        ; preds = %if.end441
  %nh = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 18
  %119 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nh, align 4
  %tobool447.not = icmp eq ptr %120, null
  br i1 %tobool447.not, label %for.cond465.preheader, label %if.then454, !prof !337

for.cond465.preheader:                            ; preds = %if.end446
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 15
  br label %for.cond465

if.then454:                                       ; preds = %if.end446
  %call456 = tail call fastcc zeroext i1 @nexthop_is_blackhole(ptr noundef nonnull %120)
  br i1 %call456, label %if.then457, label %if.end458

if.then457:                                       ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 6) to i32))
  %121 = load i32, ptr getelementptr inbounds ([12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 6), align 4
  br label %do.body383

if.end458:                                        ; preds = %if.then454
  %122 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %nh, align 4
  %call460 = call fastcc ptr @nexthop_get_nhc_lookup(ptr noundef %123, i32 noundef %fib_flags, ptr noundef %flp, ptr noundef nonnull %nhsel)
  %tobool461.not = icmp eq ptr %call460, null
  br i1 %tobool461.not, label %cleanup549, label %if.end458.set_result_crit_edge

if.end458.set_result_crit_edge:                   ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_result

for.cond465:                                      ; preds = %for.inc, %for.cond465.preheader
  %124 = phi ptr [ %.pr, %for.inc ], [ null, %for.cond465.preheader ]
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %for.cond465.preheader ]
  %tobool.not.i756 = icmp eq ptr %124, null
  br i1 %tobool.not.i756, label %if.end.i758, label %if.then.i757, !prof !337

if.then.i757:                                     ; preds = %for.cond465
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %124) #12
  br label %fib_info_num_path.exit

if.end.i758:                                      ; preds = %for.cond465
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i758, %if.then.i757
  %retval.0.i759 = phi i32 [ %call.i, %if.then.i757 ], [ %126, %if.end.i758 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %retval.0.i759)
  %cmp467 = icmp ult i32 %storemerge, %retval.0.i759
  br i1 %cmp467, label %for.body469, label %fib_info_num_path.exit.for.inc555_crit_edge

fib_info_num_path.exit.for.inc555_crit_edge:      ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc555

for.body469:                                      ; preds = %fib_info_num_path.exit
  %127 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %nh, align 4
  %tobool.not.i761 = icmp eq ptr %128, null
  br i1 %tobool.not.i761, label %if.end.i764, label %if.then.i763, !prof !337

if.then.i763:                                     ; preds = %for.body469
  call void @__sanitizer_cov_trace_pc() #14
  %call.i762 = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %128, i32 noundef %storemerge) #12
  br label %fib_info_nhc.exit

if.end.i764:                                      ; preds = %for.body469
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.fib_info, ptr %83, i32 0, i32 20, i32 %storemerge
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i764, %if.then.i763
  %retval.0.i765 = phi ptr [ %call.i762, %if.then.i763 ], [ %arrayidx.i, %if.end.i764 ]
  %call471 = tail call zeroext i1 @fib_lookup_good_nhc(ptr noundef %retval.0.i765, i32 noundef %fib_flags, ptr noundef %flp)
  br i1 %call471, label %set_result.loopexit, label %for.inc

set_result.loopexit:                              ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %nhsel to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge, ptr %nhsel, align 4
  br label %set_result

set_result:                                       ; preds = %set_result.loopexit, %if.end458.set_result_crit_edge
  %nhc.0 = phi ptr [ %call460, %if.end458.set_result_crit_edge ], [ %retval.0.i765, %set_result.loopexit ]
  %fib_scope842 = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 9
  %fa_type848 = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 3
  %fa_slen855 = getelementptr inbounds %struct.fib_alias, ptr %fa.0813, i32 0, i32 5
  %and474 = and i32 %fib_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and474)
  %tobool475.not = icmp eq i32 %and474, 0
  br i1 %tobool475.not, label %if.then476, label %set_result.if.end477_crit_edge

set_result.if.end477_crit_edge:                   ; preds = %set_result
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end477

if.then476:                                       ; preds = %set_result
  %fib_clntref = getelementptr inbounds %struct.fib_info, ptr %83, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_clntref, i32 1, i32 3, i32 1) #12
  %130 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref, ptr %fib_clntref, i32 1, ptr elementtype(i32) %fib_clntref) #12, !srcloc !346
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %130, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then476.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !333

if.then476.if.end15.sink.split.i.i.i_crit_edge:   ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then476
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %131 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %.not.i.i.i = icmp sgt i32 %131, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end477_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !337

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end477_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end477

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then476.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then476.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref, i32 noundef %.sink.i.i.i) #12
  br label %if.end477

if.end477:                                        ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end477_crit_edge, %set_result.if.end477_crit_edge
  %132 = ptrtoint ptr %n.3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %n.3, align 4
  %134 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %res, align 4
  %135 = ptrtoint ptr %fa_slen855 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %fa_slen855, align 1
  %sub481 = sub i8 32, %136
  %prefixlen = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 1
  %137 = ptrtoint ptr %prefixlen to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %sub481, ptr %prefixlen, align 4
  %138 = ptrtoint ptr %nhsel to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nhsel, align 4
  %conv483 = trunc i32 %139 to i8
  %nh_sel = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 2
  %140 = ptrtoint ptr %nh_sel to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv483, ptr %nh_sel, align 1
  %nhc484 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %141 = ptrtoint ptr %nhc484 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %nhc.0, ptr %nhc484, align 4
  %142 = ptrtoint ptr %fa_type848 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %fa_type848, align 1
  %type = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 3
  %144 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %type, align 2
  %145 = ptrtoint ptr %fib_scope842 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %fib_scope842, align 2
  %scope = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 4
  %147 = ptrtoint ptr %scope to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %scope, align 1
  %fi487 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %148 = ptrtoint ptr %fi487 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %83, ptr %fi487, align 4
  %table = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 8
  %149 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %tb, ptr %table, align 4
  %fa_head = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 9
  %150 = ptrtoint ptr %fa_head to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %80, ptr %fa_head, align 4
  %151 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %semantic_match_passed511 = getelementptr inbounds %struct.trie_use_stats, ptr %3, i32 0, i32 2
  %152 = ptrtoint ptr %semantic_match_passed511 to i32
  %153 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cpu, align 4
  %arrayidx515 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %154
  %155 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx515, align 4
  %add516 = add i32 %156, %152
  %157 = inttoptr i32 %add516 to ptr
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  %add517 = add i32 %159, 1
  store i32 %add517, ptr %157, align 4
  %160 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i766 = and i32 %160, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i766)
  %tobool528.not = icmp eq i32 %and.i.i766, 0
  br i1 %tobool528.not, label %if.then537, label %if.end477.do.end540_crit_edge, !prof !333

if.end477.do.end540_crit_edge:                    ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end540

if.then537:                                       ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end540

do.end540:                                        ; preds = %if.then537, %if.end477.do.end540_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %151) #12, !srcloc !344
  %tb_id547 = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %161 = ptrtoint ptr %tb_id547 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tb_id547, align 4
  tail call fastcc void @trace_fib_table_lookup(i32 noundef %162, ptr noundef %flp, ptr noundef %nhc.0, i32 noundef %104)
  br label %cleanup549.thread775

for.inc:                                          ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nuw i32 %storemerge, 1
  %163 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr = load ptr, ptr %nh, align 4
  br label %for.cond465

cleanup549.thread775:                             ; preds = %do.end540, %do.end433
  %retval.7.ph = phi i32 [ %104, %do.end540 ], [ %err.0, %do.end433 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhsel) #12
  br label %cleanup630

cleanup549:                                       ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhsel) #12
  br label %do.body573

for.inc555:                                       ; preds = %fib_info_num_path.exit.for.inc555_crit_edge, %if.end441.for.inc555_crit_edge, %if.end363.for.inc555_crit_edge, %if.end360.for.inc555_crit_edge, %land.lhs.true353.for.inc555_crit_edge, %for.body.for.inc555_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhsel) #12
  %164 = ptrtoint ptr %fa.0813 to i32
  call void @__asan_load4_noabort(i32 %164)
  %fa.0 = load volatile ptr, ptr %fa.0813, align 4
  %tobool338.not = icmp eq ptr %fa.0, null
  br i1 %tobool338.not, label %for.inc555.do.body573_crit_edge, label %for.inc555.for.body_crit_edge

for.inc555.for.body_crit_edge:                    ; preds = %for.inc555
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc555.do.body573_crit_edge:                  ; preds = %for.inc555
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body573

do.body573:                                       ; preds = %for.inc555.do.body573_crit_edge, %cleanup549, %do.end328.do.body573_crit_edge
  %165 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %semantic_match_miss = getelementptr inbounds %struct.trie_use_stats, ptr %3, i32 0, i32 3
  %166 = ptrtoint ptr %semantic_match_miss to i32
  %167 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cpu, align 4
  %arrayidx598 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %168
  %169 = ptrtoint ptr %arrayidx598 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx598, align 4
  %add599 = add i32 %170, %166
  %171 = inttoptr i32 %add599 to ptr
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 4
  %add600 = add i32 %173, 1
  store i32 %add600, ptr %171, align 4
  %174 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i767 = and i32 %174, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i767)
  %tobool611.not = icmp eq i32 %and.i.i767, 0
  br i1 %tobool611.not, label %if.then620, label %do.body573.do.end623_crit_edge, !prof !333

do.body573.do.end623_crit_edge:                   ; preds = %do.body573
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end623

if.then620:                                       ; preds = %do.body573
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end623

do.end623:                                        ; preds = %if.then620, %do.body573.do.end623_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %165) #12, !srcloc !344
  br label %backtrace

cleanup630:                                       ; preds = %cleanup549.thread775, %cleanup.thread, %if.then12
  %retval.9 = phi i32 [ -11, %if.then12 ], [ -11, %cleanup.thread ], [ %retval.7.ph, %cleanup549.thread775 ]
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fib_table_lookup(i32 noundef %tb_id, ptr noundef %flp, ptr noundef %nhc, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 1), ptr blockaddress(@trace_fib_table_lookup, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !335

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !337

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !347
  %call42 = tail call i32 @__traceiter_fib_table_lookup(ptr noundef null, i32 noundef %tb_id, ptr noundef %flp, ptr noundef %nhc, i32 noundef %err) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !348
  %13 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !337

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !349
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fib_table_lookup, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fib_table_lookup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fib_table_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 99, ptr noundef nonnull @.str.4) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !350
  %31 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nexthop_is_blackhole(ptr noundef %nh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %if.then.do.end10_crit_edge, label %lor.lhs.false

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @nexthop_is_blackhole.__warned, align 1
  br i1 %.b44, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_is_blackhole.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 343, ptr noundef nonnull @.str.4) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %num_nh = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_nh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp ugt i16 %6, 1
  br i1 %cmp, label %do.end10.cleanup38_crit_edge, label %cleanup

do.end10.cleanup38_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

cleanup:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %nh_entries = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %nh_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nh_entries, align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %entry.if.end16_crit_edge
  %nh.addr.1 = phi ptr [ %8, %cleanup ], [ %nh, %entry.if.end16_crit_edge ]
  %9 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.1, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %call22 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call22, label %if.end16.do.end35_crit_edge, label %lor.lhs.false24

if.end16.do.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

lor.lhs.false24:                                  ; preds = %if.end16
  %call25 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %lor.lhs.false24.do.end35_crit_edge

lor.lhs.false24.do.end35_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true27:                                  ; preds = %lor.lhs.false24
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b4243 = load i1, ptr @nexthop_is_blackhole.__warned.29, align 1
  br i1 %.b4243, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_is_blackhole.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 350, ptr noundef nonnull @.str.4) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %lor.lhs.false24.do.end35_crit_edge, %if.end16.do.end35_crit_edge
  %reject_nh = getelementptr inbounds %struct.nh_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %reject_nh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reject_nh, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37 = icmp ne i8 %13, 0
  br label %cleanup38

cleanup38:                                        ; preds = %do.end35, %do.end10.cleanup38_crit_edge
  %retval.1 = phi i1 [ %tobool37, %do.end35 ], [ false, %do.end10.cleanup38_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nexthop_get_nhc_lookup(ptr noundef %nh, i32 noundef %fib_flags, ptr nocapture noundef readonly %flp, ptr nocapture noundef writeonly %nhsel) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %call42 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool43.not, label %land.lhs.true, label %if.then.do.end9_crit_edge

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @nexthop_get_nhc_lookup.__warned, align 1
  br i1 %.b77, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_get_nhc_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 398, ptr noundef nonnull @.str.4) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %if.then.do.end9_crit_edge
  %num_nh = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_nh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp82.not = icmp eq i16 %6, 0
  br i1 %cmp82.not, label %do.end9.cleanup58_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.cleanup58_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nh_group, ptr %4, i32 0, i32 8, i32 %i.083
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = getelementptr inbounds %struct.nexthop, ptr %8, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %for.body.do.end28_crit_edge

for.body.do.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b7376 = load i1, ptr @nexthop_get_nhc_lookup.__warned.30, align 1
  br i1 %.b7376, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_get_nhc_lookup.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 404, ptr noundef nonnull @.str.4) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.body.do.end28_crit_edge
  %12 = getelementptr inbounds %struct.nh_info, ptr %11, i32 0, i32 5
  %call30 = tail call zeroext i1 @fib_lookup_good_nhc(ptr noundef %12, i32 noundef %fib_flags, ptr noundef %flp)
  br i1 %call30, label %do.end28.cleanup58.sink.split_crit_edge, label %for.inc

do.end28.cleanup58.sink.split_crit_edge:          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58.sink.split

for.inc:                                          ; preds = %do.end28
  %inc = add nuw nsw i32 %i.083, 1
  %13 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_nh, align 4
  %conv = zext i16 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup58_crit_edge

for.inc.cleanup58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else:                                          ; preds = %entry
  br i1 %tobool43.not, label %land.lhs.true44, label %if.else.do.end52_crit_edge

if.else.do.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

land.lhs.true44:                                  ; preds = %if.else
  %call45 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.do.end52_crit_edge, label %land.lhs.true47

land.lhs.true44.do.end52_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %.b7475 = load i1, ptr @nexthop_get_nhc_lookup.__warned.31, align 1
  br i1 %.b7475, label %land.lhs.true47.do.end52_crit_edge, label %if.then49

land.lhs.true47.do.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

if.then49:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_get_nhc_lookup.__warned.31, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 411, ptr noundef nonnull @.str.4) #12
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %land.lhs.true47.do.end52_crit_edge, %land.lhs.true44.do.end52_crit_edge, %if.else.do.end52_crit_edge
  %15 = getelementptr inbounds %struct.nh_info, ptr %4, i32 0, i32 5
  %call54 = tail call zeroext i1 @fib_lookup_good_nhc(ptr noundef %15, i32 noundef %fib_flags, ptr noundef %flp)
  br i1 %call54, label %do.end52.cleanup58.sink.split_crit_edge, label %do.end52.cleanup58_crit_edge

do.end52.cleanup58_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58

do.end52.cleanup58.sink.split_crit_edge:          ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup58.sink.split

cleanup58.sink.split:                             ; preds = %do.end52.cleanup58.sink.split_crit_edge, %do.end28.cleanup58.sink.split_crit_edge
  %i.083.lcssa.sink = phi i32 [ 0, %do.end52.cleanup58.sink.split_crit_edge ], [ %i.083, %do.end28.cleanup58.sink.split_crit_edge ]
  %retval.3.ph = phi ptr [ %15, %do.end52.cleanup58.sink.split_crit_edge ], [ %12, %do.end28.cleanup58.sink.split_crit_edge ]
  %16 = ptrtoint ptr %nhsel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.083.lcssa.sink, ptr %nhsel, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %cleanup58.sink.split, %do.end52.cleanup58_crit_edge, %for.inc.cleanup58_crit_edge, %do.end9.cleanup58_crit_edge
  %retval.3 = phi ptr [ null, %do.end52.cleanup58_crit_edge ], [ null, %do.end9.cleanup58_crit_edge ], [ %retval.3.ph, %cleanup58.sink.split ], [ null, %for.inc.cleanup58_crit_edge ]
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_table_delete(ptr noundef %net, ptr nocapture noundef %tb, ptr noundef %cfg, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.fib_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cfg, align 4
  %conv = zext i8 %3 to i32
  %sub = sub i8 32, %3
  %fc_tos = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %fc_tos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fc_tos, align 1
  %fc_dst = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 7
  %6 = ptrtoint ptr %fc_dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fc_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp.i = icmp ugt i8 %3, 32
  br i1 %cmp.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup89_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body.i.cleanup89_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp5.not.i = icmp eq i8 %3, 32
  %shl.i = shl i32 %7, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool8.not.i = icmp eq i32 %shl.i, 0
  %or.cond.i = select i1 %cmp5.not.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %if.end3.i.do.body.i158_crit_edge, label %do.body10.i

if.end3.i.do.body.i158_crit_edge:                 ; preds = %if.end3.i
  br label %do.body.i158

do.body10.i:                                      ; preds = %if.end3.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_valid_key_len.__msg.22) #12
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.cleanup89_crit_edge, label %do.body10.i.return.sink.split.i_crit_edge

do.body10.i.return.sink.split.i_crit_edge:        ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i

do.body10.i.cleanup89_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

return.sink.split.i:                              ; preds = %do.body10.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %fib_valid_key_len.__msg.22.sink.i = phi ptr [ @fib_valid_key_len.__msg, %do.body.i.return.sink.split.i_crit_edge ], [ @fib_valid_key_len.__msg.22, %do.body10.i.return.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fib_valid_key_len.__msg.22.sink.i, ptr %extack, align 4
  br label %cleanup89

do.body.i158:                                     ; preds = %do.cond19.i.do.body.i158_crit_edge, %if.end3.i.do.body.i158_crit_edge
  %index.0.i = phi i32 [ %shr.i, %do.cond19.i.do.body.i158_crit_edge ], [ 0, %if.end3.i.do.body.i158_crit_edge ]
  %n.0.i = phi ptr [ %11, %do.cond19.i.do.body.i158_crit_edge ], [ %1, %if.end3.i.do.body.i158_crit_edge ]
  %9 = getelementptr inbounds %struct.key_vector, ptr %n.0.i, i32 0, i32 4
  %arrayidx.i = getelementptr [0 x ptr], ptr %9, i32 0, i32 %index.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %do.body.i158.do.end9.i_crit_edge, label %lor.lhs.false.i

do.body.i158.do.end9.i_crit_edge:                 ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %do.body.i158
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i159 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i159, label %land.lhs.true.i, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @fib_find_node.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 942, ptr noundef nonnull @.str.4) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %lor.lhs.false.i.do.end9.i_crit_edge, %do.body.i158.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %11, null
  br i1 %tobool11.not.i, label %do.end9.i.cleanup89_crit_edge, label %if.end13.i

do.end9.i.cleanup89_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end13.i:                                       ; preds = %do.end9.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %xor.i = xor i32 %13, %7
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos.i, align 4
  %conv.i160 = zext i8 %15 to i32
  %shr.i = lshr i32 %xor.i, %conv.i160
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits.i, align 1
  %conv15.i = zext i8 %17 to i32
  %shr.highbits.i = lshr i32 %shr.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits.i)
  %cmp.not.i = icmp eq i32 %shr.highbits.i, 0
  br i1 %cmp.not.i, label %do.cond19.i, label %if.end13.i.cleanup89_crit_edge

if.end13.i.cleanup89_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

do.cond19.i:                                      ; preds = %if.end13.i
  %tobool21.not.i = icmp eq i8 %17, 0
  br i1 %tobool21.not.i, label %if.end4, label %do.cond19.i.do.body.i158_crit_edge

do.cond19.i.do.body.i158_crit_edge:               ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i158

if.end4:                                          ; preds = %do.cond19.i
  %18 = getelementptr inbounds %struct.key_vector, ptr %11, i32 0, i32 4
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %19 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tb_id, align 4
  %tobool.not.i161 = icmp eq ptr %18, null
  br i1 %tobool.not.i161, label %if.end4.cleanup89_crit_edge, label %for.cond.preheader.i

if.end4.cleanup89_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

for.cond.preheader.i:                             ; preds = %if.end4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %fa.078.i = load ptr, ptr %18, align 4
  %tobool3.not79.i = icmp eq ptr %fa.078.i, null
  br i1 %tobool3.not79.i, label %for.cond.preheader.i.cleanup89_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup89_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %fa.080.i = phi ptr [ %fa.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fa.078.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 5
  %22 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fa_slen.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %sub)
  %cmp.i162 = icmp ult i8 %23, %sub
  br i1 %cmp.i162, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %sub)
  %cmp11.not.i = icmp eq i8 %23, %sub
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end7.i.cleanup89_crit_edge

if.end7.i.cleanup89_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end14.i:                                       ; preds = %if.end7.i
  %tb_id15.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 6
  %24 = ptrtoint ptr %tb_id15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tb_id15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp16.i = icmp ugt i32 %25, %20
  br i1 %cmp16.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end19.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %20)
  %cmp21.not.i.not = icmp eq i32 %25, %20
  br i1 %cmp21.not.i.not, label %if.end27.i, label %if.end19.i.cleanup89_crit_edge

if.end19.i.cleanup89_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end27.i:                                       ; preds = %if.end19.i
  %fa_tos.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i, i32 0, i32 2
  %26 = ptrtoint ptr %fa_tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fa_tos.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %5)
  %cmp30.i = icmp ugt i8 %27, %5
  br i1 %cmp30.i, label %if.end27.i.for.inc.i_crit_edge, label %do.body

if.end27.i.for.inc.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end27.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %fa.080.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %fa.0.i = load ptr, ptr %fa.080.i, align 4
  %tobool3.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool3.not.i, label %for.inc.i.cleanup89_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup89_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

do.body:                                          ; preds = %if.end27.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fib_table_delete.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib_table_delete, %if.then13)) #12
          to label %for.body.lr.ph [label %if.then13], !srcloc !335

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fib_table_delete.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %conv, i32 noundef %conv15, ptr noundef %1) #12
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then13, %do.body
  %fc_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  %fc_scope = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 3
  %fc_prefsrc = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 12
  %fc_protocol = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fa.0192 = phi ptr [ %fa.080.i, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 1
  %29 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fa_info, align 4
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 5
  %31 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fa_slen, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %sub)
  %cmp.not = icmp eq i8 %32, %sub
  br i1 %cmp.not, label %lor.lhs.false, label %for.body.cleanup89_crit_edge

for.body.cleanup89_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

lor.lhs.false:                                    ; preds = %for.body
  %tb_id21 = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 6
  %33 = ptrtoint ptr %tb_id21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tb_id21, align 4
  %35 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tb_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp23.not = icmp eq i32 %34, %36
  br i1 %cmp23.not, label %lor.lhs.false25, label %lor.lhs.false.cleanup89_crit_edge

lor.lhs.false.cleanup89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %fa_tos = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 2
  %37 = ptrtoint ptr %fa_tos to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fa_tos, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %5)
  %cmp28.not = icmp eq i8 %38, %5
  br i1 %cmp28.not, label %if.end31, label %lor.lhs.false25.cleanup89_crit_edge

lor.lhs.false25.cleanup89_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.end31:                                         ; preds = %lor.lhs.false25
  %39 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool32.not = icmp eq i8 %40, 0
  br i1 %tobool32.not, label %if.end31.land.lhs.true_crit_edge, label %lor.lhs.false33

if.end31.land.lhs.true_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false33:                                  ; preds = %if.end31
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 3
  %41 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fa_type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %40)
  %cmp37 = icmp eq i8 %42, %40
  br i1 %cmp37, label %lor.lhs.false33.land.lhs.true_crit_edge, label %lor.lhs.false33.for.inc_crit_edge

lor.lhs.false33.for.inc_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false33.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false33.land.lhs.true_crit_edge, %if.end31.land.lhs.true_crit_edge
  %43 = ptrtoint ptr %fc_scope to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fc_scope, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %cmp40 = icmp eq i8 %44, -1
  br i1 %cmp40, label %land.lhs.true.land.lhs.true49_crit_edge, label %lor.lhs.false42

land.lhs.true.land.lhs.true49_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true49

lor.lhs.false42:                                  ; preds = %land.lhs.true
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %30, i32 0, i32 9
  %45 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fib_scope, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %44)
  %cmp47 = icmp eq i8 %46, %44
  br i1 %cmp47, label %lor.lhs.false42.land.lhs.true49_crit_edge, label %lor.lhs.false42.for.inc_crit_edge

lor.lhs.false42.for.inc_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false42.land.lhs.true49_crit_edge:        ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false42.land.lhs.true49_crit_edge, %land.lhs.true.land.lhs.true49_crit_edge
  %47 = ptrtoint ptr %fc_prefsrc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fc_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool50.not = icmp eq i32 %48, 0
  br i1 %tobool50.not, label %land.lhs.true49.land.lhs.true55_crit_edge, label %lor.lhs.false51

land.lhs.true49.land.lhs.true55_crit_edge:        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true55

lor.lhs.false51:                                  ; preds = %land.lhs.true49
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %30, i32 0, i32 11
  %49 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp53 = icmp eq i32 %50, %48
  br i1 %cmp53, label %lor.lhs.false51.land.lhs.true55_crit_edge, label %lor.lhs.false51.for.inc_crit_edge

lor.lhs.false51.for.inc_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false51.land.lhs.true55_crit_edge:        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true55

land.lhs.true55:                                  ; preds = %lor.lhs.false51.land.lhs.true55_crit_edge, %land.lhs.true49.land.lhs.true55_crit_edge
  %51 = ptrtoint ptr %fc_protocol to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fc_protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool56.not = icmp eq i8 %52, 0
  br i1 %tobool56.not, label %land.lhs.true55.land.lhs.true63_crit_edge, label %lor.lhs.false57

land.lhs.true55.land.lhs.true63_crit_edge:        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true63

lor.lhs.false57:                                  ; preds = %land.lhs.true55
  %fib_protocol = getelementptr inbounds %struct.fib_info, ptr %30, i32 0, i32 8
  %53 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fib_protocol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %52)
  %cmp61 = icmp eq i8 %54, %52
  br i1 %cmp61, label %lor.lhs.false57.land.lhs.true63_crit_edge, label %lor.lhs.false57.for.inc_crit_edge

lor.lhs.false57.for.inc_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false57.land.lhs.true63_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %lor.lhs.false57.land.lhs.true63_crit_edge, %land.lhs.true55.land.lhs.true63_crit_edge
  %call64 = tail call i32 @fib_nh_match(ptr noundef %net, ptr noundef %cfg, ptr noundef %30, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %land.lhs.true67, label %land.lhs.true63.for.inc_crit_edge

land.lhs.true63.for.inc_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %call68 = tail call zeroext i1 @fib_metrics_match(ptr noundef %cfg, ptr noundef %30) #12
  br i1 %call68, label %for.cond.preheader.i.i, label %land.lhs.true67.for.inc_crit_edge

land.lhs.true67.for.inc_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true67.for.inc_crit_edge, %land.lhs.true63.for.inc_crit_edge, %lor.lhs.false57.for.inc_crit_edge, %lor.lhs.false51.for.inc_crit_edge, %lor.lhs.false42.for.inc_crit_edge, %lor.lhs.false33.for.inc_crit_edge
  %55 = ptrtoint ptr %fa.0192 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fa.0192, align 4
  %tobool17.not = icmp eq ptr %56, null
  br i1 %tobool17.not, label %for.inc.cleanup89_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup89_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

for.cond.preheader.i.i:                           ; preds = %land.lhs.true67
  %fa_info.le = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 1
  %fa_slen.le = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 5
  %tb_id21.le = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 6
  %57 = ptrtoint ptr %tb_id21.le to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tb_id21.le, align 4
  %59 = ptrtoint ptr %fa_slen.le to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fa_slen.le, align 1
  %61 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %61)
  %fa.078.i.i = load ptr, ptr %18, align 4
  %tobool3.not79.i.i = icmp eq ptr %fa.078.i.i, null
  br i1 %tobool3.not79.i.i, label %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %fa.080.i.i = phi ptr [ %fa.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %fa.078.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %fa_slen.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %fa_slen.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fa_slen.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %60)
  %cmp.i.i = icmp ult i8 %63, %60
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %60)
  %cmp11.not.i.i = icmp eq i8 %63, %60
  br i1 %cmp11.not.i.i, label %if.end14.i.i, label %if.end7.i.i.fib_find_alias.exit.i_crit_edge

if.end7.i.i.fib_find_alias.exit.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %tb_id15.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %tb_id15.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tb_id15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %58)
  %cmp16.i.i = icmp ugt i32 %65, %58
  br i1 %cmp16.i.i, label %if.end14.i.i.for.inc.i.i_crit_edge, label %if.end19.i.i

if.end14.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end19.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %58)
  %cmp21.not.i.not.i = icmp eq i32 %65, %58
  %.mux.le.i.i = select i1 %cmp21.not.i.not.i, ptr %fa.080.i.i, ptr null
  br label %fib_find_alias.exit.i

for.inc.i.i:                                      ; preds = %if.end14.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %66 = ptrtoint ptr %fa.080.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %fa.0.i.i = load ptr, ptr %fa.080.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %fa.0.i.i, null
  br i1 %tobool3.not.i.i, label %for.inc.i.i.fib_find_alias.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.fib_find_alias.exit.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

fib_find_alias.exit.i:                            ; preds = %for.inc.i.i.fib_find_alias.exit.i_crit_edge, %if.end19.i.i, %if.end7.i.i.fib_find_alias.exit.i_crit_edge, %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %.mux.le.i.i, %if.end19.i.i ], [ null, %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge ], [ null, %if.end7.i.i.fib_find_alias.exit.i_crit_edge ], [ null, %for.inc.i.i.fib_find_alias.exit.i_crit_edge ]
  %cmp.not.i165 = icmp eq ptr %retval.0.i.i, %fa.0192
  br i1 %cmp.not.i165, label %if.end.i, label %fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge

fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge: ; preds = %fib_find_alias.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_notify_alias_delete.exit

if.end.i:                                         ; preds = %fib_find_alias.exit.i
  %67 = ptrtoint ptr %fa.0192 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fa.0192, align 4
  %tobool.not.i166 = icmp eq ptr %68, null
  br i1 %tobool.not.i166, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i167

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i167:                               ; preds = %if.end.i
  %fa_slen4.i = getelementptr inbounds %struct.fib_alias, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %fa_slen4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fa_slen4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %60)
  %cmp6.i = icmp eq i8 %70, %60
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i167.if.else.i_crit_edge

land.lhs.true.i167.if.else.i_crit_edge:           ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i167
  %tb_id9.i = getelementptr inbounds %struct.fib_alias, ptr %68, i32 0, i32 6
  %71 = ptrtoint ptr %tb_id9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tb_id9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %58)
  %cmp10.i = icmp eq i32 %72, %58
  br i1 %cmp10.i, label %land.lhs.true8.i.if.end13.i168_crit_edge, label %land.lhs.true8.i.if.else.i_crit_edge

land.lhs.true8.i.if.else.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true8.i.if.end13.i168_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i168

if.else.i:                                        ; preds = %land.lhs.true8.i.if.else.i_crit_edge, %land.lhs.true.i167.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  br label %if.end13.i168

if.end13.i168:                                    ; preds = %if.else.i, %land.lhs.true8.i.if.end13.i168_crit_edge
  %fib_event.0.i = phi i32 [ 3, %if.else.i ], [ 0, %land.lhs.true8.i.if.end13.i168_crit_edge ]
  %fa_to_notify.0.i = phi ptr [ %fa.0192, %if.else.i ], [ %68, %land.lhs.true8.i.if.end13.i168_crit_edge ]
  %conv14.i = zext i8 %60 to i32
  %sub.i = sub nsw i32 32, %conv14.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i.i) #12
  %73 = getelementptr inbounds i8, ptr %info.i.i, i32 20
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4
  %75 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %info.i.i, align 4
  %extack2.i.i = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %extack2.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %extack, ptr %extack2.i.i, align 4
  %dst3.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %dst3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %7, ptr %dst3.i.i, align 4
  %dst_len4.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %dst_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i, ptr %dst_len4.i.i, align 4
  %fi.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %fa_info.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 1
  %79 = ptrtoint ptr %fa_info.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fa_info.i.i, align 4
  %81 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %fi.i.i, align 4
  %fa_tos.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 2
  %82 = ptrtoint ptr %fa_tos.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fa_tos.i.i, align 4
  store i8 %83, ptr %73, align 4
  %type.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 5
  %fa_type.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 3
  %84 = ptrtoint ptr %fa_type.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fa_type.i.i, align 1
  %86 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %type.i.i, align 1
  %tb_id.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 6
  %tb_id5.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 6
  %87 = ptrtoint ptr %tb_id5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tb_id5.i.i, align 4
  %89 = ptrtoint ptr %tb_id.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tb_id.i.i, align 4
  %call.i.i = call i32 @call_fib4_notifiers(ptr noundef %net, i32 noundef %fib_event.0.i, ptr noundef nonnull %info.i.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i.i) #12
  br label %fib_notify_alias_delete.exit

fib_notify_alias_delete.exit:                     ; preds = %if.end13.i168, %fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge
  %90 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tb_id, align 4
  %fc_nlinfo = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20
  call void @rtmsg_fib(i32 noundef 25, i32 noundef %7, ptr noundef nonnull %fa.0192, i32 noundef %conv, i32 noundef %91, ptr noundef %fc_nlinfo, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool80.not = icmp eq i8 %3, 0
  br i1 %tobool80.not, label %if.then81, label %fib_notify_alias_delete.exit.if.end82_crit_edge

fib_notify_alias_delete.exit.if.end82_crit_edge:  ; preds = %fib_notify_alias_delete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then81:                                        ; preds = %fib_notify_alias_delete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tb_num_default = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 2
  %92 = ptrtoint ptr %tb_num_default to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tb_num_default, align 4
  %dec = add i32 %93, -1
  store i32 %dec, ptr %tb_num_default, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %fib_notify_alias_delete.exit.if.end82_crit_edge
  call fastcc void @fib_remove_alias(ptr noundef %1, ptr noundef %n.0.i, ptr noundef nonnull %11, ptr noundef nonnull %fa.0192)
  %fa_state = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 4
  %94 = ptrtoint ptr %fa_state to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fa_state, align 2
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool84.not = icmp eq i8 %96, 0
  br i1 %tobool84.not, label %if.end82.if.end87_crit_edge, label %if.then85

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %nl_net = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20, i32 1
  %97 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nl_net, align 4
  call void @rt_cache_flush(ptr noundef %98) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end82.if.end87_crit_edge
  %99 = ptrtoint ptr %fa_info.le to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fa_info.le, align 4
  call void @fib_release_info(ptr noundef %100) #12
  %rcu.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0192, i32 0, i32 11
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__alias_free_mem) #12
  br label %cleanup89

cleanup89:                                        ; preds = %if.end87, %for.inc.cleanup89_crit_edge, %lor.lhs.false25.cleanup89_crit_edge, %lor.lhs.false.cleanup89_crit_edge, %for.body.cleanup89_crit_edge, %for.inc.i.cleanup89_crit_edge, %if.end19.i.cleanup89_crit_edge, %if.end7.i.cleanup89_crit_edge, %for.cond.preheader.i.cleanup89_crit_edge, %if.end4.cleanup89_crit_edge, %if.end13.i.cleanup89_crit_edge, %do.end9.i.cleanup89_crit_edge, %return.sink.split.i, %do.body10.i.cleanup89_crit_edge, %do.body.i.cleanup89_crit_edge
  %retval.0 = phi i32 [ 0, %if.end87 ], [ -22, %do.body.i.cleanup89_crit_edge ], [ -22, %do.body10.i.cleanup89_crit_edge ], [ -22, %return.sink.split.i ], [ -3, %if.end4.cleanup89_crit_edge ], [ -3, %for.cond.preheader.i.cleanup89_crit_edge ], [ -3, %lor.lhs.false25.cleanup89_crit_edge ], [ -3, %lor.lhs.false.cleanup89_crit_edge ], [ -3, %for.body.cleanup89_crit_edge ], [ -3, %for.inc.cleanup89_crit_edge ], [ -3, %if.end7.i.cleanup89_crit_edge ], [ -3, %for.inc.i.cleanup89_crit_edge ], [ -3, %if.end19.i.cleanup89_crit_edge ], [ -3, %do.end9.i.cleanup89_crit_edge ], [ -3, %if.end13.i.cleanup89_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_nh_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_metrics_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib_trie_unmerge(ptr noundef readonly %oldtb) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %oldtb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tp, align 4
  %__data = getelementptr inbounds %struct.fib_table, ptr %oldtb, i32 0, i32 5
  %cmp = icmp eq ptr %1, %__data
  br i1 %cmp, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 44) #15
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.cleanup48_crit_edge, label %if.end3.i

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

if.end3.i:                                        ; preds = %if.end
  %tb_id.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %tb_id.i, align 8
  %tb_num_default.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %tb_num_default.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tb_num_default.i, align 4
  %cond.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 0, i32 5
  %tb_data.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cond.i, ptr %tb_data.i, align 8
  %pos.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %pos.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %pos.i, align 8
  %slen.i = getelementptr inbounds %struct.key_vector, ptr %cond.i, i32 0, i32 3
  %8 = ptrtoint ptr %slen.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %slen.i, align 2
  %call13.i = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 4) #16
  %stats.i = getelementptr inbounds %struct.fib_table, ptr %call7.i.i.i, i32 1, i32 2
  %9 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13.i, ptr %stats.i, align 8
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.end3.i.cleanup48.sink.split_crit_edge, label %if.end4

if.end3.i.cleanup48.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48.sink.split

if.end4:                                          ; preds = %if.end3.i
  %10 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb_data.i, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %if.end4
  %key.0 = phi i32 [ 0, %if.end4 ], [ %add, %for.end.while.cond_crit_edge ]
  %call6 = call fastcc ptr @leaf_walk_rcu(ptr noundef nonnull %tp, i32 noundef %key.0)
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %while.cond.cleanup48_crit_edge, label %while.body

while.cond.cleanup48_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

while.body:                                       ; preds = %while.cond
  %12 = getelementptr inbounds %struct.key_vector, ptr %call6, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %fa.0102 = load ptr, ptr %12, align 4
  %tobool10.not103 = icmp eq ptr %fa.0102, null
  br i1 %tobool10.not103, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %fa.0106 = phi ptr [ %fa.0, %for.inc.for.body_crit_edge ], [ %fa.0102, %while.body.for.body_crit_edge ]
  %local_l.0105 = phi ptr [ %local_l.2, %for.inc.for.body_crit_edge ], [ null, %while.body.for.body_crit_edge ]
  %local_tp.0104 = phi ptr [ %local_tp.2, %for.inc.for.body_crit_edge ], [ inttoptr (i32 -1 to ptr), %while.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tb_id.i, align 8
  %tb_id11 = getelementptr inbounds %struct.fib_alias, ptr %fa.0106, i32 0, i32 6
  %16 = ptrtoint ptr %tb_id11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tb_id11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12.not = icmp eq i32 %15, %17
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %18 = load ptr, ptr @fn_alias_kmem, align 4
  %call15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #12
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end18:                                         ; preds = %if.end14
  %19 = call ptr @memcpy(ptr %call15, ptr %fa.0106, i32 36)
  %tobool19.not = icmp eq ptr %local_l.0105, null
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  %20 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call6, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond19.i.do.body.i_crit_edge, %if.then20
  %index.0.i = phi i32 [ 0, %if.then20 ], [ %shr.i, %do.cond19.i.do.body.i_crit_edge ]
  %n.0.i = phi ptr [ %11, %if.then20 ], [ %24, %do.cond19.i.do.body.i_crit_edge ]
  %22 = getelementptr inbounds %struct.key_vector, ptr %n.0.i, i32 0, i32 4
  %arrayidx.i = getelementptr [0 x ptr], ptr %22, i32 0, i32 %index.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %do.body.i.do.end9.i_crit_edge, label %lor.lhs.false.i

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b31.i = load i1, ptr @fib_find_node.__warned, align 1
  br i1 %.b31.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 942, ptr noundef nonnull @.str.4) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %lor.lhs.false.i.do.end9.i_crit_edge, %do.body.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %24, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end23_crit_edge, label %if.end13.i

do.end9.i.if.end23_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end13.i:                                       ; preds = %do.end9.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %xor.i = xor i32 %26, %21
  %pos.i80 = getelementptr inbounds %struct.key_vector, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %pos.i80 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos.i80, align 4
  %conv.i = zext i8 %28 to i32
  %shr.i = lshr i32 %xor.i, %conv.i
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bits.i, align 1
  %conv15.i = zext i8 %30 to i32
  %shr.highbits.i = lshr i32 %shr.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.highbits.i)
  %cmp.not.i = icmp eq i32 %shr.highbits.i, 0
  br i1 %cmp.not.i, label %do.cond19.i, label %if.end13.i.if.end23_crit_edge

if.end13.i.if.end23_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

do.cond19.i:                                      ; preds = %if.end13.i
  %tobool21.not.i = icmp eq i8 %30, 0
  br i1 %tobool21.not.i, label %do.cond19.i.if.end23_crit_edge, label %do.cond19.i.do.body.i_crit_edge

do.cond19.i.do.body.i_crit_edge:                  ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond19.i.if.end23_crit_edge:                   ; preds = %do.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %do.cond19.i.if.end23_crit_edge, %if.end13.i.if.end23_crit_edge, %do.end9.i.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %local_tp.1 = phi ptr [ %local_tp.0104, %if.end18.if.end23_crit_edge ], [ %n.0.i, %do.end9.i.if.end23_crit_edge ], [ %n.0.i, %if.end13.i.if.end23_crit_edge ], [ %n.0.i, %do.cond19.i.if.end23_crit_edge ]
  %local_l.1 = phi ptr [ %local_l.0105, %if.end18.if.end23_crit_edge ], [ %24, %do.cond19.i.if.end23_crit_edge ], [ null, %if.end13.i.if.end23_crit_edge ], [ null, %do.end9.i.if.end23_crit_edge ]
  %31 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call6, align 4
  %call25 = tail call fastcc i32 @fib_insert_alias(ptr noundef %11, ptr noundef %local_tp.1, ptr noundef %local_l.1, ptr noundef nonnull %call15, ptr noundef null, i32 noundef %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.for.inc_crit_edge, label %if.then27

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %33 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call15) #12
  br label %out

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %local_tp.2 = phi ptr [ %local_tp.1, %if.end23.for.inc_crit_edge ], [ %local_tp.0104, %for.body.for.inc_crit_edge ]
  %local_l.2 = phi ptr [ %local_l.1, %if.end23.for.inc_crit_edge ], [ %local_l.0105, %for.body.for.inc_crit_edge ]
  %34 = ptrtoint ptr %fa.0106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %fa.0 = load ptr, ptr %fa.0106, align 4
  %tobool10.not = icmp eq ptr %fa.0, null
  br i1 %tobool10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %35 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call6, align 4
  %add = add i32 %36, 1
  %cmp41 = icmp eq i32 %36, -1
  br i1 %cmp41, label %for.end.cleanup48_crit_edge, label %for.end.while.cond_crit_edge

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

for.end.cleanup48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

out:                                              ; preds = %if.then27, %if.end14.out_crit_edge
  %37 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tb_data.i, align 8
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %for.cond.i.outer.backedge, %out
  %cindex.0.i.ph = phi i32 [ 1, %out ], [ %cindex.0.i.ph.be, %for.cond.i.outer.backedge ]
  %pn.0.i.ph = phi ptr [ %38, %out ], [ %pn.0.i.ph.be, %for.cond.i.outer.backedge ]
  %39 = getelementptr inbounds %struct.key_vector, ptr %pn.0.i.ph, i32 0, i32 4
  %pos.i90.i = getelementptr inbounds %struct.key_vector, ptr %pn.0.i.ph, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %for.cond.i.outer
  %cindex.0.i = phi i32 [ %cindex.0.i.ph, %for.cond.i.outer ], [ %dec.i, %for.cond.i.backedge ]
  %dec.i = add i32 %cindex.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.0.i)
  %tobool.not.i82 = icmp eq i32 %cindex.0.i, 0
  br i1 %tobool.not.i82, label %if.then.i84, label %do.body15.i

if.then.i84:                                      ; preds = %for.cond.i
  %40 = ptrtoint ptr %pn.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pn.0.i.ph, align 4
  %pos.i83 = getelementptr inbounds %struct.key_vector, ptr %pn.0.i.ph, i32 0, i32 1
  %42 = ptrtoint ptr %pos.i83 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pos.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %43)
  %cmp.i = icmp ugt i8 %43, 31
  br i1 %cmp.i, label %fib_trie_free.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i84
  %call.i85 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i85, label %if.end.i.do.end.i_crit_edge, label %land.lhs.true.i87

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i87:                                ; preds = %if.end.i
  %call3.i86 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i86)
  %tobool4.not.i = icmp eq i32 %call3.i86, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i87.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i87.do.end.i_crit_edge:             ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i87
  %.b85.i = load i1, ptr @fib_trie_free.__warned, align 1
  br i1 %.b85.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1848, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i87.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %pn.0.i.ph, i32 -20
  %parent.i = getelementptr i8, ptr %pn.0.i.ph, i32 -4
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i, align 4
  %pos.i.i = getelementptr inbounds %struct.key_vector, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %47)
  %cmp.i.i = icmp ugt i8 %47, 31
  br i1 %cmp.i.i, label %do.body.i.i, label %get_index.exit.i.i

do.body.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %48 = getelementptr inbounds %struct.key_vector, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr null, ptr %48, align 4
  br label %put_child_root.exit.i

get_index.exit.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %pn.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pn.0.i.ph, align 4
  %conv.i.i.i = zext i8 %47 to i32
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 4
  %xor.i.i.i = xor i32 %53, %51
  %shr.i.i.i = lshr i32 %xor.i.i.i, %conv.i.i.i
  tail call fastcc void @put_child(ptr noundef %45, i32 noundef %shr.i.i.i, ptr noundef null) #12
  br label %put_child_root.exit.i

put_child_root.exit.i:                            ; preds = %get_index.exit.i.i, %do.body.i.i
  tail call void @call_rcu(ptr noundef %add.ptr.i.i, ptr noundef nonnull @__node_free_rcu) #12
  %54 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %55)
  %cmp.i89.i = icmp eq i8 %55, 32
  br i1 %cmp.i89.i, label %put_child_root.exit.i.for.cond.i.outer.backedge_crit_edge, label %if.end.i.i

put_child_root.exit.i.for.cond.i.outer.backedge_crit_edge: ; preds = %put_child_root.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.outer.backedge

if.end.i.i:                                       ; preds = %put_child_root.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i8 %55 to i32
  %56 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %45, align 4
  %xor.i.i = xor i32 %57, %41
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  br label %for.cond.i.outer.backedge

do.body15.i:                                      ; preds = %for.cond.i
  %call16.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call16.i, label %do.body15.i.do.end25.i_crit_edge, label %land.lhs.true17.i

do.body15.i.do.end25.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

land.lhs.true17.i:                                ; preds = %do.body15.i
  %call18.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true17.i.do.end25.i_crit_edge, label %land.lhs.true20.i

land.lhs.true17.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

land.lhs.true20.i:                                ; preds = %land.lhs.true17.i
  %.b8486.i = load i1, ptr @fib_trie_free.__warned.35, align 1
  br i1 %.b8486.i, label %land.lhs.true20.i.do.end25.i_crit_edge, label %if.then22.i

land.lhs.true20.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

if.then22.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_free.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1860, ptr noundef nonnull @.str.12) #12
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then22.i, %land.lhs.true20.i.do.end25.i_crit_edge, %land.lhs.true17.i.do.end25.i_crit_edge, %do.body15.i.do.end25.i_crit_edge
  %arrayidx.i88 = getelementptr [0 x ptr], ptr %39, i32 0, i32 %dec.i
  %58 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i88, align 4
  %tobool27.not.i = icmp eq ptr %59, null
  br i1 %tobool27.not.i, label %do.end25.i.for.cond.i.backedge_crit_edge, label %if.end29.i

do.end25.i.for.cond.i.backedge_crit_edge:         ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.end29.i:                                       ; preds = %do.end25.i
  %bits.i89 = getelementptr inbounds %struct.key_vector, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %bits.i89 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bits.i89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool30.not.i = icmp eq i8 %61, 0
  br i1 %tobool30.not.i, label %if.end34.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv33.i = zext i8 %61 to i32
  %shl.i = shl nuw i32 1, %conv33.i
  br label %for.cond.i.outer.backedge

for.cond.i.outer.backedge:                        ; preds = %if.then31.i, %if.end.i.i, %put_child_root.exit.i.for.cond.i.outer.backedge_crit_edge
  %cindex.0.i.ph.be = phi i32 [ 0, %put_child_root.exit.i.for.cond.i.outer.backedge_crit_edge ], [ %shr.i.i, %if.end.i.i ], [ %shl.i, %if.then31.i ]
  %pn.0.i.ph.be = phi ptr [ %45, %put_child_root.exit.i.for.cond.i.outer.backedge_crit_edge ], [ %45, %if.end.i.i ], [ %59, %if.then31.i ]
  br label %for.cond.i.outer

if.end34.i:                                       ; preds = %if.end29.i
  %62 = getelementptr inbounds %struct.key_vector, ptr %59, i32 0, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool39.not104.i = icmp eq ptr %64, null
  br i1 %tobool39.not104.i, label %if.end34.i.for.end.i_crit_edge, label %land.rhs.i.preheader

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.rhs.i.preheader:                             ; preds = %if.end34.i
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %pprev2.i.i.i107 = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %pprev2.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pprev2.i.i.i107, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %66, ptr %68, align 4
  %tobool.not.i.i.i108 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i108, label %land.rhs.i.preheader.for.end.loopexit.i_crit_edge, label %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge

land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge: ; preds = %land.rhs.i.preheader
  br label %hlist_del_rcu.exit.i

land.rhs.i.preheader.for.end.loopexit.i_crit_edge: ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit.i

hlist_del_rcu.exit.i:                             ; preds = %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge, %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge
  %70 = phi ptr [ %77, %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge ], [ %68, %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge ]
  %pprev2.i.i.i110 = phi ptr [ %pprev14.i.i.i, %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge ], [ %pprev2.i.i.i107, %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge ]
  %71 = phi ptr [ %75, %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge ], [ %66, %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge ]
  %fa.0105.i109 = phi ptr [ %71, %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge ], [ %64, %land.rhs.i.preheader.hlist_del_rcu.exit.i_crit_edge ]
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %pprev14.i.i.i, align 4
  %73 = ptrtoint ptr %pprev2.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i110, align 4
  %rcu.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0105.i109, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @__alias_free_mem) #12
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %76 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pprev14.i.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %75, ptr %77, align 4
  %tobool.not.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i, label %hlist_del_rcu.exit.i.for.end.loopexit.i_crit_edge, label %hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge

hlist_del_rcu.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i.for.end.loopexit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit.i

for.end.loopexit.i:                               ; preds = %hlist_del_rcu.exit.i.for.end.loopexit.i_crit_edge, %land.rhs.i.preheader.for.end.loopexit.i_crit_edge
  %fa.0105.i.lcssa = phi ptr [ %64, %land.rhs.i.preheader.for.end.loopexit.i_crit_edge ], [ %71, %hlist_del_rcu.exit.i.for.end.loopexit.i_crit_edge ]
  %pprev2.i.i.i.lcssa = phi ptr [ %pprev2.i.i.i107, %land.rhs.i.preheader.for.end.loopexit.i_crit_edge ], [ %pprev14.i.i.i, %hlist_del_rcu.exit.i.for.end.loopexit.i_crit_edge ]
  %79 = ptrtoint ptr %pprev2.i.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.lcssa, align 4
  %rcu.i106.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0105.i.lcssa, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i106.i, ptr noundef nonnull @__alias_free_mem) #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end34.i.for.end.i_crit_edge
  %80 = ptrtoint ptr %pos.i90.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pos.i90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %81)
  %cmp.i91.i = icmp ugt i8 %81, 31
  br i1 %cmp.i91.i, label %do.body.i92.i, label %get_index.exit.i96.i

do.body.i92.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %82 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr null, ptr %39, align 4
  br label %put_child_root.exit97.i

get_index.exit.i96.i:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %59, align 4
  %conv.i.i93.i = zext i8 %81 to i32
  %85 = ptrtoint ptr %pn.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pn.0.i.ph, align 4
  %xor.i.i94.i = xor i32 %86, %84
  %shr.i.i95.i = lshr i32 %xor.i.i94.i, %conv.i.i93.i
  tail call fastcc void @put_child(ptr noundef %pn.0.i.ph, i32 noundef %shr.i.i95.i, ptr noundef null) #12
  br label %put_child_root.exit97.i

put_child_root.exit97.i:                          ; preds = %get_index.exit.i96.i, %do.body.i92.i
  %add.ptr.i98.i = getelementptr i8, ptr %59, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i98.i, ptr noundef nonnull @__node_free_rcu) #12
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %put_child_root.exit97.i, %do.end25.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

fib_trie_free.exit:                               ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #14
  %stats.i90 = getelementptr inbounds %struct.trie, ptr %38, i32 0, i32 1
  %87 = ptrtoint ptr %stats.i90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stats.i90, align 4
  tail call void @free_percpu(ptr noundef %88) #12
  br label %cleanup48.sink.split

cleanup48.sink.split:                             ; preds = %fib_trie_free.exit, %if.end3.i.cleanup48.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.sink.split, %for.end.cleanup48_crit_edge, %while.cond.cleanup48_crit_edge, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi ptr [ %oldtb, %entry.cleanup48_crit_edge ], [ null, %if.end.cleanup48_crit_edge ], [ null, %cleanup48.sink.split ], [ %call7.i.i.i, %while.cond.cleanup48_crit_edge ], [ %call7.i.i.i, %for.end.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib_trie_table(i32 noundef %id, ptr noundef %alias) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %alias, null
  %spec.select = select i1 %tobool.not, i32 44, i32 28
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3520) #16
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %call9.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %tb_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %tb_id, align 8
  %tb_num_default = getelementptr inbounds %struct.fib_table, ptr %call9.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %tb_num_default to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tb_num_default, align 4
  %call.alias = select i1 %tobool.not, ptr %call9.i.i, ptr %alias
  %cond = getelementptr inbounds %struct.fib_table, ptr %call.alias, i32 0, i32 5
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %call9.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %tb_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cond, ptr %tb_data, align 8
  br i1 %tobool.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %pos = getelementptr inbounds %struct.fib_table, ptr %call.alias, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %pos, align 4
  %slen = getelementptr inbounds %struct.key_vector, ptr %cond, i32 0, i32 3
  %4 = ptrtoint ptr %slen to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %slen, align 2
  %call13 = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 4) #16
  %stats = getelementptr inbounds %struct.fib_table, ptr %call.alias, i32 1, i32 2
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %stats, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end3.cleanup_crit_edge ], [ %call9.i.i, %if.end9.cleanup_crit_edge ], [ null, %if.then16 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @leaf_walk_rcu(ptr nocapture noundef %tn, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tn, align 4
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %entry
  %n.0 = phi ptr [ %1, %entry ], [ %10, %if.end19.do.body_crit_edge ]
  %2 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %key)
  %cmp = icmp ult i32 %3, %key
  br i1 %cmp, label %cond.true, label %do.body.cond.end_crit_edge

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %do.body
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp.i = icmp eq i8 %5, 32
  br i1 %cmp.i, label %cond.true.cond.end_crit_edge, label %if.end.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %5 to i32
  %xor.i = xor i32 %3, %key
  %shr.i = lshr i32 %xor.i, %conv.i
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.true.cond.end_crit_edge, %do.body.cond.end_crit_edge
  %cond = phi i32 [ 0, %do.body.cond.end_crit_edge ], [ %shr.i, %if.end.i ], [ 0, %cond.true.cond.end_crit_edge ]
  %bits = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 2
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits, align 1
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %cond, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  br i1 %tobool.not, label %if.end, label %cond.end.while.cond.outer.preheader_crit_edge

cond.end.while.cond.outer.preheader_crit_edge:    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.preheader

if.end:                                           ; preds = %cond.end
  %8 = getelementptr inbounds %struct.key_vector, ptr %n.0, i32 0, i32 4
  %arrayidx = getelementptr [0 x ptr], ptr %8, i32 0, i32 %cond
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call4, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b126 = load i1, ptr @leaf_walk_rcu.__warned, align 1
  br i1 %.b126, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @leaf_walk_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1787, ptr noundef nonnull @.str.4) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %do.end31.loopexit.split.loop.exit141, label %if.end19

if.end19:                                         ; preds = %do.end15
  %bits20 = getelementptr inbounds %struct.key_vector, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bits20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits20, align 1
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true22:                                  ; preds = %if.end19
  %inc.le144 = add i32 %cond, 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %key)
  %cmp24.not = icmp ult i32 %14, %key
  br i1 %cmp24.not, label %land.lhs.true22.while.cond.outer.preheader_crit_edge, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true22.while.cond.outer.preheader_crit_edge: ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.preheader

do.end31.loopexit.split.loop.exit141:             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  %inc.le = add i32 %cond, 1
  br label %while.cond.outer.preheader

while.cond.outer.preheader:                       ; preds = %do.end31.loopexit.split.loop.exit141, %land.lhs.true22.while.cond.outer.preheader_crit_edge, %cond.end.while.cond.outer.preheader_crit_edge
  %cindex.1.ph.ph = phi i32 [ %inc.le, %do.end31.loopexit.split.loop.exit141 ], [ %inc.le144, %land.lhs.true22.while.cond.outer.preheader_crit_edge ], [ %cond, %cond.end.while.cond.outer.preheader_crit_edge ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.outer.preheader
  %cindex.1.ph = phi i32 [ %cindex.1.ph.ph, %while.cond.outer.preheader ], [ %cindex.1.ph.be, %while.cond.outer.backedge ]
  %pn.0.ph = phi ptr [ %n.0, %while.cond.outer.preheader ], [ %pn.0.ph.be, %while.cond.outer.backedge ]
  %pos = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 1
  %bits35 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 2
  %15 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %do.end84.while.cond_crit_edge, %while.cond.outer
  %cindex.1 = phi i32 [ %inc68, %do.end84.while.cond_crit_edge ], [ %cindex.1.ph, %while.cond.outer ]
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp33 = icmp ult i8 %17, 32
  br i1 %cmp33, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %18 = ptrtoint ptr %bits35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits35, align 1
  %conv36 = zext i8 %19 to i32
  %cindex.1.highbits = lshr i32 %cindex.1, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.1.highbits)
  %cmp37.not = icmp eq i32 %cindex.1.highbits, 0
  br i1 %cmp37.not, label %if.end63, label %if.then39

if.then39:                                        ; preds = %while.body
  %20 = ptrtoint ptr %pn.0.ph to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pn.0.ph, align 4
  %parent = getelementptr i8, ptr %pn.0.ph, i32 -4
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %parent, align 4
  %call47 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call47, label %if.then39.do.end60_crit_edge, label %lor.lhs.false49

if.then39.do.end60_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

lor.lhs.false49:                                  ; preds = %if.then39
  %call50 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %lor.lhs.false49.do.end60_crit_edge

lor.lhs.false49.do.end60_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

land.lhs.true52:                                  ; preds = %lor.lhs.false49
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b122125 = load i1, ptr @leaf_walk_rcu.__warned.33, align 1
  br i1 %.b122125, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @leaf_walk_rcu.__warned.33, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1802, ptr noundef nonnull @.str.4) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %lor.lhs.false49.do.end60_crit_edge, %if.then39.do.end60_crit_edge
  %pos.i127 = getelementptr inbounds %struct.key_vector, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pos.i127 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pos.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cmp.i128 = icmp eq i8 %25, 32
  br i1 %cmp.i128, label %do.end60.get_index.exit134_crit_edge, label %if.end.i132

do.end60.get_index.exit134_crit_edge:             ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_index.exit134

if.end.i132:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i129 = zext i8 %25 to i32
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %xor.i130 = xor i32 %27, %21
  %shr.i131 = lshr i32 %xor.i130, %conv.i129
  br label %get_index.exit134

get_index.exit134:                                ; preds = %if.end.i132, %do.end60.get_index.exit134_crit_edge
  %retval.0.i133 = phi i32 [ %shr.i131, %if.end.i132 ], [ 0, %do.end60.get_index.exit134_crit_edge ]
  %add = add i32 %retval.0.i133, 1
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end88.while.cond.outer.backedge_crit_edge, %get_index.exit134
  %cindex.1.ph.be = phi i32 [ 0, %if.end88.while.cond.outer.backedge_crit_edge ], [ %add, %get_index.exit134 ]
  %pn.0.ph.be = phi ptr [ %29, %if.end88.while.cond.outer.backedge_crit_edge ], [ %23, %get_index.exit134 ]
  br label %while.cond.outer

if.end63:                                         ; preds = %while.body
  %inc68 = add i32 %cindex.1, 1
  %arrayidx69 = getelementptr [0 x ptr], ptr %15, i32 0, i32 %cindex.1
  %28 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call71, label %if.end63.do.end84_crit_edge, label %lor.lhs.false73

if.end63.do.end84_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

lor.lhs.false73:                                  ; preds = %if.end63
  %call74 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %lor.lhs.false73.do.end84_crit_edge

lor.lhs.false73.do.end84_crit_edge:               ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

land.lhs.true76:                                  ; preds = %lor.lhs.false73
  %call77 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true76.do.end84_crit_edge, label %land.lhs.true79

land.lhs.true76.do.end84_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %.b123124 = load i1, ptr @leaf_walk_rcu.__warned.34, align 1
  br i1 %.b123124, label %land.lhs.true79.do.end84_crit_edge, label %if.then81

land.lhs.true79.do.end84_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @leaf_walk_rcu.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1808, ptr noundef nonnull @.str.4) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %land.lhs.true79.do.end84_crit_edge, %land.lhs.true76.do.end84_crit_edge, %lor.lhs.false73.do.end84_crit_edge, %if.end63.do.end84_crit_edge
  %tobool86.not = icmp eq ptr %29, null
  br i1 %tobool86.not, label %do.end84.while.cond_crit_edge, label %if.end88

do.end84.while.cond_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end88:                                         ; preds = %do.end84
  %bits89 = getelementptr inbounds %struct.key_vector, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bits89 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bits89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool90.not = icmp eq i8 %31, 0
  br i1 %tobool90.not, label %if.end88.cleanup_crit_edge, label %if.end88.while.cond.outer.backedge_crit_edge

if.end88.while.cond.outer.backedge_crit_edge:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end88.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge
  %storemerge = phi ptr [ %n.0, %land.lhs.true22.cleanup_crit_edge ], [ %pn.0.ph, %while.cond.cleanup_crit_edge ], [ %pn.0.ph, %if.end88.cleanup_crit_edge ]
  %retval.0 = phi ptr [ %10, %land.lhs.true22.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ], [ %29, %if.end88.cleanup_crit_edge ]
  %32 = ptrtoint ptr %tn to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %storemerge, ptr %tn, align 4
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_table_flush_external(ptr nocapture noundef readonly %tb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %cindex.0.ph = phi i32 [ 1, %entry ], [ %cindex.0.ph.be, %for.cond.outer.backedge ]
  %pn.0.ph = phi ptr [ %1, %entry ], [ %pn.0.ph.be, %for.cond.outer.backedge ]
  %2 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 4
  %pos.i94 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %cindex.0 = phi i32 [ %cindex.0.ph, %for.cond.outer ], [ %dec, %for.cond.backedge ]
  %dec = add i32 %cindex.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.0)
  %tobool.not = icmp eq i32 %cindex.0, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %for.cond
  %3 = ptrtoint ptr %pn.0.ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pn.0.ph, align 4
  %pos = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %6)
  %cmp = icmp ugt i8 %6, 31
  br i1 %cmp, label %for.end62, label %if.end

if.end:                                           ; preds = %if.then
  %slen3 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph, i32 0, i32 3
  %7 = ptrtoint ptr %slen3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slen3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %6)
  %cmp7 = icmp ugt i8 %8, %6
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc zeroext i8 @update_suffix(ptr noundef %pn.0.ph)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %call11 = tail call fastcc ptr @resize(ptr noundef %1, ptr noundef %pn.0.ph)
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %call11, i32 0, i32 1
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp.i = icmp eq i8 %10, 32
  br i1 %cmp.i, label %if.end10.for.cond.outer.backedge_crit_edge, label %if.end.i

if.end10.for.cond.outer.backedge_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.outer.backedge

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call11, align 4
  %xor.i = xor i32 %12, %4
  %shr.i = lshr i32 %xor.i, %conv.i
  br label %for.cond.outer.backedge

do.body:                                          ; preds = %for.cond
  %call14 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call14, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b92 = load i1, ptr @fib_table_flush_external.__warned, align 1
  br i1 %.b92, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_flush_external.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1978, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %2, i32 0, i32 %dec
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %do.end.for.cond.backedge_crit_edge, label %if.end24

do.end.for.cond.backedge_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end24:                                         ; preds = %do.end
  %bits = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool25.not = icmp eq i8 %16, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %conv28 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv28
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.then26, %if.end.i, %if.end10.for.cond.outer.backedge_crit_edge
  %cindex.0.ph.be = phi i32 [ 0, %if.end10.for.cond.outer.backedge_crit_edge ], [ %shr.i, %if.end.i ], [ %shl, %if.then26 ]
  %pn.0.ph.be = phi ptr [ %call11, %if.end10.for.cond.outer.backedge_crit_edge ], [ %call11, %if.end.i ], [ %14, %if.then26 ]
  br label %for.cond.outer

if.end29:                                         ; preds = %if.end24
  %17 = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool34.not101 = icmp eq ptr %19, null
  br i1 %tobool34.not101, label %if.end29.for.end_crit_edge, label %if.end29.land.rhs_crit_edge

if.end29.land.rhs_crit_edge:                      ; preds = %if.end29
  br label %land.rhs

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end29.land.rhs_crit_edge
  %fa.0103 = phi ptr [ %21, %for.inc.land.rhs_crit_edge ], [ %19, %if.end29.land.rhs_crit_edge ]
  %slen.0102 = phi i8 [ %slen.1, %for.inc.land.rhs_crit_edge ], [ 0, %if.end29.land.rhs_crit_edge ]
  %20 = ptrtoint ptr %fa.0103 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fa.0103, align 4
  %22 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tb_id, align 4
  %tb_id37 = getelementptr inbounds %struct.fib_alias, ptr %fa.0103, i32 0, i32 6
  %24 = ptrtoint ptr %tb_id37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tb_id37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp38.not = icmp eq i32 %23, %25
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %land.rhs
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %fa.0103, i32 0, i32 1
  %26 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev2.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %27, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then40.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then40.hlist_del_rcu.exit_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then40.hlist_del_rcu.exit_crit_edge
  %30 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0103, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__alias_free_mem) #12
  br label %for.inc

if.end42:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0103, i32 0, i32 5
  %31 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fa_slen, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %hlist_del_rcu.exit
  %slen.1 = phi i8 [ %slen.0102, %hlist_del_rcu.exit ], [ %32, %if.end42 ]
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %slen.0.lcssa = phi i8 [ 0, %if.end29.for.end_crit_edge ], [ %slen.1, %for.inc.for.end_crit_edge ]
  %slen53 = getelementptr inbounds %struct.key_vector, ptr %14, i32 0, i32 3
  %33 = ptrtoint ptr %slen53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %slen.0.lcssa, ptr %slen53, align 2
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %17, align 4
  %tobool.not.i.not = icmp eq ptr %35, null
  br i1 %tobool.not.i.not, label %if.then56, label %for.end.for.cond.backedge_crit_edge

for.end.for.cond.backedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %put_child_root.exit, %for.end.for.cond.backedge_crit_edge, %do.end.for.cond.backedge_crit_edge
  br label %for.cond

if.then56:                                        ; preds = %for.end
  %36 = ptrtoint ptr %pos.i94 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pos.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %37)
  %cmp.i95 = icmp ugt i8 %37, 31
  br i1 %cmp.i95, label %do.body.i, label %get_index.exit.i

do.body.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr null, ptr %2, align 4
  br label %put_child_root.exit

get_index.exit.i:                                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %14, align 4
  %conv.i.i = zext i8 %37 to i32
  %41 = ptrtoint ptr %pn.0.ph to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pn.0.ph, align 4
  %xor.i.i = xor i32 %42, %40
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  tail call fastcc void @put_child(ptr noundef %pn.0.ph, i32 noundef %shr.i.i, ptr noundef null) #12
  br label %put_child_root.exit

put_child_root.exit:                              ; preds = %get_index.exit.i, %do.body.i
  %add.ptr.i = getelementptr i8, ptr %14, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i, ptr noundef nonnull @__node_free_rcu) #12
  br label %for.cond.backedge

for.end62:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @update_suffix(ptr nocapture noundef %tn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pos, align 4
  %bits = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 2
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits, align 1
  %add = add i8 %1, -1
  %sub = add i8 %add, %3
  %slen4 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 3
  %4 = ptrtoint ptr %slen4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slen4, align 2
  %6 = tail call i8 @llvm.umin.i8(i8 %sub, i8 %5)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1177.not = icmp eq i8 %3, 0
  br i1 %cmp1177.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %7 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slen.080 = phi i8 [ %1, %for.body.lr.ph ], [ %slen.173, %for.inc.for.body_crit_edge ]
  %stride.079 = phi i32 [ 2, %for.body.lr.ph ], [ %stride.172, %for.inc.for.body_crit_edge ]
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %add38, %for.inc.for.body_crit_edge ]
  %call13 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call13, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true15

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b64 = load i1, ptr @update_suffix.__warned, align 1
  br i1 %.b64, label %land.lhs.true15.do.end_crit_edge, label %if.then

land.lhs.true15.do.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @update_suffix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 725, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true15.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %7, i32 0, i32 %i.078
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %do.end.for.inc_crit_edge, label %lor.lhs.false

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %do.end
  %slen19 = getelementptr inbounds %struct.key_vector, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %slen19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %slen19, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %slen.080)
  %cmp22.not = icmp ugt i8 %11, %slen.080
  br i1 %cmp22.not, label %cleanup, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false
  %conv21 = zext i8 %slen.080 to i32
  %conv20 = zext i8 %11 to i32
  %sub29 = sub nsw i32 %conv20, %conv21
  %shl = shl i32 %stride.079, %sub29
  %neg = sub i32 0, %shl
  %and = and i32 %i.078, %neg
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %6)
  %cmp34.not.not = icmp ult i8 %11, %6
  br i1 %cmp34.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %slen.173 = phi i8 [ %11, %cleanup.for.inc_crit_edge ], [ %slen.080, %lor.lhs.false.for.inc_crit_edge ], [ %slen.080, %do.end.for.inc_crit_edge ]
  %stride.172 = phi i32 [ %shl, %cleanup.for.inc_crit_edge ], [ %stride.079, %lor.lhs.false.for.inc_crit_edge ], [ %stride.079, %do.end.for.inc_crit_edge ]
  %i.171 = phi i32 [ %and, %cleanup.for.inc_crit_edge ], [ %i.078, %lor.lhs.false.for.inc_crit_edge ], [ %i.078, %do.end.for.inc_crit_edge ]
  %add38 = add i32 %i.171, %stride.172
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -2
  %cmp11 = icmp ult i32 %add38, %and.i
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %slen.2 = phi i8 [ %1, %entry.for.end_crit_edge ], [ %11, %cleanup.for.end_crit_edge ], [ %slen.173, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %slen4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %slen.2, ptr %slen4, align 2
  ret i8 %slen.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @resize(ptr nocapture noundef readonly %t, ptr noundef %tn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.trie, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b278 = load i1, ptr @resize.__warned, align 1
  br i1 %.b278, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 851, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %parent = getelementptr i8, ptr %tn, i32 -4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp.i = icmp eq i8 %5, 32
  br i1 %cmp.i, label %do.end.get_index.exit_crit_edge, label %if.end.i

do.end.get_index.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_index.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %tn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tn, align 4
  %conv.i = zext i8 %5 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %xor.i = xor i32 %9, %7
  %shr.i = lshr i32 %xor.i, %conv.i
  br label %get_index.exit

get_index.exit:                                   ; preds = %if.end.i, %do.end.get_index.exit_crit_edge
  %retval.0.i280 = phi i32 [ %shr.i, %if.end.i ], [ 0, %do.end.get_index.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @resize.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@resize, %if.then13)) #12
          to label %do.body17 [label %if.then13], !srcloc !335

if.then13:                                        ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @resize.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.37, ptr noundef %tn, i32 noundef 50, i32 noundef 25) #12
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %get_index.exit
  %call19 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call19, label %do.body17.do.end28_crit_edge, label %land.lhs.true20

do.body17.do.end28_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true20:                                  ; preds = %do.body17
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b268277 = load i1, ptr @resize.__warned.38, align 1
  br i1 %.b268277, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 862, ptr noundef nonnull @.str.12) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %do.body17.do.end28_crit_edge
  %10 = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 4
  %arrayidx = getelementptr [0 x ptr], ptr %10, i32 0, i32 %retval.0.i280
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %12, %tn
  br i1 %cmp.not, label %while.cond.preheader, label %do.body37, !prof !337

while.cond.preheader:                             ; preds = %do.end28
  %bits.i.i336 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 2
  %13 = ptrtoint ptr %bits.i.i336 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bits.i.i336, align 1
  %conv.i.i337 = zext i8 %14 to i32
  %shl.i.i338 = shl nuw i32 1, %conv.i.i337
  %and.i.i339 = and i32 %shl.i.i338, -2
  %empty_children.i344 = getelementptr i8, ptr %tn, i32 -12
  %15 = ptrtoint ptr %empty_children.i344 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %empty_children.i344, align 4
  %sub.i345 = sub i32 %and.i.i339, %16
  %full_children.i346 = getelementptr i8, ptr %tn, i32 -8
  %17 = ptrtoint ptr %full_children.i346 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %full_children.i346, align 4
  %add.i347 = add i32 %sub.i345, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i347)
  %cmp4.i348 = icmp ugt i32 %add.i347, 1
  br i1 %cmp4.i348, label %land.lhs.true.i.preheader, label %while.cond.preheader.do.body115_crit_edge

while.cond.preheader.do.body115_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

land.lhs.true.i.preheader:                        ; preds = %while.cond.preheader
  %19 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %20)
  %cmp.i282341 = icmp ugt i8 %20, 31
  %cond.i342 = select i1 %cmp.i282341, i32 30, i32 50
  %mul.i343 = mul i32 %and.i.i339, %cond.i342
  br label %land.lhs.true.i

do.body37:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #12, !srcloc !352
  unreachable

land.lhs.true.i:                                  ; preds = %do.end112.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %add.i352 = phi i32 [ %add.i, %do.end112.land.lhs.true.i_crit_edge ], [ %add.i347, %land.lhs.true.i.preheader ]
  %mul.i351 = phi i32 [ %mul.i, %do.end112.land.lhs.true.i_crit_edge ], [ %mul.i343, %land.lhs.true.i.preheader ]
  %tn.addr.0350 = phi ptr [ %37, %do.end112.land.lhs.true.i_crit_edge ], [ %tn, %land.lhs.true.i.preheader ]
  %max_work.0349 = phi i32 [ %dec, %do.end112.land.lhs.true.i_crit_edge ], [ 10, %land.lhs.true.i.preheader ]
  %pos6.i = getelementptr inbounds %struct.key_vector, ptr %tn.addr.0350, i32 0, i32 1
  %21 = ptrtoint ptr %pos6.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pos6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body115_crit_edge, label %should_inflate.exit

land.lhs.true.i.do.body115_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

should_inflate.exit:                              ; preds = %land.lhs.true.i
  %mul8.i = mul i32 %add.i352, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i, i32 %mul.i351)
  %cmp9.i.not = icmp ult i32 %mul8.i, %mul.i351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_work.0349)
  %tobool47.not = icmp eq i32 %max_work.0349, 0
  %or.cond = select i1 %cmp9.i.not, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %should_inflate.exit.do.body115_crit_edge, label %while.body

should_inflate.exit.do.body115_crit_edge:         ; preds = %should_inflate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

while.body:                                       ; preds = %should_inflate.exit
  %call48 = tail call fastcc ptr @inflate(ptr noundef %t, ptr noundef %tn.addr.0350)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body52, label %if.end101

do.body52:                                        ; preds = %while.body
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %resize_node_skipped = getelementptr inbounds %struct.trie_use_stats, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %resize_node_skipped to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx70, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add71 = add i32 %33, 1
  store i32 %add71, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i283 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i283)
  %tobool82.not = icmp eq i32 %and.i.i283, 0
  br i1 %tobool82.not, label %if.then91, label %do.body52.do.end94_crit_edge, !prof !333

do.body52.do.end94_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end94

if.then91:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body52.do.end94_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #12, !srcloc !344
  br label %do.body115

if.end101:                                        ; preds = %while.body
  %dec = add nsw i32 %max_work.0349, -1
  %call103 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call103, label %if.end101.do.end112_crit_edge, label %land.lhs.true104

if.end101.do.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

land.lhs.true104:                                 ; preds = %if.end101
  %call105 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %land.lhs.true104.do.end112_crit_edge, label %land.lhs.true107

land.lhs.true104.do.end112_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

land.lhs.true107:                                 ; preds = %land.lhs.true104
  %.b269276 = load i1, ptr @resize.__warned.39, align 1
  br i1 %.b269276, label %land.lhs.true107.do.end112_crit_edge, label %if.then109

land.lhs.true107.do.end112_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

if.then109:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned.39, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 877, ptr noundef nonnull @.str.12) #12
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %land.lhs.true107.do.end112_crit_edge, %land.lhs.true104.do.end112_crit_edge, %if.end101.do.end112_crit_edge
  %35 = getelementptr inbounds %struct.key_vector, ptr %call48, i32 0, i32 4
  %arrayidx114 = getelementptr [0 x ptr], ptr %35, i32 0, i32 %retval.0.i280
  %36 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx114, align 4
  %bits.i.i = getelementptr inbounds %struct.key_vector, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bits.i.i, align 1
  %conv.i.i = zext i8 %39 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -2
  %pos.i281 = getelementptr inbounds %struct.key_vector, ptr %call48, i32 0, i32 1
  %40 = ptrtoint ptr %pos.i281 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pos.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %41)
  %cmp.i282 = icmp ugt i8 %41, 31
  %cond.i = select i1 %cmp.i282, i32 30, i32 50
  %mul.i = mul i32 %and.i.i, %cond.i
  %empty_children.i = getelementptr i8, ptr %37, i32 -12
  %42 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %empty_children.i, align 4
  %sub.i = sub i32 %and.i.i, %43
  %full_children.i = getelementptr i8, ptr %37, i32 -8
  %44 = ptrtoint ptr %full_children.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %full_children.i, align 4
  %add.i = add i32 %sub.i, %45
  %cmp4.i = icmp ugt i32 %add.i, 1
  br i1 %cmp4.i, label %do.end112.land.lhs.true.i_crit_edge, label %do.end112.do.body115_crit_edge

do.end112.do.body115_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

do.end112.land.lhs.true.i_crit_edge:              ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

do.body115:                                       ; preds = %do.end112.do.body115_crit_edge, %do.end94, %should_inflate.exit.do.body115_crit_edge, %land.lhs.true.i.do.body115_crit_edge, %while.cond.preheader.do.body115_crit_edge
  %max_work.0335 = phi i32 [ %max_work.0349, %do.end94 ], [ 10, %while.cond.preheader.do.body115_crit_edge ], [ %max_work.0349, %should_inflate.exit.do.body115_crit_edge ], [ %max_work.0349, %land.lhs.true.i.do.body115_crit_edge ], [ %dec, %do.end112.do.body115_crit_edge ]
  %tn.addr.0333 = phi ptr [ %tn.addr.0350, %do.end94 ], [ %tn, %while.cond.preheader.do.body115_crit_edge ], [ %tn.addr.0350, %should_inflate.exit.do.body115_crit_edge ], [ %tn.addr.0350, %land.lhs.true.i.do.body115_crit_edge ], [ %37, %do.end112.do.body115_crit_edge ]
  %call116 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call116, label %do.body115.do.end125_crit_edge, label %land.lhs.true117

do.body115.do.end125_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

land.lhs.true117:                                 ; preds = %do.body115
  %call118 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.lhs.true117.do.end125_crit_edge, label %land.lhs.true120

land.lhs.true117.do.end125_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

land.lhs.true120:                                 ; preds = %land.lhs.true117
  %.b270275 = load i1, ptr @resize.__warned.40, align 1
  br i1 %.b270275, label %land.lhs.true120.do.end125_crit_edge, label %if.then122

land.lhs.true120.do.end125_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

if.then122:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 881, ptr noundef nonnull @.str.12) #12
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %land.lhs.true120.do.end125_crit_edge, %land.lhs.true117.do.end125_crit_edge, %do.body115.do.end125_crit_edge
  %parent128 = getelementptr i8, ptr %tn.addr.0333, i32 -4
  %46 = ptrtoint ptr %parent128 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %max_work.0335)
  %cmp129.not = icmp eq i32 %max_work.0335, 10
  br i1 %cmp129.not, label %while.cond133.preheader, label %do.end125.cleanup_crit_edge

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond133.preheader:                          ; preds = %do.end125
  %bits.i.i285364 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.0333, i32 0, i32 2
  %48 = ptrtoint ptr %bits.i.i285364 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bits.i.i285364, align 1
  %conv.i.i286365 = zext i8 %49 to i32
  %shl.i.i287366 = shl nuw i32 1, %conv.i.i286365
  %and.i.i288367 = and i32 %shl.i.i287366, -2
  %empty_children.i289368 = getelementptr i8, ptr %tn.addr.0333, i32 -12
  %50 = ptrtoint ptr %empty_children.i289368 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %empty_children.i289368, align 4
  %sub.i290369 = sub i32 %and.i.i288367, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i290369)
  %cmp3.i370 = icmp ugt i32 %sub.i290369, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp6.i371 = icmp ugt i8 %49, 1
  %or.cond.i372 = select i1 %cmp3.i370, i1 %cmp6.i371, i1 false
  br i1 %or.cond.i372, label %while.cond133.preheader.should_halve.exit_crit_edge, label %while.cond133.preheader.while.end217_crit_edge

while.cond133.preheader.while.end217_crit_edge:   ; preds = %while.cond133.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end217

while.cond133.preheader.should_halve.exit_crit_edge: ; preds = %while.cond133.preheader
  br label %should_halve.exit

should_halve.exit:                                ; preds = %do.end214.should_halve.exit_crit_edge, %while.cond133.preheader.should_halve.exit_crit_edge
  %sub.i290377 = phi i32 [ %sub.i290, %do.end214.should_halve.exit_crit_edge ], [ %sub.i290369, %while.cond133.preheader.should_halve.exit_crit_edge ]
  %and.i.i288376 = phi i32 [ %and.i.i288, %do.end214.should_halve.exit_crit_edge ], [ %and.i.i288367, %while.cond133.preheader.should_halve.exit_crit_edge ]
  %tn.addr.1375 = phi ptr [ %68, %do.end214.should_halve.exit_crit_edge ], [ %tn.addr.0333, %while.cond133.preheader.should_halve.exit_crit_edge ]
  %tp.1374 = phi ptr [ %call140, %do.end214.should_halve.exit_crit_edge ], [ %47, %while.cond133.preheader.should_halve.exit_crit_edge ]
  %max_work.1373 = phi i32 [ %dec203, %do.end214.should_halve.exit_crit_edge ], [ 10, %while.cond133.preheader.should_halve.exit_crit_edge ]
  %pos.i291 = getelementptr inbounds %struct.key_vector, ptr %tp.1374, i32 0, i32 1
  %52 = ptrtoint ptr %pos.i291 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pos.i291, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %53)
  %cmp.i292 = icmp ugt i8 %53, 31
  %cond.i293 = select i1 %cmp.i292, i32 15, i32 25
  %mul.i294 = mul i32 %cond.i293, %and.i.i288376
  %mul8.i295 = mul i32 %sub.i290377, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i295, i32 %mul.i294)
  %cmp9.i296 = icmp uge i32 %mul8.i295, %mul.i294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_work.1373)
  %tobool137.not = icmp eq i32 %max_work.1373, 0
  %or.cond279 = select i1 %cmp9.i296, i1 true, i1 %tobool137.not
  br i1 %or.cond279, label %should_halve.exit.while.end217_crit_edge, label %while.body139

should_halve.exit.while.end217_crit_edge:         ; preds = %should_halve.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end217

while.body139:                                    ; preds = %should_halve.exit
  %call140 = tail call fastcc ptr @halve(ptr noundef %t, ptr noundef %tn.addr.1375)
  %tobool141.not = icmp eq ptr %call140, null
  br i1 %tobool141.not, label %do.body144, label %if.end202

do.body144:                                       ; preds = %while.body139
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !342
  %resize_node_skipped166 = getelementptr inbounds %struct.trie_use_stats, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %resize_node_skipped166 to i32
  %56 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i298 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i298 to ptr
  %cpu169 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu169 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu169, align 4
  %arrayidx170 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx170, align 4
  %add171 = add i32 %61, %55
  %62 = inttoptr i32 %add171 to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add172 = add i32 %64, 1
  store i32 %add172, ptr %62, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !343
  %and.i.i299 = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i299)
  %tobool183.not = icmp eq i32 %and.i.i299, 0
  br i1 %tobool183.not, label %if.then192, label %do.body144.do.end195_crit_edge, !prof !333

do.body144.do.end195_crit_edge:                   ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195

if.then192:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end195

do.end195:                                        ; preds = %if.then192, %do.body144.do.end195_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #12, !srcloc !344
  br label %while.end217

if.end202:                                        ; preds = %while.body139
  %dec203 = add nsw i32 %max_work.1373, -1
  %call205 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call205, label %if.end202.do.end214_crit_edge, label %land.lhs.true206

if.end202.do.end214_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end214

land.lhs.true206:                                 ; preds = %if.end202
  %call207 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %land.lhs.true206.do.end214_crit_edge, label %land.lhs.true209

land.lhs.true206.do.end214_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end214

land.lhs.true209:                                 ; preds = %land.lhs.true206
  %.b271274 = load i1, ptr @resize.__warned.41, align 1
  br i1 %.b271274, label %land.lhs.true209.do.end214_crit_edge, label %if.then211

land.lhs.true209.do.end214_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end214

if.then211:                                       ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 900, ptr noundef nonnull @.str.12) #12
  br label %do.end214

do.end214:                                        ; preds = %if.then211, %land.lhs.true209.do.end214_crit_edge, %land.lhs.true206.do.end214_crit_edge, %if.end202.do.end214_crit_edge
  %66 = getelementptr inbounds %struct.key_vector, ptr %call140, i32 0, i32 4
  %arrayidx216 = getelementptr [0 x ptr], ptr %66, i32 0, i32 %retval.0.i280
  %67 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx216, align 4
  %bits.i.i285 = getelementptr inbounds %struct.key_vector, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %bits.i.i285 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bits.i.i285, align 1
  %conv.i.i286 = zext i8 %70 to i32
  %shl.i.i287 = shl nuw i32 1, %conv.i.i286
  %and.i.i288 = and i32 %shl.i.i287, -2
  %empty_children.i289 = getelementptr i8, ptr %68, i32 -12
  %71 = ptrtoint ptr %empty_children.i289 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %empty_children.i289, align 4
  %sub.i290 = sub i32 %and.i.i288, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i290)
  %cmp3.i = icmp ugt i32 %sub.i290, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp6.i = icmp ugt i8 %70, 1
  %or.cond.i = select i1 %cmp3.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %do.end214.should_halve.exit_crit_edge, label %do.end214.while.end217_crit_edge

do.end214.while.end217_crit_edge:                 ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end217

do.end214.should_halve.exit_crit_edge:            ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %should_halve.exit

while.end217:                                     ; preds = %do.end214.while.end217_crit_edge, %do.end195, %should_halve.exit.while.end217_crit_edge, %while.cond133.preheader.while.end217_crit_edge
  %tn.addr.1331 = phi ptr [ %tn.addr.1375, %do.end195 ], [ %tn.addr.0333, %while.cond133.preheader.while.end217_crit_edge ], [ %tn.addr.1375, %should_halve.exit.while.end217_crit_edge ], [ %68, %do.end214.while.end217_crit_edge ]
  %empty_children.i289327 = getelementptr i8, ptr %tn.addr.1331, i32 -12
  %bits.i.i285329 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.1331, i32 0, i32 2
  %73 = ptrtoint ptr %bits.i.i285329 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bits.i.i285329, align 1
  %conv.i.i301 = zext i8 %74 to i32
  %shl.i.i302 = shl nuw i32 1, %conv.i.i301
  %and.i.i303 = and i32 %shl.i.i302, -2
  %75 = ptrtoint ptr %empty_children.i289327 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %empty_children.i289327, align 4
  %sub.i305 = sub i32 %and.i.i303, %76
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %74)
  %cmp.i306 = icmp eq i8 %74, 32
  br i1 %cmp.i306, label %land.lhs.true.i309, label %while.end217.should_collapse.exit_crit_edge

while.end217.should_collapse.exit_crit_edge:      ; preds = %while.end217
  call void @__sanitizer_cov_trace_pc() #14
  br label %should_collapse.exit

land.lhs.true.i309:                               ; preds = %while.end217
  call void @__sanitizer_cov_trace_pc() #14
  %full_children.i307 = getelementptr i8, ptr %tn.addr.1331, i32 -8
  %77 = ptrtoint ptr %full_children.i307 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %full_children.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i308 = icmp ne i32 %78, 0
  %sub4.i = zext i1 %tobool.not.i308 to i32
  %spec.select.i = add i32 %sub.i305, %sub4.i
  br label %should_collapse.exit

should_collapse.exit:                             ; preds = %land.lhs.true.i309, %while.end217.should_collapse.exit_crit_edge
  %used.0.i = phi i32 [ %sub.i305, %while.end217.should_collapse.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i309 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %used.0.i)
  %cmp5.i = icmp ult i32 %used.0.i, 2
  br i1 %cmp5.i, label %if.then219, label %do.body222

if.then219:                                       ; preds = %should_collapse.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i303)
  %tobool1.not5.i = icmp eq i32 %and.i.i303, 0
  br i1 %tobool1.not5.i, label %if.then219.do.body7.i_crit_edge, label %do.body.lr.ph.i

if.then219.do.body7.i_crit_edge:                  ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7.i

do.body.lr.ph.i:                                  ; preds = %if.then219
  %79 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.1331, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.06.i = phi i32 [ %and.i.i303, %do.body.lr.ph.i ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call2.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i315

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i315:                               ; preds = %do.body.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i315.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i315.do.end.i_crit_edge:            ; preds = %land.lhs.true.i315
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i315
  %.b2.i = load i1, ptr @collapse.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @collapse.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 694, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i315.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %dec.i = add i32 %i.06.i, -1
  %arrayidx.i = getelementptr [0 x ptr], ptr %79, i32 0, i32 %dec.i
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i316 = icmp ne ptr %81, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool1.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i317 = select i1 %tobool.not.i316, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i317, label %do.end.i.do.body7.i_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i.do.body7.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i.do.body7.i_crit_edge, %if.then219.do.body7.i_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %if.then219.do.body7.i_crit_edge ], [ %81, %do.end.i.do.body7.i_crit_edge ]
  %call8.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8.i, label %do.body7.i.do.end17.i_crit_edge, label %land.lhs.true9.i

do.body7.i.do.end17.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

land.lhs.true9.i:                                 ; preds = %do.body7.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.do.end17.i_crit_edge, label %land.lhs.true12.i

land.lhs.true9.i.do.end17.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  %.b301.i = load i1, ptr @collapse.__warned.56, align 1
  br i1 %.b301.i, label %land.lhs.true12.i.do.end17.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end17.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @collapse.__warned.56, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 697, ptr noundef nonnull @.str.12) #12
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %land.lhs.true12.i.do.end17.i_crit_edge, %land.lhs.true9.i.do.end17.i_crit_edge, %do.body7.i.do.end17.i_crit_edge
  %parent.i = getelementptr i8, ptr %tn.addr.1331, i32 -4
  %82 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %parent.i, align 4
  %pos.i.i = getelementptr inbounds %struct.key_vector, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %85)
  %cmp.i.i = icmp ugt i8 %85, 31
  br i1 %cmp.i.i, label %do.body.i.i, label %get_index.exit.i.i

do.body.i.i:                                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %86 = getelementptr inbounds %struct.key_vector, ptr %83, i32 0, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %n.0.lcssa.i, ptr %86, align 4
  br label %put_child_root.exit.i

get_index.exit.i.i:                               ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %tn.addr.1331 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tn.addr.1331, align 4
  %conv.i.i.i = zext i8 %85 to i32
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %83, align 4
  %xor.i.i.i = xor i32 %91, %89
  %shr.i.i.i = lshr i32 %xor.i.i.i, %conv.i.i.i
  tail call fastcc void @put_child(ptr noundef %83, i32 noundef %shr.i.i.i, ptr noundef %n.0.lcssa.i) #12
  br label %put_child_root.exit.i

put_child_root.exit.i:                            ; preds = %get_index.exit.i.i, %do.body.i.i
  %tobool.not.i.i = icmp eq ptr %n.0.lcssa.i, null
  br i1 %tobool.not.i.i, label %put_child_root.exit.i.collapse.exit_crit_edge, label %do.body.i3.i

put_child_root.exit.i.collapse.exit_crit_edge:    ; preds = %put_child_root.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %collapse.exit

do.body.i3.i:                                     ; preds = %put_child_root.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !353
  %parent23.i.i = getelementptr i8, ptr %n.0.lcssa.i, i32 -4
  %92 = ptrtoint ptr %parent23.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %83, ptr %parent23.i.i, align 4
  br label %collapse.exit

collapse.exit:                                    ; preds = %do.body.i3.i, %put_child_root.exit.i.collapse.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %tn.addr.1331, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i.i, ptr noundef nonnull @__node_free_rcu) #12
  br label %cleanup

do.body222:                                       ; preds = %should_collapse.exit
  %call223 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call223, label %do.body222.do.end232_crit_edge, label %land.lhs.true224

do.body222.do.end232_crit_edge:                   ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end232

land.lhs.true224:                                 ; preds = %do.body222
  %call225 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %land.lhs.true224.do.end232_crit_edge, label %land.lhs.true227

land.lhs.true224.do.end232_crit_edge:             ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end232

land.lhs.true227:                                 ; preds = %land.lhs.true224
  %.b272273 = load i1, ptr @resize.__warned.42, align 1
  br i1 %.b272273, label %land.lhs.true227.do.end232_crit_edge, label %if.then229

land.lhs.true227.do.end232_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end232

if.then229:                                       ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @resize.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 908, ptr noundef nonnull @.str.12) #12
  br label %do.end232

do.end232:                                        ; preds = %if.then229, %land.lhs.true227.do.end232_crit_edge, %land.lhs.true224.do.end232_crit_edge, %do.body222.do.end232_crit_edge
  %parent235 = getelementptr i8, ptr %tn.addr.1331, i32 -4
  %93 = ptrtoint ptr %parent235 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent235, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end232, %collapse.exit, %do.end125.cleanup_crit_edge
  %retval.0 = phi ptr [ %83, %collapse.exit ], [ %94, %do.end232 ], [ %47, %do.end125.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__node_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bits = getelementptr inbounds %struct.tnode, ptr %head, i32 0, i32 4, i32 0, i32 2
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @trie_leaf_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %head) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree(ptr noundef %head) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_table_flush(ptr noundef %net, ptr nocapture noundef readonly %tb, i1 noundef zeroext %flush_all) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.fib_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %info.i.i, i32 20
  %extack2.i.i = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %dst3.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %dst_len4.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %fi.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %type.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 5
  %tb_id.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i, i32 0, i32 6
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %entry
  %found.0.ph = phi i32 [ 0, %entry ], [ %found.1.lcssa, %for.cond.outer.backedge ]
  %cindex.0.ph = phi i32 [ 1, %entry ], [ %dec, %for.cond.outer.backedge ]
  %pn.0.ph = phi ptr [ %1, %entry ], [ %pn.0.ph173, %for.cond.outer.backedge ]
  br label %for.cond.outer171

for.cond.outer171:                                ; preds = %for.cond.outer171.backedge, %for.cond.outer
  %cindex.0.ph172 = phi i32 [ %cindex.0.ph, %for.cond.outer ], [ %cindex.0.ph172.be, %for.cond.outer171.backedge ]
  %pn.0.ph173 = phi ptr [ %pn.0.ph, %for.cond.outer ], [ %pn.0.ph173.be, %for.cond.outer171.backedge ]
  %3 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph173, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %do.end.for.cond_crit_edge, %for.cond.outer171
  %cindex.0 = phi i32 [ %dec, %do.end.for.cond_crit_edge ], [ %cindex.0.ph172, %for.cond.outer171 ]
  %dec = add i32 %cindex.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.0)
  %tobool.not = icmp eq i32 %cindex.0, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %for.cond
  %4 = ptrtoint ptr %pn.0.ph173 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pn.0.ph173, align 4
  %pos = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph173, i32 0, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %7)
  %cmp = icmp ugt i8 %7, 31
  br i1 %cmp, label %do.body84, label %if.end

if.end:                                           ; preds = %if.then
  %slen3 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph173, i32 0, i32 3
  %8 = ptrtoint ptr %slen3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %slen3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp7 = icmp ugt i8 %9, %7
  br i1 %cmp7, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = call fastcc zeroext i8 @update_suffix(ptr noundef %pn.0.ph173)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %call11 = call fastcc ptr @resize(ptr noundef %1, ptr noundef %pn.0.ph173)
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %call11, i32 0, i32 1
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cmp.i = icmp eq i8 %11, 32
  br i1 %cmp.i, label %if.end10.for.cond.outer171.backedge_crit_edge, label %if.end.i

if.end10.for.cond.outer171.backedge_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.outer171.backedge

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %11 to i32
  %12 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call11, align 4
  %xor.i = xor i32 %13, %5
  %shr.i = lshr i32 %xor.i, %conv.i
  br label %for.cond.outer171.backedge

do.body:                                          ; preds = %for.cond
  %call14 = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call14, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call15 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b142 = load i1, ptr @fib_table_flush.__warned, align 1
  br i1 %.b142, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_table_flush.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2048, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %3, i32 0, i32 %dec
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %do.end.for.cond_crit_edge, label %if.end24

do.end.for.cond_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end24:                                         ; preds = %do.end
  %bits = getelementptr inbounds %struct.key_vector, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %conv28 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv28
  br label %for.cond.outer171.backedge

for.cond.outer171.backedge:                       ; preds = %if.then26, %if.end.i, %if.end10.for.cond.outer171.backedge_crit_edge
  %cindex.0.ph172.be = phi i32 [ %shr.i, %if.end.i ], [ 0, %if.end10.for.cond.outer171.backedge_crit_edge ], [ %shl, %if.then26 ]
  %pn.0.ph173.be = phi ptr [ %call11, %if.end.i ], [ %call11, %if.end10.for.cond.outer171.backedge_crit_edge ], [ %15, %if.then26 ]
  br label %for.cond.outer171

if.end29:                                         ; preds = %if.end24
  %18 = getelementptr inbounds %struct.key_vector, ptr %15, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool34.not160 = icmp eq ptr %20, null
  br i1 %tobool34.not160, label %if.end29.for.end_crit_edge, label %land.rhs.lr.ph

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end29
  %tobool.not.i.i = icmp eq ptr %18, null
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup61.land.rhs_crit_edge, %land.rhs.lr.ph
  %fa.0165 = phi ptr [ %20, %land.rhs.lr.ph ], [ %22, %cleanup61.land.rhs_crit_edge ]
  %found.1162 = phi i32 [ %found.0.ph, %land.rhs.lr.ph ], [ %found.2, %cleanup61.land.rhs_crit_edge ]
  %slen.0161 = phi i8 [ 0, %land.rhs.lr.ph ], [ %slen.1, %cleanup61.land.rhs_crit_edge ]
  %21 = ptrtoint ptr %fa.0165 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fa.0165, align 4
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 1
  %23 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fa_info, align 4
  %tobool37.not = icmp eq ptr %24, null
  br i1 %tobool37.not, label %land.rhs.if.then46_crit_edge, label %lor.lhs.false

land.rhs.if.then46_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

lor.lhs.false:                                    ; preds = %land.rhs
  %25 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tb_id, align 4
  %tb_id38 = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 6
  %27 = ptrtoint ptr %tb_id38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tb_id38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp39.not = icmp eq i32 %26, %28
  br i1 %cmp39.not, label %lor.lhs.false41, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %24, i32 0, i32 6
  %29 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fib_flags, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %lor.lhs.false41.if.end47_crit_edge

lor.lhs.false41.if.end47_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true43:                                  ; preds = %lor.lhs.false41
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 3
  %31 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fa_type, align 1
  %idxprom = zext i8 %32 to i32
  %arrayidx44 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool45.not = icmp eq i32 %34, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.then46_crit_edge, label %land.lhs.true43.if.end47_crit_edge

land.lhs.true43.if.end47_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true43.if.then46_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46

if.then46:                                        ; preds = %land.lhs.true43.if.then46_crit_edge, %lor.lhs.false.if.then46_crit_edge, %land.rhs.if.then46_crit_edge
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 5
  %35 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fa_slen, align 1
  br label %cleanup61

if.end47:                                         ; preds = %land.lhs.true43.if.end47_crit_edge, %lor.lhs.false41.if.end47_crit_edge
  br i1 %flush_all, label %if.end47.if.end57_crit_edge, label %land.lhs.true49

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true49:                                  ; preds = %if.end47
  %fa_type50 = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 3
  %37 = ptrtoint ptr %fa_type50 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fa_type50, align 1
  %idxprom51 = zext i8 %38 to i32
  %arrayidx52 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %idxprom51
  %39 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not = icmp eq i32 %40, 0
  br i1 %tobool54.not, label %land.lhs.true49.if.end57_crit_edge, label %if.then55

land.lhs.true49.if.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  %fa_slen56 = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 5
  %41 = ptrtoint ptr %fa_slen56 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fa_slen56, align 1
  br label %cleanup61

if.end57:                                         ; preds = %land.lhs.true49.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %43 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %15, align 4
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 5
  %45 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fa_slen.i, align 1
  br i1 %tobool.not.i.i, label %if.end57.fib_find_alias.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end57.fib_find_alias.exit.i_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end57
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %fa.078.i.i = load ptr, ptr %18, align 4
  %tobool3.not79.i.i = icmp eq ptr %fa.078.i.i, null
  br i1 %tobool3.not79.i.i, label %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %fa.080.i.i = phi ptr [ %fa.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %fa.078.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %fa_slen.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %fa_slen.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fa_slen.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %46)
  %cmp.i.i = icmp ult i8 %49, %46
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end7.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %46)
  %cmp11.not.i.i = icmp eq i8 %49, %46
  br i1 %cmp11.not.i.i, label %if.end14.i.i, label %if.end7.i.i.fib_find_alias.exit.i_crit_edge

if.end7.i.i.fib_find_alias.exit.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %tb_id15.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.080.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %tb_id15.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tb_id15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %26)
  %cmp16.i.i = icmp ugt i32 %51, %26
  br i1 %cmp16.i.i, label %if.end14.i.i.for.inc.i.i_crit_edge, label %if.end19.i.i

if.end14.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end19.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %26)
  %cmp21.not.i.not.i = icmp eq i32 %51, %26
  %.mux.le.i.i = select i1 %cmp21.not.i.not.i, ptr %fa.080.i.i, ptr null
  br label %fib_find_alias.exit.i

for.inc.i.i:                                      ; preds = %if.end14.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %52 = ptrtoint ptr %fa.080.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %fa.0.i.i = load ptr, ptr %fa.080.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %fa.0.i.i, null
  br i1 %tobool3.not.i.i, label %for.inc.i.i.fib_find_alias.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.fib_find_alias.exit.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_find_alias.exit.i

fib_find_alias.exit.i:                            ; preds = %for.inc.i.i.fib_find_alias.exit.i_crit_edge, %if.end19.i.i, %if.end7.i.i.fib_find_alias.exit.i_crit_edge, %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge, %if.end57.fib_find_alias.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end57.fib_find_alias.exit.i_crit_edge ], [ %.mux.le.i.i, %if.end19.i.i ], [ null, %for.cond.preheader.i.i.fib_find_alias.exit.i_crit_edge ], [ null, %if.end7.i.i.fib_find_alias.exit.i_crit_edge ], [ null, %for.inc.i.i.fib_find_alias.exit.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %retval.0.i.i, %fa.0165
  br i1 %cmp.not.i, label %if.end.i145, label %fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge

fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge: ; preds = %fib_find_alias.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_notify_alias_delete.exit

if.end.i145:                                      ; preds = %fib_find_alias.exit.i
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i145.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i145.if.else.i_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i145
  %fa_slen4.i = getelementptr inbounds %struct.fib_alias, ptr %22, i32 0, i32 5
  %53 = ptrtoint ptr %fa_slen4.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fa_slen4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %46)
  %cmp6.i = icmp eq i8 %54, %46
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %tb_id9.i = getelementptr inbounds %struct.fib_alias, ptr %22, i32 0, i32 6
  %55 = ptrtoint ptr %tb_id9.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tb_id9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %26)
  %cmp10.i = icmp eq i32 %56, %26
  br i1 %cmp10.i, label %land.lhs.true8.i.if.end13.i_crit_edge, label %land.lhs.true8.i.if.else.i_crit_edge

land.lhs.true8.i.if.else.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true8.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.else.i:                                        ; preds = %land.lhs.true8.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i145.if.else.i_crit_edge
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %land.lhs.true8.i.if.end13.i_crit_edge
  %fib_event.0.i = phi i32 [ 3, %if.else.i ], [ 0, %land.lhs.true8.i.if.end13.i_crit_edge ]
  %fa_to_notify.0.i = phi ptr [ %fa.0165, %if.else.i ], [ %22, %land.lhs.true8.i.if.end13.i_crit_edge ]
  %conv14.i = zext i8 %46 to i32
  %sub.i = sub nsw i32 32, %conv14.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i.i) #12
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %2, align 4
  %58 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %info.i.i, align 4
  %59 = ptrtoint ptr %extack2.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %extack2.i.i, align 4
  %60 = ptrtoint ptr %dst3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %44, ptr %dst3.i.i, align 4
  %61 = ptrtoint ptr %dst_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i, ptr %dst_len4.i.i, align 4
  %fa_info.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 1
  %62 = ptrtoint ptr %fa_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fa_info.i.i, align 4
  %64 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %fi.i.i, align 4
  %fa_tos.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %fa_tos.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fa_tos.i.i, align 4
  store i8 %66, ptr %2, align 4
  %fa_type.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 3
  %67 = ptrtoint ptr %fa_type.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fa_type.i.i, align 1
  %69 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %type.i.i, align 1
  %tb_id5.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa_to_notify.0.i, i32 0, i32 6
  %70 = ptrtoint ptr %tb_id5.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tb_id5.i.i, align 4
  %72 = ptrtoint ptr %tb_id.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tb_id.i.i, align 4
  %call.i.i = call i32 @call_fib4_notifiers(ptr noundef %net, i32 noundef %fib_event.0.i, ptr noundef nonnull %info.i.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i.i) #12
  br label %fib_notify_alias_delete.exit

fib_notify_alias_delete.exit:                     ; preds = %if.end13.i, %fib_find_alias.exit.i.fib_notify_alias_delete.exit_crit_edge
  %73 = ptrtoint ptr %fa.0165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fa.0165, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %fa.0165, i32 0, i32 1
  %75 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pprev2.i.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %74, ptr %76, align 4
  %tobool.not.i.i146 = icmp eq ptr %74, null
  br i1 %tobool.not.i.i146, label %fib_notify_alias_delete.exit.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

fib_notify_alias_delete.exit.hlist_del_rcu.exit_crit_edge: ; preds = %fib_notify_alias_delete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %fib_notify_alias_delete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  %78 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %fib_notify_alias_delete.exit.hlist_del_rcu.exit_crit_edge
  %79 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %80 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fa_info, align 4
  call void @fib_release_info(ptr noundef %81) #12
  %rcu.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0165, i32 0, i32 11
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @__alias_free_mem) #12
  %inc = add i32 %found.1162, 1
  br label %cleanup61

cleanup61:                                        ; preds = %hlist_del_rcu.exit, %if.then55, %if.then46
  %slen.1 = phi i8 [ %36, %if.then46 ], [ %slen.0161, %hlist_del_rcu.exit ], [ %42, %if.then55 ]
  %found.2 = phi i32 [ %found.1162, %if.then46 ], [ %inc, %hlist_del_rcu.exit ], [ %found.1162, %if.then55 ]
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %cleanup61.for.end_crit_edge, label %cleanup61.land.rhs_crit_edge

cleanup61.land.rhs_crit_edge:                     ; preds = %cleanup61
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

cleanup61.for.end_crit_edge:                      ; preds = %cleanup61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup61.for.end_crit_edge, %if.end29.for.end_crit_edge
  %slen.0.lcssa = phi i8 [ 0, %if.end29.for.end_crit_edge ], [ %slen.1, %cleanup61.for.end_crit_edge ]
  %found.1.lcssa = phi i32 [ %found.0.ph, %if.end29.for.end_crit_edge ], [ %found.2, %cleanup61.for.end_crit_edge ]
  %slen72 = getelementptr inbounds %struct.key_vector, ptr %15, i32 0, i32 3
  %82 = ptrtoint ptr %slen72 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %slen.0.lcssa, ptr %slen72, align 2
  %83 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %18, align 4
  %tobool.not.i147.not = icmp eq ptr %84, null
  br i1 %tobool.not.i147.not, label %if.then75, label %for.end.for.cond.outer.backedge_crit_edge

for.end.for.cond.outer.backedge_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.outer.backedge

if.then75:                                        ; preds = %for.end
  %pos.i148 = getelementptr inbounds %struct.key_vector, ptr %pn.0.ph173, i32 0, i32 1
  %85 = ptrtoint ptr %pos.i148 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pos.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %86)
  %cmp.i149 = icmp ugt i8 %86, 31
  br i1 %cmp.i149, label %do.body.i, label %get_index.exit.i

do.body.i:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr null, ptr %3, align 4
  br label %put_child_root.exit

get_index.exit.i:                                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %15, align 4
  %conv.i.i = zext i8 %86 to i32
  %90 = ptrtoint ptr %pn.0.ph173 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pn.0.ph173, align 4
  %xor.i.i = xor i32 %91, %89
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  call fastcc void @put_child(ptr noundef %pn.0.ph173, i32 noundef %shr.i.i, ptr noundef null) #12
  br label %put_child_root.exit

put_child_root.exit:                              ; preds = %get_index.exit.i, %do.body.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 -20
  call void @call_rcu(ptr noundef %add.ptr.i, ptr noundef nonnull @__node_free_rcu) #12
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %put_child_root.exit, %for.end.for.cond.outer.backedge_crit_edge
  br label %for.cond.outer

do.body84:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fib_table_flush.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib_table_flush, %if.then91)) #12
          to label %do.end94 [label %if.then91], !srcloc !335

if.then91:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fib_table_flush.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.14, i32 noundef %found.0.ph) #12
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body84
  ret i32 %found.0.ph
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_info_notify_update(ptr nocapture noundef readonly %net, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 18
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %h.047 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %h.047
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.do.end_crit_edge, label %land.lhs.true5

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %.b42 = load i1, ptr @fib_info_notify_update.__warned, align 1
  br i1 %.b42, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_info_notify_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2157, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %tb.044 = load volatile ptr, ptr %arrayidx, align 4
  %tobool15.not45 = icmp eq ptr %tb.044, null
  br i1 %tobool15.not45, label %do.end.for.end_crit_edge, label %do.end.for.body16_crit_edge

do.end.for.body16_crit_edge:                      ; preds = %do.end
  br label %for.body16

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond14.loopexit:                              ; preds = %if.then.i
  %3 = ptrtoint ptr %tb.046 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tb.0 = load volatile ptr, ptr %tb.046, align 4
  %tobool15.not = icmp eq ptr %tb.0, null
  br i1 %tobool15.not, label %for.cond14.loopexit.for.end_crit_edge, label %for.cond14.loopexit.for.body16_crit_edge

for.cond14.loopexit.for.body16_crit_edge:         ; preds = %for.cond14.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

for.cond14.loopexit.for.end_crit_edge:            ; preds = %for.cond14.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body16:                                       ; preds = %for.cond14.loopexit.for.body16_crit_edge, %do.end.for.body16_crit_edge
  %tb.046 = phi ptr [ %tb.0, %for.cond14.loopexit.for.body16_crit_edge ], [ %tb.044, %do.end.for.body16_crit_edge ]
  %tb_data.i = getelementptr inbounds %struct.fib_table, ptr %tb.046, i32 0, i32 4
  %4 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb_data.i, align 4
  %tb_id40.i = getelementptr inbounds %struct.fib_table, ptr %tb.046, i32 0, i32 1
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %for.cond.i.outer.backedge, %for.body16
  %cindex.0.i.ph = phi i32 [ 1, %for.body16 ], [ %cindex.0.i.ph.be, %for.cond.i.outer.backedge ]
  %pn.0.i.ph = phi ptr [ %5, %for.body16 ], [ %pn.0.i.ph.be, %for.cond.i.outer.backedge ]
  %6 = getelementptr inbounds %struct.key_vector, ptr %pn.0.i.ph, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %for.cond.i.outer
  %cindex.0.i = phi i32 [ %cindex.0.i.ph, %for.cond.i.outer ], [ %dec.i, %for.cond.i.backedge ]
  %dec.i = add i32 %cindex.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cindex.0.i)
  %tobool.not.i = icmp eq i32 %cindex.0.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body12.i

if.then.i:                                        ; preds = %for.cond.i
  %7 = ptrtoint ptr %pn.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pn.0.i.ph, align 4
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %pn.0.i.ph, i32 0, i32 1
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %10)
  %cmp.i = icmp ugt i8 %10, 31
  br i1 %cmp.i, label %for.cond14.loopexit, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__fib_info_notify_update.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__fib_info_notify_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2117, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %land.lhs.true5.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %parent.i = getelementptr i8, ptr %pn.0.i.ph, i32 -4
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %pos.i.i = getelementptr inbounds %struct.key_vector, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 32
  br i1 %cmp.i.i, label %do.end.i.for.cond.i.outer.backedge_crit_edge, label %if.end.i.i

do.end.i.for.cond.i.outer.backedge_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.outer.backedge

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %xor.i.i = xor i32 %16, %8
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  br label %for.cond.i.outer.backedge

do.body12.i:                                      ; preds = %for.cond.i
  %call13.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call13.i, label %do.body12.i.do.end22.i_crit_edge, label %land.lhs.true14.i

do.body12.i.do.end22.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

land.lhs.true14.i:                                ; preds = %do.body12.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true14.i.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true14.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %.b882.i = load i1, ptr @__fib_info_notify_update.__warned.57, align 1
  br i1 %.b882.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__fib_info_notify_update.__warned.57, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2123, ptr noundef nonnull @.str.12) #12
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true14.i.do.end22.i_crit_edge, %do.body12.i.do.end22.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %dec.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool24.not.i = icmp eq ptr %18, null
  br i1 %tobool24.not.i, label %do.end22.i.for.cond.i.backedge_crit_edge, label %if.end26.i

do.end22.i.for.cond.i.backedge_crit_edge:         ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.end26.i:                                       ; preds = %do.end22.i
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not.i = icmp eq i8 %20, 0
  br i1 %tobool27.not.i, label %if.end31.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv30.i = zext i8 %20 to i32
  %shl.i = shl nuw i32 1, %conv30.i
  br label %for.cond.i.outer.backedge

for.cond.i.outer.backedge:                        ; preds = %if.then28.i, %if.end.i.i, %do.end.i.for.cond.i.outer.backedge_crit_edge
  %cindex.0.i.ph.be = phi i32 [ 0, %do.end.i.for.cond.i.outer.backedge_crit_edge ], [ %shr.i.i, %if.end.i.i ], [ %shl.i, %if.then28.i ]
  %pn.0.i.ph.be = phi ptr [ %12, %do.end.i.for.cond.i.outer.backedge_crit_edge ], [ %12, %if.end.i.i ], [ %18, %if.then28.i ]
  br label %for.cond.i.outer

if.end31.i:                                       ; preds = %if.end26.i
  %21 = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %fa.09.i = load ptr, ptr %21, align 4
  %tobool36.not10.i = icmp eq ptr %fa.09.i, null
  br i1 %tobool36.not10.i, label %if.end31.i.for.cond.i.backedge_crit_edge, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  br label %for.body.i

if.end31.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %cleanup48.i.for.cond.i.backedge_crit_edge, %if.end31.i.for.cond.i.backedge_crit_edge, %do.end22.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

for.body.i:                                       ; preds = %cleanup48.i.for.body.i_crit_edge, %if.end31.i.for.body.i_crit_edge
  %fa.011.i = phi ptr [ %fa.0.i, %cleanup48.i.for.body.i_crit_edge ], [ %fa.09.i, %if.end31.i.for.body.i_crit_edge ]
  %fa_info.i = getelementptr inbounds %struct.fib_alias, ptr %fa.011.i, i32 0, i32 1
  %23 = ptrtoint ptr %fa_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fa_info.i, align 4
  %tobool37.not.i = icmp eq ptr %24, null
  br i1 %tobool37.not.i, label %for.body.i.cleanup48.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup48.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %nh_updated.i = getelementptr inbounds %struct.fib_info, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %nh_updated.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nh_updated.i, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool38.not.i = icmp eq i8 %26, 0
  br i1 %tobool38.not.i, label %lor.lhs.false.i.cleanup48.i_crit_edge, label %lor.lhs.false39.i

lor.lhs.false.i.cleanup48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48.i

lor.lhs.false39.i:                                ; preds = %lor.lhs.false.i
  %tb_id.i = getelementptr inbounds %struct.fib_alias, ptr %fa.011.i, i32 0, i32 6
  %27 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tb_id.i, align 4
  %29 = ptrtoint ptr %tb_id40.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tb_id40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp41.not.i = icmp eq i32 %28, %30
  br i1 %cmp41.not.i, label %if.end44.i, label %lor.lhs.false39.i.cleanup48.i_crit_edge

lor.lhs.false39.i.cleanup48.i_crit_edge:          ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48.i

if.end44.i:                                       ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %18, align 4
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.011.i, i32 0, i32 5
  %33 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fa_slen.i, align 1
  %conv46.i = zext i8 %34 to i32
  %sub.i = sub nsw i32 32, %conv46.i
  tail call void @rtmsg_fib(i32 noundef 24, i32 noundef %32, ptr noundef nonnull %fa.011.i, i32 noundef %sub.i, i32 noundef %28, ptr noundef %info, i32 noundef 256) #12
  br label %cleanup48.i

cleanup48.i:                                      ; preds = %if.end44.i, %lor.lhs.false39.i.cleanup48.i_crit_edge, %lor.lhs.false.i.cleanup48.i_crit_edge, %for.body.i.cleanup48.i_crit_edge
  %35 = ptrtoint ptr %fa.011.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %fa.0.i = load ptr, ptr %fa.011.i, align 4
  %tobool36.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool36.not.i, label %cleanup48.i.for.cond.i.backedge_crit_edge, label %cleanup48.i.for.body.i_crit_edge

cleanup48.i.for.body.i_crit_edge:                 ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup48.i.for.cond.i.backedge_crit_edge:        ; preds = %cleanup48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

for.end:                                          ; preds = %for.cond14.loopexit.for.end_crit_edge, %do.end.for.end_crit_edge
  %inc = add nuw nsw i32 %h.047, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end33, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_notify(ptr nocapture noundef readonly %net, ptr noundef %nb, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i.i = alloca %struct.fib_entry_notifier_info, align 4
  %tp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 18
  %0 = getelementptr inbounds i8, ptr %info.i.i.i, i32 20
  %extack2.i.i.i = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i.i, i32 0, i32 1
  %dst3.i.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i.i, i32 0, i32 1
  %dst_len4.i.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i.i, i32 0, i32 2
  %fi.i.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i.i, i32 0, i32 3
  %type.i.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i.i, i32 0, i32 5
  %tb_id.i.i.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %info.i.i.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %entry
  %h.059 = phi i32 [ 0, %entry ], [ %inc, %for.inc35.for.body_crit_edge ]
  %1 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %2, i32 %h.059
  %call = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @fib_notify.__warned, align 1
  br i1 %.b48, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_notify.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2226, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tb.055 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not56 = icmp eq ptr %tb.055, null
  br i1 %tobool13.not56, label %do.end.for.inc35_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.inc35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %tb.057 = phi ptr [ %tb.0, %for.inc.for.body14_crit_edge ], [ %tb.055, %do.end.for.body14_crit_edge ]
  %tb_data.i = getelementptr inbounds %struct.fib_table, ptr %tb.057, i32 0, i32 4
  %4 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i) #12
  %6 = ptrtoint ptr %tp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tp.i, align 4
  %tb_id.i.i = getelementptr inbounds %struct.fib_table, ptr %tb.057, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %for.body14
  %key.0.i = phi i32 [ 0, %for.body14 ], [ %add.i, %if.end.i.while.cond.i_crit_edge ]
  %call.i = call fastcc ptr @leaf_walk_rcu(ptr noundef nonnull %tp.i, i32 noundef %key.0.i) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.i.for.inc_crit_edge, label %while.body.i

while.cond.i.for.inc_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

while.body.i:                                     ; preds = %while.cond.i
  %call.i.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.body.i.do.end.i.i_crit_edge

while.body.i.do.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b61.i.i = load i1, ptr @fib_leaf_notify.__warned, align 1
  br i1 %.b61.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_leaf_notify.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2170, ptr noundef nonnull @.str.9) #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %while.body.i.do.end.i.i_crit_edge
  %7 = getelementptr inbounds %struct.key_vector, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %fa.068.i.i = load volatile ptr, ptr %7, align 4
  %tobool12.not69.i.i = icmp eq ptr %fa.068.i.i, null
  br i1 %tobool12.not69.i.i, label %do.end.i.i.if.end.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %fa.071.i.i = phi ptr [ %fa.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %fa.068.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %last_slen.070.i.i = phi i32 [ %last_slen.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %do.end.i.i.for.body.i.i_crit_edge ]
  %fa_info.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.071.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fa_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fa_info.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %10, null
  br i1 %tobool13.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end15.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end15.i.i:                                     ; preds = %for.body.i.i
  %11 = ptrtoint ptr %tb_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tb_id.i.i, align 4
  %tb_id16.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.071.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %tb_id16.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tb_id16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i.i, label %if.end18.i.i, label %if.end15.i.i.for.inc.i.i_crit_edge

if.end15.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end18.i.i:                                     ; preds = %if.end15.i.i
  %fa_slen.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.071.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %fa_slen.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fa_slen.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last_slen.070.i.i, i32 %conv.i.i)
  %cmp19.i.i = icmp eq i32 %last_slen.070.i.i, %conv.i.i
  br i1 %cmp19.i.i, label %if.end18.i.i.for.inc.i.i_crit_edge, label %if.end22.i.i

if.end18.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end22.i.i:                                     ; preds = %if.end18.i.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  %sub.i.i = sub nsw i32 32, %conv.i.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i.i.i) #12
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %0, align 4
  %20 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %info.i.i.i, align 4
  %21 = ptrtoint ptr %extack2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %extack, ptr %extack2.i.i.i, align 4
  %22 = ptrtoint ptr %dst3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %dst3.i.i.i, align 4
  %23 = ptrtoint ptr %dst_len4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i.i, ptr %dst_len4.i.i.i, align 4
  %24 = ptrtoint ptr %fa_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fa_info.i.i, align 4
  %26 = ptrtoint ptr %fi.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fi.i.i.i, align 4
  %fa_tos.i.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.071.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %fa_tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fa_tos.i.i.i, align 4
  store i8 %28, ptr %0, align 4
  %fa_type.i.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.071.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %fa_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fa_type.i.i.i, align 1
  %31 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %type.i.i.i, align 1
  %32 = ptrtoint ptr %tb_id16.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tb_id16.i.i, align 4
  %34 = ptrtoint ptr %tb_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tb_id.i.i.i, align 4
  %call.i.i.i = call i32 @call_fib4_notifier(ptr noundef %nb, i32 noundef 0, ptr noundef nonnull %info.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end22.i.i.for.inc.i.i_crit_edge, label %cleanup

if.end22.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end22.i.i.for.inc.i.i_crit_edge, %if.end18.i.i.for.inc.i.i_crit_edge, %if.end15.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %last_slen.1.ph.i.i = phi i32 [ %last_slen.070.i.i, %if.end18.i.i.for.inc.i.i_crit_edge ], [ %last_slen.070.i.i, %if.end15.i.i.for.inc.i.i_crit_edge ], [ %last_slen.070.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %conv.i.i, %if.end22.i.i.for.inc.i.i_crit_edge ]
  %35 = ptrtoint ptr %fa.071.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %fa.0.i.i = load volatile ptr, ptr %fa.071.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %fa.0.i.i, null
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i, align 4
  %add.i = add i32 %37, 1
  %cmp4.i = icmp eq i32 %37, -1
  br i1 %cmp4.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %while.cond.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #12
  %38 = ptrtoint ptr %tb.057 to i32
  call void @__asan_load4_noabort(i32 %38)
  %tb.0 = load volatile ptr, ptr %tb.057, align 4
  %tobool13.not = icmp eq ptr %tb.0, null
  br i1 %tobool13.not, label %for.inc.for.inc35_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14

for.inc.for.inc35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35

cleanup:                                          ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #12
  br label %cleanup37

for.inc35:                                        ; preds = %for.inc.for.inc35_crit_edge, %do.end.for.inc35_crit_edge
  %inc = add nuw nsw i32 %h.059, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc35.cleanup37_crit_edge, label %for.inc35.for.body_crit_edge

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc35.cleanup37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

cleanup37:                                        ; preds = %for.inc35.cleanup37_crit_edge, %cleanup
  %retval.2 = phi i32 [ %call.i.i.i, %cleanup ], [ 0, %for.inc35.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_free_table(ptr noundef %tb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rcu = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @__trie_free_rcu) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__trie_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr i8, ptr %head, i32 8
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  %__data = getelementptr i8, ptr %head, i32 12
  %cmp = icmp eq ptr %1, %__data
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats = getelementptr inbounds %struct.trie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  tail call void @free_percpu(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_table_dump(ptr nocapture noundef readonly %tb, ptr noundef %skb, ptr noundef %cb, ptr nocapture noundef readonly %filter) local_unnamed_addr #0 align 64 {
entry:
  %i_fa.i = alloca i32, align 4
  %fri.i = alloca %struct.fib_rt_info, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 4
  %0 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #12
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tp, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %filter_set.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 1
  %dump_exceptions.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 3
  %dump_routes.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %arrayidx4.i = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %tb_id.i = getelementptr inbounds %struct.fib_table, ptr %tb, i32 0, i32 1
  %rt_type.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 5
  %protocol.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.fib_dump_filter, ptr %filter, i32 0, i32 7
  %tb_id62.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 1
  %dst.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 2
  %dst_len.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 3
  %tos.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 4
  %type.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 5
  %offload69.i = getelementptr inbounds %struct.fib_rt_info, ptr %fri.i, i32 0, i32 6
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  br label %cleanup18

while.cond:                                       ; preds = %if.end8.while.cond_crit_edge, %while.cond.preheader
  %count.0 = phi i32 [ %inc, %if.end8.while.cond_crit_edge ], [ %4, %while.cond.preheader ]
  %key.0 = phi i32 [ %add, %if.end8.while.cond_crit_edge ], [ %6, %while.cond.preheader ]
  %call = call fastcc ptr @leaf_walk_rcu(ptr noundef nonnull %tp, i32 noundef %key.0)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_fa.i) #12
  %11 = ptrtoint ptr %i_fa.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %i_fa.i, align 4, !annotation !345
  %12 = ptrtoint ptr %filter_set.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %filter_set.i, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body
  %14 = ptrtoint ptr %dump_exceptions.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dump_exceptions.i, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %dump_routes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dump_routes.i, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.if.then.i_crit_edge, label %lor.lhs.false2.i.if.end.i_crit_edge

lor.lhs.false2.i.if.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false2.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false2.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false2.i.if.end.i_crit_edge
  %flags.0.i = phi i32 [ 34, %if.then.i ], [ 2, %lor.lhs.false2.i.if.end.i_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %call.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b190.i = load i1, ptr @fn_trie_dump_leaf.__warned, align 1
  br i1 %.b190.i, label %land.lhs.true8.i.do.end.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fn_trie_dump_leaf.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2270, ptr noundef nonnull @.str.9) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %land.lhs.true8.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %22 = getelementptr inbounds %struct.key_vector, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %fa.0207.i = load volatile ptr, ptr %22, align 4
  %tobool19.not208.i = icmp eq ptr %fa.0207.i, null
  br i1 %tobool19.not208.i, label %do.end.i.fn_trie_dump_leaf.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.fn_trie_dump_leaf.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fn_trie_dump_leaf.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not.i = icmp eq i32 %21, 0
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup110.thread.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fa.0213.i = phi ptr [ %fa.0207.i, %for.body.lr.ph.i ], [ %fa.0.i, %cleanup110.thread.i.for.body.i_crit_edge ]
  %i.0211.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc109.i, %cleanup110.thread.i.for.body.i_crit_edge ]
  %fa_info.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 1
  %24 = ptrtoint ptr %fa_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fa_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0211.i, i32 %19)
  %cmp.i = icmp slt i32 %i.0211.i, %19
  br i1 %cmp.i, label %for.body.i.cleanup110.thread.i_crit_edge, label %if.end21.i

for.body.i.cleanup110.thread.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

if.end21.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %i_fa.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %i_fa.i, align 4
  %27 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tb_id.i, align 4
  %tb_id22.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 6
  %29 = ptrtoint ptr %tb_id22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tb_id22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp23.not.i = icmp eq i32 %28, %30
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end21.i.cleanup110.thread.i_crit_edge

if.end21.i.cleanup110.thread.i_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

if.end25.i:                                       ; preds = %if.end21.i
  %31 = ptrtoint ptr %filter_set.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %filter_set.i, align 4, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not.i = icmp eq i8 %32, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end54.i_crit_edge, label %if.then28.i

if.end25.i.if.end54.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.then28.i:                                      ; preds = %if.end25.i
  %33 = ptrtoint ptr %rt_type.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not.i = icmp eq i8 %34, 0
  br i1 %tobool29.not.i, label %if.then28.i.if.end37.i_crit_edge, label %land.lhs.true30.i

if.then28.i.if.end37.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

land.lhs.true30.i:                                ; preds = %if.then28.i
  %fa_type.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 3
  %35 = ptrtoint ptr %fa_type.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fa_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %34)
  %cmp34.not.i = icmp eq i8 %36, %34
  br i1 %cmp34.not.i, label %land.lhs.true30.i.if.end37.i_crit_edge, label %land.lhs.true30.i.cleanup110.thread.i_crit_edge

land.lhs.true30.i.cleanup110.thread.i_crit_edge:  ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

land.lhs.true30.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %land.lhs.true30.i.if.end37.i_crit_edge, %if.then28.i.if.end37.i_crit_edge
  %37 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool39.not.i = icmp eq i8 %38, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end47.i_crit_edge, label %land.lhs.true40.i

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

land.lhs.true40.i:                                ; preds = %if.end37.i
  %fib_protocol.i = getelementptr inbounds %struct.fib_info, ptr %25, i32 0, i32 8
  %39 = ptrtoint ptr %fib_protocol.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fib_protocol.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %38)
  %cmp44.not.i = icmp eq i8 %40, %38
  br i1 %cmp44.not.i, label %land.lhs.true40.i.if.end47.i_crit_edge, label %land.lhs.true40.i.cleanup110.thread.i_crit_edge

land.lhs.true40.i.cleanup110.thread.i_crit_edge:  ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

land.lhs.true40.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.end47.i:                                       ; preds = %land.lhs.true40.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %tobool48.not.i = icmp eq ptr %42, null
  br i1 %tobool48.not.i, label %if.end47.i.if.end54.i_crit_edge, label %land.lhs.true49.i

if.end47.i.if.end54.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

land.lhs.true49.i:                                ; preds = %if.end47.i
  %call51.i = call zeroext i1 @fib_info_nh_uses_dev(ptr noundef %25, ptr noundef nonnull %42) #12
  br i1 %call51.i, label %land.lhs.true49.i.if.end54.i_crit_edge, label %land.lhs.true49.i.cleanup110.thread.i_crit_edge

land.lhs.true49.i.cleanup110.thread.i_crit_edge:  ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

land.lhs.true49.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i

if.end54.i:                                       ; preds = %land.lhs.true49.i.if.end54.i_crit_edge, %if.end47.i.if.end54.i_crit_edge, %if.end25.i.if.end54.i_crit_edge
  %43 = ptrtoint ptr %dump_routes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dump_routes.i, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool56.not.i = icmp eq i8 %44, 0
  br i1 %tobool56.not.i, label %if.end54.i.if.end98.i_crit_edge, label %if.then57.i

if.end54.i.if.end98.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i

if.then57.i:                                      ; preds = %if.end54.i
  br i1 %tobool58.not.i, label %if.then59.i, label %if.then57.i.if.end97.i_crit_edge

if.then57.i.if.end97.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.then59.i:                                      ; preds = %if.then57.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri.i) #12
  %45 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 -1, ptr %dst_len.i, align 4
  %46 = ptrtoint ptr %fri.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %25, ptr %fri.i, align 4
  %47 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tb_id.i, align 4
  %49 = ptrtoint ptr %tb_id62.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tb_id62.i, align 4
  %50 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %10, ptr %dst.i, align 4
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 5
  %51 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fa_slen.i, align 1
  %conv63.i = zext i8 %52 to i32
  %sub.i = sub nsw i32 32, %conv63.i
  store i32 %sub.i, ptr %dst_len.i, align 4
  %fa_tos.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 2
  %53 = ptrtoint ptr %fa_tos.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fa_tos.i, align 4
  %55 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %tos.i, align 4
  %fa_type64.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 3
  %56 = ptrtoint ptr %fa_type64.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fa_type64.i, align 1
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %type.i, align 1
  %offload.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 8
  %59 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %offload.i, align 2
  %bf.shl.i = shl i8 %60, 7
  %trap.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 9
  %61 = ptrtoint ptr %trap.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load volatile i8, ptr %trap.i, align 1
  %bf.value76.i = shl i8 %62, 6
  %bf.shl77.i = and i8 %bf.value76.i, 64
  %bf.clear78.i = or i8 %bf.shl.i, 31
  %bf.set79.i = or i8 %bf.shl77.i, %bf.clear78.i
  %offload_failed.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0213.i, i32 0, i32 10
  %63 = ptrtoint ptr %offload_failed.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load volatile i8, ptr %offload_failed.i, align 4
  %bf.value86.i = shl i8 %64, 5
  %bf.shl87.i = and i8 %bf.value86.i, 32
  %bf.set89.i = or i8 %bf.set79.i, %bf.shl87.i
  %65 = ptrtoint ptr %offload69.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %bf.set89.i, ptr %offload69.i, align 2
  %66 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3, i32 12
  %68 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %portid.i, align 4
  %70 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nlmsg_seq.i, align 4
  %call92.i = call i32 @fib_dump_info(ptr noundef %skb, i32 noundef %69, i32 noundef %73, i32 noundef 24, ptr noundef nonnull %fri.i, i32 noundef %flags.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri.i) #12
  br i1 %cmp93.i, label %if.then59.i.fn_trie_dump_leaf.exit.thread_crit_edge, label %if.then59.i.if.end97.i_crit_edge

if.then59.i.if.end97.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.then59.i.fn_trie_dump_leaf.exit.thread_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fn_trie_dump_leaf.exit.thread

if.end97.i:                                       ; preds = %if.then59.i.if.end97.i_crit_edge, %if.then57.i.if.end97.i_crit_edge
  %74 = ptrtoint ptr %i_fa.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_fa.i, align 4
  %inc.i = add i32 %75, 1
  store i32 %inc.i, ptr %i_fa.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end97.i, %if.end54.i.if.end98.i_crit_edge
  %76 = ptrtoint ptr %dump_exceptions.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dump_exceptions.i, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool100.not.i = icmp eq i8 %77, 0
  br i1 %tobool100.not.i, label %if.end98.i.cleanup110.thread.i_crit_edge, label %if.then101.i

if.end98.i.cleanup110.thread.i_crit_edge:         ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

if.then101.i:                                     ; preds = %if.end98.i
  %78 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tb_id.i, align 4
  %call103.i = call i32 @fib_dump_info_fnhe(ptr noundef %skb, ptr noundef %cb, i32 noundef %79, ptr noundef %25, ptr noundef nonnull %i_fa.i, i32 noundef %21, i32 noundef %flags.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %cmp104.i = icmp slt i32 %call103.i, 0
  br i1 %cmp104.i, label %if.then101.i.fn_trie_dump_leaf.exit.thread_crit_edge, label %if.then101.i.cleanup110.thread.i_crit_edge

if.then101.i.cleanup110.thread.i_crit_edge:       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110.thread.i

if.then101.i.fn_trie_dump_leaf.exit.thread_crit_edge: ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fn_trie_dump_leaf.exit.thread

cleanup110.thread.i:                              ; preds = %if.then101.i.cleanup110.thread.i_crit_edge, %if.end98.i.cleanup110.thread.i_crit_edge, %land.lhs.true49.i.cleanup110.thread.i_crit_edge, %land.lhs.true40.i.cleanup110.thread.i_crit_edge, %land.lhs.true30.i.cleanup110.thread.i_crit_edge, %if.end21.i.cleanup110.thread.i_crit_edge, %for.body.i.cleanup110.thread.i_crit_edge
  %inc109.i = add i32 %i.0211.i, 1
  %80 = ptrtoint ptr %fa.0213.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %fa.0.i = load volatile ptr, ptr %fa.0213.i, align 4
  %tobool19.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool19.not.i, label %cleanup110.thread.i.fn_trie_dump_leaf.exit_crit_edge, label %cleanup110.thread.i.for.body.i_crit_edge

cleanup110.thread.i.for.body.i_crit_edge:         ; preds = %cleanup110.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup110.thread.i.fn_trie_dump_leaf.exit_crit_edge: ; preds = %cleanup110.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fn_trie_dump_leaf.exit

fn_trie_dump_leaf.exit.thread:                    ; preds = %if.then101.i.fn_trie_dump_leaf.exit.thread_crit_edge, %if.then59.i.fn_trie_dump_leaf.exit.thread_crit_edge
  %err.4204.i = phi i32 [ %call103.i, %if.then101.i.fn_trie_dump_leaf.exit.thread_crit_edge ], [ %call92.i, %if.then59.i.fn_trie_dump_leaf.exit.thread_crit_edge ]
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %i.0211.i, ptr %arrayidx.i, align 4
  %82 = ptrtoint ptr %i_fa.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_fa.i, align 4
  %84 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx4.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_fa.i) #12
  br label %cleanup.thread

fn_trie_dump_leaf.exit:                           ; preds = %cleanup110.thread.i.fn_trie_dump_leaf.exit_crit_edge, %do.end.i.fn_trie_dump_leaf.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end.i.fn_trie_dump_leaf.exit_crit_edge ], [ %inc109.i, %cleanup110.thread.i.fn_trie_dump_leaf.exit_crit_edge ]
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %i.0.lcssa.i, ptr %arrayidx.i, align 4
  %86 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_fa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp4 = icmp slt i32 %87, 0
  br i1 %cmp4, label %fn_trie_dump_leaf.exit.cleanup.thread_crit_edge, label %if.end8

fn_trie_dump_leaf.exit.cleanup.thread_crit_edge:  ; preds = %fn_trie_dump_leaf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %fn_trie_dump_leaf.exit.cleanup.thread_crit_edge, %fn_trie_dump_leaf.exit.thread
  %retval.0.i45 = phi i32 [ %err.4204.i, %fn_trie_dump_leaf.exit.thread ], [ %87, %fn_trie_dump_leaf.exit.cleanup.thread_crit_edge ]
  %88 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %key.0, ptr %arrayidx1, align 4
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %count.0, ptr %arrayidx, align 4
  br label %cleanup18

if.end8:                                          ; preds = %fn_trie_dump_leaf.exit
  %inc = add i32 %count.0, 1
  %90 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call, align 4
  %add = add i32 %91, 1
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 0, ptr %arrayidx.i, align 4
  %93 = load i32, ptr %call, align 4
  %cmp12 = icmp ult i32 %add, %93
  br i1 %cmp12, label %if.end8.while.end_crit_edge, label %if.end8.while.cond_crit_edge

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %while.cond.while.end_crit_edge
  %count.2 = phi i32 [ %count.0, %while.cond.while.end_crit_edge ], [ %inc, %if.end8.while.end_crit_edge ]
  %key.2 = phi i32 [ %key.0, %while.cond.while.end_crit_edge ], [ %add, %if.end8.while.end_crit_edge ]
  %94 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %key.2, ptr %arrayidx1, align 4
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %count.2, ptr %arrayidx, align 4
  %96 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len.i, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %while.end, %cleanup.thread, %if.then
  %retval.2 = phi i32 [ %97, %while.end ], [ %8, %if.then ], [ %retval.0.i45, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #12
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_trie_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.15, i32 noundef 36, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #12
  store ptr %call, ptr @fn_alias_kmem, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 32, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #12
  store ptr %call1, ptr @trie_leaf_kmem, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_proc_init(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @fib_trie_seq_ops, i32 noundef 24, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @fib_triestat_seq_show, ptr noundef null) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out2_crit_edge, label %if.end5

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  %call7 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @fib_route_seq_ops, i32 noundef 32, ptr noundef null) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %out3, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

out3:                                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.17, ptr noundef %7) #12
  br label %out2

out2:                                             ; preds = %out3, %if.end.out2_crit_edge
  %8 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %9) #12
  br label %return

return:                                           ; preds = %out2, %if.end5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_triestat_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %iter.i = alloca %struct.fib_trie_iter, align 4
  %stat = alloca %struct.trie_stat, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.90, i32 noundef 32, i32 noundef 28) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 18
  %6 = getelementptr inbounds %struct.fib_trie_iter, ptr %iter.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fib_trie_iter, ptr %iter.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.fib_trie_iter, ptr %iter.i, i32 0, i32 4
  %tnodes.i = getelementptr inbounds %struct.trie_stat, ptr %stat, i32 0, i32 2
  %nullpointers.i = getelementptr inbounds %struct.trie_stat, ptr %stat, i32 0, i32 4
  %leaves.i = getelementptr inbounds %struct.trie_stat, ptr %stat, i32 0, i32 3
  %maxdepth.i = getelementptr inbounds %struct.trie_stat, ptr %stat, i32 0, i32 1
  %prefixes.i = getelementptr inbounds %struct.trie_stat, ptr %stat, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cond_resched_rcu.exit.for.body_crit_edge, %rcu_read_lock.exit
  %h.0115 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %cond_resched_rcu.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %10, i32 %h.0115
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @fib_triestat_seq_show.__warned, align 1
  br i1 %.b53, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_triestat_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2635, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %tb.0112 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not113 = icmp eq ptr %tb.0112, null
  br i1 %tobool13.not113, label %do.end.for.end_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body14:                                       ; preds = %cleanup.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %tb.0114 = phi ptr [ %tb.0, %cleanup.for.body14_crit_edge ], [ %tb.0112, %do.end.for.body14_crit_edge ]
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %tb.0114, i32 0, i32 4
  %12 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb_data, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %stat) #12
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %for.body14.cleanup_crit_edge, label %if.end17

for.body14.cleanup_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %for.body14
  %tb_id.i = getelementptr inbounds %struct.fib_table, ptr %tb.0114, i32 0, i32 1
  %14 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tb_id.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.else4.i [
    i32 255, label %if.then.i55
    i32 254, label %if.then3.i
  ]

if.then.i55:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.67) #12
  br label %fib_table_print.exit

if.then3.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.68) #12
  br label %fib_table_print.exit

if.else4.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, i32 noundef %15) #12
  br label %fib_table_print.exit

fib_table_print.exit:                             ; preds = %if.else4.i, %if.then3.i, %if.then.i55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #12
  %17 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %18 = call ptr @memset(ptr %stat, i32 0, i32 152)
  %19 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %fib_table_print.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

fib_table_print.exit.if.end.i.i_crit_edge:        ; preds = %fib_table_print.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %fib_table_print.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true2.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %fib_table_print.exit.if.end.i.i_crit_edge
  %23 = getelementptr inbounds %struct.key_vector, ptr %13, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %23, align 4
  %call.i75.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool2.not.i.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i76.i, label %if.end.i.i.do.end10.i.i_crit_edge

if.end.i.i.do.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i76.i:                              ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i76.i.do.end10.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i76.i.do.end10.i.i_crit_edge:       ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i76.i
  %.b32.i.i = load i1, ptr @fib_trie_get_first.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true5.i.i.do.end10.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2490, ptr noundef nonnull @.str.4) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i76.i.do.end10.i.i_crit_edge, %if.end.i.i.do.end10.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %25, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.for.end53.i_crit_edge, label %for.body.lr.ph.i

do.end10.i.i.for.end53.i_crit_edge:               ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end53.i

for.body.lr.ph.i:                                 ; preds = %do.end10.i.i
  %bits.i.i = getelementptr inbounds %struct.key_vector, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not.i.i = icmp eq i8 %27, 0
  %t..i.i = select i1 %tobool15.not.i.i, ptr %13, ptr %25
  %not.tobool15.not.i.i = xor i1 %tobool15.not.i.i, true
  %..i.i = zext i1 %not.tobool15.not.i.i to i32
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %t..i.i, ptr %6, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %7, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %..i.i, ptr %8, align 4
  %31 = ptrtoint ptr %tnodes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tnodes.i.promoted = load i32, ptr %tnodes.i, align 4
  %32 = ptrtoint ptr %nullpointers.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %nullpointers.i.promoted = load i32, ptr %nullpointers.i, align 4
  %33 = ptrtoint ptr %leaves.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %leaves.i.promoted = load i32, ptr %leaves.i, align 4
  %34 = ptrtoint ptr %maxdepth.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %maxdepth.i.promoted = load i32, ptr %maxdepth.i, align 4
  %35 = ptrtoint ptr %prefixes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %prefixes.i.promoted109 = load i32, ptr %prefixes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc51.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %inc24.i.lcssa111 = phi i32 [ %prefixes.i.promoted109, %for.body.lr.ph.i ], [ %inc24.i.lcssa110, %for.inc51.i.for.body.i_crit_edge ]
  %36 = phi i32 [ %maxdepth.i.promoted, %for.body.lr.ph.i ], [ %51, %for.inc51.i.for.body.i_crit_edge ]
  %inc.i108 = phi i32 [ %leaves.i.promoted, %for.body.lr.ph.i ], [ %inc.i107, %for.inc51.i.for.body.i_crit_edge ]
  %add49.i106 = phi i32 [ %nullpointers.i.promoted, %for.body.lr.ph.i ], [ %add49.i105, %for.inc51.i.for.body.i_crit_edge ]
  %inc40.i104 = phi i32 [ %tnodes.i.promoted, %for.body.lr.ph.i ], [ %inc40.i103, %for.inc51.i.for.body.i_crit_edge ]
  %n.090.i = phi ptr [ %25, %for.body.lr.ph.i ], [ %call52.i, %for.inc51.i.for.body.i_crit_edge ]
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %n.090.i, i32 0, i32 2
  %37 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i, label %if.then.i56, label %if.else.i

if.then.i56:                                      ; preds = %for.body.i
  %inc.i = add i32 %inc.i108, 1
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %8, align 4
  %41 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stat, align 4
  %add.i = add i32 %42, %40
  store i32 %add.i, ptr %stat, align 4
  %43 = tail call i32 @llvm.umax.i32(i32 %40, i32 %36)
  %call6.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i58, label %if.then.i56.do.end.i_crit_edge

if.then.i56.do.end.i_crit_edge:                   ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i58:                                ; preds = %if.then.i56
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i58.do.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i58.do.end.i_crit_edge:             ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i58
  %.b72.i = load i1, ptr @trie_collect_stats.__warned, align 1
  br i1 %.b72.i, label %land.lhs.true10.i.do.end.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trie_collect_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2524, ptr noundef nonnull @.str.9) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %land.lhs.true10.i.do.end.i_crit_edge, %land.lhs.true.i58.do.end.i_crit_edge, %if.then.i56.do.end.i_crit_edge
  %44 = getelementptr inbounds %struct.key_vector, ptr %n.090.i, i32 0, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %fa.086.i = load volatile ptr, ptr %44, align 4
  %tobool22.not87.i = icmp eq ptr %fa.086.i, null
  br i1 %tobool22.not87.i, label %do.end.i.for.inc51.i_crit_edge, label %do.end.i.for.body23.i_crit_edge

do.end.i.for.body23.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body23.i

do.end.i.for.inc51.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc51.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %do.end.i.for.body23.i_crit_edge
  %inc24.i102 = phi i32 [ %inc24.i, %for.body23.i.for.body23.i_crit_edge ], [ %inc24.i.lcssa111, %do.end.i.for.body23.i_crit_edge ]
  %fa.088.i = phi ptr [ %fa.0.i, %for.body23.i.for.body23.i_crit_edge ], [ %fa.086.i, %do.end.i.for.body23.i_crit_edge ]
  %inc24.i = add i32 %inc24.i102, 1
  %46 = ptrtoint ptr %fa.088.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %fa.0.i = load volatile ptr, ptr %fa.088.i, align 4
  %tobool22.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool22.not.i, label %for.body23.i.for.inc51.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23.i

for.body23.i.for.inc51.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc51.i

if.else.i:                                        ; preds = %for.body.i
  %inc40.i = add i32 %inc40.i104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %38)
  %cmp42.i = icmp ult i8 %38, 32
  br i1 %cmp42.i, label %if.then44.i, label %if.else.i.if.end47.i_crit_edge

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then44.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %38 to i32
  %arrayidx.i = getelementptr %struct.trie_stat, ptr %stat, i32 0, i32 6, i32 %conv.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %inc46.i = add i32 %48, 1
  store i32 %inc46.i, ptr %arrayidx.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %if.else.i.if.end47.i_crit_edge
  %empty_children.i = getelementptr i8, ptr %n.090.i, i32 -12
  %49 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %empty_children.i, align 4
  %add49.i = add i32 %add49.i106, %50
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %if.end47.i, %for.body23.i.for.inc51.i_crit_edge, %do.end.i.for.inc51.i_crit_edge
  %inc24.i.lcssa110 = phi i32 [ %inc24.i.lcssa111, %if.end47.i ], [ %inc24.i.lcssa111, %do.end.i.for.inc51.i_crit_edge ], [ %inc24.i, %for.body23.i.for.inc51.i_crit_edge ]
  %51 = phi i32 [ %36, %if.end47.i ], [ %43, %do.end.i.for.inc51.i_crit_edge ], [ %43, %for.body23.i.for.inc51.i_crit_edge ]
  %inc.i107 = phi i32 [ %inc.i108, %if.end47.i ], [ %inc.i, %do.end.i.for.inc51.i_crit_edge ], [ %inc.i, %for.body23.i.for.inc51.i_crit_edge ]
  %add49.i105 = phi i32 [ %add49.i, %if.end47.i ], [ %add49.i106, %do.end.i.for.inc51.i_crit_edge ], [ %add49.i106, %for.body23.i.for.inc51.i_crit_edge ]
  %inc40.i103 = phi i32 [ %inc40.i, %if.end47.i ], [ %inc40.i104, %do.end.i.for.inc51.i_crit_edge ], [ %inc40.i104, %for.body23.i.for.inc51.i_crit_edge ]
  %call52.i = call fastcc ptr @fib_trie_get_next(ptr noundef nonnull %iter.i) #12
  %tobool.not.i59 = icmp eq ptr %call52.i, null
  br i1 %tobool.not.i59, label %for.end53.i.loopexit, label %for.inc51.i.for.body.i_crit_edge

for.inc51.i.for.body.i_crit_edge:                 ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end53.i.loopexit:                             ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %tnodes.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc40.i103, ptr %tnodes.i, align 4
  %53 = ptrtoint ptr %nullpointers.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add49.i105, ptr %nullpointers.i, align 4
  %54 = ptrtoint ptr %leaves.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc.i107, ptr %leaves.i, align 4
  %55 = ptrtoint ptr %maxdepth.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %maxdepth.i, align 4
  %56 = ptrtoint ptr %prefixes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc24.i.lcssa110, ptr %prefixes.i, align 4
  br label %for.end53.i

for.end53.i:                                      ; preds = %for.end53.i.loopexit, %do.end10.i.i.for.end53.i_crit_edge
  %call.i77.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i77.i, label %for.end53.i.trie_collect_stats.exit_crit_edge, label %land.lhs.true.i80.i

for.end53.i.trie_collect_stats.exit_crit_edge:    ; preds = %for.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_collect_stats.exit

land.lhs.true.i80.i:                              ; preds = %for.end53.i
  %call1.i78.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call1.i78.i, 0
  br i1 %tobool.not.i79.i, label %land.lhs.true.i80.i.trie_collect_stats.exit_crit_edge, label %land.lhs.true2.i82.i

land.lhs.true.i80.i.trie_collect_stats.exit_crit_edge: ; preds = %land.lhs.true.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_collect_stats.exit

land.lhs.true2.i82.i:                             ; preds = %land.lhs.true.i80.i
  %.b4.i81.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81.i, label %land.lhs.true2.i82.i.trie_collect_stats.exit_crit_edge, label %if.then.i83.i

land.lhs.true2.i82.i.trie_collect_stats.exit_crit_edge: ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_collect_stats.exit

if.then.i83.i:                                    ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %trie_collect_stats.exit

trie_collect_stats.exit:                          ; preds = %if.then.i83.i, %land.lhs.true2.i82.i.trie_collect_stats.exit_crit_edge, %land.lhs.true.i80.i.trie_collect_stats.exit_crit_edge, %for.end53.i.trie_collect_stats.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %57 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i84.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i84.i to ptr
  %preempt_count.i.i.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i85.i, align 4
  %sub.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i85.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #12
  %61 = ptrtoint ptr %leaves.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %leaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i61 = icmp eq i32 %62, 0
  br i1 %tobool.not.i61, label %trie_collect_stats.exit.if.end.i_crit_edge, label %if.then.i62

trie_collect_stats.exit.if.end.i_crit_edge:       ; preds = %trie_collect_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i62:                                      ; preds = %trie_collect_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stat, align 4
  %mul.i = mul i32 %64, 100
  %div.i = udiv i32 %mul.i, %62
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i62, %trie_collect_stats.exit.if.end.i_crit_edge
  %avdepth.0.i = phi i32 [ %div.i, %if.then.i62 ], [ 0, %trie_collect_stats.exit.if.end.i_crit_edge ]
  %avdepth.0.i.frozen = freeze i32 %avdepth.0.i
  %div2.i = udiv i32 %avdepth.0.i.frozen, 100
  %65 = mul i32 %div2.i, 100
  %rem.i.decomposed = sub i32 %avdepth.0.i.frozen, %65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.91, i32 noundef %div2.i, i32 noundef %rem.i.decomposed) #12
  %66 = ptrtoint ptr %maxdepth.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %maxdepth.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.92, i32 noundef %67) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.93, i32 noundef %62) #12
  %68 = ptrtoint ptr %prefixes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %prefixes.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.94, i32 noundef %69) #12
  %70 = ptrtoint ptr %tnodes.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tnodes.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.95, i32 noundef %71) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end.i
  %max.0.i = phi i32 [ 32, %if.end.i ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.0.i)
  %cmp.not.i = icmp eq i32 %max.0.i, 0
  br i1 %cmp.not.i, label %while.cond.i.trie_show_stats.exit_crit_edge, label %land.rhs.i

while.cond.i.trie_show_stats.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_show_stats.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add nsw i32 %max.0.i, -1
  %arrayidx.i66 = getelementptr %struct.trie_stat, ptr %stat, i32 0, i32 6, i32 %sub.i
  %72 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i66, align 4
  %cmp11.i = icmp eq i32 %73, 0
  br i1 %cmp11.i, label %land.rhs.i.while.cond.i_crit_edge, label %while.end.i

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max.0.i)
  %cmp1268.i = icmp ugt i32 %max.0.i, 1
  br i1 %cmp1268.i, label %while.end.i.for.body.i67_crit_edge, label %while.end.i.trie_show_stats.exit_crit_edge

while.end.i.trie_show_stats.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_show_stats.exit

while.end.i.for.body.i67_crit_edge:               ; preds = %while.end.i
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc.i.for.body.i67_crit_edge, %while.end.i.for.body.i67_crit_edge
  %pointers.071.i = phi i32 [ %pointers.1.i, %for.inc.i.for.body.i67_crit_edge ], [ 0, %while.end.i.for.body.i67_crit_edge ]
  %i.069.i = phi i32 [ %inc.i68, %for.inc.i.for.body.i67_crit_edge ], [ 1, %while.end.i.for.body.i67_crit_edge ]
  %arrayidx14.i = getelementptr %struct.trie_stat, ptr %stat, i32 0, i32 6, i32 %i.069.i
  %74 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp15.not.i = icmp eq i32 %75, 0
  br i1 %cmp15.not.i, label %for.body.i67.for.inc.i_crit_edge, label %if.then16.i

for.body.i67.for.inc.i_crit_edge:                 ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then16.i:                                      ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.96, i32 noundef %i.069.i, i32 noundef %75) #12
  %mul21.i = shl i32 %75, %i.069.i
  %add22.i = add i32 %mul21.i, %pointers.071.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %for.body.i67.for.inc.i_crit_edge
  %pointers.1.i = phi i32 [ %add22.i, %if.then16.i ], [ %pointers.071.i, %for.body.i67.for.inc.i_crit_edge ]
  %inc.i68 = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i68, %max.0.i
  br i1 %exitcond.not.i, label %for.inc.i.trie_show_stats.exit_crit_edge, label %for.inc.i.for.body.i67_crit_edge

for.inc.i.for.body.i67_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i67

for.inc.i.trie_show_stats.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_show_stats.exit

trie_show_stats.exit:                             ; preds = %for.inc.i.trie_show_stats.exit_crit_edge, %while.end.i.trie_show_stats.exit_crit_edge, %while.cond.i.trie_show_stats.exit_crit_edge
  %pointers.0.lcssa.i = phi i32 [ 0, %while.end.i.trie_show_stats.exit_crit_edge ], [ %pointers.1.i, %for.inc.i.trie_show_stats.exit_crit_edge ], [ 0, %while.cond.i.trie_show_stats.exit_crit_edge ]
  %mul5.i = shl i32 %62, 5
  %mul7.i = mul i32 %69, 36
  %mul9.i = mul i32 %71, 28
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.97, i32 noundef %pointers.0.lcssa.i) #12
  %mul24.i = shl i32 %pointers.0.lcssa.i, 2
  %76 = ptrtoint ptr %nullpointers.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nullpointers.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98, i32 noundef %77) #12
  %add.i70 = add i32 %mul5.i, 1023
  %add10.i = add i32 %add.i70, %mul7.i
  %add25.i = add i32 %add10.i, %mul9.i
  %add26.i = add i32 %add25.i, %mul24.i
  %div2767.i = lshr i32 %add26.i, 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.99, i32 noundef %div2767.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %call44.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call44.i, i32 %78)
  %cmp45.i = icmp ult i32 %call44.i, %78
  br i1 %cmp45.i, label %for.body.lr.ph.i71, label %trie_show_stats.exit.trie_show_usage.exit_crit_edge

trie_show_stats.exit.trie_show_usage.exit_crit_edge: ; preds = %trie_show_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_show_usage.exit

for.body.lr.ph.i71:                               ; preds = %trie_show_stats.exit
  %stats = getelementptr inbounds %struct.trie, ptr %13, i32 0, i32 1
  %79 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stats, align 4
  %81 = ptrtoint ptr %80 to i32
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.body.i77.for.body.i77_crit_edge, %for.body.lr.ph.i71
  %call52.i72 = phi i32 [ %call44.i, %for.body.lr.ph.i71 ], [ %call.i75, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.0.051.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add3.i, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.6.050.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add5.i, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.9.049.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add7.i, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.12.048.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add9.i, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.15.047.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add11.i, %for.body.i77.for.body.i77_crit_edge ]
  %s.sroa.18.046.i = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add13.i, %for.body.i77.for.body.i77_crit_edge ]
  %arrayidx.i73 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call52.i72
  %82 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i73, align 4
  %add.i74 = add i32 %83, %81
  %84 = inttoptr i32 %add.i74 to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %add3.i = add i32 %86, %s.sroa.0.051.i
  %backtrack.i = getelementptr inbounds %struct.trie_use_stats, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %backtrack.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %backtrack.i, align 4
  %add5.i = add i32 %88, %s.sroa.6.050.i
  %semantic_match_passed.i = getelementptr inbounds %struct.trie_use_stats, ptr %84, i32 0, i32 2
  %89 = ptrtoint ptr %semantic_match_passed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %semantic_match_passed.i, align 4
  %add7.i = add i32 %90, %s.sroa.9.049.i
  %semantic_match_miss.i = getelementptr inbounds %struct.trie_use_stats, ptr %84, i32 0, i32 3
  %91 = ptrtoint ptr %semantic_match_miss.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %semantic_match_miss.i, align 4
  %add9.i = add i32 %92, %s.sroa.12.048.i
  %null_node_hit.i = getelementptr inbounds %struct.trie_use_stats, ptr %84, i32 0, i32 4
  %93 = ptrtoint ptr %null_node_hit.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %null_node_hit.i, align 4
  %add11.i = add i32 %94, %s.sroa.15.047.i
  %resize_node_skipped.i = getelementptr inbounds %struct.trie_use_stats, ptr %84, i32 0, i32 5
  %95 = ptrtoint ptr %resize_node_skipped.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %resize_node_skipped.i, align 4
  %add13.i = add i32 %96, %s.sroa.18.046.i
  %call.i75 = tail call i32 @cpumask_next(i32 noundef %call52.i72, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp.i76 = icmp ult i32 %call.i75, %78
  br i1 %cmp.i76, label %for.body.i77.for.body.i77_crit_edge, label %for.body.i77.trie_show_usage.exit_crit_edge

for.body.i77.trie_show_usage.exit_crit_edge:      ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %trie_show_usage.exit

for.body.i77.for.body.i77_crit_edge:              ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i77

trie_show_usage.exit:                             ; preds = %for.body.i77.trie_show_usage.exit_crit_edge, %trie_show_stats.exit.trie_show_usage.exit_crit_edge
  %s.sroa.18.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add13.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  %s.sroa.15.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add11.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  %s.sroa.12.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add9.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  %s.sroa.9.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add7.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  %s.sroa.6.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add5.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  %s.sroa.0.0.lcssa.i = phi i32 [ 0, %trie_show_stats.exit.trie_show_usage.exit_crit_edge ], [ %add3.i, %for.body.i77.trie_show_usage.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.100) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.101, i32 noundef %s.sroa.0.0.lcssa.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102, i32 noundef %s.sroa.6.0.lcssa.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, i32 noundef %s.sroa.9.0.lcssa.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.104, i32 noundef %s.sroa.12.0.lcssa.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.105, i32 noundef %s.sroa.15.0.lcssa.i) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.106, i32 noundef %s.sroa.18.0.lcssa.i) #12
  br label %cleanup

cleanup:                                          ; preds = %trie_show_usage.exit, %for.body14.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %stat) #12
  %97 = ptrtoint ptr %tb.0114 to i32
  call void @__asan_load4_noabort(i32 %97)
  %tb.0 = load volatile ptr, ptr %tb.0114, align 4
  %tobool13.not = icmp eq ptr %tb.0, null
  br i1 %tobool13.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body14_crit_edge

cleanup.for.body14_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1.i, label %for.end.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i4.i

for.end.rcu_read_unlock.exit.i_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i4.i:                               ; preds = %for.end
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i4.i.rcu_read_unlock.exit.i_crit_edge, %for.end.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %98 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i8.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i78 = add i32 %101, -1
  store volatile i32 %sub.i.i.i.i78, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.107, i32 noundef 2089, i32 noundef 0) #12
  %call.i10.i = tail call i32 @__cond_resched() #12
  %102 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i.i79 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i80, align 4
  %add.i.i.i.i81 = add i32 %105, 1
  store volatile i32 %add.i.i.i.i81, ptr %preempt_count.i.i.i.i.i80, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i82 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i82, label %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge, label %land.lhs.true.i.i85

rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond_resched_rcu.exit

land.lhs.true.i.i85:                              ; preds = %rcu_read_unlock.exit.i
  %call1.i.i83 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call1.i.i83, 0
  br i1 %tobool.not.i.i84, label %land.lhs.true.i.i85.cond_resched_rcu.exit_crit_edge, label %land.lhs.true2.i.i87

land.lhs.true.i.i85.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond_resched_rcu.exit

land.lhs.true2.i.i87:                             ; preds = %land.lhs.true.i.i85
  %.b4.i.i86 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i86, label %land.lhs.true2.i.i87.cond_resched_rcu.exit_crit_edge, label %if.then.i.i88

land.lhs.true2.i.i87.cond_resched_rcu.exit_crit_edge: ; preds = %land.lhs.true2.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond_resched_rcu.exit

if.then.i.i88:                                    ; preds = %land.lhs.true2.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %cond_resched_rcu.exit

cond_resched_rcu.exit:                            ; preds = %if.then.i.i88, %land.lhs.true2.i.i87.cond_resched_rcu.exit_crit_edge, %land.lhs.true.i.i85.cond_resched_rcu.exit_crit_edge, %rcu_read_unlock.exit.i.cond_resched_rcu.exit_crit_edge
  %inc = add nuw nsw i32 %h.0115, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end35, label %cond_resched_rcu.exit.for.body_crit_edge

cond_resched_rcu.exit.for.body_crit_edge:         ; preds = %cond_resched_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end35:                                        ; preds = %cond_resched_rcu.exit
  %call.i90 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i90, label %for.end35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i93

for.end35.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i93:                                ; preds = %for.end35
  %call1.i91 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i95

land.lhs.true.i93.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i95:                               ; preds = %land.lhs.true.i93
  %.b4.i94 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i94, label %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, label %if.then.i96

land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i95
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i96, %land.lhs.true2.i95.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i93.rcu_read_unlock.exit_crit_edge, %for.end35.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %106 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i97 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i97 to ptr
  %preempt_count.i.i.i.i98 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i98, align 4
  %sub.i.i.i = add i32 %109, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i98, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_proc_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %1) #12
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.17, ptr noundef %3) #12
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.18, ptr noundef %5) #12
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_get_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__alias_free_mem(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -28
  %0 = load ptr, ptr @fn_alias_kmem, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_insert_node(ptr nocapture noundef readonly %t, ptr noundef %tp, ptr noundef %new, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @trie_leaf_kmem, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup48_crit_edge, label %leaf_new.exit

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

leaf_new.exit:                                    ; preds = %entry
  %kv1.i = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %kv1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %key, ptr %kv1.i, align 4
  %pos.i = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %pos.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pos.i, align 8
  %bits.i = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %bits.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bits.i, align 1
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %new, i32 0, i32 5
  %4 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fa_slen.i, align 1
  %slen.i = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %6 = ptrtoint ptr %slen.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %slen.i, align 2
  %7 = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %new, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %new, ptr %7, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %new, i32 0, i32 1
  %10 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %7, ptr %pprev34.i.i, align 4
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1, label %leaf_new.exit.do.end_crit_edge, label %land.lhs.true

leaf_new.exit.do.end_crit_edge:                   ; preds = %leaf_new.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %leaf_new.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @fib_insert_node.__warned, align 1
  br i1 %.b76, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_insert_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1111, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %leaf_new.exit.do.end_crit_edge
  %11 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 4
  %pos.i77 = getelementptr inbounds %struct.key_vector, ptr %tp, i32 0, i32 1
  %12 = ptrtoint ptr %pos.i77 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pos.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp.i = icmp eq i8 %13, 32
  br i1 %cmp.i, label %do.end.get_index.exit_crit_edge, label %if.end.i

do.end.get_index.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_index.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tp, align 4
  %xor.i = xor i32 %15, %key
  %shr.i = lshr i32 %xor.i, %conv.i
  br label %get_index.exit

get_index.exit:                                   ; preds = %if.end.i, %do.end.get_index.exit_crit_edge
  %retval.0.i78 = phi i32 [ %shr.i, %if.end.i ], [ 0, %do.end.get_index.exit_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %11, i32 0, i32 %retval.0.i78
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %get_index.exit.if.end32_crit_edge, label %if.then10

get_index.exit.if.end32_crit_edge:                ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then10:                                        ; preds = %get_index.exit
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %xor = xor i32 %19, %key
  %20 = tail call i32 @llvm.ctlz.i32(i32 %xor, i1 false) #12, !range !354
  %add.i = sub nuw nsw i32 32, %20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 36) #15
  %tobool9.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool9.not.i, label %notnode, label %do.body12.i

do.body12.i:                                      ; preds = %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib_insert_node, %if.then21.i)) #12
          to label %get_index.exit90 [label %if.then21.i], !srcloc !335

if.then21.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 28, i32 noundef 8) #12
  br label %get_index.exit90

get_index.exit90:                                 ; preds = %if.then21.i, %do.body12.i
  %empty_children.i = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %empty_children.i, align 8
  %kv.i = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.i.not = icmp eq i32 %20, 0
  %23 = shl nsw i32 -1, %add.i
  %shl30.i = and i32 %23, %key
  %cond.i = select i1 %cmp29.i.not, i32 0, i32 %shl30.i
  %24 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %kv.i, align 4
  %25 = trunc i32 %20 to i8
  %conv.i80 = sub nsw i8 31, %25
  %pos32.i = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %pos32.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i80, ptr %pos32.i, align 8
  %bits34.i = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 2
  %27 = ptrtoint ptr %bits34.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %bits34.i, align 1
  %slen.i81 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 3
  %28 = ptrtoint ptr %slen.i81 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i80, ptr %slen.i81, align 2
  %parent = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tp, ptr %parent, align 8
  %conv.i85 = zext i8 %conv.i80 to i32
  %30 = load i32, ptr %kv.i, align 4
  %xor.i86 = xor i32 %30, %key
  %shr.i87 = lshr i32 %xor.i86, %conv.i85
  %phi.bo = xor i32 %shr.i87, 1
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %phi.bo, ptr noundef nonnull %17)
  %31 = ptrtoint ptr %pos.i77 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pos.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %32)
  %cmp.i92 = icmp ugt i8 %32, 31
  br i1 %cmp.i92, label %do.body.i, label %get_index.exit.i

do.body.i:                                        ; preds = %get_index.exit90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %kv.i, ptr %11, align 4
  br label %cleanup

get_index.exit.i:                                 ; preds = %get_index.exit90
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i8 %32 to i32
  %34 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tp, align 4
  %xor.i.i = xor i32 %35, %key
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  tail call fastcc void @put_child(ptr noundef %tp, i32 noundef %shr.i.i, ptr noundef nonnull %kv.i) #12
  br label %cleanup

cleanup:                                          ; preds = %get_index.exit.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !353
  %parent23.i = getelementptr i8, ptr %17, i32 -4
  %36 = ptrtoint ptr %parent23.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %kv.i, ptr %parent23.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %get_index.exit.if.end32_crit_edge
  %tp.addr.1 = phi ptr [ %kv.i, %cleanup ], [ %tp, %get_index.exit.if.end32_crit_edge ]
  %37 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fa_slen.i, align 1
  %slen113.i = getelementptr inbounds %struct.key_vector, ptr %tp.addr.1, i32 0, i32 3
  %39 = ptrtoint ptr %slen113.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %slen113.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %38)
  %cmp14.i = icmp ult i8 %40, %38
  br i1 %cmp14.i, label %if.end32.while.body.i_crit_edge, label %if.end32.node_push_suffix.exit_crit_edge

if.end32.node_push_suffix.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %node_push_suffix.exit

if.end32.while.body.i_crit_edge:                  ; preds = %if.end32
  br label %while.body.i

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %if.end32.while.body.i_crit_edge
  %slen116.i = phi ptr [ %slen1.i, %do.end.i.while.body.i_crit_edge ], [ %slen113.i, %if.end32.while.body.i_crit_edge ]
  %tn.addr.015.i = phi ptr [ %43, %do.end.i.while.body.i_crit_edge ], [ %tp.addr.1, %if.end32.while.body.i_crit_edge ]
  %41 = ptrtoint ptr %slen116.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %38, ptr %slen116.i, align 2
  %call.i95 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i95, label %while.body.i.do.end.i_crit_edge, label %land.lhs.true.i

while.body.i.do.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i96 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @node_push_suffix.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @node_push_suffix.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 929, ptr noundef nonnull @.str.12) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %while.body.i.do.end.i_crit_edge
  %parent.i = getelementptr i8, ptr %tn.addr.015.i, i32 -4
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i, align 4
  %slen1.i = getelementptr inbounds %struct.key_vector, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %slen1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %slen1.i, align 2
  %cmp.i97 = icmp ult i8 %45, %38
  br i1 %cmp.i97, label %do.end.i.while.body.i_crit_edge, label %do.end.i.node_push_suffix.exit_crit_edge

do.end.i.node_push_suffix.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %node_push_suffix.exit

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

node_push_suffix.exit:                            ; preds = %do.end.i.node_push_suffix.exit_crit_edge, %if.end32.node_push_suffix.exit_crit_edge
  %parent40 = getelementptr inbounds %struct.tnode, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %parent40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %tp.addr.1, ptr %parent40, align 8
  %pos.i99 = getelementptr inbounds %struct.key_vector, ptr %tp.addr.1, i32 0, i32 1
  %47 = ptrtoint ptr %pos.i99 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pos.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %48)
  %cmp.i100 = icmp ugt i8 %48, 31
  br i1 %cmp.i100, label %do.body.i101, label %get_index.exit.i105

do.body.i101:                                     ; preds = %node_push_suffix.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %49 = getelementptr inbounds %struct.key_vector, ptr %tp.addr.1, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %kv1.i, ptr %49, align 4
  br label %put_child_root.exit106

get_index.exit.i105:                              ; preds = %node_push_suffix.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i102 = zext i8 %48 to i32
  %51 = ptrtoint ptr %tp.addr.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tp.addr.1, align 4
  %xor.i.i103 = xor i32 %52, %key
  %shr.i.i104 = lshr i32 %xor.i.i103, %conv.i.i102
  tail call fastcc void @put_child(ptr noundef %tp.addr.1, i32 noundef %shr.i.i104, ptr noundef %kv1.i) #12
  br label %put_child_root.exit106

put_child_root.exit106:                           ; preds = %get_index.exit.i105, %do.body.i101
  %53 = ptrtoint ptr %pos.i99 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pos.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %54)
  %cmp4.i = icmp ult i8 %54, 32
  br i1 %cmp4.i, label %put_child_root.exit106.while.body.i110_crit_edge, label %put_child_root.exit106.cleanup48_crit_edge

put_child_root.exit106.cleanup48_crit_edge:       ; preds = %put_child_root.exit106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

put_child_root.exit106.while.body.i110_crit_edge: ; preds = %put_child_root.exit106
  br label %while.body.i110

while.body.i110:                                  ; preds = %while.body.i110.while.body.i110_crit_edge, %put_child_root.exit106.while.body.i110_crit_edge
  %tn.addr.05.i = phi ptr [ %call.i107, %while.body.i110.while.body.i110_crit_edge ], [ %tp.addr.1, %put_child_root.exit106.while.body.i110_crit_edge ]
  %call.i107 = tail call fastcc ptr @resize(ptr noundef %t, ptr noundef %tn.addr.05.i) #12
  %pos.i108 = getelementptr inbounds %struct.key_vector, ptr %call.i107, i32 0, i32 1
  %55 = ptrtoint ptr %pos.i108 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pos.i108, align 4
  %cmp.i109 = icmp ult i8 %56, 32
  br i1 %cmp.i109, label %while.body.i110.while.body.i110_crit_edge, label %while.body.i110.cleanup48_crit_edge

while.body.i110.cleanup48_crit_edge:              ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup48

while.body.i110.while.body.i110_crit_edge:        ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i110

notnode:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @call_rcu(ptr noundef nonnull %call.i, ptr noundef nonnull @__node_free_rcu) #12
  br label %cleanup48

cleanup48:                                        ; preds = %notnode, %while.body.i110.cleanup48_crit_edge, %put_child_root.exit106.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ -12, %notnode ], [ 0, %put_child_root.exit106.cleanup48_crit_edge ], [ -12, %entry.cleanup48_crit_edge ], [ 0, %while.body.i110.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_child(ptr noundef %tn, i32 noundef %i, ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @put_child.__warned, align 1
  br i1 %.b116, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @put_child.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 419, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 4
  %arrayidx = getelementptr [0 x ptr], ptr %0, i32 0, i32 %i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 2
  %3 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bits.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %i)
  %cmp.not = icmp ugt i32 %and.i, %i
  br i1 %cmp.not, label %do.end17, label %do.body9, !prof !337

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #12, !srcloc !355
  unreachable

do.end17:                                         ; preds = %do.end
  %tobool18.not = icmp eq ptr %n, null
  %tobool18.not.not = xor i1 %tobool18.not, true
  %tobool20.not = icmp eq ptr %2, null
  %or.cond = select i1 %tobool18.not.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %do.end17.if.end22_crit_edge, label %if.then21

do.end17.if.end22_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %do.end17
  %empty_children.i = getelementptr i8, ptr %tn, i32 -12
  %5 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %empty_children.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %empty_children.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %full_children.i = getelementptr i8, ptr %tn, i32 -8
  %7 = ptrtoint ptr %full_children.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %full_children.i, align 4
  %inc4.i = add i32 %8, 1
  store i32 %inc4.i, ptr %full_children.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then21.if.end22_crit_edge, %do.end17.if.end22_crit_edge
  %or.cond118 = select i1 %tobool18.not.not, i1 %tobool20.not, i1 false
  br i1 %or.cond118, label %if.then26, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  %empty_children.i122 = getelementptr i8, ptr %tn, i32 -12
  %9 = ptrtoint ptr %empty_children.i122 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %empty_children.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i123 = icmp eq i32 %10, 0
  br i1 %tobool.not.i123, label %if.then.i125, label %if.then26.empty_child_dec.exit_crit_edge

if.then26.empty_child_dec.exit_crit_edge:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %empty_child_dec.exit

if.then.i125:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %full_children.i124 = getelementptr i8, ptr %tn, i32 -8
  %11 = ptrtoint ptr %full_children.i124 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %full_children.i124, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %full_children.i124, align 4
  br label %empty_child_dec.exit

empty_child_dec.exit:                             ; preds = %if.then.i125, %if.then26.empty_child_dec.exit_crit_edge
  %dec4.i = add i32 %10, -1
  %13 = ptrtoint ptr %empty_children.i122 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec4.i, ptr %empty_children.i122, align 4
  br label %if.end27

if.end27:                                         ; preds = %empty_child_dec.exit, %if.end22.if.end27_crit_edge
  br i1 %tobool20.not, label %if.end27.tnode_full.exit_crit_edge, label %land.lhs.true.i

if.end27.tnode_full.exit_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_full.exit

land.lhs.true.i:                                  ; preds = %if.end27
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos.i, align 4
  %conv.i127 = zext i8 %15 to i32
  %bits.i128 = getelementptr inbounds %struct.key_vector, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %bits.i128 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bits.i128, align 1
  %conv1.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i127
  %pos2.i = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 1
  %18 = ptrtoint ptr %pos2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pos2.i, align 4
  %conv3.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv3.i)
  %cmp.i = icmp eq i32 %add.i, %conv3.i
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.tnode_full.exit_crit_edge

land.lhs.true.i.tnode_full.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_full.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.i = icmp ne i8 %17, 0
  %phi.cast.i = zext i1 %tobool7.i to i32
  br label %tnode_full.exit

tnode_full.exit:                                  ; preds = %land.rhs.i, %land.lhs.true.i.tnode_full.exit_crit_edge, %if.end27.tnode_full.exit_crit_edge
  %20 = phi i32 [ 0, %land.lhs.true.i.tnode_full.exit_crit_edge ], [ 0, %if.end27.tnode_full.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  br i1 %tobool18.not, label %tnode_full.exit.tnode_full.exit142_crit_edge, label %land.lhs.true.i138

tnode_full.exit.tnode_full.exit142_crit_edge:     ; preds = %tnode_full.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_full.exit142

land.lhs.true.i138:                               ; preds = %tnode_full.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pos.i130 = getelementptr inbounds %struct.key_vector, ptr %n, i32 0, i32 1
  %21 = ptrtoint ptr %pos.i130 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pos.i130, align 4
  %conv.i131 = zext i8 %22 to i32
  %bits.i132 = getelementptr inbounds %struct.key_vector, ptr %n, i32 0, i32 2
  %23 = ptrtoint ptr %bits.i132 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bits.i132, align 1
  %conv1.i133 = zext i8 %24 to i32
  %add.i134 = add nuw nsw i32 %conv1.i133, %conv.i131
  %pos2.i135 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 1
  %25 = ptrtoint ptr %pos2.i135 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pos2.i135, align 4
  %conv3.i136 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i134, i32 %conv3.i136)
  %cmp.i137 = icmp ne i32 %add.i134, %conv3.i136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.i139 = icmp eq i8 %24, 0
  %spec.select = select i1 %cmp.i137, i1 true, i1 %tobool7.i139
  br label %tnode_full.exit142

tnode_full.exit142:                               ; preds = %land.lhs.true.i138, %tnode_full.exit.tnode_full.exit142_crit_edge
  %27 = phi i1 [ true, %tnode_full.exit.tnode_full.exit142_crit_edge ], [ %spec.select, %land.lhs.true.i138 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp ne i32 %20, 0
  %or.cond119 = select i1 %tobool30.not, i1 %27, i1 false
  br i1 %or.cond119, label %tnode_full.exit142.if.end42.sink.split_crit_edge, label %if.else

tnode_full.exit142.if.end42.sink.split_crit_edge: ; preds = %tnode_full.exit142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.sink.split

if.else:                                          ; preds = %tnode_full.exit142
  %or.cond121 = select i1 %tobool30.not, i1 true, i1 %27
  br i1 %or.cond121, label %if.else.if.end42_crit_edge, label %if.else.if.end42.sink.split_crit_edge

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.sink.split

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end42.sink.split:                              ; preds = %if.else.if.end42.sink.split_crit_edge, %tnode_full.exit142.if.end42.sink.split_crit_edge
  %.sink144 = phi i32 [ -1, %tnode_full.exit142.if.end42.sink.split_crit_edge ], [ 1, %if.else.if.end42.sink.split_crit_edge ]
  %full_children = getelementptr i8, ptr %tn, i32 -8
  %28 = ptrtoint ptr %full_children to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %full_children, align 4
  %inc = add i32 %29, %.sink144
  store i32 %inc, ptr %full_children, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  br i1 %tobool18.not, label %if.end42.do.body53_crit_edge, label %land.lhs.true44

if.end42.do.body53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

land.lhs.true44:                                  ; preds = %if.end42
  %slen = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 3
  %30 = ptrtoint ptr %slen to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %slen, align 2
  %slen45 = getelementptr inbounds %struct.key_vector, ptr %n, i32 0, i32 3
  %32 = ptrtoint ptr %slen45 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %slen45, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp47 = icmp ult i8 %31, %33
  br i1 %cmp47, label %if.then49, label %land.lhs.true44.do.body53_crit_edge

land.lhs.true44.do.body53_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then49:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %slen to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %slen, align 2
  br label %do.body53

do.body53:                                        ; preds = %if.then49, %land.lhs.true44.do.body53_crit_edge, %if.end42.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %n, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_fib_table_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nexthop_num_path(ptr noundef %nh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %if.then.do.end10_crit_edge, label %lor.lhs.false

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 295, ptr noundef nonnull @.str.4) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %is_multipath = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_multipath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_multipath, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %do.end10.if.end15_crit_edge, label %if.then13

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_nh, align 4
  %conv = zext i16 %8 to i32
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end10.if.end15_crit_edge, %entry.if.end15_crit_edge
  %rc.1 = phi i32 [ 1, %entry.if.end15_crit_edge ], [ %conv, %if.then13 ], [ 1, %do.end10.if.end15_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nexthop_fib_nhc(ptr noundef %nh, i32 noundef %nhsel) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %if.then.do.end16_crit_edge, label %lor.lhs.false

if.then.do.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.then
  %call8 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true12

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @nexthop_fib_nhc.__warned, align 1
  br i1 %.b52, label %land.lhs.true12.do.end16_crit_edge, label %if.then14

land.lhs.true12.do.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_fib_nhc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 376, ptr noundef nonnull @.str.4) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then14, %land.lhs.true12.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %if.then.do.end16_crit_edge
  %is_multipath = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_multipath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_multipath, align 2, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool18.not = icmp eq i8 %6, 0
  br i1 %tobool18.not, label %do.end16.if.end25_crit_edge, label %if.then19

do.end16.if.end25_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then19:                                        ; preds = %do.end16
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %nhsel)
  %cmp.not.i = icmp sgt i32 %conv.i, %nhsel
  br i1 %cmp.not.i, label %nexthop_mpath_select.exit, label %if.then19.cleanup45_crit_edge

if.then19.cleanup45_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

nexthop_mpath_select.exit:                        ; preds = %if.then19
  %arrayidx.i = getelementptr %struct.nh_group, ptr %4, i32 0, i32 8, i32 %nhsel
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %nexthop_mpath_select.exit.cleanup45_crit_edge, label %nexthop_mpath_select.exit.if.end25_crit_edge

nexthop_mpath_select.exit.if.end25_crit_edge:     ; preds = %nexthop_mpath_select.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

nexthop_mpath_select.exit.cleanup45_crit_edge:    ; preds = %nexthop_mpath_select.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end25:                                         ; preds = %nexthop_mpath_select.exit.if.end25_crit_edge, %do.end16.if.end25_crit_edge, %entry.if.end25_crit_edge
  %nh.addr.2 = phi ptr [ %nh, %entry.if.end25_crit_edge ], [ %10, %nexthop_mpath_select.exit.if.end25_crit_edge ], [ %nh, %do.end16.if.end25_crit_edge ]
  %11 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.2, i32 0, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %11, align 4
  %call31 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call31, label %if.end25.do.end43_crit_edge, label %lor.lhs.false32

if.end25.do.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

lor.lhs.false32:                                  ; preds = %if.end25
  %call33 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %lor.lhs.false32.do.end43_crit_edge

lor.lhs.false32.do.end43_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

land.lhs.true35:                                  ; preds = %lor.lhs.false32
  %call36 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true35.do.end43_crit_edge, label %land.lhs.true38

land.lhs.true35.do.end43_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %.b5051 = load i1, ptr @nexthop_fib_nhc.__warned.32, align 1
  br i1 %.b5051, label %land.lhs.true38.do.end43_crit_edge, label %if.then40

land.lhs.true38.do.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_fib_nhc.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 384, ptr noundef nonnull @.str.4) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %land.lhs.true38.do.end43_crit_edge, %land.lhs.true35.do.end43_crit_edge, %lor.lhs.false32.do.end43_crit_edge, %if.end25.do.end43_crit_edge
  %14 = getelementptr inbounds %struct.nh_info, ptr %13, i32 0, i32 5
  br label %cleanup45

cleanup45:                                        ; preds = %do.end43, %nexthop_mpath_select.exit.cleanup45_crit_edge, %if.then19.cleanup45_crit_edge
  %retval.1 = phi ptr [ %14, %do.end43 ], [ null, %nexthop_mpath_select.exit.cleanup45_crit_edge ], [ null, %if.then19.cleanup45_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @inflate(ptr nocapture noundef readonly %t, ptr noundef %oldtnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inflate.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inflate, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inflate.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.44) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %oldtnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oldtnode, align 4
  %pos = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pos, align 4
  %conv = zext i8 %3 to i32
  %sub = add i8 %3, -1
  %bits = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits, align 1
  %conv3 = zext i8 %5 to i32
  %add = add i8 %5, 1
  %add.i = add nuw nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 32
  br i1 %cmp.i, label %do.body3.i, label %do.end8.i, !prof !333

do.body3.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

do.end8.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %5)
  %cmp.i.i = icmp ugt i8 %5, 28
  br i1 %cmp.i.i, label %do.end8.i.cleanup181_crit_edge, label %if.end.i.i

do.end8.i.cleanup181_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup181

if.end.i.i:                                       ; preds = %do.end8.i
  %6 = shl i32 8, %conv3
  %7 = add nuw i32 %6, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4069, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 4069
  br i1 %cmp1.i.i, label %if.end8.i.i.i.i, label %if.else.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #16
  br label %tnode_alloc.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call noalias ptr @vzalloc(i32 noundef %7) #16
  br label %tnode_alloc.exit.i

tnode_alloc.exit.i:                               ; preds = %if.else.i.i, %if.end8.i.i.i.i
  %retval.0.i57.i = phi ptr [ %call3.i.i, %if.else.i.i ], [ %call9.i.i.i.i, %if.end8.i.i.i.i ]
  %tobool9.not.i = icmp eq ptr %retval.0.i57.i, null
  br i1 %tobool9.not.i, label %tnode_alloc.exit.i.cleanup181_crit_edge, label %do.body12.i

tnode_alloc.exit.i.cleanup181_crit_edge:          ; preds = %tnode_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup181

do.body12.i:                                      ; preds = %tnode_alloc.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inflate, %if.then21.i)) #12
          to label %tnode_new.exit [label %if.then21.i], !srcloc !335

if.then21.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i57.i, i32 noundef 28, i32 noundef %6) #12
  br label %tnode_new.exit

tnode_new.exit:                                   ; preds = %if.then21.i, %do.body12.i
  %shl27.i = shl i32 2, %conv3
  %empty_children.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 1
  %8 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl27.i, ptr %empty_children.i, align 4
  %kv.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp29.i = icmp ult i32 %add.i, 32
  %9 = shl nsw i32 -1, %add.i
  %shl30.i = and i32 %9, %1
  %cond.i = select i1 %cmp29.i, i32 %shl30.i, i32 0
  %10 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %kv.i, align 4
  %pos32.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %pos32.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sub, ptr %pos32.i, align 4
  %bits34.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %bits34.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %add, ptr %bits34.i, align 1
  %slen.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 3
  %13 = ptrtoint ptr %slen.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sub, ptr %slen.i, align 2
  %tobool5.not = icmp eq ptr %kv.i, null
  br i1 %tobool5.not, label %tnode_new.exit.cleanup181_crit_edge, label %if.end7

tnode_new.exit.cleanup181_crit_edge:              ; preds = %tnode_new.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup181

if.end7:                                          ; preds = %tnode_new.exit
  %add.ptr.i.i = getelementptr i8, ptr %oldtnode, i32 -20
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %add.ptr.i.i, align 4
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits, align 1
  %conv.i261 = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv.i261
  %and.i = and i32 %shl.i, -2
  %17 = ptrtoint ptr %pos32.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pos32.i, align 4
  %conv10 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not395 = icmp eq i32 %and.i, 0
  br i1 %tobool11.not395, label %if.end7.for.end179_crit_edge, label %for.body.lr.ph

if.end7.for.end179_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end179

for.body.lr.ph:                                   ; preds = %if.end7
  %19 = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0396 = phi i32 [ %and.i, %for.body.lr.ph ], [ %dec, %cleanup.for.body_crit_edge ]
  %call13 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call13, label %for.body.do.end21_crit_edge, label %land.lhs.true

for.body.do.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

land.lhs.true:                                    ; preds = %for.body
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b259 = load i1, ptr @inflate.__warned, align 1
  br i1 %.b259, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 557, ptr noundef nonnull @.str.12) #12
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %for.body.do.end21_crit_edge
  %dec = add i32 %i.0396, -1
  %arrayidx = getelementptr [0 x ptr], ptr %19, i32 0, i32 %dec
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %do.end21.cleanup_crit_edge, label %land.lhs.true.i

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end21
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pos.i, align 4
  %conv.i262 = zext i8 %23 to i32
  %bits.i263 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %bits.i263 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bits.i263, align 1
  %conv1.i = zext i8 %25 to i32
  %add.i264 = add nuw nsw i32 %conv1.i, %conv.i262
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pos, align 4
  %conv3.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i264, i32 %conv3.i)
  %cmp.i265 = icmp ne i32 %add.i264, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.i.not = icmp eq i8 %25, 0
  %or.cond = select i1 %cmp.i265, i1 true, i1 %tobool7.i.not
  br i1 %or.cond, label %if.then28, label %if.end31

if.then28:                                        ; preds = %land.lhs.true.i
  %28 = ptrtoint ptr %pos32.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pos32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp.i267 = icmp eq i8 %29, 32
  br i1 %cmp.i267, label %if.then28.get_index.exit_crit_edge, label %if.end.i

if.then28.get_index.exit_crit_edge:               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_index.exit

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 4
  %conv.i268 = zext i8 %29 to i32
  %32 = ptrtoint ptr %kv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %kv.i, align 4
  %xor.i = xor i32 %33, %31
  %shr.i = lshr i32 %xor.i, %conv.i268
  br label %get_index.exit

get_index.exit:                                   ; preds = %if.end.i, %if.then28.get_index.exit_crit_edge
  %retval.0.i269 = phi i32 [ %shr.i, %if.end.i ], [ 0, %if.then28.get_index.exit_crit_edge ]
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %retval.0.i269, ptr noundef nonnull %21)
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %21, i32 -20
  %36 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %add.ptr.i11.i, align 4
  store ptr %add.ptr.i11.i, ptr %add.ptr.i.i, align 4
  %37 = ptrtoint ptr %bits.i263 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits.i263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp = icmp eq i8 %38, 1
  br i1 %cmp, label %if.then35, label %if.end64

if.then35:                                        ; preds = %if.end31
  %mul = shl i32 %dec, 1
  %add36 = or i32 %mul, 1
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call38, label %if.then35.do.end47_crit_edge, label %land.lhs.true39

if.then35.do.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true39:                                  ; preds = %if.then35
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b246258 = load i1, ptr @inflate.__warned.45, align 1
  br i1 %.b246258, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 576, ptr noundef nonnull @.str.12) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %if.then35.do.end47_crit_edge
  %39 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 4
  %arrayidx49 = getelementptr %struct.key_vector, ptr %21, i32 1
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx49, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %add36, ptr noundef %41)
  %call52 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call52, label %do.end47.do.end61_crit_edge, label %land.lhs.true53

do.end47.do.end61_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61

land.lhs.true53:                                  ; preds = %do.end47
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b247257 = load i1, ptr @inflate.__warned.46, align 1
  br i1 %.b247257, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 577, ptr noundef nonnull @.str.12) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %do.end47.do.end61_crit_edge
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %mul, ptr noundef %43)
  br label %cleanup

if.end64:                                         ; preds = %if.end31
  %conv33 = zext i8 %38 to i32
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %21, align 4
  %or = or i32 %45, %shl
  %46 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pos.i, align 4
  %conv67 = zext i8 %47 to i32
  %sub70 = add nsw i32 %conv33, -1
  %add.i271 = add nsw i32 %sub70, %conv67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub70)
  %tobool.not.i272 = icmp eq i32 %sub70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i271)
  %cmp.i273 = icmp ugt i32 %add.i271, 32
  %spec.select.i = or i1 %tobool.not.i272, %cmp.i273
  br i1 %spec.select.i, label %do.body3.i274, label %do.end8.i276, !prof !333

do.body3.i274:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

do.end8.i276:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %38)
  %cmp.i.i275 = icmp ugt i8 %38, 30
  br i1 %cmp.i.i275, label %do.end8.i276.while.body.i.preheader_crit_edge, label %if.end.i.i278

do.end8.i276.while.body.i.preheader_crit_edge:    ; preds = %do.end8.i276
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.end.i.i278:                                    ; preds = %do.end8.i276
  %48 = shl nuw i32 2, %conv33
  %49 = add nuw i32 %48, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4069, i32 %48)
  %cmp1.i.i277 = icmp ult i32 %48, 4069
  br i1 %cmp1.i.i277, label %if.end8.i.i.i.i296, label %if.else.i.i298

if.end8.i.i.i.i296:                               ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i.i295 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %49, i32 noundef 3520) #16
  br label %tnode_alloc.exit.i301

if.else.i.i298:                                   ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i297 = tail call noalias ptr @vzalloc(i32 noundef %49) #16
  br label %tnode_alloc.exit.i301

tnode_alloc.exit.i301:                            ; preds = %if.else.i.i298, %if.end8.i.i.i.i296
  %retval.0.i57.i299 = phi ptr [ %call3.i.i297, %if.else.i.i298 ], [ %call9.i.i.i.i295, %if.end8.i.i.i.i296 ]
  %tobool9.not.i300 = icmp eq ptr %retval.0.i57.i299, null
  br i1 %tobool9.not.i300, label %tnode_alloc.exit.i301.while.body.i.preheader_crit_edge, label %do.body12.i302

tnode_alloc.exit.i301.while.body.i.preheader_crit_edge: ; preds = %tnode_alloc.exit.i301
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

do.body12.i302:                                   ; preds = %tnode_alloc.exit.i301
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inflate, %if.then21.i303)) #12
          to label %tnode_new.exit316 [label %if.then21.i303], !srcloc !335

if.then21.i303:                                   ; preds = %do.body12.i302
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i57.i299, i32 noundef 28, i32 noundef %48) #12
  br label %tnode_new.exit316

tnode_new.exit316:                                ; preds = %if.then21.i303, %do.body12.i302
  %shl27.i304 = shl nuw nsw i32 1, %sub70
  %empty_children.i305 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 1
  %50 = ptrtoint ptr %empty_children.i305 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl27.i304, ptr %empty_children.i305, align 4
  %kv.i306 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i271)
  %cmp29.i307 = icmp ult i32 %add.i271, 32
  %51 = shl nsw i32 -1, %add.i271
  %shl30.i308 = and i32 %51, %or
  %cond.i309 = select i1 %cmp29.i307, i32 %shl30.i308, i32 0
  %52 = ptrtoint ptr %kv.i306 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i309, ptr %kv.i306, align 4
  %pos32.i310 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 4, i32 0, i32 1
  %53 = ptrtoint ptr %pos32.i310 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %47, ptr %pos32.i310, align 4
  %conv33.i311 = trunc i32 %sub70 to i8
  %bits34.i312 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %bits34.i312 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv33.i311, ptr %bits34.i312, align 1
  %slen.i313 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %slen.i313 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %47, ptr %slen.i313, align 2
  %tobool72.not = icmp eq ptr %kv.i306, null
  br i1 %tobool72.not, label %tnode_new.exit316.while.body.i.preheader_crit_edge, label %if.end74

tnode_new.exit316.while.body.i.preheader_crit_edge: ; preds = %tnode_new.exit316
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.end74:                                         ; preds = %tnode_new.exit316
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %21, align 4
  %58 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pos.i, align 4
  %conv77 = zext i8 %59 to i32
  %60 = ptrtoint ptr %bits.i263 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bits.i263, align 1
  %conv79 = zext i8 %61 to i32
  %sub80 = add nsw i32 %conv79, -1
  %add.i317 = add nsw i32 %sub80, %conv77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80)
  %tobool.not.i318 = icmp eq i32 %sub80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i317)
  %cmp.i319 = icmp ugt i32 %add.i317, 32
  %spec.select.i320 = or i1 %tobool.not.i318, %cmp.i319
  br i1 %spec.select.i320, label %do.body3.i321, label %do.end8.i323, !prof !333

do.body3.i321:                                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

do.end8.i323:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %61)
  %cmp.i.i322 = icmp ugt i8 %61, 30
  br i1 %cmp.i.i322, label %do.end8.i323.tnode_new.exit363.thread_crit_edge, label %if.end.i.i325

do.end8.i323.tnode_new.exit363.thread_crit_edge:  ; preds = %do.end8.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_new.exit363.thread

if.end.i.i325:                                    ; preds = %do.end8.i323
  %62 = shl nuw i32 2, %conv79
  %63 = add nuw i32 %62, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4069, i32 %62)
  %cmp1.i.i324 = icmp ult i32 %62, 4069
  br i1 %cmp1.i.i324, label %if.end8.i.i.i.i343, label %if.else.i.i345

if.end8.i.i.i.i343:                               ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i.i342 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %63, i32 noundef 3520) #16
  br label %tnode_alloc.exit.i348

if.else.i.i345:                                   ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i344 = tail call noalias ptr @vzalloc(i32 noundef %63) #16
  br label %tnode_alloc.exit.i348

tnode_alloc.exit.i348:                            ; preds = %if.else.i.i345, %if.end8.i.i.i.i343
  %retval.0.i57.i346 = phi ptr [ %call3.i.i344, %if.else.i.i345 ], [ %call9.i.i.i.i342, %if.end8.i.i.i.i343 ]
  %tobool9.not.i347 = icmp eq ptr %retval.0.i57.i346, null
  br i1 %tobool9.not.i347, label %tnode_alloc.exit.i348.tnode_new.exit363.thread_crit_edge, label %do.body12.i349

tnode_alloc.exit.i348.tnode_new.exit363.thread_crit_edge: ; preds = %tnode_alloc.exit.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_new.exit363.thread

do.body12.i349:                                   ; preds = %tnode_alloc.exit.i348
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inflate, %if.then21.i350)) #12
          to label %tnode_new.exit363 [label %if.then21.i350], !srcloc !335

if.then21.i350:                                   ; preds = %do.body12.i349
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i57.i346, i32 noundef 28, i32 noundef %62) #12
  br label %tnode_new.exit363

tnode_new.exit363.thread:                         ; preds = %tnode_alloc.exit.i348.tnode_new.exit363.thread_crit_edge, %do.end8.i323.tnode_new.exit363.thread_crit_edge
  %64 = ptrtoint ptr %retval.0.i57.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %retval.0.i57.i, align 4
  %66 = ptrtoint ptr %retval.0.i57.i299 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %retval.0.i57.i299, align 4
  store ptr %retval.0.i57.i299, ptr %retval.0.i57.i, align 4
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %tnode_new.exit363.while.body.i.preheader_crit_edge, %tnode_new.exit363.thread, %tnode_new.exit316.while.body.i.preheader_crit_edge, %tnode_alloc.exit.i301.while.body.i.preheader_crit_edge, %do.end8.i276.while.body.i.preheader_crit_edge
  br label %while.body.i

tnode_new.exit363:                                ; preds = %if.then21.i350, %do.body12.i349
  %shl27.i351 = shl nuw nsw i32 1, %sub80
  %empty_children.i352 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 1
  %67 = ptrtoint ptr %empty_children.i352 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shl27.i351, ptr %empty_children.i352, align 4
  %kv.i353 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i317)
  %cmp29.i354 = icmp ult i32 %add.i317, 32
  %68 = shl nsw i32 -1, %add.i317
  %shl30.i355 = and i32 %68, %57
  %cond.i356 = select i1 %cmp29.i354, i32 %shl30.i355, i32 0
  %69 = ptrtoint ptr %kv.i353 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond.i356, ptr %kv.i353, align 4
  %pos32.i357 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %pos32.i357 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %59, ptr %pos32.i357, align 4
  %conv33.i358 = trunc i32 %sub80 to i8
  %bits34.i359 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %bits34.i359 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv33.i358, ptr %bits34.i359, align 1
  %slen.i360 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 4, i32 0, i32 3
  %72 = ptrtoint ptr %slen.i360 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %59, ptr %slen.i360, align 2
  %73 = ptrtoint ptr %retval.0.i57.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %retval.0.i57.i, align 4
  %75 = ptrtoint ptr %retval.0.i57.i299 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %retval.0.i57.i299, align 4
  store ptr %retval.0.i57.i299, ptr %retval.0.i57.i, align 4
  %tobool82.not = icmp eq ptr %kv.i353, null
  br i1 %tobool82.not, label %tnode_new.exit363.while.body.i.preheader_crit_edge, label %if.end84

tnode_new.exit363.while.body.i.preheader_crit_edge: ; preds = %tnode_new.exit363
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.end84:                                         ; preds = %tnode_new.exit363
  %76 = ptrtoint ptr %retval.0.i57.i346 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i57.i299, ptr %retval.0.i57.i346, align 4
  %77 = ptrtoint ptr %retval.0.i57.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %retval.0.i57.i346, ptr %retval.0.i57.i, align 4
  %78 = ptrtoint ptr %bits.i263 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bits.i263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool87.not392 = icmp eq i8 %79, 0
  br i1 %tobool87.not392, label %if.end84.do.body150_crit_edge, label %for.body88.lr.ph

if.end84.do.body150_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body150

for.body88.lr.ph:                                 ; preds = %if.end84
  %conv.i369 = zext i8 %79 to i32
  %shl.i370 = shl nuw i32 1, %conv.i369
  %div252 = lshr i32 %shl.i370, 1
  %and.i371 = and i32 %shl.i370, -2
  %80 = getelementptr inbounds %struct.key_vector, ptr %21, i32 0, i32 4
  br label %for.body88

for.body88:                                       ; preds = %do.end142.for.body88_crit_edge, %for.body88.lr.ph
  %k.0394 = phi i32 [ %and.i371, %for.body88.lr.ph ], [ %dec130, %do.end142.for.body88_crit_edge ]
  %j.0393 = phi i32 [ %div252, %for.body88.lr.ph ], [ %dec117, %do.end142.for.body88_crit_edge ]
  %dec89 = add i32 %j.0393, -1
  %call91 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call91, label %for.body88.do.end100_crit_edge, label %land.lhs.true92

for.body88.do.end100_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

land.lhs.true92:                                  ; preds = %for.body88
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.do.end100_crit_edge, label %land.lhs.true95

land.lhs.true92.do.end100_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b248256 = load i1, ptr @inflate.__warned.47, align 1
  br i1 %.b248256, label %land.lhs.true95.do.end100_crit_edge, label %if.then97

land.lhs.true95.do.end100_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

if.then97:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 607, ptr noundef nonnull @.str.12) #12
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %land.lhs.true95.do.end100_crit_edge, %land.lhs.true92.do.end100_crit_edge, %for.body88.do.end100_crit_edge
  %dec102 = add i32 %k.0394, -1
  %arrayidx103 = getelementptr [0 x ptr], ptr %80, i32 0, i32 %dec102
  %81 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx103, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i306, i32 noundef %dec89, ptr noundef %82)
  %call105 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call105, label %do.end100.do.end114_crit_edge, label %land.lhs.true106

do.end100.do.end114_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

land.lhs.true106:                                 ; preds = %do.end100
  %call107 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.do.end114_crit_edge, label %land.lhs.true109

land.lhs.true106.do.end114_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %.b249255 = load i1, ptr @inflate.__warned.48, align 1
  br i1 %.b249255, label %land.lhs.true109.do.end114_crit_edge, label %if.then111

land.lhs.true109.do.end114_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

if.then111:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 608, ptr noundef nonnull @.str.12) #12
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %land.lhs.true109.do.end114_crit_edge, %land.lhs.true106.do.end114_crit_edge, %do.end100.do.end114_crit_edge
  %arrayidx116 = getelementptr [0 x ptr], ptr %80, i32 0, i32 %dec89
  %83 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx116, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i353, i32 noundef %dec89, ptr noundef %84)
  %dec117 = add i32 %j.0393, -2
  %call119 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call119, label %do.end114.do.end128_crit_edge, label %land.lhs.true120

do.end114.do.end128_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end128

land.lhs.true120:                                 ; preds = %do.end114
  %call121 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %land.lhs.true120.do.end128_crit_edge, label %land.lhs.true123

land.lhs.true120.do.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end128

land.lhs.true123:                                 ; preds = %land.lhs.true120
  %.b250254 = load i1, ptr @inflate.__warned.49, align 1
  br i1 %.b250254, label %land.lhs.true123.do.end128_crit_edge, label %if.then125

land.lhs.true123.do.end128_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end128

if.then125:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 609, ptr noundef nonnull @.str.12) #12
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %land.lhs.true123.do.end128_crit_edge, %land.lhs.true120.do.end128_crit_edge, %do.end114.do.end128_crit_edge
  %dec130 = add i32 %k.0394, -2
  %arrayidx131 = getelementptr [0 x ptr], ptr %80, i32 0, i32 %dec130
  %85 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx131, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i306, i32 noundef %dec117, ptr noundef %86)
  %call133 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call133, label %do.end128.do.end142_crit_edge, label %land.lhs.true134

do.end128.do.end142_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

land.lhs.true134:                                 ; preds = %do.end128
  %call135 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %land.lhs.true134.do.end142_crit_edge, label %land.lhs.true137

land.lhs.true134.do.end142_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %.b251253 = load i1, ptr @inflate.__warned.50, align 1
  br i1 %.b251253, label %land.lhs.true137.do.end142_crit_edge, label %if.then139

land.lhs.true137.do.end142_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

if.then139:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @inflate.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 610, ptr noundef nonnull @.str.12) #12
  br label %do.end142

do.end142:                                        ; preds = %if.then139, %land.lhs.true137.do.end142_crit_edge, %land.lhs.true134.do.end142_crit_edge, %do.end128.do.end142_crit_edge
  %arrayidx144 = getelementptr [0 x ptr], ptr %80, i32 0, i32 %dec117
  %87 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx144, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i353, i32 noundef %dec117, ptr noundef %88)
  %tobool87.not = icmp eq i32 %dec117, 0
  br i1 %tobool87.not, label %do.end142.do.body150_crit_edge, label %do.end142.for.body88_crit_edge

do.end142.for.body88_crit_edge:                   ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body88

do.end142.do.body150_crit_edge:                   ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body150

do.body150:                                       ; preds = %do.end142.do.body150_crit_edge, %if.end84.do.body150_crit_edge
  %parent = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i299, i32 0, i32 3
  %89 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %kv.i, ptr %parent, align 4
  %parent165 = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i346, i32 0, i32 3
  %90 = ptrtoint ptr %parent165 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %kv.i, ptr %parent165, align 4
  %mul172 = shl i32 %dec, 1
  %add173 = or i32 %mul172, 1
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %add173, ptr noundef nonnull %kv.i306)
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %mul172, ptr noundef nonnull %kv.i353)
  br label %cleanup

cleanup:                                          ; preds = %do.body150, %do.end61, %get_index.exit, %do.end21.cleanup_crit_edge
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %cleanup.for.end179_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end179_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end179

for.end179:                                       ; preds = %cleanup.for.end179_crit_edge, %if.end7.for.end179_crit_edge
  %call180 = tail call fastcc ptr @replace(ptr noundef %t, ptr noundef %oldtnode, ptr noundef nonnull %kv.i)
  br label %cleanup181

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %tn.addr.011.i = phi ptr [ %kv.i377, %while.body.i.while.body.i_crit_edge ], [ %kv.i, %while.body.i.preheader ]
  %head.010.i = phi ptr [ %92, %while.body.i.while.body.i_crit_edge ], [ %retval.0.i57.i, %while.body.i.preheader ]
  %91 = ptrtoint ptr %head.010.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.010.i, align 4
  %bits.i374 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.011.i, i32 0, i32 2
  %93 = ptrtoint ptr %bits.i374 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bits.i374, align 1
  %conv.i375 = zext i8 %94 to i32
  %95 = shl i32 4, %conv.i375
  %96 = load i32, ptr @tnode_free_size, align 4
  %97 = add i32 %96, 28
  %add.i376 = add i32 %97, %95
  store i32 %add.i376, ptr @tnode_free_size, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %tn.addr.011.i, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i8.i, ptr noundef nonnull @__node_free_rcu) #12
  %kv.i377 = getelementptr inbounds %struct.tnode, ptr %92, i32 0, i32 4
  %tobool.not.i378 = icmp eq ptr %92, null
  br i1 %tobool.not.i378, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %98 = load i32, ptr @tnode_free_size, align 4
  %99 = load i32, ptr @sysctl_fib_sync_mem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %99)
  %cmp.not.i = icmp ult i32 %98, %99
  br i1 %cmp.not.i, label %while.end.i.cleanup181_crit_edge, label %if.then.i

while.end.i.cleanup181_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup181

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #12
  br label %cleanup181

cleanup181:                                       ; preds = %if.then.i, %while.end.i.cleanup181_crit_edge, %for.end179, %tnode_new.exit.cleanup181_crit_edge, %tnode_alloc.exit.i.cleanup181_crit_edge, %do.end8.i.cleanup181_crit_edge
  %retval.0 = phi ptr [ %call180, %for.end179 ], [ null, %tnode_new.exit.cleanup181_crit_edge ], [ null, %while.end.i.cleanup181_crit_edge ], [ null, %if.then.i ], [ null, %tnode_alloc.exit.i.cleanup181_crit_edge ], [ null, %do.end8.i.cleanup181_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @halve(ptr nocapture noundef readonly %t, ptr noundef %oldtnode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @halve.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@halve, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @halve.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.54) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %oldtnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oldtnode, align 4
  %pos = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pos, align 4
  %conv = zext i8 %3 to i32
  %add = add i8 %3, 1
  %bits = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits, align 1
  %conv3 = zext i8 %5 to i32
  %sub = add nsw i32 %conv3, -1
  %add.i = add nuw nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i = icmp eq i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 32
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.body3.i, label %do.end8.i, !prof !333

do.body3.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

do.end8.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %5)
  %cmp.i.i = icmp ugt i8 %5, 30
  br i1 %cmp.i.i, label %do.end8.i.cleanup64_crit_edge, label %if.end.i.i

do.end8.i.cleanup64_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end.i.i:                                       ; preds = %do.end8.i
  %6 = shl nuw i32 2, %conv3
  %7 = add nuw i32 %6, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 4069, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 4069
  br i1 %cmp1.i.i, label %if.end8.i.i.i.i, label %if.else.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #16
  br label %tnode_alloc.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call noalias ptr @vzalloc(i32 noundef %7) #16
  br label %tnode_alloc.exit.i

tnode_alloc.exit.i:                               ; preds = %if.else.i.i, %if.end8.i.i.i.i
  %retval.0.i57.i = phi ptr [ %call3.i.i, %if.else.i.i ], [ %call9.i.i.i.i, %if.end8.i.i.i.i ]
  %tobool9.not.i = icmp eq ptr %retval.0.i57.i, null
  br i1 %tobool9.not.i, label %tnode_alloc.exit.i.cleanup64_crit_edge, label %do.body12.i

tnode_alloc.exit.i.cleanup64_crit_edge:           ; preds = %tnode_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

do.body12.i:                                      ; preds = %tnode_alloc.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@halve, %if.then21.i)) #12
          to label %tnode_new.exit [label %if.then21.i], !srcloc !335

if.then21.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i57.i, i32 noundef 28, i32 noundef %6) #12
  br label %tnode_new.exit

tnode_new.exit:                                   ; preds = %if.then21.i, %do.body12.i
  %shl27.i = shl nuw nsw i32 1, %sub
  %empty_children.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 1
  %8 = ptrtoint ptr %empty_children.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl27.i, ptr %empty_children.i, align 4
  %kv.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp29.i = icmp ult i32 %add.i, 32
  %9 = shl nsw i32 -1, %add.i
  %shl30.i = and i32 %9, %1
  %cond.i = select i1 %cmp29.i, i32 %shl30.i, i32 0
  %10 = ptrtoint ptr %kv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %kv.i, align 4
  %pos32.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %pos32.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %add, ptr %pos32.i, align 4
  %conv33.i = trunc i32 %sub to i8
  %bits34.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 2
  %12 = ptrtoint ptr %bits34.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv33.i, ptr %bits34.i, align 1
  %slen.i = getelementptr inbounds %struct.tnode, ptr %retval.0.i57.i, i32 0, i32 4, i32 0, i32 3
  %13 = ptrtoint ptr %slen.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %add, ptr %slen.i, align 2
  %tobool5.not = icmp eq ptr %kv.i, null
  br i1 %tobool5.not, label %tnode_new.exit.cleanup64_crit_edge, label %if.end7

tnode_new.exit.cleanup64_crit_edge:               ; preds = %tnode_new.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end7:                                          ; preds = %tnode_new.exit
  %add.ptr.i.i = getelementptr i8, ptr %oldtnode, i32 -20
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %add.ptr.i.i, align 4
  %15 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bits, align 1
  %conv.i101 = zext i8 %16 to i32
  %shl.i = shl nuw i32 1, %conv.i101
  %and.i = and i32 %shl.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not142 = icmp eq i32 %and.i, 0
  br i1 %tobool9.not142, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %17 = getelementptr inbounds %struct.key_vector, ptr %oldtnode, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ %and.i, %for.body.lr.ph ], [ %dec33, %cleanup.for.body_crit_edge ]
  %call11 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call11, label %for.body.do.end19_crit_edge, label %land.lhs.true

for.body.do.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true:                                    ; preds = %for.body
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b99 = load i1, ptr @halve.__warned, align 1
  br i1 %.b99, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @halve.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.12) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %for.body.do.end19_crit_edge
  %dec = add i32 %i.0143, -1
  %arrayidx = getelementptr [0 x ptr], ptr %17, i32 0, i32 %dec
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call22 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call22, label %do.end19.do.end31_crit_edge, label %land.lhs.true23

do.end19.do.end31_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

land.lhs.true23:                                  ; preds = %do.end19
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b9598 = load i1, ptr @halve.__warned.55, align 1
  br i1 %.b9598, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @halve.__warned.55, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @.str.12) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %do.end19.do.end31_crit_edge
  %dec33 = add i32 %i.0143, -2
  %arrayidx34 = getelementptr [0 x ptr], ptr %17, i32 0, i32 %dec33
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %19, null
  %tobool36.not = icmp eq ptr %21, null
  %or.cond = select i1 %tobool35.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  %div96 = lshr exact i32 %dec33, 1
  %spec.select = select i1 %tobool35.not, ptr %21, ptr %19
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %div96, ptr noundef %spec.select)
  br label %cleanup

if.end39:                                         ; preds = %do.end31
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pos, align 4
  %conv42 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp.i103 = icmp ugt i8 %25, 31
  br i1 %cmp.i103, label %do.body3.i104, label %do.end8.i105, !prof !333

do.body3.i104:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_trie.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 382, 0\0A.popsection", ""() #12, !srcloc !357
  unreachable

do.end8.i105:                                     ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 36) #15
  %tobool9.not.i114 = icmp eq ptr %call7.i.i.i.i111, null
  br i1 %tobool9.not.i114, label %do.end8.i105.while.body.i_crit_edge, label %do.body12.i116

do.end8.i105.while.body.i_crit_edge:              ; preds = %do.end8.i105
  br label %while.body.i

do.body12.i116:                                   ; preds = %do.end8.i105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tnode_new.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@halve, %if.then21.i117)) #12
          to label %tnode_new.exit128 [label %if.then21.i117], !srcloc !335

if.then21.i117:                                   ; preds = %do.body12.i116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tnode_new.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i.i.i111, i32 noundef 28, i32 noundef 8) #12
  br label %tnode_new.exit128

tnode_new.exit128:                                ; preds = %if.then21.i117, %do.body12.i116
  %empty_children.i118 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 1
  %27 = ptrtoint ptr %empty_children.i118 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %empty_children.i118, align 8
  %kv.i119 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp29.i120 = icmp ult i8 %25, 31
  %28 = shl i32 -2, %conv42
  %shl30.i121 = and i32 %28, %23
  %cond.i122 = select i1 %cmp29.i120, i32 %shl30.i121, i32 0
  %29 = ptrtoint ptr %kv.i119 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i122, ptr %kv.i119, align 4
  %pos32.i123 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %pos32.i123 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %25, ptr %pos32.i123, align 8
  %bits34.i124 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 4, i32 0, i32 2
  %31 = ptrtoint ptr %bits34.i124 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %bits34.i124, align 1
  %slen.i125 = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 4, i32 0, i32 3
  %32 = ptrtoint ptr %slen.i125 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %25, ptr %slen.i125, align 2
  %33 = ptrtoint ptr %retval.0.i57.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %retval.0.i57.i, align 4
  %35 = ptrtoint ptr %call7.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i.i.i111, align 8
  store ptr %call7.i.i.i.i111, ptr %retval.0.i57.i, align 4
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i119, i32 noundef 1, ptr noundef nonnull %19)
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i119, i32 noundef 0, ptr noundef nonnull %21)
  %parent = getelementptr inbounds %struct.tnode, ptr %call7.i.i.i.i111, i32 0, i32 3
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %kv.i, ptr %parent, align 8
  %div6097 = lshr exact i32 %dec33, 1
  tail call fastcc void @put_child(ptr noundef nonnull %kv.i, i32 noundef %div6097, ptr noundef nonnull %kv.i119)
  br label %cleanup

cleanup:                                          ; preds = %tnode_new.exit128, %if.then37
  %tobool9.not = icmp eq i32 %dec33, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call63 = tail call fastcc ptr @replace(ptr noundef %t, ptr noundef %oldtnode, ptr noundef nonnull %kv.i)
  br label %cleanup64

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end8.i105.while.body.i_crit_edge
  %tn.addr.011.i = phi ptr [ %kv.i134, %while.body.i.while.body.i_crit_edge ], [ %kv.i, %do.end8.i105.while.body.i_crit_edge ]
  %head.010.i = phi ptr [ %38, %while.body.i.while.body.i_crit_edge ], [ %retval.0.i57.i, %do.end8.i105.while.body.i_crit_edge ]
  %37 = ptrtoint ptr %head.010.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.010.i, align 4
  %bits.i131 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.011.i, i32 0, i32 2
  %39 = ptrtoint ptr %bits.i131 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bits.i131, align 1
  %conv.i132 = zext i8 %40 to i32
  %41 = shl i32 4, %conv.i132
  %42 = load i32, ptr @tnode_free_size, align 4
  %43 = add i32 %42, 28
  %add.i133 = add i32 %43, %41
  store i32 %add.i133, ptr @tnode_free_size, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %tn.addr.011.i, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i8.i, ptr noundef nonnull @__node_free_rcu) #12
  %kv.i134 = getelementptr inbounds %struct.tnode, ptr %38, i32 0, i32 4
  %tobool.not.i135 = icmp eq ptr %38, null
  br i1 %tobool.not.i135, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %44 = load i32, ptr @tnode_free_size, align 4
  %45 = load i32, ptr @sysctl_fib_sync_mem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp.not.i = icmp ult i32 %44, %45
  br i1 %cmp.not.i, label %while.end.i.cleanup64_crit_edge, label %if.then.i

while.end.i.cleanup64_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #12
  br label %cleanup64

cleanup64:                                        ; preds = %if.then.i, %while.end.i.cleanup64_crit_edge, %for.end, %tnode_new.exit.cleanup64_crit_edge, %tnode_alloc.exit.i.cleanup64_crit_edge, %do.end8.i.cleanup64_crit_edge
  %retval.0 = phi ptr [ %call63, %for.end ], [ null, %tnode_new.exit.cleanup64_crit_edge ], [ null, %while.end.i.cleanup64_crit_edge ], [ null, %if.then.i ], [ null, %tnode_alloc.exit.i.cleanup64_crit_edge ], [ null, %do.end8.i.cleanup64_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @replace(ptr nocapture noundef readonly %t, ptr noundef %oldtnode, ptr noundef %tn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @replace.__warned, align 1
  br i1 %.b51, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @replace.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %oldtnode, i32 -20
  %parent = getelementptr i8, ptr %oldtnode, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent12 = getelementptr i8, ptr %tn, i32 -4
  %2 = ptrtoint ptr %parent12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %parent12, align 4
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %4)
  %cmp.i = icmp ugt i8 %4, 31
  br i1 %cmp.i, label %do.body.i, label %get_index.exit.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !341
  %5 = getelementptr inbounds %struct.key_vector, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tn, ptr %5, align 4
  br label %put_child_root.exit

get_index.exit.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tn, align 4
  %conv.i.i = zext i8 %4 to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %xor.i.i = xor i32 %10, %8
  %shr.i.i = lshr i32 %xor.i.i, %conv.i.i
  tail call fastcc void @put_child(ptr noundef %1, i32 noundef %shr.i.i, ptr noundef %tn) #12
  br label %put_child_root.exit

put_child_root.exit:                              ; preds = %get_index.exit.i, %do.body.i
  tail call fastcc void @update_children(ptr noundef %tn)
  %tobool.not9.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not9.i, label %put_child_root.exit.while.end.i_crit_edge, label %put_child_root.exit.while.body.i_crit_edge

put_child_root.exit.while.body.i_crit_edge:       ; preds = %put_child_root.exit
  br label %while.body.i

put_child_root.exit.while.end.i_crit_edge:        ; preds = %put_child_root.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %put_child_root.exit.while.body.i_crit_edge
  %tn.addr.011.i = phi ptr [ %kv.i, %while.body.i.while.body.i_crit_edge ], [ %oldtnode, %put_child_root.exit.while.body.i_crit_edge ]
  %head.010.i = phi ptr [ %12, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %put_child_root.exit.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %head.010.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.010.i, align 4
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %tn.addr.011.i, i32 0, i32 2
  %13 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bits.i, align 1
  %conv.i = zext i8 %14 to i32
  %15 = shl i32 4, %conv.i
  %16 = load i32, ptr @tnode_free_size, align 4
  %17 = add i32 %16, 28
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr @tnode_free_size, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %tn.addr.011.i, i32 -20
  tail call void @call_rcu(ptr noundef %add.ptr.i8.i, ptr noundef nonnull @__node_free_rcu) #12
  %kv.i = getelementptr inbounds %struct.tnode, ptr %12, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %put_child_root.exit.while.end.i_crit_edge
  %18 = load i32, ptr @tnode_free_size, align 4
  %19 = load i32, ptr @sysctl_fib_sync_mem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp.not.i = icmp ult i32 %18, %19
  br i1 %cmp.not.i, label %while.end.i.tnode_free.exit_crit_edge, label %if.then.i

while.end.i.tnode_free.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tnode_free.exit

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @tnode_free_size, align 4
  tail call void @synchronize_rcu() #12
  br label %tnode_free.exit

tnode_free.exit:                                  ; preds = %if.then.i, %while.end.i.tnode_free.exit_crit_edge
  %bits.i53 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 2
  %20 = ptrtoint ptr %bits.i53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bits.i53, align 1
  %conv.i54 = zext i8 %21 to i32
  %shl.i = shl nuw i32 1, %conv.i54
  %and.i = and i32 %shl.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not62 = icmp eq i32 %and.i, 0
  br i1 %tobool20.not62, label %tnode_free.exit.for.end_crit_edge, label %tnode_free.exit.for.body_crit_edge

tnode_free.exit.for.body_crit_edge:               ; preds = %tnode_free.exit
  br label %for.body

tnode_free.exit.for.end_crit_edge:                ; preds = %tnode_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end37.for.body_crit_edge, %tnode_free.exit.for.body_crit_edge
  %tn.addr.064 = phi ptr [ %tn.addr.1, %if.end37.for.body_crit_edge ], [ %tn, %tnode_free.exit.for.body_crit_edge ]
  %i.063 = phi i32 [ %dec, %if.end37.for.body_crit_edge ], [ %and.i, %tnode_free.exit.for.body_crit_edge ]
  %call22 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call22, label %for.body.do.end31_crit_edge, label %land.lhs.true23

for.body.do.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

land.lhs.true23:                                  ; preds = %for.body
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b4950 = load i1, ptr @replace.__warned.51, align 1
  br i1 %.b4950, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @replace.__warned.51, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 525, ptr noundef nonnull @.str.12) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %for.body.do.end31_crit_edge
  %22 = getelementptr inbounds %struct.key_vector, ptr %tn.addr.064, i32 0, i32 4
  %dec = add i32 %i.063, -1
  %arrayidx = getelementptr [0 x ptr], ptr %22, i32 0, i32 %dec
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i55 = icmp eq ptr %24, null
  br i1 %tobool.not.i55, label %do.end31.if.end37_crit_edge, label %land.lhs.true.i

do.end31.if.end37_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true.i:                                  ; preds = %do.end31
  %pos.i56 = getelementptr inbounds %struct.key_vector, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pos.i56 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pos.i56, align 4
  %conv.i57 = zext i8 %26 to i32
  %bits.i58 = getelementptr inbounds %struct.key_vector, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %bits.i58 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits.i58, align 1
  %conv1.i = zext i8 %28 to i32
  %add.i59 = add nuw nsw i32 %conv1.i, %conv.i57
  %pos2.i = getelementptr inbounds %struct.key_vector, ptr %tn.addr.064, i32 0, i32 1
  %29 = ptrtoint ptr %pos2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pos2.i, align 4
  %conv3.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i59, i32 %conv3.i)
  %cmp.i60 = icmp ne i32 %add.i59, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.i.not = icmp eq i8 %28, 0
  %or.cond = select i1 %cmp.i60, i1 true, i1 %tobool7.i.not
  br i1 %or.cond, label %land.lhs.true.i.if.end37_crit_edge, label %if.then35

land.lhs.true.i.if.end37_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = tail call fastcc ptr @resize(ptr noundef %t, ptr noundef nonnull %24)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true.i.if.end37_crit_edge, %do.end31.if.end37_crit_edge
  %tn.addr.1 = phi ptr [ %call36, %if.then35 ], [ %tn.addr.064, %land.lhs.true.i.if.end37_crit_edge ], [ %tn.addr.064, %do.end31.if.end37_crit_edge ]
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %if.end37.for.end_crit_edge, label %if.end37.for.body_crit_edge

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end37.for.end_crit_edge, %tnode_free.exit.for.end_crit_edge
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_children(ptr noundef %tn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 2
  %0 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not34 = icmp eq i32 %and.i, 0
  br i1 %tobool.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.key_vector, ptr %tn, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ %and.i, %for.body.lr.ph ], [ %dec, %cleanup.for.body_crit_edge ]
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call1, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @update_children.__warned, align 1
  br i1 %.b33, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @update_children.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %dec = add i32 %i.035, -1
  %arrayidx = getelementptr [0 x ptr], ptr %2, i32 0, i32 %dec
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9:                                         ; preds = %do.end
  %call10 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call10, label %do.body9.do.end19_crit_edge, label %land.lhs.true11

do.body9.do.end19_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true11:                                  ; preds = %do.body9
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b3132 = load i1, ptr @update_children.__warned.52, align 1
  br i1 %.b3132, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @update_children.__warned.52, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 460, ptr noundef nonnull @.str.12) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true11.do.end19_crit_edge, %do.body9.do.end19_crit_edge
  %parent = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %cmp = icmp eq ptr %6, %tn
  br i1 %cmp, label %if.then22, label %node_set_parent.exit

if.then22:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @update_children(ptr noundef nonnull %4)
  br label %cleanup

node_set_parent.exit:                             ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !353
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %tn, ptr %parent, align 4
  br label %cleanup

cleanup:                                          ; preds = %node_set_parent.exit, %if.then22, %do.end.cleanup_crit_edge
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_info_nh_uses_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_dump_info_fnhe(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fib_trie_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %fib_table_hash.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 18
  %tnode17.i.i = getelementptr inbounds %struct.fib_trie_iter, ptr %7, i32 0, i32 2
  %index.i.i = getelementptr inbounds %struct.fib_trie_iter, ptr %7, i32 0, i32 3
  %depth.i.i = getelementptr inbounds %struct.fib_trie_iter, ptr %7, i32 0, i32 4
  %tb22.i = getelementptr inbounds %struct.fib_trie_iter, ptr %7, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc46.i.for.body.i_crit_edge, %rcu_read_lock.exit
  %idx.093.i = phi i64 [ 0, %rcu_read_lock.exit ], [ %idx.476.i, %for.inc46.i.for.body.i_crit_edge ]
  %h.092.i = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc47.i, %for.inc46.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %fib_table_hash.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fib_table_hash.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %11, i32 %h.092.i
  %call1.i1 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1)
  %tobool.not.i2 = icmp eq i32 %call1.i1, 0
  br i1 %tobool.not.i2, label %land.lhs.true.i3, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i3:                                 ; preds = %for.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i3.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i3.do.end.i_crit_edge:              ; preds = %land.lhs.true.i3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i3
  %.b68.i = load i1, ptr @fib_trie_get_idx.__warned, align 1
  br i1 %.b68.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i4

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i4:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2668, ptr noundef nonnull @.str.9) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i4, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i3.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tb.086.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool14.not87.i = icmp eq ptr %tb.086.i, null
  br i1 %tobool14.not87.i, label %do.end.i.for.inc46.i_crit_edge, label %do.end.i.for.body15.i_crit_edge

do.end.i.for.body15.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body15.i

do.end.i.for.inc46.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc46.i

for.cond13.loopexit.i:                            ; preds = %for.inc.i.for.cond13.loopexit.i_crit_edge, %do.end10.i.i.for.cond13.loopexit.i_crit_edge, %for.body15.i.for.cond13.loopexit.i_crit_edge
  %idx.2.lcssa.i = phi i64 [ %idx.188.i, %for.body15.i.for.cond13.loopexit.i_crit_edge ], [ %idx.188.i, %do.end10.i.i.for.cond13.loopexit.i_crit_edge ], [ %inc.i, %for.inc.i.for.cond13.loopexit.i_crit_edge ]
  %13 = ptrtoint ptr %tb.089.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tb.0.i = load volatile ptr, ptr %tb.089.i, align 4
  %tobool14.not.i = icmp eq ptr %tb.0.i, null
  br i1 %tobool14.not.i, label %for.cond13.loopexit.i.for.inc46.i_crit_edge, label %for.cond13.loopexit.i.for.body15.i_crit_edge

for.cond13.loopexit.i.for.body15.i_crit_edge:     ; preds = %for.cond13.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

for.cond13.loopexit.i.for.inc46.i_crit_edge:      ; preds = %for.cond13.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc46.i

for.body15.i:                                     ; preds = %for.cond13.loopexit.i.for.body15.i_crit_edge, %do.end.i.for.body15.i_crit_edge
  %tb.089.i = phi ptr [ %tb.0.i, %for.cond13.loopexit.i.for.body15.i_crit_edge ], [ %tb.086.i, %do.end.i.for.body15.i_crit_edge ]
  %idx.188.i = phi i64 [ %idx.2.lcssa.i, %for.cond13.loopexit.i.for.body15.i_crit_edge ], [ %idx.093.i, %do.end.i.for.body15.i_crit_edge ]
  %tb_data.i = getelementptr inbounds %struct.fib_table, ptr %tb.089.i, i32 0, i32 4
  %14 = ptrtoint ptr %tb_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb_data.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %for.body15.i.for.cond13.loopexit.i_crit_edge, label %if.end.i.i

for.body15.i.for.cond13.loopexit.i_crit_edge:     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond13.loopexit.i

if.end.i.i:                                       ; preds = %for.body15.i
  %16 = getelementptr inbounds %struct.key_vector, ptr %15, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %16, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.do.end10.i.i_crit_edge

if.end.i.i.do.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b32.i.i = load i1, ptr @fib_trie_get_first.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true5.i.i.do.end10.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2490, ptr noundef nonnull @.str.4) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %if.end.i.i.do.end10.i.i_crit_edge
  %tobool12.not.i.i = icmp eq ptr %18, null
  br i1 %tobool12.not.i.i, label %do.end10.i.i.for.cond13.loopexit.i_crit_edge, label %for.body19.preheader.i

do.end10.i.i.for.cond13.loopexit.i_crit_edge:     ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond13.loopexit.i

for.body19.preheader.i:                           ; preds = %do.end10.i.i
  %bits.i.i = getelementptr inbounds %struct.key_vector, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not.i.i = icmp eq i8 %20, 0
  %t..i.i = select i1 %tobool15.not.i.i, ptr %15, ptr %18
  %not.tobool15.not.i.i = xor i1 %tobool15.not.i.i, true
  %..i.i = zext i1 %not.tobool15.not.i.i to i32
  %21 = ptrtoint ptr %tnode17.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %t..i.i, ptr %tnode17.i.i, align 4
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index.i.i, align 4
  %23 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %..i.i, ptr %depth.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %idx.188.i, i64 %5)
  %cmp20.i7 = icmp eq i64 %idx.188.i, %5
  br i1 %cmp20.i7, label %for.body19.preheader.i.cleanup42.i_crit_edge, label %for.body19.preheader.i.for.inc.i_crit_edge

for.body19.preheader.i.for.inc.i_crit_edge:       ; preds = %for.body19.preheader.i
  br label %for.inc.i

for.body19.preheader.i.cleanup42.i_crit_edge:     ; preds = %for.body19.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42.i

for.body19.i:                                     ; preds = %for.inc.i
  %cmp20.i = icmp eq i64 %inc.i, %5
  br i1 %cmp20.i, label %for.body19.i.cleanup42.i_crit_edge, label %for.body19.i.for.inc.i_crit_edge

for.body19.i.for.inc.i_crit_edge:                 ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body19.i.cleanup42.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup42.i

for.inc.i:                                        ; preds = %for.body19.i.for.inc.i_crit_edge, %for.body19.preheader.i.for.inc.i_crit_edge
  %idx.285.i8 = phi i64 [ %inc.i, %for.body19.i.for.inc.i_crit_edge ], [ %idx.188.i, %for.body19.preheader.i.for.inc.i_crit_edge ]
  %inc.i = add i64 %idx.285.i8, 1
  %call24.i = tail call fastcc ptr @fib_trie_get_next(ptr noundef %7) #12
  %tobool18.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool18.not.i, label %for.inc.i.for.cond13.loopexit.i_crit_edge, label %for.body19.i

for.inc.i.for.cond13.loopexit.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond13.loopexit.i

cleanup42.i:                                      ; preds = %for.body19.i.cleanup42.i_crit_edge, %for.body19.preheader.i.cleanup42.i_crit_edge
  %n.084.i.lcssa = phi ptr [ %call24.i, %for.body19.i.cleanup42.i_crit_edge ], [ %18, %for.body19.preheader.i.cleanup42.i_crit_edge ]
  %24 = ptrtoint ptr %tb22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tb.089.i, ptr %tb22.i, align 4
  br label %fib_trie_get_idx.exit

for.inc46.i:                                      ; preds = %for.cond13.loopexit.i.for.inc46.i_crit_edge, %do.end.i.for.inc46.i_crit_edge
  %idx.476.i = phi i64 [ %idx.093.i, %do.end.i.for.inc46.i_crit_edge ], [ %idx.2.lcssa.i, %for.cond13.loopexit.i.for.inc46.i_crit_edge ]
  %inc47.i = add nuw nsw i32 %h.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc47.i, 256
  br i1 %exitcond.not.i, label %for.inc46.i.fib_trie_get_idx.exit_crit_edge, label %for.inc46.i.for.body.i_crit_edge

for.inc46.i.for.body.i_crit_edge:                 ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc46.i.fib_trie_get_idx.exit_crit_edge:      ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_trie_get_idx.exit

fib_trie_get_idx.exit:                            ; preds = %for.inc46.i.fib_trie_get_idx.exit_crit_edge, %cleanup42.i
  %retval.4.i = phi ptr [ %n.084.i.lcssa, %cleanup42.i ], [ null, %for.inc46.i.fib_trie_get_idx.exit_crit_edge ]
  ret ptr %retval.4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib_trie_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %0 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fib_trie_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tb1 = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb1, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  %call2 = tail call fastcc ptr @fib_trie_get_next(ptr noundef %1)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup71_crit_edge

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

if.end:                                           ; preds = %entry
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tb_id, align 4
  %and = and i32 %9, 255
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %tb.0 = phi ptr [ %5, %if.end ], [ %11, %while.cond.backedge ]
  %10 = ptrtoint ptr %tb.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tb.0, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %while.cond.do.end13_crit_edge

while.cond.do.end13_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true:                                    ; preds = %while.cond
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b99 = load i1, ptr @fib_trie_seq_next.__warned, align 1
  br i1 %.b99, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2708, ptr noundef nonnull @.str.4) #12
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %while.cond.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %while.cond21.preheader, label %while.body

while.cond21.preheader:                           ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and)
  %cmp142.not = icmp eq i32 %and, 255
  br i1 %cmp142.not, label %while.cond21.preheader.cleanup71_crit_edge, label %while.body23.lr.ph

while.cond21.preheader.cleanup71_crit_edge:       ; preds = %while.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

while.body23.lr.ph:                               ; preds = %while.cond21.preheader
  %inc22141 = add nuw nsw i32 %and, 1
  %fib_table_hash = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 18
  br label %while.body23

while.body:                                       ; preds = %do.end13
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb_data, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.while.cond.backedge_crit_edge, label %if.end.i

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end10.i.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

if.end.i:                                         ; preds = %while.body
  %14 = getelementptr inbounds %struct.key_vector, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %14, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b32.i = load i1, ptr @fib_trie_get_first.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2490, ptr noundef nonnull @.str.4) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %tobool12.not.i = icmp eq ptr %16, null
  br i1 %tobool12.not.i, label %do.end10.i.while.cond.backedge_crit_edge, label %fib_trie_get_first.exit.thread

do.end10.i.while.cond.backedge_crit_edge:         ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

fib_trie_get_first.exit.thread:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not.i = icmp eq i8 %18, 0
  %tnode17.i = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 2
  %t..i = select i1 %tobool15.not.i, ptr %13, ptr %16
  %19 = ptrtoint ptr %tnode17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %t..i, ptr %tnode17.i, align 4
  br label %found

while.cond21.loopexit:                            ; preds = %for.inc.while.cond21.loopexit_crit_edge, %do.end35.while.cond21.loopexit_crit_edge
  %inc22 = add nuw nsw i32 %inc22143, 1
  %exitcond.not = icmp eq i32 %inc22, 256
  br i1 %exitcond.not, label %while.cond21.loopexit.cleanup71_crit_edge, label %while.cond21.loopexit.while.body23_crit_edge

while.cond21.loopexit.while.body23_crit_edge:     ; preds = %while.cond21.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body23

while.cond21.loopexit.cleanup71_crit_edge:        ; preds = %while.cond21.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup71

while.body23:                                     ; preds = %while.cond21.loopexit.while.body23_crit_edge, %while.body23.lr.ph
  %inc22143 = phi i32 [ %inc22141, %while.body23.lr.ph ], [ %inc22, %while.cond21.loopexit.while.body23_crit_edge ]
  %20 = ptrtoint ptr %fib_table_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fib_table_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %21, i32 %inc22143
  %call25 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %while.body23.do.end35_crit_edge

while.body23.do.end35_crit_edge:                  ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true27:                                  ; preds = %while.body23
  %call28 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.do.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %.b9798 = load i1, ptr @fib_trie_seq_next.__warned.61, align 1
  br i1 %.b9798, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_seq_next.__warned.61, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2718, ptr noundef nonnull @.str.9) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %while.body23.do.end35_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %tb.1138 = load volatile ptr, ptr %arrayidx, align 4
  %tobool46.not139 = icmp eq ptr %tb.1138, null
  br i1 %tobool46.not139, label %do.end35.while.cond21.loopexit_crit_edge, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  br label %for.body

do.end35.while.cond21.loopexit_crit_edge:         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond21.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end35.for.body_crit_edge
  %tb.1140 = phi ptr [ %tb.1, %for.inc.for.body_crit_edge ], [ %tb.1138, %do.end35.for.body_crit_edge ]
  %tb_data47 = getelementptr inbounds %struct.fib_table, ptr %tb.1140, i32 0, i32 4
  %23 = ptrtoint ptr %tb_data47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb_data47, align 4
  %tobool.not.i102 = icmp eq ptr %24, null
  br i1 %tobool.not.i102, label %for.body.for.inc_crit_edge, label %if.end.i105

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i105:                                      ; preds = %for.body
  %25 = getelementptr inbounds %struct.key_vector, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %25, align 4
  %call.i103 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool2.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool2.not.i104, label %land.lhs.true.i108, label %if.end.i105.do.end10.i113_crit_edge

if.end.i105.do.end10.i113_crit_edge:              ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i113

land.lhs.true.i108:                               ; preds = %if.end.i105
  %call3.i106 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i106)
  %tobool4.not.i107 = icmp eq i32 %call3.i106, 0
  br i1 %tobool4.not.i107, label %land.lhs.true.i108.do.end10.i113_crit_edge, label %land.lhs.true5.i110

land.lhs.true.i108.do.end10.i113_crit_edge:       ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i113

land.lhs.true5.i110:                              ; preds = %land.lhs.true.i108
  %.b32.i109 = load i1, ptr @fib_trie_get_first.__warned, align 1
  br i1 %.b32.i109, label %land.lhs.true5.i110.do.end10.i113_crit_edge, label %if.then7.i111

land.lhs.true5.i110.do.end10.i113_crit_edge:      ; preds = %land.lhs.true5.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i113

if.then7.i111:                                    ; preds = %land.lhs.true5.i110
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2490, ptr noundef nonnull @.str.4) #12
  br label %do.end10.i113

do.end10.i113:                                    ; preds = %if.then7.i111, %land.lhs.true5.i110.do.end10.i113_crit_edge, %land.lhs.true.i108.do.end10.i113_crit_edge, %if.end.i105.do.end10.i113_crit_edge
  %tobool12.not.i112 = icmp eq ptr %27, null
  br i1 %tobool12.not.i112, label %do.end10.i113.for.inc_crit_edge, label %cleanup.thread

do.end10.i113.for.inc_crit_edge:                  ; preds = %do.end10.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end10.i113
  call void @__sanitizer_cov_trace_pc() #14
  %bits.i114 = getelementptr inbounds %struct.key_vector, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %bits.i114 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits.i114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool15.not.i115 = icmp eq i8 %29, 0
  %tnode17.i116 = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 2
  %t..i117 = select i1 %tobool15.not.i115, ptr %24, ptr %27
  %30 = ptrtoint ptr %tnode17.i116 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %t..i117, ptr %tnode17.i116, align 4
  br label %found

for.inc:                                          ; preds = %do.end10.i113.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %tb.1140 to i32
  call void @__asan_load4_noabort(i32 %31)
  %tb.1 = load volatile ptr, ptr %tb.1140, align 4
  %tobool46.not = icmp eq ptr %tb.1, null
  br i1 %tobool46.not, label %for.inc.while.cond21.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.while.cond21.loopexit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond21.loopexit

found:                                            ; preds = %cleanup.thread, %fib_trie_get_first.exit.thread
  %..i119.sink.in.in = phi i1 [ %tobool15.not.i115, %cleanup.thread ], [ %tobool15.not.i, %fib_trie_get_first.exit.thread ]
  %n.4 = phi ptr [ %27, %cleanup.thread ], [ %16, %fib_trie_get_first.exit.thread ]
  %tb.2 = phi ptr [ %tb.1140, %cleanup.thread ], [ %11, %fib_trie_get_first.exit.thread ]
  %..i119.sink.in = xor i1 %..i119.sink.in.in, true
  %..i119.sink = zext i1 %..i119.sink.in to i32
  %index.i120 = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %index.i120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %index.i120, align 4
  %depth.i121 = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %depth.i121 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %..i119.sink, ptr %depth.i121, align 4
  %34 = ptrtoint ptr %tb1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tb.2, ptr %tb1, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %found, %while.cond21.loopexit.cleanup71_crit_edge, %while.cond21.preheader.cleanup71_crit_edge, %entry.cleanup71_crit_edge
  %retval.0 = phi ptr [ %n.4, %found ], [ %call2, %entry.cleanup71_crit_edge ], [ null, %while.cond21.preheader.cleanup71_crit_edge ], [ null, %while.cond21.loopexit.cleanup71_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_trie_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %prf = alloca i32, align 4
  %val = alloca i32, align 4
  %buf1 = alloca [32 x i8], align 1
  %buf2 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %parent = getelementptr i8, ptr %v, i32 -4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %parent, align 4
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call2, label %entry.do.end9_crit_edge, label %lor.lhs.false

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end9_crit_edge

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @fib_trie_seq_show.__warned, align 1
  br i1 %.b111, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2786, ptr noundef nonnull @.str.4) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %lor.lhs.false.do.end9_crit_edge, %entry.do.end9_crit_edge
  %pos = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %5)
  %cmp = icmp ugt i8 %5, 31
  br i1 %cmp, label %if.then12, label %do.end9.if.end13_crit_edge

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %do.end9
  %tb = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb, align 4
  %tb_id.i = getelementptr inbounds %struct.fib_table, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tb_id.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %9, label %if.else4.i [
    i32 255, label %if.then.i
    i32 254, label %if.then3.i
  ]

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.67) #12
  br label %if.end13

if.then3.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.68) #12
  br label %if.end13

if.else4.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, i32 noundef %9) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else4.i, %if.then3.i, %if.then.i, %do.end9.if.end13_crit_edge
  %bits = getelementptr inbounds %struct.key_vector, ptr %v, i32 0, i32 2
  %11 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool14.not = icmp eq i8 %12, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prf) #12
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v, align 4
  %15 = ptrtoint ptr %prf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %prf, align 4
  %depth = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth, align 4
  %sub = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1.i = icmp sgt i32 %sub, 0
  br i1 %cmp1.i, label %if.then15.while.body.i_crit_edge, label %if.then15.seq_indent.exit_crit_edge

if.then15.seq_indent.exit_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit

if.then15.while.body.i_crit_edge:                 ; preds = %if.then15
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then15.while.body.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %sub, %if.then15.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %n.addr.02.i, -1
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.70) #12
  %cmp.i = icmp ugt i32 %n.addr.02.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.seq_indent.exit_crit_edge

while.body.i.seq_indent.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

seq_indent.exit:                                  ; preds = %while.body.i.seq_indent.exit_crit_edge, %if.then15.seq_indent.exit_crit_edge
  %pos16 = getelementptr inbounds %struct.key_vector, ptr %v, i32 0, i32 1
  %18 = ptrtoint ptr %pos16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pos16, align 4
  %conv17 = zext i8 %19 to i32
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bits, align 1
  %conv20 = zext i8 %21 to i32
  %22 = add nuw nsw i32 %conv17, %conv20
  %sub21 = sub nsw i32 32, %22
  %full_children = getelementptr i8, ptr %v, i32 -8
  %23 = ptrtoint ptr %full_children to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %full_children, align 4
  %empty_children = getelementptr i8, ptr %v, i32 -12
  %25 = ptrtoint ptr %empty_children to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %empty_children, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, ptr noundef nonnull %prf, i32 noundef %sub21, i32 noundef %conv20, i32 noundef %24, i32 noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prf) #12
  br label %if.end77

if.else:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %27 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %v, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val, align 4
  %depth27 = getelementptr inbounds %struct.fib_trie_iter, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %depth27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %depth27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.i115 = icmp sgt i32 %31, 0
  br i1 %cmp1.i115, label %if.else.while.body.i119_crit_edge, label %if.else.seq_indent.exit120_crit_edge

if.else.seq_indent.exit120_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit120

if.else.while.body.i119_crit_edge:                ; preds = %if.else
  br label %while.body.i119

while.body.i119:                                  ; preds = %while.body.i119.while.body.i119_crit_edge, %if.else.while.body.i119_crit_edge
  %n.addr.02.i116 = phi i32 [ %dec.i117, %while.body.i119.while.body.i119_crit_edge ], [ %31, %if.else.while.body.i119_crit_edge ]
  %dec.i117 = add nsw i32 %n.addr.02.i116, -1
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.70) #12
  %cmp.i118 = icmp ugt i32 %n.addr.02.i116, 1
  br i1 %cmp.i118, label %while.body.i119.while.body.i119_crit_edge, label %while.body.i119.seq_indent.exit120_crit_edge

while.body.i119.seq_indent.exit120_crit_edge:     ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit120

while.body.i119.while.body.i119_crit_edge:        ; preds = %while.body.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i119

seq_indent.exit120:                               ; preds = %while.body.i119.seq_indent.exit120_crit_edge, %if.else.seq_indent.exit120_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, ptr noundef nonnull %val) #12
  %call29 = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %seq_indent.exit120.do.end39_crit_edge

seq_indent.exit120.do.end39_crit_edge:            ; preds = %seq_indent.exit120
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true31:                                  ; preds = %seq_indent.exit120
  %call32 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b109110 = load i1, ptr @fib_trie_seq_show.__warned.64, align 1
  br i1 %.b109110, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_seq_show.__warned.64, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2804, ptr noundef nonnull @.str.9) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %seq_indent.exit120.do.end39_crit_edge
  %32 = getelementptr inbounds %struct.key_vector, ptr %v, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %fa.0131 = load volatile ptr, ptr %32, align 4
  %tobool48.not132 = icmp eq ptr %fa.0131, null
  br i1 %tobool48.not132, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %do.end39.for.body_crit_edge
  %fa.0133 = phi ptr [ %fa.0, %if.end61.for.body_crit_edge ], [ %fa.0131, %do.end39.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf1) #12
  %34 = call ptr @memset(ptr %buf1, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf2) #12
  %35 = call ptr @memset(ptr %buf2, i32 255, i32 32)
  %36 = ptrtoint ptr %depth27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %depth27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %37)
  %cmp1.i121 = icmp ult i32 %37, 2147483647
  br i1 %cmp1.i121, label %while.body.i125.preheader, label %for.body.seq_indent.exit126_crit_edge

for.body.seq_indent.exit126_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit126

while.body.i125.preheader:                        ; preds = %for.body
  %add = add nuw nsw i32 %37, 1
  br label %while.body.i125

while.body.i125:                                  ; preds = %while.body.i125.while.body.i125_crit_edge, %while.body.i125.preheader
  %n.addr.02.i122 = phi i32 [ %dec.i123, %while.body.i125.while.body.i125_crit_edge ], [ %add, %while.body.i125.preheader ]
  %dec.i123 = add nsw i32 %n.addr.02.i122, -1
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.70) #12
  %cmp.i124 = icmp ugt i32 %n.addr.02.i122, 1
  br i1 %cmp.i124, label %while.body.i125.while.body.i125_crit_edge, label %while.body.i125.seq_indent.exit126_crit_edge

while.body.i125.seq_indent.exit126_crit_edge:     ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %seq_indent.exit126

while.body.i125.while.body.i125_crit_edge:        ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i125

seq_indent.exit126:                               ; preds = %while.body.i125.seq_indent.exit126_crit_edge, %for.body.seq_indent.exit126_crit_edge
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0133, i32 0, i32 5
  %38 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fa_slen, align 1
  %conv50 = zext i8 %39 to i32
  %sub51 = sub nsw i32 32, %conv50
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa.0133, i32 0, i32 1
  %40 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fa_info, align 4
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fib_scope, align 2
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %43, label %sw.default.i [
    i8 0, label %seq_indent.exit126.rtn_scope.exit_crit_edge
    i8 -56, label %sw.bb1.i
    i8 -3, label %sw.bb2.i
    i8 -2, label %sw.bb3.i
    i8 -1, label %sw.bb4.i
  ]

seq_indent.exit126.rtn_scope.exit_crit_edge:      ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtn_scope.exit

sw.bb1.i:                                         ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtn_scope.exit

sw.bb2.i:                                         ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtn_scope.exit

sw.bb3.i:                                         ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtn_scope.exit

sw.bb4.i:                                         ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtn_scope.exit

sw.default.i:                                     ; preds = %seq_indent.exit126
  call void @__sanitizer_cov_trace_pc() #14
  %conv52 = zext i8 %43 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf1, i32 noundef 32, ptr noundef nonnull @.str.76, i32 noundef %conv52) #12
  br label %rtn_scope.exit

rtn_scope.exit:                                   ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %seq_indent.exit126.rtn_scope.exit_crit_edge
  %retval.0.i = phi ptr [ %buf1, %sw.default.i ], [ @.str.75, %sw.bb4.i ], [ @.str.74, %sw.bb3.i ], [ @.str.73, %sw.bb2.i ], [ @.str.72, %sw.bb1.i ], [ @.str.71, %seq_indent.exit126.rtn_scope.exit_crit_edge ]
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0133, i32 0, i32 3
  %45 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %fa_type, align 1
  %conv55 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %46)
  %cmp.i127 = icmp ult i8 %46, 12
  br i1 %cmp.i127, label %if.then.i128, label %if.end.i

if.then.i128:                                     ; preds = %rtn_scope.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr [12 x ptr], ptr @rtn_type_names, i32 0, i32 %conv55
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  br label %rtn_type.exit

if.end.i:                                         ; preds = %rtn_scope.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i129 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf2, i32 noundef 32, ptr noundef nonnull @.str.77, i32 noundef %conv55) #12
  br label %rtn_type.exit

rtn_type.exit:                                    ; preds = %if.end.i, %if.then.i128
  %retval.0.i130 = phi ptr [ %48, %if.then.i128 ], [ %buf2, %if.end.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.65, i32 noundef %sub51, ptr noundef nonnull %retval.0.i, ptr noundef %retval.0.i130) #12
  %fa_tos = getelementptr inbounds %struct.fib_alias, ptr %fa.0133, i32 0, i32 2
  %49 = ptrtoint ptr %fa_tos to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fa_tos, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool57.not = icmp eq i8 %50, 0
  br i1 %tobool57.not, label %rtn_type.exit.if.end61_crit_edge, label %if.then58

rtn_type.exit.if.end61_crit_edge:                 ; preds = %rtn_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then58:                                        ; preds = %rtn_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv60 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.66, i32 noundef %conv60) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %rtn_type.exit.if.end61_crit_edge
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf1) #12
  %51 = ptrtoint ptr %fa.0133 to i32
  call void @__asan_load4_noabort(i32 %51)
  %fa.0 = load volatile ptr, ptr %fa.0133, align 4
  %tobool48.not = icmp eq ptr %fa.0, null
  br i1 %tobool48.not, label %if.end61.for.end_crit_edge, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %do.end39.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  br label %if.end77

if.end77:                                         ; preds = %for.end, %seq_indent.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib_trie_get_next(ptr nocapture noundef %iter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.fib_trie_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %tnode = getelementptr inbounds %struct.fib_trie_iter, ptr %iter, i32 0, i32 2
  %2 = ptrtoint ptr %tnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tnode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fib_trie_get_next.__UNIQUE_ID_ddebug734, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fib_trie_get_next, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !335

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tnode, align 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %depth = getelementptr inbounds %struct.fib_trie_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fib_trie_get_next.__UNIQUE_ID_ddebug734, ptr noundef nonnull @.str.59, ptr noundef %5, i32 noundef %7, i32 noundef %9) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pos104 = getelementptr inbounds %struct.key_vector, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %pos104 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pos104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %cmp105 = icmp ult i8 %11, 32
  br i1 %cmp105, label %while.cond8.preheader.lr.ph, label %do.end.while.end66_crit_edge

do.end.while.end66_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end66

while.cond8.preheader.lr.ph:                      ; preds = %do.end
  %depth65 = getelementptr inbounds %struct.fib_trie_iter, ptr %iter, i32 0, i32 4
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %get_index.exit.while.cond8.preheader_crit_edge, %while.cond8.preheader.lr.ph
  %cindex.0107 = phi i32 [ %1, %while.cond8.preheader.lr.ph ], [ %add, %get_index.exit.while.cond8.preheader_crit_edge ]
  %pn.0106 = phi ptr [ %3, %while.cond8.preheader.lr.ph ], [ %28, %get_index.exit.while.cond8.preheader_crit_edge ]
  %bits.i = getelementptr inbounds %struct.key_vector, ptr %pn.0106, i32 0, i32 2
  %12 = getelementptr inbounds %struct.key_vector, ptr %pn.0106, i32 0, i32 4
  br label %while.cond8

while.cond8:                                      ; preds = %do.end29.while.cond8_crit_edge, %while.cond8.preheader
  %cindex.1 = phi i32 [ %inc, %do.end29.while.cond8_crit_edge ], [ %cindex.0107, %while.cond8.preheader ]
  %13 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bits.i, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %cindex.1, i32 %and.i)
  %cmp10 = icmp ult i32 %cindex.1, %and.i
  br i1 %cmp10, label %while.body12, label %while.end

while.body12:                                     ; preds = %while.cond8
  %inc = add nuw i32 %cindex.1, 1
  %arrayidx = getelementptr [0 x ptr], ptr %12, i32 0, i32 %cindex.1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call18, label %while.body12.do.end29_crit_edge, label %lor.lhs.false

while.body12.do.end29_crit_edge:                  ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

lor.lhs.false:                                    ; preds = %while.body12
  %call20 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %lor.lhs.false.do.end29_crit_edge

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b98 = load i1, ptr @fib_trie_get_next.__warned, align 1
  br i1 %.b98, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2449, ptr noundef nonnull @.str.4) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %lor.lhs.false.do.end29_crit_edge, %while.body12.do.end29_crit_edge
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %do.end29.while.cond8_crit_edge, label %if.end33

do.end29.while.cond8_crit_edge:                   ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond8

if.end33:                                         ; preds = %do.end29
  %bits = getelementptr inbounds %struct.key_vector, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %tnode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pn.0106, ptr %tnode, align 4
  %20 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc, ptr %index, align 4
  br label %cleanup69

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %tnode to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %tnode, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index, align 4
  %23 = ptrtoint ptr %depth65 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %depth65, align 4
  %inc41 = add i32 %24, 1
  store i32 %inc41, ptr %depth65, align 4
  br label %cleanup69

while.end:                                        ; preds = %while.cond8
  %25 = ptrtoint ptr %pn.0106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pn.0106, align 4
  %parent = getelementptr i8, ptr %pn.0106, i32 -4
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %parent, align 4
  %call49 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call49, label %while.end.do.end62_crit_edge, label %lor.lhs.false51

while.end.do.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

lor.lhs.false51:                                  ; preds = %while.end
  %call52 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %lor.lhs.false51.do.end62_crit_edge

lor.lhs.false51.do.end62_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

land.lhs.true54:                                  ; preds = %lor.lhs.false51
  %call55 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.do.end62_crit_edge, label %land.lhs.true57

land.lhs.true54.do.end62_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %.b9697 = load i1, ptr @fib_trie_get_next.__warned.60, align 1
  br i1 %.b9697, label %land.lhs.true57.do.end62_crit_edge, label %if.then59

land.lhs.true57.do.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_trie_get_next.__warned.60, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2469, ptr noundef nonnull @.str.4) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %land.lhs.true57.do.end62_crit_edge, %land.lhs.true54.do.end62_crit_edge, %lor.lhs.false51.do.end62_crit_edge, %while.end.do.end62_crit_edge
  %pos.i = getelementptr inbounds %struct.key_vector, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp.i = icmp eq i8 %30, 32
  br i1 %cmp.i, label %do.end62.get_index.exit_crit_edge, label %if.end.i

do.end62.get_index.exit_crit_edge:                ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_index.exit

if.end.i:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i99 = zext i8 %30 to i32
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %xor.i = xor i32 %32, %26
  %shr.i = lshr i32 %xor.i, %conv.i99
  br label %get_index.exit

get_index.exit:                                   ; preds = %if.end.i, %do.end62.get_index.exit_crit_edge
  %retval.0.i100 = phi i32 [ %shr.i, %if.end.i ], [ 0, %do.end62.get_index.exit_crit_edge ]
  %add = add i32 %retval.0.i100, 1
  %33 = ptrtoint ptr %depth65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %depth65, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %depth65, align 4
  %35 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pos.i, align 4
  %cmp = icmp ult i8 %36, 32
  br i1 %cmp, label %get_index.exit.while.cond8.preheader_crit_edge, label %get_index.exit.while.end66_crit_edge

get_index.exit.while.end66_crit_edge:             ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end66

get_index.exit.while.cond8.preheader_crit_edge:   ; preds = %get_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond8.preheader

while.end66:                                      ; preds = %get_index.exit.while.end66_crit_edge, %do.end.while.end66_crit_edge
  %pn.0.lcssa = phi ptr [ %3, %do.end.while.end66_crit_edge ], [ %28, %get_index.exit.while.end66_crit_edge ]
  %37 = ptrtoint ptr %tnode to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pn.0.lcssa, ptr %tnode, align 4
  %38 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %index, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %while.end66, %if.else, %if.then35
  %retval.3 = phi ptr [ null, %while.end66 ], [ %16, %if.then35 ], [ %16, %if.else ]
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fib_route_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = tail call ptr @fib_get_table(ptr noundef %9, i32 noundef 254) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %rcu_read_lock.exit.cleanup_crit_edge, label %if.end

rcu_read_lock.exit.cleanup_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %main_tb = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %main_tb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %main_tb, align 8
  %tb_data = getelementptr inbounds %struct.fib_table, ptr %call1, i32 0, i32 4
  %11 = ptrtoint ptr %tb_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb_data, align 4
  %tnode = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %tnode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %tnode, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp.not = icmp eq i64 %15, 0
  %pos5 = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 3
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %16 = ptrtoint ptr %pos5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %17)
  %cmp.i = icmp slt i64 %17, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %15)
  %cmp3.not.i = icmp sgt i64 %17, %15
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then.i16

if.then.i16:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %key4.i = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %key4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key4.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %pos5, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i16
  %key.0.i = phi i32 [ %19, %if.then.i16 ], [ 0, %if.else.i ]
  %21 = ptrtoint ptr %pos5 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos5, align 8
  %sub.i = sub i64 %15, %22
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end.i
  %pos.addr.0.i = phi i64 [ %sub.i, %if.end.i ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %key.1.i = phi i32 [ %key.0.i, %if.end.i ], [ %add.i, %while.body.i.while.cond.i_crit_edge ]
  %call.i17 = tail call fastcc ptr @leaf_walk_rcu(ptr noundef %tnode, i32 noundef %key.1.i) #12
  %tobool.not.i18 = icmp eq ptr %call.i17, null
  br i1 %tobool.not.i18, label %while.cond.i.if.else17.i_crit_edge, label %land.rhs.i

while.cond.i.if.else17.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17.i

land.rhs.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.0.i)
  %cmp7.i = icmp sgt i64 %pos.addr.0.i, 0
  br i1 %cmp7.i, label %while.body.i, label %if.then14.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i64 %pos.addr.0.i, -1
  %23 = ptrtoint ptr %call.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i17, align 4
  %add.i = add i32 %24, 1
  %25 = ptrtoint ptr %pos5 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos5, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %pos5, align 8
  %tobool10.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool10.not.i, label %while.body.i.if.else17.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.if.else17.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17.i

if.then14.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %call.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i17, align 4
  %key16.i = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %key16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %key16.i, align 8
  br label %cleanup

if.else17.i:                                      ; preds = %while.body.i.if.else17.i_crit_edge, %while.cond.i.if.else17.i_crit_edge
  %30 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %pos5, align 8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %pos5 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %pos5, align 8
  %key = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %key, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.else17.i, %if.then14.i, %rcu_read_lock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %if.end4 ], [ null, %rcu_read_lock.exit.cleanup_crit_edge ], [ null, %if.else17.i ], [ %call.i17, %if.then14.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib_route_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %0 = tail call i32 @llvm.read_register.i32(metadata !322) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fib_route_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %key1 = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key1, align 8
  %add = add i32 %3, 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp ne ptr %v, inttoptr (i32 1 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %entry.if.else_crit_edge, label %if.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end:                                           ; preds = %entry
  %tnode = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 2
  %call = tail call fastcc ptr @leaf_walk_rcu(ptr noundef %tnode, i32 noundef %add)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %if.then3

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %8 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %key1, align 8
  %pos6 = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %pos6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos6, align 8
  %inc7 = add i64 %10, 1
  store i64 %inc7, ptr %pos6, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %pos8 = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %pos8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %pos8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %l.019 = phi ptr [ null, %if.else ], [ %call, %if.then3 ]
  ret ptr %l.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib_route_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %main_tb = getelementptr inbounds %struct.fib_route_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %main_tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %main_tb, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #12
  br label %cleanup79

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  %call = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b118 = load i1, ptr @fib_route_seq_show.__warned, align 1
  br i1 %.b118, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_route_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2967, ptr noundef nonnull @.str.9) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %6 = getelementptr inbounds %struct.key_vector, ptr %v, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %fa.0124 = load volatile ptr, ptr %6, align 4
  %tobool14.not125 = icmp eq ptr %fa.0124, null
  br i1 %tobool14.not125, label %do.end.cleanup79_crit_edge, label %for.body.lr.ph

do.end.cleanup79_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

for.body.lr.ph:                                   ; preds = %do.end
  %tb_id28 = getelementptr inbounds %struct.fib_table, ptr %3, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %fa.0126 = phi ptr [ %fa.0124, %for.body.lr.ph ], [ %fa.0, %cleanup.for.body_crit_edge ]
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa.0126, i32 0, i32 1
  %8 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fa_info, align 4
  %fa_slen = getelementptr inbounds %struct.fib_alias, ptr %fa.0126, i32 0, i32 5
  %10 = ptrtoint ptr %fa_slen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fa_slen, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 32
  %notmask.i = shl nsw i32 -1, %conv
  %retval.0.i = select i1 %tobool.not.i, i32 0, i32 %notmask.i
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa.0126, i32 0, i32 3
  %12 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fa_type, align 1
  %conv16 = zext i8 %13 to i32
  %type.off.i = add nsw i32 %conv16, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 2
  %spec.select18.i = select i1 %switch.i, i32 512, i32 0
  %tobool.not.i121 = icmp eq ptr %9, null
  br i1 %tobool.not.i121, label %for.body.fib_flag_trans.exit_crit_edge, label %if.then2.i

for.body.fib_flag_trans.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_flag_trans.exit

if.then2.i:                                       ; preds = %for.body
  %nh.i.i = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !337

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %15, i32 noundef 0) #12
  br label %fib_info_nhc.exit.i

if.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.fib_info, ptr %9, i32 0, i32 20, i32 0
  br label %fib_info_nhc.exit.i

fib_info_nhc.exit.i:                              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nhc_gw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  %or.i = or i32 %spec.select18.i, 2
  %spec.select.i = select i1 %tobool3.not.i, i32 %spec.select18.i, i32 %or.i
  br label %fib_flag_trans.exit

fib_flag_trans.exit:                              ; preds = %fib_info_nhc.exit.i, %for.body.fib_flag_trans.exit_crit_edge
  %flags.2.i = phi i32 [ %spec.select.i, %fib_info_nhc.exit.i ], [ %spec.select18.i, %for.body.fib_flag_trans.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp7.i = icmp eq i32 %retval.0.i, -1
  %or9.i = or i32 %flags.2.i, 4
  %spec.select17.i = select i1 %cmp7.i, i32 %or9.i, i32 %flags.2.i
  %or11.i = or i32 %spec.select17.i, 1
  %18 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fa_type, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %19, label %if.end27 [
    i8 3, label %fib_flag_trans.exit.cleanup_crit_edge
    i8 5, label %fib_flag_trans.exit.cleanup_crit_edge127
  ]

fib_flag_trans.exit.cleanup_crit_edge127:         ; preds = %fib_flag_trans.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fib_flag_trans.exit.cleanup_crit_edge:            ; preds = %fib_flag_trans.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %fib_flag_trans.exit
  %tb_id = getelementptr inbounds %struct.fib_alias, ptr %fa.0126, i32 0, i32 6
  %21 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tb_id, align 4
  %23 = ptrtoint ptr %tb_id28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tb_id28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp29.not = icmp eq i32 %22, %24
  br i1 %cmp29.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i, align 4
  %add.i = add i32 %26, 127
  %27 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %pad_until.i, align 8
  br i1 %tobool.not.i121, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end32
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 18
  %28 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nh.i, align 4
  %tobool.not.i122 = icmp eq ptr %29, null
  br i1 %tobool.not.i122, label %if.end.i, label %if.then.i, !prof !337

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %29, i32 noundef 0) #12
  br label %fib_info_nhc.exit

if.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.fib_info, ptr %9, i32 0, i32 20, i32 0
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i123 = phi ptr [ %call.i, %if.then.i ], [ %arrayidx.i, %if.end.i ]
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i123, i32 0, i32 5
  %30 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nhc_gw_family, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp37 = icmp eq i8 %31, 2
  br i1 %cmp37, label %if.then39, label %fib_info_nhc.exit.if.end40_crit_edge

fib_info_nhc.exit.if.end40_crit_edge:             ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i123, i32 0, i32 8
  %32 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nhc_gw, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %fib_info_nhc.exit.if.end40_crit_edge
  %gw.0 = phi i32 [ %33, %if.then39 ], [ 0, %fib_info_nhc.exit.if.end40_crit_edge ]
  %34 = ptrtoint ptr %retval.0.i123 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retval.0.i123, align 4
  %tobool41.not = icmp eq ptr %35, null
  %spec.select119 = select i1 %tobool41.not, ptr @.str.111, ptr %35
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 13
  %36 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fib_priority, align 4
  %fib_metrics = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 14
  %38 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fib_metrics, align 4
  %arrayidx = getelementptr [17 x i32], ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool47.not = icmp eq i32 %41, 0
  %add = add i32 %41, 40
  %cond54 = select i1 %tobool47.not, i32 0, i32 %add
  %arrayidx57 = getelementptr [17 x i32], ptr %39, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx57, align 4
  %arrayidx60 = getelementptr [17 x i32], ptr %39, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx60, align 4
  %shr = lshr i32 %45, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.110, ptr noundef nonnull %spec.select119, i32 noundef %5, i32 noundef %gw.0, i32 noundef %or11.i, i32 noundef 0, i32 noundef 0, i32 noundef %37, i32 noundef %retval.0.i, i32 noundef %cond54, i32 noundef %43, i32 noundef %shr) #12
  br label %if.end61

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.112, i32 noundef %5, i32 noundef 0, i32 noundef %or11.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %retval.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.end40
  tail call void @seq_pad(ptr noundef %seq, i8 noundef zeroext 10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end27.cleanup_crit_edge, %fib_flag_trans.exit.cleanup_crit_edge, %fib_flag_trans.exit.cleanup_crit_edge127
  %46 = ptrtoint ptr %fa.0126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %fa.0 = load volatile ptr, ptr %fa.0126, align 4
  %tobool14.not = icmp eq ptr %fa.0, null
  br i1 %tobool14.not, label %cleanup.cleanup79_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.cleanup79_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

cleanup79:                                        ; preds = %cleanup.cleanup79_crit_edge, %do.end.cleanup79_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !20, !22, !24, !26, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !68, !69, !71, !73, !75, !77, !79, !80, !81, !83, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320}
!llvm.named.register.sp = !{!322}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @sysctl_fib_sync_mem, !1, !"sysctl_fib_sync_mem", i1 false, i1 false}
!1 = !{!"../net/ipv4/fib_trie.c", i32 180, i32 14}
!2 = !{ptr @sysctl_fib_sync_mem_min, !3, !"sysctl_fib_sync_mem_min", i1 false, i1 false}
!3 = !{!"../net/ipv4/fib_trie.c", i32 181, i32 14}
!4 = !{ptr @sysctl_fib_sync_mem_max, !5, !"sysctl_fib_sync_mem_max", i1 false, i1 false}
!5 = !{!"../net/ipv4/fib_trie.c", i32 182, i32 14}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv4/fib_trie.c", i32 1080, i32 3}
!8 = !{ptr @__ksymtab_fib_alias_hw_flags_set, !9, !"__ksymtab_fib_alias_hw_flags_set", i1 false, i1 false}
!9 = !{!"../net/ipv4/fib_trie.c", i32 1093, i32 1}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/fib_trie.c", i32 1226, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fib_table_insert.__UNIQUE_ID_ddebug694, !11, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../net/ipv4/fib_trie.c", i32 1375, i32 6}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/ipv4/fib_trie.c", i32 1452, i32 6}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/ipv4/fib_trie.c", i32 1495, i32 7}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/ipv4/fib_trie.c", i32 1521, i32 15}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/ipv4/fib_trie.c", i32 1548, i32 10}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/ipv4/fib_trie.c", i32 1565, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__ksymtab_fib_table_lookup, !30, !"__ksymtab_fib_table_lookup", i1 false, i1 false}
!30 = !{!"../net/ipv4/fib_trie.c", i32 1638, i32 1}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/fib_trie.c", i32 1726, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fib_table_delete.__UNIQUE_ID_ddebug707, !32, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/ipv4/fib_trie.c", i32 1978, i32 7}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/ipv4/fib_trie.c", i32 2048, i32 7}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv4/fib_trie.c", i32 2095, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fib_table_flush.__UNIQUE_ID_ddebug714, !41, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/ipv4/fib_trie.c", i32 2156, i32 3}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/ipv4/fib_trie.c", i32 2226, i32 3}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv4/fib_trie.c", i32 2385, i32 36}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/fib_trie.c", i32 2389, i32 37}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv4/fib_trie.c", i32 3025, i32 30}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/fib_trie.c", i32 3029, i32 7}
!56 = !{ptr @fn_alias_kmem, !57, !"fn_alias_kmem", i1 false, i1 false}
!57 = !{!"../net/ipv4/fib_trie.c", i32 184, i32 27}
!58 = !{ptr @trie_leaf_kmem, !59, !"trie_leaf_kmem", i1 false, i1 false}
!59 = !{!"../net/ipv4/fib_trie.c", i32 185, i32 27}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/ipv4/fib_trie.c", i32 1028, i32 2}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @fib_valid_key_len.__msg, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../net/ipv4/fib_trie.c", i32 1190, i32 3}
!71 = !{ptr @fib_valid_key_len.__msg.22, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../net/ipv4/fib_trie.c", i32 1195, i32 3}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/ipv4/fib_trie.c", i32 942, i32 7}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/ipv4/fib_trie.c", i32 1111, i32 6}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/ipv4/fib_trie.c", i32 388, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tnode_new.__UNIQUE_ID_ddebug663, !78, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/ipv4/fib_trie.c", i32 419, i32 27}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/ipv4/fib_trie.c", i32 929, i32 8}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../include/linux/inetdevice.h", i32 258, i32 11}
!87 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/trace/events/fib.h", i32 13, i32 1}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!94 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/net/nexthop.h", i32 343, i32 12}
!97 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/net/nexthop.h", i32 350, i32 8}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/net/nexthop.h", i32 398, i32 26}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/net/nexthop.h", i32 404, i32 10}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../include/net/nexthop.h", i32 411, i32 9}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/net/nexthop.h", i32 295, i32 12}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/net/nexthop.h", i32 376, i32 12}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/net/nexthop.h", i32 384, i32 8}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/ipv4/fib_trie.c", i32 920, i32 8}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/ipv4/fib_trie.c", i32 1787, i32 7}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../net/ipv4/fib_trie.c", i32 1802, i32 9}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../net/ipv4/fib_trie.c", i32 1808, i32 7}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../net/ipv4/fib_trie.c", i32 1848, i32 9}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../net/ipv4/fib_trie.c", i32 1860, i32 7}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../net/ipv4/fib_trie.c", i32 725, i32 26}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/ipv4/fib_trie.c", i32 851, i32 26}
!128 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/ipv4/fib_trie.c", i32 855, i32 2}
!130 = !{ptr @.str.37, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @resize.__UNIQUE_ID_ddebug678, !129, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../net/ipv4/fib_trie.c", i32 862, i32 2}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../net/ipv4/fib_trie.c", i32 877, i32 8}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../net/ipv4/fib_trie.c", i32 881, i32 7}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../net/ipv4/fib_trie.c", i32 900, i32 8}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/ipv4/fib_trie.c", i32 908, i32 9}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ipv4/fib_trie.c", i32 542, i32 2}
!144 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @inflate.__UNIQUE_ID_ddebug671, !143, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../net/ipv4/fib_trie.c", i32 557, i32 30}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../net/ipv4/fib_trie.c", i32 576, i32 29}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../net/ipv4/fib_trie.c", i32 577, i32 25}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../net/ipv4/fib_trie.c", i32 607, i32 26}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../net/ipv4/fib_trie.c", i32 608, i32 24}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../net/ipv4/fib_trie.c", i32 609, i32 26}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/ipv4/fib_trie.c", i32 610, i32 24}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../net/ipv4/fib_trie.c", i32 510, i32 26}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../net/ipv4/fib_trie.c", i32 525, i32 30}
!164 = distinct !{null, !165, !"__warned", i1 false, i1 false}
!165 = !{!"../net/ipv4/fib_trie.c", i32 451, i32 30}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../net/ipv4/fib_trie.c", i32 460, i32 7}
!168 = !{ptr @tnode_free_size, !169, !"tnode_free_size", i1 false, i1 false}
!169 = !{!"../net/ipv4/fib_trie.c", i32 173, i32 21}
!170 = !{ptr @.str.53, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ipv4/fib_trie.c", i32 637, i32 2}
!172 = !{ptr @.str.54, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @halve.__UNIQUE_ID_ddebug674, !171, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!174 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!175 = !{!"../net/ipv4/fib_trie.c", i32 652, i32 30}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../net/ipv4/fib_trie.c", i32 653, i32 30}
!178 = distinct !{null, !179, !"__warned", i1 false, i1 false}
!179 = !{!"../net/ipv4/fib_trie.c", i32 694, i32 7}
!180 = distinct !{null, !181, !"__warned", i1 false, i1 false}
!181 = !{!"../net/ipv4/fib_trie.c", i32 697, i32 7}
!182 = distinct !{null, !183, !"__warned", i1 false, i1 false}
!183 = !{!"../net/ipv4/fib_trie.c", i32 2117, i32 9}
!184 = distinct !{null, !185, !"__warned", i1 false, i1 false}
!185 = !{!"../net/ipv4/fib_trie.c", i32 2123, i32 7}
!186 = distinct !{null, !187, !"__warned", i1 false, i1 false}
!187 = !{!"../net/ipv4/fib_trie.c", i32 2170, i32 2}
!188 = distinct !{null, !189, !"__warned", i1 false, i1 false}
!189 = !{!"../net/ipv4/fib_trie.c", i32 2270, i32 2}
!190 = !{ptr @fib_trie_seq_ops, !191, !"fib_trie_seq_ops", i1 false, i1 false}
!191 = !{!"../net/ipv4/fib_trie.c", i32 2823, i32 36}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../net/ipv4/fib_trie.c", i32 2668, i32 3}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../net/ipv4/fib_trie.c", i32 2490, i32 6}
!196 = !{ptr @.str.58, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/ipv4/fib_trie.c", i32 2444, i32 2}
!198 = !{ptr @.str.59, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @fib_trie_get_next.__UNIQUE_ID_ddebug734, !197, !"__UNIQUE_ID_ddebug734", i1 false, i1 false}
!200 = distinct !{null, !201, !"__warned", i1 false, i1 false}
!201 = !{!"../net/ipv4/fib_trie.c", i32 2449, i32 27}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../net/ipv4/fib_trie.c", i32 2469, i32 8}
!204 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!205 = !{!"../net/ipv4/fib_trie.c", i32 2708, i32 20}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../net/ipv4/fib_trie.c", i32 2718, i32 3}
!208 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!209 = !{!"../net/ipv4/fib_trie.c", i32 2786, i32 6}
!210 = !{ptr @.str.62, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/ipv4/fib_trie.c", i32 2793, i32 19}
!212 = !{ptr @.str.63, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/ipv4/fib_trie.c", i32 2802, i32 19}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../net/ipv4/fib_trie.c", i32 2804, i32 3}
!216 = !{ptr @.str.65, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ipv4/fib_trie.c", i32 2808, i32 20}
!218 = !{ptr @.str.66, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/ipv4/fib_trie.c", i32 2815, i32 21}
!220 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/ipv4/fib_trie.c", i32 2612, i32 17}
!222 = !{ptr @.str.68, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ipv4/fib_trie.c", i32 2614, i32 17}
!224 = !{ptr @.str.69, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/ipv4/fib_trie.c", i32 2616, i32 19}
!226 = !{ptr @.str.70, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/ipv4/fib_trie.c", i32 2740, i32 17}
!228 = !{ptr @.str.71, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/ipv4/fib_trie.c", i32 2746, i32 33}
!230 = !{ptr @.str.72, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/ipv4/fib_trie.c", i32 2747, i32 29}
!232 = !{ptr @.str.73, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/ipv4/fib_trie.c", i32 2748, i32 29}
!234 = !{ptr @.str.74, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/ipv4/fib_trie.c", i32 2749, i32 29}
!236 = !{ptr @.str.75, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/ipv4/fib_trie.c", i32 2750, i32 32}
!238 = !{ptr @.str.76, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/ipv4/fib_trie.c", i32 2752, i32 22}
!240 = !{ptr @.str.77, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/ipv4/fib_trie.c", i32 2776, i32 21}
!242 = !{ptr @.str.78, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/ipv4/fib_trie.c", i32 2758, i32 17}
!244 = !{ptr @.str.79, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/ipv4/fib_trie.c", i32 2759, i32 18}
!246 = !{ptr @.str.80, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/ipv4/fib_trie.c", i32 2760, i32 16}
!248 = !{ptr @.str.81, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/ipv4/fib_trie.c", i32 2761, i32 20}
!250 = !{ptr @.str.82, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/ipv4/fib_trie.c", i32 2762, i32 18}
!252 = !{ptr @.str.83, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../net/ipv4/fib_trie.c", i32 2763, i32 20}
!254 = !{ptr @.str.84, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/ipv4/fib_trie.c", i32 2764, i32 20}
!256 = !{ptr @.str.85, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../net/ipv4/fib_trie.c", i32 2765, i32 22}
!258 = !{ptr @.str.86, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/ipv4/fib_trie.c", i32 2766, i32 19}
!260 = !{ptr @.str.87, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../net/ipv4/fib_trie.c", i32 2767, i32 16}
!262 = !{ptr @.str.88, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../net/ipv4/fib_trie.c", i32 2768, i32 14}
!264 = !{ptr @.str.89, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/ipv4/fib_trie.c", i32 2769, i32 19}
!266 = !{ptr @rtn_type_names, !267, !"rtn_type_names", i1 false, i1 false}
!267 = !{!"../net/ipv4/fib_trie.c", i32 2757, i32 26}
!268 = !{ptr @.str.90, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/ipv4/fib_trie.c", i32 2626, i32 6}
!270 = distinct !{null, !271, !"__warned", i1 false, i1 false}
!271 = !{!"../net/ipv4/fib_trie.c", i32 2635, i32 3}
!272 = distinct !{null, !273, !"__warned", i1 false, i1 false}
!273 = !{!"../net/ipv4/fib_trie.c", i32 2524, i32 4}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../net/ipv4/fib_trie.c", i32 2548, i32 18}
!276 = !{ptr @.str.92, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/ipv4/fib_trie.c", i32 2550, i32 18}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/ipv4/fib_trie.c", i32 2552, i32 18}
!280 = !{ptr @.str.94, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/ipv4/fib_trie.c", i32 2555, i32 18}
!282 = !{ptr @.str.95, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../net/ipv4/fib_trie.c", i32 2558, i32 18}
!284 = !{ptr @.str.96, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/ipv4/fib_trie.c", i32 2568, i32 20}
!286 = !{ptr @.str.97, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../net/ipv4/fib_trie.c", i32 2572, i32 18}
!288 = !{ptr @.str.98, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/ipv4/fib_trie.c", i32 2575, i32 18}
!290 = !{ptr @.str.99, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/ipv4/fib_trie.c", i32 2576, i32 18}
!292 = !{ptr @.str.100, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/ipv4/fib_trie.c", i32 2598, i32 18}
!294 = !{ptr @.str.101, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/ipv4/fib_trie.c", i32 2599, i32 18}
!296 = !{ptr @.str.102, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/ipv4/fib_trie.c", i32 2600, i32 18}
!298 = !{ptr @.str.103, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../net/ipv4/fib_trie.c", i32 2601, i32 18}
!300 = !{ptr @.str.104, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../net/ipv4/fib_trie.c", i32 2603, i32 18}
!302 = !{ptr @.str.105, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/ipv4/fib_trie.c", i32 2604, i32 18}
!304 = !{ptr @.str.106, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../net/ipv4/fib_trie.c", i32 2605, i32 18}
!306 = !{ptr @.str.107, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!308 = !{ptr @fib_route_seq_ops, !309, !"fib_route_seq_ops", i1 false, i1 false}
!309 = !{!"../net/ipv4/fib_trie.c", i32 3012, i32 36}
!310 = !{ptr @.str.108, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../net/ipv4/fib_trie.c", i32 2959, i32 19}
!312 = !{ptr @.str.109, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/ipv4/fib_trie.c", i32 2959, i32 31}
!314 = distinct !{null, !315, !"__warned", i1 false, i1 false}
!315 = !{!"../net/ipv4/fib_trie.c", i32 2967, i32 2}
!316 = !{ptr @.str.110, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../net/ipv4/fib_trie.c", i32 2989, i32 8}
!318 = !{ptr @.str.111, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../net/ipv4/fib_trie.c", i32 2991, i32 44}
!320 = !{ptr @.str.112, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../net/ipv4/fib_trie.c", i32 3001, i32 8}
!322 = !{!"sp"}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{i64 2149333064}
!333 = !{!"branch_weights", i32 1, i32 2000}
!334 = !{i64 2149333330}
!335 = !{i64 2148329190, i64 2148329195, i64 2148329208, i64 2148329252, i64 2148329286, i64 2148329307}
!336 = !{i64 2149398595}
!337 = !{!"branch_weights", i32 2000, i32 1}
!338 = !{i64 2149462522}
!339 = !{i64 2149477493}
!340 = !{i64 2149434675}
!341 = !{i64 2158986324}
!342 = !{i64 910055, i64 910116}
!343 = !{i64 912787}
!344 = !{i64 913072}
!345 = !{!"auto-init"}
!346 = !{i64 2148517327, i64 2148517359, i64 2148517388, i64 2148517422, i64 2148517453, i64 2148517476}
!347 = !{i64 2158767166}
!348 = !{i64 2158767401}
!349 = !{i64 2149341623}
!350 = !{i64 2149342659}
!351 = !{i8 0, i8 2}
!352 = !{i64 2159026266, i64 2159026750, i64 2159026303, i64 2159026359, i64 2159026393, i64 2159026417, i64 2159026458, i64 2159026479, i64 2159026507, i64 2159026541}
!353 = !{i64 2158957483}
!354 = !{i32 0, i32 33}
!355 = !{i64 2158970544, i64 2158971028, i64 2158970581, i64 2158970637, i64 2158970671, i64 2158970695, i64 2158970736, i64 2158970757, i64 2158970785, i64 2158970819}
!356 = !{i64 2158976874}
!357 = !{i64 2158965303, i64 2158965787, i64 2158965340, i64 2158965396, i64 2158965430, i64 2158965454, i64 2158965495, i64 2158965516, i64 2158965544, i64 2158965578}
