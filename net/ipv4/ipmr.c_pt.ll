; ModuleID = '/llk/IR_all_yes/net/ipv4/ipmr.c_pt.bc'
source_filename = "../net/ipv4/ipmr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ipmr_rule_default\22, \22a\22\09"
module asm "\09.weak\09__crc_ipmr_rule_default\09\09\09\09"
module asm "\09.long\09__crc_ipmr_rule_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipmr_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22ipmr_rule_default\22\09\09\09\09\09"
module asm "__kstrtabns_ipmr_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mr_table_ops = type { ptr, ptr }
%struct.mfc_cache_cmp_arg = type { i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.fib_notifier_ops = type { i32, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.vifctl = type { i16, i8, i8, i32, %union.anon.158, %struct.in_addr }
%union.anon.158 = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.mfcctl = type { %struct.in_addr, %struct.in_addr, i16, [32 x i8], i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.136, [0 x i32], %union.anon.137, i16, i16, %union.anon.138, %struct.refcount_struct, [0 x i32], %union.anon.139 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { %struct.hlist_node }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.140, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.141, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.142, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.140 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.anon.18 = type { i16, i16 }
%struct.raw_sock = type { %struct.inet_sock, %struct.icmp_filter, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.147 }
%union.anon.147 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmp_filter = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.149, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.149 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.mr_table = type { %struct.list_head, %struct.possible_net_t, %struct.mr_table_ops, i32, ptr, %struct.timer_list, %struct.list_head, [32 x %struct.vif_device], %struct.rhltable, %struct.list_head, i32, %struct.atomic_t, i8, i8, i8, i32 }
%struct.vif_device = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i16, i32, %struct.netdev_phys_item_id, i32, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vif_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i16, i16, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.117 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.mfc_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.mr_mfc = type { %struct.rhlist_head, i16, i32, %union.anon.162, %struct.list_head, %struct.callback_head, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.refcount_struct }
%struct.mfc_cache = type { %struct.mr_mfc, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.118, %union.anon.119, [48 x i8], %union.anon.120, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.122, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.118 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32, ptr }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.124, i32, i32, i32, i16, i16, %union.anon.126, i32, %union.anon.127, %union.anon.128, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.124 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sioc_sg_req = type { %struct.in_addr, %struct.in_addr, i32, i32, i32 }
%struct.sioc_vif_req = type { i16, i32, i32, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.112, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.112 = type { %struct.in6_addr }
%struct.ipmr_result = type { ptr }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.igmphdr = type { i8, i8, i16, i32 }
%struct.fib_dump_filter = type { i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlattr = type { i16, i16 }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.igmpmsg = type { i32, i32, i8, i8, i8, i8, %struct.in_addr, %struct.in_addr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.anon.104 = type { i16, i16 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mr_vif_iter = type { %struct.seq_net_private, ptr, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.mr_mfc_iter = type { %struct.seq_net_private, ptr, ptr, ptr }
%struct.pimreghdr = type { i8, i8, i16, i32 }

@__kstrtab_ipmr_rule_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipmr_rule_default = external dso_local constant [0 x i8], align 1
@__ksymtab_ipmr_rule_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipmr_rule_default to i32), ptr @__kstrtab_ipmr_rule_default, ptr @__kstrtabns_ipmr_rule_default }, section "___ksymtab+ipmr_rule_default", align 4
@ip_mroute_setsockopt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/ipmr.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ip_mroute_setsockopt.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mroute_setsockopt.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_mroute_setsockopt.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrt_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@ip_mr_input.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip_mrt_cache\00", [19 x i8] zeroinitializer }, align 32
@mrt_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@ipmr_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipmr_net_init, ptr null, ptr @ipmr_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ip_mr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @ipmr_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pim_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @pim_rcv, ptr null, i8 0 }, [44 x i8] zeroinitializer }, align 32
@ip_mr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 3121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: can't add PIM protocol\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip_mr_init\00", [21 x i8] zeroinitializer }, align 32
@ip_mr_init._entry_ptr = internal global ptr @ip_mr_init._entry, section ".printk_index", align 4
@ipmr_get_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mrtsock_destruct.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mrtsock_destruct.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pimreg\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pimreg%u\00", [23 x i8] zeroinitializer }, align 32
@reg_vif_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @reg_vif_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_vif_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipmr_cache_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipmr_cache_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014mroute: pending queue full, dropping entries\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipmr_cache_report\00", [46 x i8] zeroinitializer }, align 32
@ipmr_cache_report._entry_ptr = internal global ptr @ipmr_cache_report._entry, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ipmr_init_vif_indev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tunl0\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvmrp%d\00", [24 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@mr_call_vif_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mroute_base.h\00", [36 x i8] zeroinitializer }, align 32
@ipmr_rht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 3, i16 8, i16 100, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr @ipmr_hash_cmp }, [36 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mr_call_mfc_notifiers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipmr_mfc_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ipmr: rhtable insert error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipmr_mfc_add\00", [19 x i8] zeroinitializer }, align 32
@ipmr_mfc_add._entry_ptr = internal global ptr @ipmr_mfc_add._entry, section ".printk_index", align 4
@mfc_unres_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.31 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mfc_unres_lock\00", [17 x i8] zeroinitializer }, align 32
@ipmr_mr_table_ops = internal global { %struct.mr_table_ops, [24 x i8] } { %struct.mr_table_ops { ptr @ipmr_rht_params, ptr @ipmr_mr_table_ops_cmparg_any }, [24 x i8] zeroinitializer }, align 32
@ipmr_mr_table_ops_cmparg_any = internal global { %struct.mfc_cache_cmp_arg, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mrt_lock\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip_mr_vif\00", [22 x i8] zeroinitializer }, align 32
@ipmr_vif_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipmr_vif_seq_start, ptr @ipmr_vif_seq_stop, ptr @mr_vif_seq_next, ptr @ipmr_vif_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip_mr_cache\00", [20 x i8] zeroinitializer }, align 32
@ipmr_mfc_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ipmr_mfc_seq_start, ptr @mr_mfc_seq_stop, ptr @mr_mfc_seq_next, ptr @ipmr_mfc_seq_show }, [16 x i8] zeroinitializer }, align 32
@ipmr_notifier_ops_template = internal constant { %struct.fib_notifier_ops, [32 x i8] } { %struct.fib_notifier_ops { i32 128, %struct.list_head zeroinitializer, ptr @ipmr_seq_read, ptr @ipmr_dump, ptr null, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ipmr_seq_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipmr_rules_ops_template = internal constant { %struct.fib_rules_ops, [32 x i8] } { %struct.fib_rules_ops { i32 128, %struct.list_head zeroinitializer, i32 128, i32 4, i32 0, i32 0, i32 0, ptr @ipmr_rule_action, ptr null, ptr @ipmr_rule_match, ptr @ipmr_rule_configure, ptr null, ptr @ipmr_rule_compare, ptr @ipmr_rule_fill, ptr null, ptr null, i32 8, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Interface      BytesIn  PktsIn  BytesOut PktsOut Flags Local    Remote\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%2td %-10s %8ld %7ld  %8ld %7ld %05X %08X %08X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Group    Origin   Iif     Pkts    Bytes    Wrong Oifs\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%08X %08X %-3hd\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" %8lu %8lu %8lu\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %2d:%-3d\00", [22 x i8] zeroinitializer }, align 32
@ipmr_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipmr_rtm_valid_getroute_req.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ipv4: Invalid header for multicast route get request\00", [43 x i8] zeroinitializer }, align 32
@rtm_ipv4_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@ipmr_rtm_valid_getroute_req.__msg.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ipv4: Invalid values in header for multicast route get request\00", [33 x i8] zeroinitializer }, align 32
@ipmr_rtm_valid_getroute_req.__msg.59 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ipv4: rtm_src_len and rtm_dst_len must be 32 for IPv4\00", [42 x i8] zeroinitializer }, align 32
@ipmr_rtm_valid_getroute_req.__msg.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ipv4: Unsupported attribute in multicast route get request\00", [37 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ipmr_rtm_dumproute.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ipv4: MR table does not exist\00", [34 x i8] zeroinitializer }, align 32
@rtm_ipmr_policy = internal constant { <{ [16 x %struct.nla_policy], [15 x %struct.nla_policy] }>, [40 x i8] } { <{ [16 x %struct.nla_policy], [15 x %struct.nla_policy] }> <{ [16 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [15 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@ipmr_rtm_dumplink.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipmr_valid_dumplink.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipv4: Invalid header for ipmr link dump\00", [56 x i8] zeroinitializer }, align 32
@ipmr_valid_dumplink.__msg.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid data after header in ipmr link dump\00", [52 x i8] zeroinitializer }, align 32
@ipmr_valid_dumplink.__msg.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid values in header for ipmr link dump request\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 201, i64 202, i64 203, i64 204, i64 205, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 205, i64 211]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 206, i64 207, i64 208]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 35296, i64 35297]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 15]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 17]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 7, i64 9, i64 15]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1384, i32 7 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"mrt_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2114, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3107, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"ipmr_net_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3098, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"ip_mr_notifier\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1738, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"pim_protocol\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3006, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3121, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 138, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 541, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 543, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"reg_vif_netdev_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 520, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1083, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 231, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1011, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 991, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 426, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 444, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 453, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 249, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant [31 x i8] c"../include/linux/mroute_base.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 89, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"ipmr_rht_params\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 367, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1076, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 1233, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"mfc_unres_lock\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 85, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [18 x i8] c"ipmr_mr_table_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 389, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant [29 x i8] c"ipmr_mr_table_ops_cmparg_any\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 384, i32 33 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 230, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 214, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 174, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 80, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 695, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 723, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1984, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 271, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 229, i32 15 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3067, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"ipmr_vif_seq_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2937, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3070, i32 7 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"ipmr_mfc_seq_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2997, i32 36 }
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"ipmr_notifier_ops_template\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 3025, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"ipmr_rules_ops_template\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 220, i32 51 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2921, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2925, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2928, i32 7 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2962, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2968, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2974, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2983, i32 9 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2467, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2480, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2491, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2505, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2590, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [16 x i8] c"rtm_ipmr_policy\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2602, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2787, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2792, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.279 = private constant [19 x i8] c"../net/ipv4/ipmr.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 2799, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__ksymtab_ipmr_rule_default, ptr @ip_mr_init._entry, ptr @ip_mr_init._entry_ptr, ptr @ipmr_cache_report._entry, ptr @ipmr_cache_report._entry_ptr, ptr @ipmr_mfc_add._entry, ptr @ipmr_mfc_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @mrt_lock, ptr @.str.5, ptr @.str.6, ptr @ipmr_net_ops, ptr @ip_mr_notifier, ptr @pim_protocol, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @reg_vif_netdev_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ipmr_rht_params, ptr @.str.23, ptr @.str.29, ptr @.str.30, ptr @mfc_unres_lock, ptr @.str.33, ptr @ipmr_mr_table_ops, ptr @ipmr_mr_table_ops_cmparg_any, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @skb_queue_head_init.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.49, ptr @ipmr_vif_seq_ops, ptr @.str.50, ptr @ipmr_mfc_seq_ops, ptr @ipmr_notifier_ops_template, ptr @ipmr_rules_ops_template, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ipmr_rtm_valid_getroute_req.__msg, ptr @ipmr_rtm_valid_getroute_req.__msg.58, ptr @ipmr_rtm_valid_getroute_req.__msg.59, ptr @ipmr_rtm_valid_getroute_req.__msg.60, ptr @ipmr_rtm_dumproute.__msg, ptr @rtm_ipmr_policy, ptr @ipmr_valid_dumplink.__msg, ptr @ipmr_valid_dumplink.__msg.62, ptr @ipmr_valid_dumplink.__msg.63], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_mr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pim_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_mr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_vif_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_cache_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_mfc_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_unres_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_mr_table_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_mr_table_ops_cmparg_any to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_vif_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_mfc_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_notifier_ops_template to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rules_ops_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rtm_valid_getroute_req.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rtm_valid_getroute_req.__msg.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rtm_valid_getroute_req.__msg.59 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rtm_valid_getroute_req.__msg.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_rtm_dumproute.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtm_ipmr_policy to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_valid_dumplink.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_valid_dumplink.__msg.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmr_valid_dumplink.__msg.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipmr_rule_default(ptr noundef %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @fib_rule_matchall(ptr noundef %rule) #17
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %1)
  %cmp = icmp eq i32 %1, 253
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_rule_matchall(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mroute_setsockopt(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %vif = alloca %struct.vifctl, align 4
  %mfc = alloca %struct.mfcctl, align 4
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vif) #17
  %3 = call ptr @memset(ptr %vif, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mfc) #17
  %4 = call ptr @memset(ptr %mfc, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #17
  %5 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %uval, align 4, !annotation !208
  tail call void @rtnl_lock() #17
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %6 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp.not = icmp eq i16 %7, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

lor.lhs.false:                                    ; preds = %entry
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp5.not = icmp eq i16 %10, 2
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end:                                           ; preds = %lor.lhs.false
  %ipmr_table = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 2
  %11 = ptrtoint ptr %ipmr_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ipmr_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %. = select i1 %tobool.not, i32 253, i32 %12
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  %13 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.out_unlock_crit_edge, label %for.body.i

for.cond.i.out_unlock_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %17, %.
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool9.not, label %ipmr_get_table.exit.out_unlock_crit_edge, label %if.end11

ipmr_get_table.exit.out_unlock_crit_edge:         ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end11:                                         ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %optname)
  %cond = icmp eq i32 %optname, 200
  br i1 %cond, label %sw.bb, label %if.then14

if.then14:                                        ; preds = %if.end11
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %mroute_sk, align 4
  %cmp16.not = icmp eq ptr %19, %sk
  br i1 %cmp16.not, label %if.then14.if.end21_crit_edge, label %land.lhs.true

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then14
  %user_ns = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns, align 4
  %call18 = tail call zeroext i1 @ns_capable(ptr noundef %21, i32 noundef 12) #17
  br i1 %call18, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.out_unlock_crit_edge

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.then14.if.end21_crit_edge
  %22 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %optname, label %if.end21.out_unlock_crit_edge [
    i32 209, label %sw.bb230
    i32 201, label %sw.bb89
    i32 202, label %if.end21.sw.bb102_crit_edge
    i32 203, label %if.end21.sw.bb102_crit_edge372
    i32 204, label %if.end21.sw.bb140_crit_edge
    i32 205, label %if.end21.sw.bb140_crit_edge373
    i32 210, label %if.end21.sw.bb141_crit_edge
    i32 211, label %if.end21.sw.bb141_crit_edge374
    i32 212, label %sw.bb180
    i32 207, label %sw.bb189
    i32 208, label %sw.bb199
  ]

if.end21.sw.bb141_crit_edge374:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb141

if.end21.sw.bb141_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb141

if.end21.sw.bb140_crit_edge373:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb140

if.end21.sw.bb140_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb140

if.end21.sw.bb102_crit_edge372:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb102

if.end21.sw.bb102_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb102

if.end21.out_unlock_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp22.not = icmp eq i32 %optlen, 4
  br i1 %cmp22.not, label %do.body26, label %sw.bb.out_unlock_crit_edge

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

do.body26:                                        ; preds = %sw.bb
  %call27 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call27, label %do.body26.do.end36_crit_edge, label %land.lhs.true28

do.body26.do.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.body26
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b362 = load i1, ptr @ip_mroute_setsockopt.__warned, align 1
  br i1 %.b362, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ip_mroute_setsockopt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1384, ptr noundef nonnull @.str.1) #17
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.body26.do.end36_crit_edge
  %mroute_sk38 = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 4
  %23 = ptrtoint ptr %mroute_sk38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mroute_sk38, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %if.end41, label %do.end36.out_unlock_crit_edge

do.end36.out_unlock_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end41:                                         ; preds = %do.end36
  %call42 = tail call i32 @ip_ra_control(ptr noundef %sk, i8 noundef zeroext 1, ptr noundef nonnull @mrtsock_destruct) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %do.body46, label %if.end41.out_unlock_crit_edge

if.end41.out_unlock_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !209
  %25 = ptrtoint ptr %mroute_sk38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %sk, ptr %mroute_sk38, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 6
  %26 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %arrayidx, align 4
  %30 = load ptr, ptr %devconf_all, align 4
  tail call void @inet_netconf_notify_devconf(ptr noundef %1, i32 noundef 80, i32 noundef 4, i32 noundef -1, ptr noundef %30) #17
  br label %out_unlock

sw.bb89:                                          ; preds = %if.end21
  %31 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mroute_sk, align 4
  %cmp96.not = icmp eq ptr %32, %sk
  br i1 %cmp96.not, label %if.else99, label %sw.bb89.out_unlock_crit_edge

sw.bb89.out_unlock_crit_edge:                     ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.else99:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtnl_unlock() #17
  %call100 = tail call i32 @ip_ra_control(ptr noundef %sk, i8 noundef zeroext 0, ptr noundef null) #17
  br label %out

sw.bb102:                                         ; preds = %if.end21.sw.bb102_crit_edge, %if.end21.sw.bb102_crit_edge372
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %optlen)
  %cmp103.not = icmp eq i32 %optlen, 16
  br i1 %cmp103.not, label %if.end106, label %sw.bb102.out_unlock_crit_edge

sw.bb102.out_unlock_crit_edge:                    ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end106:                                        ; preds = %sw.bb102
  %call107 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %vif, [2 x i32] %optval.coerce, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.out_unlock_crit_edge

if.end106.out_unlock_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end110:                                        ; preds = %if.end106
  %33 = ptrtoint ptr %vif to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vif, align 4
  %conv111 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %34)
  %cmp112 = icmp ugt i16 %34, 31
  br i1 %cmp112, label %if.end110.out_unlock_crit_edge, label %if.end115

if.end110.out_unlock_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end115:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %optname)
  %cmp116 = icmp eq i32 %optname, 202
  br i1 %cmp116, label %if.then118, label %if.else135

if.then118:                                       ; preds = %if.end115
  %call120 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call120, label %if.then118.do.end129_crit_edge, label %land.lhs.true121

if.then118.do.end129_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end129

land.lhs.true121:                                 ; preds = %if.then118
  %call122 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.lhs.true121.do.end129_crit_edge, label %land.lhs.true124

land.lhs.true121.do.end129_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end129

land.lhs.true124:                                 ; preds = %land.lhs.true121
  %.b356361 = load i1, ptr @ip_mroute_setsockopt.__warned.2, align 1
  br i1 %.b356361, label %land.lhs.true124.do.end129_crit_edge, label %if.then126

land.lhs.true124.do.end129_crit_edge:             ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end129

if.then126:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ip_mroute_setsockopt.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1428, ptr noundef nonnull @.str.1) #17
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %land.lhs.true124.do.end129_crit_edge, %land.lhs.true121.do.end129_crit_edge, %if.then118.do.end129_crit_edge
  %35 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mroute_sk, align 4
  %cmp132 = icmp eq ptr %36, %sk
  %conv133 = zext i1 %cmp132 to i32
  %call134 = call fastcc i32 @vif_add(ptr noundef %1, ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %vif, i32 noundef %conv133)
  br label %out_unlock

if.else135:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  %call138 = call fastcc i32 @vif_delete(ptr noundef nonnull %mrt.0.i, i32 noundef %conv111, i32 noundef 0, ptr noundef null)
  br label %out_unlock

sw.bb140:                                         ; preds = %if.end21.sw.bb140_crit_edge, %if.end21.sw.bb140_crit_edge373
  br label %sw.bb141

sw.bb141:                                         ; preds = %sw.bb140, %if.end21.sw.bb141_crit_edge, %if.end21.sw.bb141_crit_edge374
  %cmp150 = phi i1 [ true, %if.end21.sw.bb141_crit_edge ], [ true, %if.end21.sw.bb141_crit_edge374 ], [ false, %sw.bb140 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %optlen)
  %cmp142.not = icmp eq i32 %optlen, 60
  br i1 %cmp142.not, label %if.end145, label %sw.bb141.out_unlock_crit_edge

sw.bb141.out_unlock_crit_edge:                    ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end145:                                        ; preds = %sw.bb141
  %call146 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %mfc, [2 x i32] %optval.coerce, i32 noundef 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end145.out_unlock_crit_edge

if.end145.out_unlock_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end149:                                        ; preds = %if.end145
  br i1 %cmp150, label %if.then152, label %if.end149.if.end154_crit_edge

if.end149.if.end154_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #19
  %mfcc_parent = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 2
  %37 = ptrtoint ptr %mfcc_parent to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mfcc_parent, align 4
  %conv153 = zext i16 %38 to i32
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end149.if.end154_crit_edge
  %parent.1 = phi i32 [ %conv153, %if.then152 ], [ -1, %if.end149.if.end154_crit_edge ]
  %39 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %optname, label %if.else162 [
    i32 205, label %if.end154.if.then160_crit_edge
    i32 211, label %if.end154.if.then160_crit_edge375
  ]

if.end154.if.then160_crit_edge375:                ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then160

if.end154.if.then160_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then160

if.then160:                                       ; preds = %if.end154.if.then160_crit_edge, %if.end154.if.then160_crit_edge375
  %call161 = call fastcc i32 @ipmr_mfc_delete(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfc, i32 noundef %parent.1)
  br label %out_unlock

if.else162:                                       ; preds = %if.end154
  %call164 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call164, label %if.else162.do.end173_crit_edge, label %land.lhs.true165

if.else162.do.end173_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end173

land.lhs.true165:                                 ; preds = %if.else162
  %call166 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %land.lhs.true165.do.end173_crit_edge, label %land.lhs.true168

land.lhs.true165.do.end173_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end173

land.lhs.true168:                                 ; preds = %land.lhs.true165
  %.b357360 = load i1, ptr @ip_mroute_setsockopt.__warned.3, align 1
  br i1 %.b357360, label %land.lhs.true168.do.end173_crit_edge, label %if.then170

land.lhs.true168.do.end173_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end173

if.then170:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ip_mroute_setsockopt.__warned.3, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #17
  br label %do.end173

do.end173:                                        ; preds = %if.then170, %land.lhs.true168.do.end173_crit_edge, %land.lhs.true165.do.end173_crit_edge, %if.else162.do.end173_crit_edge
  %40 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mroute_sk, align 4
  %cmp176 = icmp eq ptr %41, %sk
  %conv177 = zext i1 %cmp176 to i32
  %call178 = call fastcc i32 @ipmr_mfc_add(ptr noundef %1, ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfc, i32 noundef %conv177, i32 noundef %parent.1)
  br label %out_unlock

sw.bb180:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp181.not = icmp eq i32 %optlen, 4
  br i1 %cmp181.not, label %if.end184, label %sw.bb180.out_unlock_crit_edge

sw.bb180.out_unlock_crit_edge:                    ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end184:                                        ; preds = %sw.bb180
  %call185 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %val, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end184.out_unlock_crit_edge

if.end184.out_unlock_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end188:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  call fastcc void @mroute_clean_tables(ptr noundef nonnull %mrt.0.i, i32 noundef %43)
  br label %out_unlock

sw.bb189:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp190.not = icmp eq i32 %optlen, 4
  br i1 %cmp190.not, label %if.end193, label %sw.bb189.out_unlock_crit_edge

sw.bb189.out_unlock_crit_edge:                    ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end193:                                        ; preds = %sw.bb189
  %call194 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %val, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.end193.out_unlock_crit_edge

if.end193.out_unlock_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end197:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool198 = icmp ne i32 %45, 0
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %frombool = zext i1 %tobool198 to i8
  %46 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool, ptr %mroute_do_assert, align 4
  br label %out_unlock

sw.bb199:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp203.not = icmp eq i32 %optlen, 4
  br i1 %cmp203.not, label %if.end206, label %sw.bb199.out_unlock_crit_edge

sw.bb199.out_unlock_crit_edge:                    ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end206:                                        ; preds = %sw.bb199
  %call207 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %val, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end210, label %if.end206.out_unlock_crit_edge

if.end206.out_unlock_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end210:                                        ; preds = %if.end206
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool214 = icmp ne i32 %48, 0
  %lnot.ext = zext i1 %tobool214 to i32
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %lnot.ext, ptr %val, align 4
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 13
  %50 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mroute_do_pim, align 1, !range !210
  %52 = zext i1 %tobool214 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %52)
  %cmp218.not = icmp eq i8 %51, %52
  br i1 %cmp218.not, label %if.end210.out_unlock_crit_edge, label %if.then220

if.end210.out_unlock_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then220:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp211 = icmp eq i32 %48, 4
  %frombool213 = zext i1 %cmp211 to i8
  %53 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %mroute_do_pim, align 1
  %mroute_do_assert225 = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %54 = ptrtoint ptr %mroute_do_assert225 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %52, ptr %mroute_do_assert225, align 4
  %mroute_do_wrvifwhole = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 14
  %55 = ptrtoint ptr %mroute_do_wrvifwhole to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool213, ptr %mroute_do_wrvifwhole, align 2
  br label %out_unlock

sw.bb230:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp231.not = icmp eq i32 %optlen, 4
  br i1 %cmp231.not, label %if.end234, label %sw.bb230.out_unlock_crit_edge

sw.bb230.out_unlock_crit_edge:                    ; preds = %sw.bb230
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end234:                                        ; preds = %sw.bb230
  %call235 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %uval, [2 x i32] %optval.coerce, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end238, label %if.end234.out_unlock_crit_edge

if.end234.out_unlock_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.end238:                                        ; preds = %if.end234
  %call240 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call240, label %if.end238.do.end249_crit_edge, label %land.lhs.true241

if.end238.do.end249_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end249

land.lhs.true241:                                 ; preds = %if.end238
  %call242 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %land.lhs.true241.do.end249_crit_edge, label %land.lhs.true244

land.lhs.true241.do.end249_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end249

land.lhs.true244:                                 ; preds = %land.lhs.true241
  %.b358359 = load i1, ptr @ip_mroute_setsockopt.__warned.4, align 1
  br i1 %.b358359, label %land.lhs.true244.do.end249_crit_edge, label %if.then246

land.lhs.true244.do.end249_crit_edge:             ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end249

if.then246:                                       ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ip_mroute_setsockopt.__warned.4, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1518, ptr noundef nonnull @.str.1) #17
  br label %do.end249

do.end249:                                        ; preds = %if.then246, %land.lhs.true244.do.end249_crit_edge, %land.lhs.true241.do.end249_crit_edge, %if.end238.do.end249_crit_edge
  %56 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mroute_sk, align 4
  %cmp252 = icmp eq ptr %57, %sk
  br i1 %cmp252, label %do.end249.out_unlock_crit_edge, label %if.else255

do.end249.out_unlock_crit_edge:                   ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.else255:                                       ; preds = %do.end249
  %58 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %uval, align 4
  %call256 = call fastcc ptr @ipmr_new_table(ptr noundef %1, i32 noundef %59)
  %cmp.i = icmp ugt ptr %call256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then258, label %if.else260

if.then258:                                       ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %call256 to i32
  br label %out_unlock

if.else260:                                       ; preds = %if.else255
  call void @__sanitizer_cov_trace_pc() #19
  %61 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %uval, align 4
  %63 = ptrtoint ptr %ipmr_table to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ipmr_table, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.else260, %if.then258, %do.end249.out_unlock_crit_edge, %if.end234.out_unlock_crit_edge, %sw.bb230.out_unlock_crit_edge, %if.then220, %if.end210.out_unlock_crit_edge, %if.end206.out_unlock_crit_edge, %sw.bb199.out_unlock_crit_edge, %if.end197, %if.end193.out_unlock_crit_edge, %sw.bb189.out_unlock_crit_edge, %if.end188, %if.end184.out_unlock_crit_edge, %sw.bb180.out_unlock_crit_edge, %do.end173, %if.then160, %if.end145.out_unlock_crit_edge, %sw.bb141.out_unlock_crit_edge, %if.else135, %do.end129, %if.end110.out_unlock_crit_edge, %if.end106.out_unlock_crit_edge, %sw.bb102.out_unlock_crit_edge, %sw.bb89.out_unlock_crit_edge, %do.body46, %if.end41.out_unlock_crit_edge, %do.end36.out_unlock_crit_edge, %sw.bb.out_unlock_crit_edge, %if.end21.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %ipmr_get_table.exit.out_unlock_crit_edge, %for.cond.i.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %60, %if.then258 ], [ 0, %if.else260 ], [ 0, %if.then220 ], [ 0, %if.end210.out_unlock_crit_edge ], [ 0, %if.end197 ], [ 0, %if.end188 ], [ %call161, %if.then160 ], [ %call178, %do.end173 ], [ %call134, %do.end129 ], [ %call138, %if.else135 ], [ 0, %do.body46 ], [ %call42, %if.end41.out_unlock_crit_edge ], [ -95, %lor.lhs.false.out_unlock_crit_edge ], [ -95, %entry.out_unlock_crit_edge ], [ -2, %ipmr_get_table.exit.out_unlock_crit_edge ], [ -13, %land.lhs.true.out_unlock_crit_edge ], [ -22, %sw.bb.out_unlock_crit_edge ], [ -98, %do.end36.out_unlock_crit_edge ], [ -13, %sw.bb89.out_unlock_crit_edge ], [ -22, %sw.bb102.out_unlock_crit_edge ], [ -14, %if.end106.out_unlock_crit_edge ], [ -23, %if.end110.out_unlock_crit_edge ], [ -22, %sw.bb141.out_unlock_crit_edge ], [ -14, %if.end145.out_unlock_crit_edge ], [ -22, %sw.bb180.out_unlock_crit_edge ], [ -14, %if.end184.out_unlock_crit_edge ], [ -22, %sw.bb189.out_unlock_crit_edge ], [ -14, %if.end193.out_unlock_crit_edge ], [ -22, %sw.bb199.out_unlock_crit_edge ], [ -14, %if.end206.out_unlock_crit_edge ], [ -22, %sw.bb230.out_unlock_crit_edge ], [ -14, %if.end234.out_unlock_crit_edge ], [ -16, %do.end249.out_unlock_crit_edge ], [ -92, %if.end21.out_unlock_crit_edge ], [ -2, %for.cond.i.out_unlock_crit_edge ]
  call void @rtnl_unlock() #17
  br label %out

out:                                              ; preds = %out_unlock, %if.else99
  %ret.1 = phi i32 [ %ret.0, %out_unlock ], [ %call100, %if.else99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #17
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mfc) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vif) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_ra_control(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrtsock_destruct(ptr noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  tail call void @rtnl_lock() #17
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call1, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %mr_tables = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  %2 = ptrtoint ptr %mr_tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mr_tables, align 4
  %cmp.i.not = icmp eq ptr %3, %mr_tables
  br i1 %cmp.i.not, label %lor.lhs.false.do.end_crit_edge, label %land.lhs.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call3 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true5.do.end_crit_edge, label %land.lhs.true8

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %.b70 = load i1, ptr @mrtsock_destruct.__warned, align 1
  br i1 %.b70, label %land.lhs.true8.do.end_crit_edge, label %if.then

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mrtsock_destruct.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1326, ptr noundef nonnull @.str.9) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true8.do.end_crit_edge, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %mr_tables14 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  %4 = ptrtoint ptr %mr_tables14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %mrt.071 = load volatile ptr, ptr %mr_tables14, align 4
  %cmp.not72 = icmp eq ptr %mrt.071, %mr_tables14
  br i1 %cmp.not72, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %devconf_all = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mrt.073 = phi ptr [ %mrt.071, %for.body.lr.ph ], [ %mrt.0, %for.inc.for.body_crit_edge ]
  %call19 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call19, label %for.body.do.end28_crit_edge, label %land.lhs.true20

for.body.do.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end28

land.lhs.true20:                                  ; preds = %for.body
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b6869 = load i1, ptr @mrtsock_destruct.__warned.10, align 1
  br i1 %.b6869, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mrtsock_destruct.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1327, ptr noundef nonnull @.str.1) #17
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %for.body.do.end28_crit_edge
  %mroute_sk = getelementptr inbounds %struct.mr_table, ptr %mrt.073, i32 0, i32 4
  %5 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mroute_sk, align 4
  %cmp30 = icmp eq ptr %6, %sk
  br i1 %cmp30, label %if.then31, label %do.end28.for.inc_crit_edge

do.end28.for.inc_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then31:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devconf_all, align 4
  %arrayidx = getelementptr %struct.ipv4_devconf, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %arrayidx, align 4
  %11 = load ptr, ptr %devconf_all, align 4
  tail call void @inet_netconf_notify_devconf(ptr noundef %1, i32 noundef 80, i32 noundef 4, i32 noundef -1, ptr noundef %11) #17
  %12 = ptrtoint ptr %mroute_sk to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %mroute_sk, align 4
  tail call fastcc void @mroute_clean_tables(ptr noundef %mrt.073, i32 noundef 5)
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %do.end28.for.inc_crit_edge
  %13 = ptrtoint ptr %mrt.073 to i32
  call void @__asan_load4_noabort(i32 %13)
  %mrt.0 = load volatile ptr, ptr %mrt.073, align 4
  %cmp.not = icmp eq ptr %mrt.0, %mr_tables14
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @rtnl_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_netconf_notify_devconf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %dst, [2 x i32] %src.coerce, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %src.coerce.fca.0.extract.i = extractvalue [2 x i32] %src.coerce, 0
  %0 = inttoptr i32 %src.coerce.fca.0.extract.i to ptr
  %sockptr.coerce.fca.1.extract.i.i = extractvalue [2 x i32] %src.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i)
  %bf.cast.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i, 0
  br i1 %bf.cast.i.i, label %if.end.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  tail call void @__check_object_size(ptr noundef %dst, i32 noundef %size, i1 noundef zeroext false) #17
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %size, i32 -1226833920) #20, !srcloc !211
  %asmresult.i.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !212

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dst, i32 noundef %size) #17
  %2 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !213
  %and.i.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dst, ptr noundef %0, i32 noundef %size) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %size, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %size, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge, label %if.then11.i.i.i, !prof !212

if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_from_sockptr_offset.exit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i.i = sub i32 %size, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %dst, i32 %sub.i.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %copy_from_sockptr_offset.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = call ptr @memcpy(ptr %dst, ptr %0, i32 %size)
  br label %copy_from_sockptr_offset.exit

copy_from_sockptr_offset.exit:                    ; preds = %if.end.i, %if.then11.i.i.i, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ 0, %if.end.i.i.i.copy_from_sockptr_offset.exit_crit_edge ], [ %res.0.i.i.i, %if.then11.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vif_add(ptr noundef %net, ptr noundef %mrt, ptr nocapture noundef readonly %vifc, i32 noundef %mrtsock) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.vif_entry_notifier_info, align 4
  %p.i = alloca %struct.ip_tunnel_parm, align 4
  %name.i = alloca [16 x i8], align 1
  %ppid = alloca %struct.netdev_phys_item_id, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %ppid) #17
  %0 = call ptr @memset(ptr %ppid, i32 0, i32 33)
  %1 = ptrtoint ptr %vifc to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vifc, align 4
  %conv = zext i16 %2 to i32
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %vifc_flags = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 1
  %5 = ptrtoint ptr %vifc_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vifc_flags, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 1, label %sw.bb18
    i8 8, label %if.then29
    i8 0, label %if.end37
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %8 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #17
  %id.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %10 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %12)
  %cmp.i = icmp eq i32 %12, 253
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %13 = call ptr @memcpy(ptr %name.i, ptr @.str.11, i32 7)
  br label %if.end.i

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.12, i32 noundef %12) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call5.i = call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull %name.i, i8 noundef zeroext 0, ptr noundef nonnull @reg_vif_setup, i32 noundef 1, i32 noundef 1) #17
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.ipmr_reg_vif.exit.thread_crit_edge, label %if.end7.i

if.end.i.ipmr_reg_vif.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_reg_vif.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 127
  %14 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %net, ptr %nd_net.i.i, align 4
  %call8.i = call i32 @register_netdevice(ptr noundef nonnull %call5.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @free_netdev(ptr noundef nonnull %call5.i) #17
  br label %ipmr_reg_vif.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call fastcc zeroext i1 @ipmr_init_vif_indev(ptr noundef nonnull %call5.i) #17
  br i1 %call12.i, label %if.end14.i, label %if.end11.i.failure.i_crit_edge

if.end11.i.failure.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %failure.i

if.end14.i:                                       ; preds = %if.end11.i
  %call15.i = call i32 @dev_open(ptr noundef nonnull %call5.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body1.i.i, label %if.end14.i.failure.i_crit_edge

if.end14.i.failure.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %failure.i

do.body1.i.i:                                     ; preds = %if.end14.i
  %15 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call5.i, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i = add i32 %27, 1
  store i32 %add13.i.i, ptr %25, align 4
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.if.end13_crit_edge, !prof !218

do.body1.i.i.if.end13_crit_edge:                  ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %if.end13

failure.i:                                        ; preds = %if.end14.i.failure.i_crit_edge, %if.end11.i.failure.i_crit_edge
  call void @unregister_netdevice_queue(ptr noundef nonnull %call5.i, ptr noundef null) #17
  br label %ipmr_reg_vif.exit.thread

ipmr_reg_vif.exit.thread:                         ; preds = %failure.i, %if.then10.i, %if.end.i.ipmr_reg_vif.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #17
  br label %cleanup

if.end13:                                         ; preds = %if.then28.i.i, %do.body1.i.i.if.end13_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #17, !srcloc !219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #17
  %call14 = call i32 @dev_set_allmulti(ptr noundef nonnull %call5.i, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.sw.epilog_crit_edge, label %if.then16

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  call void @unregister_netdevice_queue(ptr noundef nonnull %call5.i, ptr noundef null) #17
  call fastcc void @dev_put(ptr noundef nonnull %call5.i)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p.i) #17
  %29 = call ptr @memset(ptr %p.i, i32 0, i32 44)
  %call.i = tail call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull @.str.19) #17
  %tobool.not.i152 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i152, label %sw.bb18.ipmr_new_tunnel.exit.thread_crit_edge, label %if.end.i153

sw.bb18.ipmr_new_tunnel.exit.thread_crit_edge:    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_new_tunnel.exit.thread

if.end.i153:                                      ; preds = %sw.bb18
  %vifc_rmt_addr.i = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 5
  %30 = ptrtoint ptr %vifc_rmt_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vifc_rmt_addr.i, align 4
  %iph.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p.i, i32 0, i32 6
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p.i, i32 0, i32 6, i32 9
  %32 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %daddr.i, align 4
  %33 = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p.i, i32 0, i32 6, i32 8
  %36 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %saddr.i, align 4
  %37 = ptrtoint ptr %iph.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 69, ptr %iph.i, align 4
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p.i, i32 0, i32 6, i32 6
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %protocol.i, align 1
  %39 = ptrtoint ptr %vifc to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vifc, align 4
  %conv.i = zext i16 %40 to i32
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %p.i, ptr noundef nonnull @.str.20, i32 noundef %conv.i) #17
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_tunnel_ctl.i = getelementptr inbounds %struct.net_device_ops, ptr %42, i32 0, i32 81
  %43 = ptrtoint ptr %ndo_tunnel_ctl.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndo_tunnel_ctl.i, align 4
  %tobool10.not.i = icmp eq ptr %44, null
  br i1 %tobool10.not.i, label %if.end.i153.ipmr_new_tunnel.exit.thread_crit_edge, label %if.end12.i

if.end.i153.ipmr_new_tunnel.exit.thread_crit_edge: ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_new_tunnel.exit.thread

if.end12.i:                                       ; preds = %if.end.i153
  %call15.i154 = call i32 %44(ptr noundef nonnull %call.i, ptr noundef nonnull %p.i, i32 noundef 35313) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i154)
  %tobool16.not.i155 = icmp eq i32 %call15.i154, 0
  br i1 %tobool16.not.i155, label %if.end18.i, label %if.end12.i.ipmr_new_tunnel.exit.thread_crit_edge

if.end12.i.ipmr_new_tunnel.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_new_tunnel.exit.thread

if.end18.i:                                       ; preds = %if.end12.i
  %call21.i = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull %p.i) #17
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end18.i.ipmr_new_tunnel.exit.thread_crit_edge, label %if.end24.i

if.end18.i.ipmr_new_tunnel.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_new_tunnel.exit.thread

if.end24.i:                                       ; preds = %if.end18.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call21.i, i32 0, i32 14
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %46, 4096
  store i32 %or.i, ptr %flags.i, align 8
  %call25.i = call fastcc zeroext i1 @ipmr_init_vif_indev(ptr noundef nonnull %call21.i) #17
  br i1 %call25.i, label %if.end27.i, label %if.end24.i.out_unregister.i_crit_edge

if.end24.i.out_unregister.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unregister.i

if.end27.i:                                       ; preds = %if.end24.i
  %call28.i = call i32 @dev_open(ptr noundef nonnull %call21.i, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.out_unregister.i_crit_edge

if.end27.i.out_unregister.i_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unregister.i

if.end31.i:                                       ; preds = %if.end27.i
  call fastcc void @dev_hold(ptr noundef nonnull %call21.i) #17
  %call32.i = call i32 @dev_set_allmulti(ptr noundef nonnull %call21.i, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.ipmr_new_tunnel.exit_crit_edge, label %if.then34.i

if.end31.i.ipmr_new_tunnel.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_new_tunnel.exit

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @dev_close(ptr noundef nonnull %call21.i) #17
  %47 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_tunnel_ctl36.i = getelementptr inbounds %struct.net_device_ops, ptr %48, i32 0, i32 81
  %49 = ptrtoint ptr %ndo_tunnel_ctl36.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndo_tunnel_ctl36.i, align 4
  %call37.i = call i32 %50(ptr noundef nonnull %call.i, ptr noundef nonnull %p.i, i32 noundef 35314) #17
  call fastcc void @dev_put(ptr noundef nonnull %call21.i) #17
  %51 = inttoptr i32 %call32.i to ptr
  br label %ipmr_new_tunnel.exit

out_unregister.i:                                 ; preds = %if.end27.i.out_unregister.i_crit_edge, %if.end24.i.out_unregister.i_crit_edge
  call void @unregister_netdevice_queue(ptr noundef nonnull %call21.i, ptr noundef null) #17
  br label %ipmr_new_tunnel.exit.thread

ipmr_new_tunnel.exit.thread:                      ; preds = %out_unregister.i, %if.end18.i.ipmr_new_tunnel.exit.thread_crit_edge, %if.end12.i.ipmr_new_tunnel.exit.thread_crit_edge, %if.end.i153.ipmr_new_tunnel.exit.thread_crit_edge, %sw.bb18.ipmr_new_tunnel.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p.i) #17
  br label %if.then21

ipmr_new_tunnel.exit:                             ; preds = %if.then34.i, %if.end31.i.ipmr_new_tunnel.exit_crit_edge
  %retval.0.i156 = phi ptr [ %51, %if.then34.i ], [ %call21.i, %if.end31.i.ipmr_new_tunnel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p.i) #17
  %cmp.i157 = icmp ugt ptr %retval.0.i156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %ipmr_new_tunnel.exit.if.then21_crit_edge, label %ipmr_new_tunnel.exit.sw.epilog_crit_edge

ipmr_new_tunnel.exit.sw.epilog_crit_edge:         ; preds = %ipmr_new_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

ipmr_new_tunnel.exit.if.then21_crit_edge:         ; preds = %ipmr_new_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then21

if.then21:                                        ; preds = %ipmr_new_tunnel.exit.if.then21_crit_edge, %ipmr_new_tunnel.exit.thread
  %retval.0.i156191 = phi ptr [ inttoptr (i32 -105 to ptr), %ipmr_new_tunnel.exit.thread ], [ %retval.0.i156, %ipmr_new_tunnel.exit.if.then21_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i156191 to i32
  br label %cleanup

if.then29:                                        ; preds = %if.end
  %53 = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %call30 = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %55) #17
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then29.cleanup_crit_edge, label %land.lhs.true

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then29
  %call.i158 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i158, label %land.lhs.true.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.__in_dev_get_rtnl.exit_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i159 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i159, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i160

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

if.then.i160:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 249, ptr noundef nonnull @.str.1) #17
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i160, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %call30, i32 0, i32 78
  %56 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ip_ptr.i, align 32
  %tobool33.not = icmp eq ptr %57, null
  br i1 %tobool33.not, label %if.then34, label %__in_dev_get_rtnl.exit.if.end40_crit_edge

__in_dev_get_rtnl.exit.if.end40_crit_edge:        ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then34:                                        ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @dev_put(ptr noundef nonnull %call30)
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %58 = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %call.i161 = tail call ptr @__ip_dev_find(ptr noundef %net, i32 noundef %60, i1 noundef zeroext true) #17
  %tobool38.not = icmp eq ptr %call.i161, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end37.if.end40_crit_edge

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %if.end37.if.end40_crit_edge, %__in_dev_get_rtnl.exit.if.end40_crit_edge
  %dev.0197 = phi ptr [ %call.i161, %if.end37.if.end40_crit_edge ], [ %call30, %__in_dev_get_rtnl.exit.if.end40_crit_edge ]
  %call41 = tail call i32 @dev_set_allmulti(ptr noundef nonnull %dev.0197, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.sw.epilog_crit_edge, label %do.body1.i

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.body1.i:                                       ; preds = %if.end40
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0197, i32 0, i32 118
  %62 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcpu_refcnt.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %70, %64
  %71 = inttoptr i32 %add.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add13.i = add i32 %73, -1
  store i32 %add13.i, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i.i163 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i163)
  %tobool24.not.i = icmp eq i32 %and.i.i.i163, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !218

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #17, !srcloc !219
  br label %cleanup

sw.epilog:                                        ; preds = %if.end40.sw.epilog_crit_edge, %ipmr_new_tunnel.exit.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %dev.1 = phi ptr [ %dev.0197, %if.end40.sw.epilog_crit_edge ], [ %retval.0.i156, %ipmr_new_tunnel.exit.sw.epilog_crit_edge ], [ %call5.i, %if.end13.sw.epilog_crit_edge ]
  %call.i164 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i164, label %sw.epilog.__in_dev_get_rtnl.exit172_crit_edge, label %land.lhs.true.i167

sw.epilog.__in_dev_get_rtnl.exit172_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit172

land.lhs.true.i167:                               ; preds = %sw.epilog
  %call1.i165 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %tobool.not.i166 = icmp eq i32 %call1.i165, 0
  br i1 %tobool.not.i166, label %land.lhs.true.i167.__in_dev_get_rtnl.exit172_crit_edge, label %land.lhs.true2.i169

land.lhs.true.i167.__in_dev_get_rtnl.exit172_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit172

land.lhs.true2.i169:                              ; preds = %land.lhs.true.i167
  %.b4.i168 = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i168, label %land.lhs.true2.i169.__in_dev_get_rtnl.exit172_crit_edge, label %if.then.i170

land.lhs.true2.i169.__in_dev_get_rtnl.exit172_crit_edge: ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit172

if.then.i170:                                     ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 249, ptr noundef nonnull @.str.1) #17
  br label %__in_dev_get_rtnl.exit172

__in_dev_get_rtnl.exit172:                        ; preds = %if.then.i170, %land.lhs.true2.i169.__in_dev_get_rtnl.exit172_crit_edge, %land.lhs.true.i167.__in_dev_get_rtnl.exit172_crit_edge, %sw.epilog.__in_dev_get_rtnl.exit172_crit_edge
  %ip_ptr.i171 = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 78
  %75 = ptrtoint ptr %ip_ptr.i171 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ip_ptr.i171, align 32
  %tobool46.not = icmp eq ptr %76, null
  br i1 %tobool46.not, label %do.body1.i182, label %if.end48

do.body1.i182:                                    ; preds = %__in_dev_get_rtnl.exit172
  %77 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt.i174 = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 118
  %78 = ptrtoint ptr %pcpu_refcnt.i174 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pcpu_refcnt.i174, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i175 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i175 to ptr
  %cpu.i176 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu.i176 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu.i176, align 4
  %arrayidx.i177 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i177, align 4
  %add.i178 = add i32 %86, %80
  %87 = inttoptr i32 %add.i178 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add13.i179 = add i32 %89, -1
  store i32 %add13.i179, ptr %87, align 4
  %90 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i.i180 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i180)
  %tobool24.not.i181 = icmp eq i32 %and.i.i.i180, 0
  br i1 %tobool24.not.i181, label %if.then28.i183, label %do.body1.i182.dev_put.exit185_crit_edge, !prof !218

do.body1.i182.dev_put.exit185_crit_edge:          ; preds = %do.body1.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit185

if.then28.i183:                                   ; preds = %do.body1.i182
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit185

dev_put.exit185:                                  ; preds = %if.then28.i183, %do.body1.i182.dev_put.exit185_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %77) #17, !srcloc !219
  br label %cleanup

if.end48:                                         ; preds = %__in_dev_get_rtnl.exit172
  %cnf = getelementptr inbounds %struct.in_device, ptr %76, i32 0, i32 21
  %arrayidx49 = getelementptr %struct.in_device, ptr %76, i32 0, i32 21, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx49, align 4
  %inc = add i32 %92, 1
  store i32 %inc, ptr %arrayidx49, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 17
  %93 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ifindex, align 4
  call void @inet_netconf_notify_devconf(ptr noundef %net, i32 noundef 80, i32 noundef 4, i32 noundef %94, ptr noundef %cnf) #17
  call void @ip_rt_multicast_event(ptr noundef nonnull %76) #17
  %vifc_rate_limit = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 3
  %95 = ptrtoint ptr %vifc_rate_limit to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vifc_rate_limit, align 4
  %vifc_threshold = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 2
  %97 = ptrtoint ptr %vifc_threshold to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vifc_threshold, align 1
  %99 = ptrtoint ptr %vifc_flags to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %vifc_flags, align 2
  %conv52 = zext i8 %100 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool53.not = icmp eq i32 %mrtsock, 0
  %cond = select i1 %tobool53.not, i16 -32768, i16 0
  %or = or i16 %cond, %conv52
  call void @vif_device_init(ptr noundef %arrayidx, ptr noundef %dev.1, i32 noundef %96, i8 noundef zeroext %98, i16 noundef zeroext %or, i16 noundef zeroext 5) #17
  %call55 = call i32 @dev_get_port_parent_id(ptr noundef %dev.1, ptr noundef nonnull %ppid, i1 noundef zeroext true) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end48.if.end68_crit_edge

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end68

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %dev_parent_id = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 10
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %101 = ptrtoint ptr %id_len to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %id_len, align 1
  %conv61 = zext i8 %102 to i32
  %103 = call ptr @memcpy(ptr %dev_parent_id, ptr %ppid, i32 %conv61)
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %if.end48.if.end68_crit_edge
  %.sink = phi i8 [ %102, %if.then58 ], [ 0, %if.end48.if.end68_crit_edge ]
  %104 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 10, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %.sink, ptr %104, align 4
  %106 = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %local = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 11
  %109 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %local, align 4
  %vifc_rmt_addr = getelementptr inbounds %struct.vifctl, ptr %vifc, i32 0, i32 5
  %110 = ptrtoint ptr %vifc_rmt_addr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vifc_rmt_addr, align 4
  %remote = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 12
  %112 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %remote, align 4
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #17
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %dev.1, ptr %arrayidx, align 4
  %dev_tracker = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 119
  %call.i186 = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 2592) #17
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 8
  %114 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags, align 2
  %116 = and i16 %115, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool73.not = icmp eq i16 %116, 0
  br i1 %tobool73.not, label %if.end68.if.end76_crit_edge, label %if.then74

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end76

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  %mroute_reg_vif_num75 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %117 = ptrtoint ptr %mroute_reg_vif_num75 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv, ptr %mroute_reg_vif_num75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end68.if.end76_crit_edge
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %118 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %conv)
  %cmp77.not = icmp sgt i32 %119, %conv
  br i1 %cmp77.not, label %if.end76.if.end82_crit_edge, label %if.then79

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  %add = add nuw nsw i32 %conv, 1
  %120 = ptrtoint ptr %maxvif to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add, ptr %maxvif, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end76.if.end82_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #17
  %id84 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %121 = ptrtoint ptr %id84 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %id84, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #17
  %123 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %124 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %125 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %126 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %127 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 128, ptr %info.i.i, align 4
  %129 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %123, align 4
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx, align 4
  %132 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %124, align 4
  %133 = ptrtoint ptr %125 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %2, ptr %125, align 4
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %flags, align 2
  %136 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %126, align 2
  %137 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %122, ptr %127, align 4
  %call.i.i = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end82.call_ipmr_vif_entry_notifiers.exit_crit_edge

if.end82.call_ipmr_vif_entry_notifiers.exit_crit_edge: ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_vif_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.end82
  %.b1.i.i = load i1, ptr @mr_call_vif_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !212

land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_vif_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_vif_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 89) #17
  br label %call_ipmr_vif_entry_notifiers.exit

call_ipmr_vif_entry_notifiers.exit:               ; preds = %if.then.i.i, %land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge, %if.end82.call_ipmr_vif_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 135
  %138 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %139, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call44.i.i = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 8, ptr noundef nonnull %info.i.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %call_ipmr_vif_entry_notifiers.exit, %dev_put.exit185, %dev_put.exit, %if.end37.cleanup_crit_edge, %if.then34, %if.then29.cleanup_crit_edge, %if.then21, %if.then16, %ipmr_reg_vif.exit.thread, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %dev_put.exit ], [ 0, %call_ipmr_vif_entry_notifiers.exit ], [ -99, %dev_put.exit185 ], [ -99, %if.then34 ], [ %52, %if.then21 ], [ %call14, %if.then16 ], [ -98, %entry.cleanup_crit_edge ], [ -98, %sw.bb.cleanup_crit_edge ], [ -99, %if.end37.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -105, %ipmr_reg_vif.exit.thread ], [ -99, %if.then29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %ppid) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vif_delete(ptr noundef %mrt, i32 noundef %vifi, i32 noundef %notify, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.vif_entry_notifier_info, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vifi)
  %cmp = icmp slt i32 %vifi, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %2 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vifi)
  %cmp2.not = icmp sgt i32 %3, %vifi
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %conv = trunc i32 %vifi to i16
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i.i) #17
  %8 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.vif_entry_notifier_info, ptr %info.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %info.i.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %10, align 4
  %flags.i.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %11, align 2
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %12, align 4
  %call.i.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then6.call_ipmr_vif_entry_notifiers.exit_crit_edge

if.then6.call_ipmr_vif_entry_notifiers.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_vif_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.then6
  %.b1.i.i = load i1, ptr @mr_call_vif_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !212

land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_vif_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_vif_notifiers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 89, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 89) #17
  br label %call_ipmr_vif_entry_notifiers.exit

call_ipmr_vif_entry_notifiers.exit:               ; preds = %if.then.i.i, %land.rhs.i.i.call_ipmr_vif_entry_notifiers.exit_crit_edge, %if.then6.call_ipmr_vif_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 135
  %21 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call44.i.i = call i32 @call_fib_notifiers(ptr noundef %1, i32 noundef 9, ptr noundef nonnull %info.i.i) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i.i) #17
  br label %if.end8

if.end8:                                          ; preds = %call_ipmr_vif_entry_notifiers.exit, %if.end.if.end8_crit_edge
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %24, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %25 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %vifi)
  %cmp14 = icmp eq i32 %26, %vifi
  br i1 %cmp14, label %if.then16, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %mroute_reg_vif_num, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %add = add nuw nsw i32 %vifi, 1
  %28 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp20 = icmp eq i32 %add, %29
  br i1 %cmp20, label %for.cond.preheader, label %if.end18.if.end33_crit_edge

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33

for.cond.preheader:                               ; preds = %if.end18
  %30 = call i32 @llvm.smin.i32(i32 %vifi, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %tmp.0.in = phi i32 [ %tmp.0, %for.body.for.cond_crit_edge ], [ %vifi, %for.cond.preheader ]
  %tmp.0 = add i32 %tmp.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tmp.0)
  %cmp23 = icmp sgt i32 %tmp.0, -1
  br i1 %cmp23, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %tmp.0
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx26, align 4
  %tobool28.not = icmp eq ptr %32, null
  br i1 %tobool28.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %tmp.0.in.lcssa = phi i32 [ %tmp.0.in, %for.body.for.end_crit_edge ], [ %30, %for.cond.for.end_crit_edge ]
  %33 = ptrtoint ptr %maxvif to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %tmp.0.in.lcssa, ptr %maxvif, align 4
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.end18.if.end33_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #17
  %call34 = call i32 @dev_set_allmulti(ptr noundef nonnull %24, i32 noundef -1) #17
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end33.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end33.__in_dev_get_rtnl.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end33
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 249, ptr noundef nonnull @.str.1) #17
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end33.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 78
  %34 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip_ptr.i, align 32
  %tobool36.not = icmp eq ptr %35, null
  br i1 %tobool36.not, label %__in_dev_get_rtnl.exit.if.end42_crit_edge, label %if.then37

__in_dev_get_rtnl.exit.if.end42_crit_edge:        ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.then37:                                        ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  %cnf = getelementptr inbounds %struct.in_device, ptr %35, i32 0, i32 21
  %arrayidx38 = getelementptr %struct.in_device, ptr %35, i32 0, i32 21, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx38, align 4
  %dec39 = add i32 %37, -1
  store i32 %dec39, ptr %arrayidx38, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %38 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %40 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex, align 4
  call void @inet_netconf_notify_devconf(ptr noundef %39, i32 noundef 80, i32 noundef 4, i32 noundef %41, ptr noundef %cnf) #17
  call void @ip_rt_multicast_event(ptr noundef nonnull %35) #17
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %__in_dev_get_rtnl.exit.if.end42_crit_edge
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags, align 2
  %44 = and i16 %43, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool44.not = icmp ne i16 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notify)
  %tobool45.not = icmp eq i32 %notify, 0
  %or.cond = and i1 %tobool45.not, %tobool44.not
  br i1 %or.cond, label %if.then46, label %if.end42.do.body1.i.i_crit_edge

if.end42.do.body1.i.i_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i.i

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  call void @unregister_netdevice_queue(ptr noundef nonnull %24, ptr noundef %head) #17
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.then46, %if.end42.do.body1.i.i_crit_edge
  %dev_tracker = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 119
  %call.i.i84 = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #17
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i.i = add i32 %57, -1
  store i32 %add13.i.i, ptr %55, align 4
  %58 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put_track.exit_crit_edge, !prof !218

do.body1.i.i.dev_put_track.exit_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put_track.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @warn_bogus_irq_restore() #17
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %if.then28.i.i, %do.body1.i.i.dev_put_track.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #17, !srcloc !219
  br label %cleanup

cleanup:                                          ; preds = %dev_put_track.exit, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_put_track.exit ], [ -99, %if.then12 ], [ -99, %lor.lhs.false.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmr_mfc_delete(ptr noundef %mrt, ptr nocapture noundef readonly %mfc, i32 noundef %parent) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %mfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mfc, align 4
  %mfcc_mcastgrp = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 1
  %8 = ptrtoint ptr %mfcc_mcastgrp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mfcc_mcastgrp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %10 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %arg.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %10, align 4
  %call.i25 = call ptr @mr_mfc_find_parent(ptr noundef %mrt, ptr noundef nonnull %arg.i, i32 noundef %parent) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %call.i26 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i26, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %rcu_read_lock.exit
  %call1.i27 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %13 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i33 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %tobool.not = icmp eq ptr %call.i25, null
  br i1 %tobool.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  call fastcc void @rhltable_remove(ptr noundef %mfc_hash, ptr noundef nonnull %call.i25, [7 x i32] [i32 196616, i32 6553600, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ipmr_hash_cmp to i32)])
  %list = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #17
  %26 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %info.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %26, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i25, ptr %27, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %28, align 4
  %call.i.i35 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i.i = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge

list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %list_del_rcu.exit
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !212

land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 208) #17
  br label %call_ipmr_mfc_entry_notifiers.exit

call_ipmr_mfc_entry_notifiers.exit:               ; preds = %if.then.i.i, %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, %list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 135
  %33 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %info.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #17
  call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i25, i32 noundef 25)
  %refcount.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #17
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #17, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i36, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %call_ipmr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !212

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #17
  br label %cleanup

if.then.i36:                                      ; preds = %call_ipmr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 5
  %free.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i25, i32 0, i32 6
  %36 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free.i, align 4
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef %37) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i36, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmr_mfc_add(ptr noundef %net, ptr noundef %mrt, ptr nocapture noundef readonly %mfc, i32 noundef %mrtsock, i32 noundef %parent) unnamed_addr #0 align 64 {
entry:
  %info.i.i206 = alloca %struct.mfc_entry_notifier_info, align 4
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mfcc_parent = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 2
  %0 = ptrtoint ptr %mfcc_parent to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mfcc_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %1)
  %cmp = icmp ugt i16 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %mfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mfc, align 4
  %mfcc_mcastgrp = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 1
  %8 = ptrtoint ptr %mfcc_mcastgrp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mfcc_mcastgrp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %10 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %arg.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %10, align 4
  %call.i146 = call ptr @mr_mfc_find_parent(ptr noundef %mrt, ptr noundef nonnull %arg.i, i32 noundef %parent) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %call.i147 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i147, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i150

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i150:                               ; preds = %rcu_read_lock.exit
  %call1.i148 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %tobool.not.i149 = icmp eq i32 %call1.i148, 0
  br i1 %tobool.not.i149, label %land.lhs.true.i150.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i152

land.lhs.true.i150.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i152:                              ; preds = %land.lhs.true.i150
  %.b4.i151 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i151, label %land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge, label %if.then.i153

land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i152
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i153:                                     ; preds = %land.lhs.true2.i152
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i153, %land.lhs.true2.i152.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i150.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %13 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i154 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i154 to ptr
  %preempt_count.i.i.i.i155 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i155, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i155, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %tobool.not = icmp eq ptr %call.i146, null
  br i1 %tobool.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %rcu_read_unlock.exit
  call void @_raw_write_lock_bh(ptr noundef nonnull @mrt_lock) #17
  %17 = ptrtoint ptr %mfcc_parent to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mfcc_parent, align 4
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 1
  %19 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %mfc_parent, align 4
  %mfcc_ttls = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 3
  %minvif.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %minvif.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %minvif.i, align 4
  %maxvif.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %maxvif.i, align 4
  %ttls3.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 3, i32 0, i32 7
  %22 = call ptr @memset(ptr %ttls3.i, i32 255, i32 32)
  %maxvif4.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %23 = ptrtoint ptr %maxvif4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxvif4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp54.i = icmp sgt i32 %24, 0
  br i1 %cmp54.i, label %if.then3.for.body.i_crit_edge, label %if.then3.ipmr_update_thresholds.exit_crit_edge

if.then3.ipmr_update_thresholds.exit_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_update_thresholds.exit

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %vifi.055.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi.055.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i156 = icmp eq ptr %26, null
  br i1 %tobool.not.i156, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i157

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i157:                               ; preds = %for.body.i
  %arrayidx5.i = getelementptr i8, ptr %mfcc_ttls, i32 %vifi.055.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %28, label %if.then.i158 [
    i8 0, label %land.lhs.true.i157.for.inc.i_crit_edge
    i8 -1, label %land.lhs.true.i157.for.inc.i_crit_edge260
  ]

land.lhs.true.i157.for.inc.i_crit_edge260:        ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i157.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i158:                                     ; preds = %land.lhs.true.i157
  %arrayidx15.i = getelementptr %struct.mr_mfc, ptr %call.i146, i32 0, i32 3, i32 0, i32 7, i32 %vifi.055.i
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %28, ptr %arrayidx15.i, align 1
  %31 = ptrtoint ptr %minvif.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minvif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %vifi.055.i)
  %cmp18.i = icmp sgt i32 %32, %vifi.055.i
  br i1 %cmp18.i, label %if.then20.i, label %if.then.i158.if.end.i_crit_edge

if.then.i158.if.end.i_crit_edge:                  ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then20.i:                                      ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %minvif.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %vifi.055.i, ptr %minvif.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then20.i, %if.then.i158.if.end.i_crit_edge
  %34 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxvif.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %vifi.055.i)
  %cmp25.not.i = icmp sgt i32 %35, %vifi.055.i
  br i1 %cmp25.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then27.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.i = add nuw nsw i32 %vifi.055.i, 1
  %36 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i, ptr %maxvif.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i157.for.inc.i_crit_edge, %land.lhs.true.i157.for.inc.i_crit_edge260, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %vifi.055.i, 1
  %37 = ptrtoint ptr %maxvif4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxvif4.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ipmr_update_thresholds.exit_crit_edge

for.inc.i.ipmr_update_thresholds.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_update_thresholds.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

ipmr_update_thresholds.exit:                      ; preds = %for.inc.i.ipmr_update_thresholds.exit_crit_edge, %if.then3.ipmr_update_thresholds.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 3, i32 0, i32 6
  %40 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %lastuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool6.not = icmp eq i32 %mrtsock, 0
  br i1 %tobool6.not, label %if.then7, label %ipmr_update_thresholds.exit.if.end9_crit_edge

ipmr_update_thresholds.exit.if.end9_crit_edge:    ; preds = %ipmr_update_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then7:                                         ; preds = %ipmr_update_thresholds.exit
  call void @__sanitizer_cov_trace_pc() #19
  %mfc_flags = getelementptr inbounds %struct.mr_mfc, ptr %call.i146, i32 0, i32 2
  %41 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mfc_flags, align 4
  %or = or i32 %42, 1
  store i32 %or, ptr %mfc_flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %ipmr_update_thresholds.exit.if.end9_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef nonnull @mrt_lock) #17
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #17
  %45 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %46 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %47 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %info.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %45, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i146, ptr %46, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %44, ptr %47, align 4
  %call.i.i159 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i159)
  %tobool.not.i.i = icmp eq i32 %call.i.i159, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end9.call_ipmr_mfc_entry_notifiers.exit_crit_edge

if.end9.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %if.end9
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !212

land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 208) #17
  br label %call_ipmr_mfc_entry_notifiers.exit

call_ipmr_mfc_entry_notifiers.exit:               ; preds = %if.then.i.i, %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, %if.end9.call_ipmr_mfc_entry_notifiers.exit_crit_edge
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 135
  %52 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 0, ptr noundef nonnull %info.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #17
  call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i146, i32 noundef 24)
  br label %cleanup

if.end11:                                         ; preds = %rcu_read_unlock.exit
  %54 = ptrtoint ptr %mfcc_mcastgrp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mfcc_mcastgrp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp14.not = icmp eq i32 %55, 0
  %and.i = and i32 %55, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i160 = icmp eq i32 %and.i, -536870912
  %or.cond = or i1 %cmp14.not, %cmp.i160
  br i1 %or.cond, label %if.end20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %56 = load ptr, ptr @mrt_cachep, align 4
  %call.i.i161 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %56, i32 noundef 3520) #17
  %tobool.not.i162 = icmp eq ptr %call.i.i161, null
  br i1 %tobool.not.i162, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %57, -301
  %mfc_un.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3
  %58 = ptrtoint ptr %mfc_un.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub1.i, ptr %mfc_un.i, align 8
  %minvif.i163 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 1
  %59 = ptrtoint ptr %minvif.i163 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %minvif.i163, align 4
  %free.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 6
  %60 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ipmr_cache_free_rcu, ptr %free.i, align 8
  %refcount.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #17
  %61 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1, ptr %refcount.i, align 4
  %62 = ptrtoint ptr %mfc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mfc, align 4
  %64 = getelementptr inbounds %struct.mfc_cache, ptr %call.i.i161, i32 0, i32 1
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %call.i.i161, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %mfc_origin, align 8
  %66 = ptrtoint ptr %mfcc_mcastgrp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mfcc_mcastgrp, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %64, align 4
  %69 = ptrtoint ptr %mfcc_parent to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mfcc_parent, align 4
  %mfc_parent31 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 1
  %71 = ptrtoint ptr %mfc_parent31 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %mfc_parent31, align 8
  %mfcc_ttls33 = getelementptr inbounds %struct.mfcctl, ptr %mfc, i32 0, i32 3
  %72 = ptrtoint ptr %minvif.i163 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 32, ptr %minvif.i163, align 4
  %maxvif.i167 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 2
  %73 = ptrtoint ptr %maxvif.i167 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %maxvif.i167, align 8
  %ttls3.i168 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 7
  %74 = call ptr @memset(ptr %ttls3.i168, i32 255, i32 32)
  %maxvif4.i169 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %75 = ptrtoint ptr %maxvif4.i169 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %maxvif4.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp54.i170 = icmp sgt i32 %76, 0
  br i1 %cmp54.i170, label %if.end24.for.body.i174_crit_edge, label %if.end24.ipmr_update_thresholds.exit189_crit_edge

if.end24.ipmr_update_thresholds.exit189_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_update_thresholds.exit189

if.end24.for.body.i174_crit_edge:                 ; preds = %if.end24
  br label %for.body.i174

for.body.i174:                                    ; preds = %for.inc.i187.for.body.i174_crit_edge, %if.end24.for.body.i174_crit_edge
  %vifi.055.i171 = phi i32 [ %inc.i185, %for.inc.i187.for.body.i174_crit_edge ], [ 0, %if.end24.for.body.i174_crit_edge ]
  %arrayidx.i172 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi.055.i171
  %77 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i172, align 4
  %tobool.not.i173 = icmp eq ptr %78, null
  br i1 %tobool.not.i173, label %for.body.i174.for.inc.i187_crit_edge, label %land.lhs.true.i176

for.body.i174.for.inc.i187_crit_edge:             ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i187

land.lhs.true.i176:                               ; preds = %for.body.i174
  %arrayidx5.i175 = getelementptr i8, ptr %mfcc_ttls33, i32 %vifi.055.i171
  %79 = ptrtoint ptr %arrayidx5.i175 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx5.i175, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %80, label %if.then.i179 [
    i8 0, label %land.lhs.true.i176.for.inc.i187_crit_edge
    i8 -1, label %land.lhs.true.i176.for.inc.i187_crit_edge261
  ]

land.lhs.true.i176.for.inc.i187_crit_edge261:     ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i187

land.lhs.true.i176.for.inc.i187_crit_edge:        ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i187

if.then.i179:                                     ; preds = %land.lhs.true.i176
  %arrayidx15.i177 = getelementptr %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 7, i32 %vifi.055.i171
  %82 = ptrtoint ptr %arrayidx15.i177 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %arrayidx15.i177, align 1
  %83 = ptrtoint ptr %minvif.i163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %minvif.i163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %vifi.055.i171)
  %cmp18.i178 = icmp sgt i32 %84, %vifi.055.i171
  br i1 %cmp18.i178, label %if.then20.i180, label %if.then.i179.if.end.i182_crit_edge

if.then.i179.if.end.i182_crit_edge:               ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i182

if.then20.i180:                                   ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #19
  %85 = ptrtoint ptr %minvif.i163 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %vifi.055.i171, ptr %minvif.i163, align 4
  br label %if.end.i182

if.end.i182:                                      ; preds = %if.then20.i180, %if.then.i179.if.end.i182_crit_edge
  %86 = ptrtoint ptr %maxvif.i167 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %maxvif.i167, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %vifi.055.i171)
  %cmp25.not.i181 = icmp sgt i32 %87, %vifi.055.i171
  br i1 %cmp25.not.i181, label %if.end.i182.for.inc.i187_crit_edge, label %if.then27.i184

if.end.i182.for.inc.i187_crit_edge:               ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i187

if.then27.i184:                                   ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #19
  %add.i183 = add nuw nsw i32 %vifi.055.i171, 1
  %88 = ptrtoint ptr %maxvif.i167 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i183, ptr %maxvif.i167, align 8
  br label %for.inc.i187

for.inc.i187:                                     ; preds = %if.then27.i184, %if.end.i182.for.inc.i187_crit_edge, %land.lhs.true.i176.for.inc.i187_crit_edge, %land.lhs.true.i176.for.inc.i187_crit_edge261, %for.body.i174.for.inc.i187_crit_edge
  %inc.i185 = add nuw nsw i32 %vifi.055.i171, 1
  %exitcond.not = icmp eq i32 %inc.i185, %76
  br i1 %exitcond.not, label %for.inc.i187.ipmr_update_thresholds.exit189_crit_edge, label %for.inc.i187.for.body.i174_crit_edge

for.inc.i187.for.body.i174_crit_edge:             ; preds = %for.inc.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i174

for.inc.i187.ipmr_update_thresholds.exit189_crit_edge: ; preds = %for.inc.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_update_thresholds.exit189

ipmr_update_thresholds.exit189:                   ; preds = %for.inc.i187.ipmr_update_thresholds.exit189_crit_edge, %if.end24.ipmr_update_thresholds.exit189_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i188 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 3, i32 0, i32 6
  %90 = ptrtoint ptr %lastuse.i188 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %lastuse.i188, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrtsock)
  %tobool35.not = icmp eq i32 %mrtsock, 0
  br i1 %tobool35.not, label %if.then36, label %ipmr_update_thresholds.exit189.if.end40_crit_edge

ipmr_update_thresholds.exit189.if.end40_crit_edge: ; preds = %ipmr_update_thresholds.exit189
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.then36:                                        ; preds = %ipmr_update_thresholds.exit189
  call void @__sanitizer_cov_trace_pc() #19
  %mfc_flags38 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 2
  %91 = ptrtoint ptr %mfc_flags38 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mfc_flags38, align 4
  %or39 = or i32 %92, 1
  store i32 %or39, ptr %mfc_flags38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %ipmr_update_thresholds.exit189.if.end40_crit_edge
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  %93 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %96, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %if.end40.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end40.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end40
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end40.rcu_read_lock.exit.i.i_crit_edge
  %97 = ptrtoint ptr %mfc_hash to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %mfc_hash, align 4
  %call.i.i190 = call i32 @lockdep_rht_mutex_is_held(ptr noundef %mfc_hash) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %tobool.not.i.i191 = icmp eq i32 %call.i.i190, 0
  br i1 %tobool.not.i.i191, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b3.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b3.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i192

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end12.i.i

if.then.i.i192:                                   ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 715, ptr noundef nonnull @.str.5) #17
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i192, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %100 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call.i.i161, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 100
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %98, i32 0, i32 2
  %101 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %102, -559038729
  %arrayidx32.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %103 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx32.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i = add i32 %104, %add1.i.i.i.i.i.i
  %105 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %106, %add1.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #17
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #17
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #17
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #17
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #17
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #17
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #17
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %107 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %98, align 128
  %sub.i.i.i.i.i = add i32 %108, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %98, i32 0, i32 1
  %109 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i5.i.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i5.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !212

cond.true.i7.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i6.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %mfc_hash, ptr noundef %98, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket_insert.exit.i.i

cond.false.i8.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %98, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i6.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  call fastcc void @rht_lock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i) #17
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %98, i32 0, i32 5
  %111 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %112, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !212

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i) #17
  %call.i11.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i11.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i14.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i14.i.i:                            ; preds = %slow_path.i.i
  %call1.i12.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %call1.i12.i.i, 0
  br i1 %tobool.not.i13.i.i, label %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i16.i.i

land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i16.i.i:                           ; preds = %land.lhs.true.i14.i.i
  %.b4.i15.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i, label %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i17.i.i

land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i.i

if.then.i17.i.i:                                  ; preds = %land.lhs.true2.i16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i17.i.i, %land.lhs.true2.i16.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i14.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %113 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i18.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i18.i.i to ptr
  %preempt_count.i.i.i.i19.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i, align 4
  %sub.i.i.i20.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i20.i.i, ptr %preempt_count.i.i.i.i19.i.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %call29.i.i = call ptr @rhashtable_insert_slow(ptr noundef %mfc_hash, ptr noundef %64, ptr noundef %call.i.i161) #17
  br label %rhltable_insert_key.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i21.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %98, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i)
  %tobool.not.i22.i.i = icmp eq i32 %call.i21.i.i, 0
  br i1 %tobool.not.i22.i.i, label %land.lhs.true.i24.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.end30.i.i
  %call1.i23.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i24.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i25.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

if.then.i25.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.1) #17
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i25.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i24.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %117 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cond.i9.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  %and.i.i.i.i = and i32 %119, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %120 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %120, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i87.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87.i.i)
  %tobool.i.not88.i.i = icmp eq i32 %and.i87.i.i, 0
  br i1 %tobool.i.not88.i.i, label %for.body.lr.ph.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i.i

for.body.lr.ph.i.i:                               ; preds = %rht_ptr.exit.i.i
  %121 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pprev.091.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %head.090.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %head.090.i.i = phi ptr [ %121, %for.body.lr.ph.i.i ], [ %139, %do.end147.i.i.for.body.i.i_crit_edge ]
  %elasticity.089.i.i = phi i32 [ 16, %for.body.lr.ph.i.i ], [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ]
  %dec.i.i = add i32 %elasticity.089.i.i, -1
  %122 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i29.i.i = zext i16 %123 to i32
  %idx.neg.i30.i.i = sub nsw i32 0, %conv.i29.i.i
  %add.ptr.i31.i.i = getelementptr i8, ptr %head.090.i.i, i32 %idx.neg.i30.i.i
  %124 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %64, align 4
  %126 = getelementptr inbounds %struct.mfc_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %128)
  %cmp.not.i = icmp eq i32 %125, %128
  br i1 %cmp.not.i, label %ipmr_hash_cmp.exit, label %for.body.i.i.do.body136.i.i_crit_edge

for.body.i.i.do.body136.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i.i

ipmr_hash_cmp.exit:                               ; preds = %for.body.i.i
  %129 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mfc_origin, align 8
  %mfc_origin2.i = getelementptr inbounds %struct.mfc_cache, ptr %add.ptr.i31.i.i, i32 0, i32 1, i32 0, i32 1
  %131 = ptrtoint ptr %mfc_origin2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mfc_origin2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp3.i.not = icmp eq i32 %130, %132
  br i1 %cmp3.i.not, label %if.end46.i.i, label %ipmr_hash_cmp.exit.do.body136.i.i_crit_edge

ipmr_hash_cmp.exit.do.body136.i.i_crit_edge:      ; preds = %ipmr_hash_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body136.i.i

if.end46.i.i:                                     ; preds = %ipmr_hash_cmp.exit
  %next61.i.i = getelementptr inbounds %struct.rhlist_head, ptr %call.i.i161, i32 0, i32 1
  %133 = ptrtoint ptr %next61.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %head.090.i.i, ptr %next61.i.i, align 4
  %call69.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %98, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %tobool70.not.i.i = icmp eq i32 %call69.i.i, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true71.i.i, label %if.end46.i.i.do.end79.i.i_crit_edge

if.end46.i.i.do.end79.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end79.i.i

land.lhs.true71.i.i:                              ; preds = %if.end46.i.i
  %call72.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i.i)
  %tobool73.not.i.i = icmp eq i32 %call72.i.i, 0
  br i1 %tobool73.not.i.i, label %land.lhs.true71.i.i.do.end79.i.i_crit_edge, label %land.lhs.true74.i.i

land.lhs.true71.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end79.i.i

land.lhs.true74.i.i:                              ; preds = %land.lhs.true71.i.i
  %.b2812.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.31, align 1
  br i1 %.b2812.i.i, label %land.lhs.true74.i.i.do.end79.i.i_crit_edge, label %if.then76.i.i

land.lhs.true74.i.i.do.end79.i.i_crit_edge:       ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end79.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true74.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned.31, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 755, ptr noundef nonnull @.str.1) #17
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %if.then76.i.i, %land.lhs.true74.i.i.do.end79.i.i_crit_edge, %land.lhs.true71.i.i.do.end79.i.i_crit_edge, %if.end46.i.i.do.end79.i.i_crit_edge
  %134 = ptrtoint ptr %head.090.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %head.090.i.i, align 4
  %136 = ptrtoint ptr %call.i.i161 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %135, ptr %call.i.i161, align 8
  %tobool95.not.i.i = icmp eq ptr %pprev.091.i.i, null
  br i1 %tobool95.not.i.i, label %if.else133.i.i, label %do.body97.i.i

do.body97.i.i:                                    ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !225
  %137 = ptrtoint ptr %pprev.091.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %call.i.i161, ptr %pprev.091.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i) #17
  br label %out.i.i

if.else133.i.i:                                   ; preds = %do.end79.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @rht_assign_unlock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i, ptr noundef %call.i.i161) #17
  br label %out.i.i

do.body136.i.i:                                   ; preds = %ipmr_hash_cmp.exit.do.body136.i.i_crit_edge, %for.body.i.i.do.body136.i.i_crit_edge
  %call137.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %98, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %do.body136.i.i.do.end147.i.i_crit_edge

do.body136.i.i.do.end147.i.i_crit_edge:           ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %do.body136.i.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2821.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.32, align 1
  br i1 %.b2821.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_insert_fast.__warned.32, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 732, ptr noundef nonnull @.str.1) #17
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %do.body136.i.i.do.end147.i.i_crit_edge
  %138 = ptrtoint ptr %head.090.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %head.090.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  %and.i.i.i = and i32 %140, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %nelems.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 8
  %call.i.i.i39.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %141 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %nelems.i.i.i, align 4
  %max_elems.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 2
  %143 = ptrtoint ptr %max_elems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_elems.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp.i.not.i.i = icmp ult i32 %142, %144
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !212

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i41.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %145 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %nelems.i.i.i, align 4
  %147 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %98, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp.i42.i.i = icmp ugt i32 %146, %148
  br i1 %cmp.i42.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %max_size.i.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 4
  %149 = ptrtoint ptr %max_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %max_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i43.i.i = icmp eq i32 %150, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %150)
  %cmp4.i.i.i = icmp ult i32 %148, %150
  %spec.select.i.i.i = select i1 %tobool.not.i43.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !218

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i44.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %98, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i48.i.i, label %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge

if.end171.i.i.rht_ptr.exit56.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.end171.i.i
  %call1.i46.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool2.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool2.not.i47.i.i, label %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, label %land.lhs.true3.i50.i.i

land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

land.lhs.true3.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b7.i49.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i, label %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit56.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true3.i50.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.1) #17
  br label %rht_ptr.exit56.i.i

rht_ptr.exit56.i.i:                               ; preds = %if.then.i51.i.i, %land.lhs.true3.i50.i.i.rht_ptr.exit56.i.i_crit_edge, %land.lhs.true.i48.i.i.rht_ptr.exit56.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit56.i.i_crit_edge
  %151 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cond.i9.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  %and.i.i52.i.i = and i32 %153, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %cond.i.i55.i.i = select i1 %tobool.not.i.i53.i.i, i32 %or.i.i.i.i, i32 %and.i.i52.i.i
  %154 = inttoptr i32 %cond.i.i55.i.i to ptr
  %155 = ptrtoint ptr %call.i.i161 to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %154, ptr %call.i.i161, align 8
  %next198.i.i = getelementptr inbounds %struct.rhlist_head, ptr %call.i.i161, i32 0, i32 1
  %156 = ptrtoint ptr %next198.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr null, ptr %next198.i.i, align 4
  %call.i.i.i.i193 = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #17
  %157 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #17, !srcloc !226
  call fastcc void @rht_assign_unlock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i, ptr noundef %call.i.i161) #17
  %call.i.i.i58.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #17
  %158 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %nelems.i.i.i, align 4
  %160 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %98, align 128
  %div8.i.i.i = lshr i32 %161, 2
  %mul.i.i.i = mul nuw i32 %div8.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %mul.i.i.i)
  %cmp.i59.i.i = icmp ugt i32 %159, %mul.i.i.i
  br i1 %cmp.i59.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit56.i.i.out.i.i_crit_edge

rht_ptr.exit56.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit56.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit56.i.i
  %max_size.i60.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 3, i32 4
  %162 = ptrtoint ptr %max_size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i61.i.i = icmp eq i32 %163, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %163)
  %cmp4.i62.i.i = icmp ult i32 %161, %163
  %spec.select.i63.i.i = select i1 %tobool.not.i61.i.i, i1 true, i1 %cmp4.i62.i.i
  br i1 %spec.select.i63.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %164 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %164, ptr noundef %run_work.i.i) #17
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit56.i.i.out.i.i_crit_edge, %if.else133.i.i, %do.body97.i.i, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %if.else133.i.i ], [ null, %do.body97.i.i ], [ null, %rht_ptr.exit56.i.i.out.i.i_crit_edge ]
  %call.i66.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i66.i.i, label %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true.i69.i.i

out.i.i.rcu_read_unlock.exit76.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true.i69.i.i:                            ; preds = %out.i.i
  %call1.i67.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %call1.i67.i.i, 0
  br i1 %tobool.not.i68.i.i, label %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %land.lhs.true2.i71.i.i

land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

land.lhs.true2.i71.i.i:                           ; preds = %land.lhs.true.i69.i.i
  %.b4.i70.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i, label %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, label %if.then.i72.i.i

land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit76.i.i

if.then.i72.i.i:                                  ; preds = %land.lhs.true2.i71.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit76.i.i

rcu_read_unlock.exit76.i.i:                       ; preds = %if.then.i72.i.i, %land.lhs.true2.i71.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %land.lhs.true.i69.i.i.rcu_read_unlock.exit76.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit76.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %165 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i73.i.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i.i.i73.i.i to ptr
  %preempt_count.i.i.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i, align 4
  %sub.i.i.i75.i.i = add i32 %168, -1
  store volatile i32 %sub.i.i.i75.i.i, ptr %preempt_count.i.i.i.i74.i.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %rhltable_insert_key.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @rht_unlock(ptr noundef %98, ptr noundef nonnull %cond.i9.i.i) #17
  br label %out.i.i

rhltable_insert_key.exit:                         ; preds = %rcu_read_unlock.exit76.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit76.i.i ]
  %tobool43.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool43.not, label %if.end46, label %do.end

do.end:                                           ; preds = %rhltable_insert_key.exit
  call void @__sanitizer_cov_trace_pc() #19
  %169 = ptrtoint ptr %retval.0.i.i to i32
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %169) #21
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ipmr_cache_free_rcu) #17
  br label %cleanup

if.end46:                                         ; preds = %rhltable_insert_key.exit
  %list = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 4
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9, i32 1
  %170 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev.i, align 4
  %call.i.i194 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %171, ptr noundef %mfc_cache_list) #17
  br i1 %call.i.i194, label %if.end.i.i, label %if.end46.list_add_tail_rcu.exit_crit_edge

if.end46.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  %172 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %mfc_cache_list, ptr %list, align 8
  %prev2.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i161, i32 0, i32 4, i32 1
  %173 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %171, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %list, ptr %171, align 4
  %175 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %list, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end46.list_add_tail_rcu.exit_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %176 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn226 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp51.not228 = icmp eq ptr %.pn226, %mfc_unres_queue
  br i1 %cmp51.not228, label %list_add_tail_rcu.exit.for.end_crit_edge, label %for.body.lr.ph

list_add_tail_rcu.exit.for.end_crit_edge:         ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add_tail_rcu.exit
  %177 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mfc_origin, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn229 = phi ptr [ %.pn226, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %mfc_origin53 = getelementptr i8, ptr %.pn229, i32 24
  %179 = ptrtoint ptr %mfc_origin53 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mfc_origin53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %178)
  %cmp55 = icmp eq i32 %180, %178
  br i1 %cmp55, label %land.lhs.true57, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true57:                                  ; preds = %for.body
  %181 = getelementptr i8, ptr %.pn229, i32 20
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  %184 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %185)
  %cmp60 = icmp eq i32 %183, %185
  br i1 %cmp60, label %if.then62, label %land.lhs.true57.for.inc_crit_edge

land.lhs.true57.for.inc_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then62:                                        ; preds = %land.lhs.true57
  %_uc.0230.le246 = getelementptr i8, ptr %.pn229, i32 -80
  %call.i.i195 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn229) #17
  br i1 %call.i.i195, label %if.end.i.i196, label %if.then62.list_del.exit_crit_edge

if.then62.list_del.exit_crit_edge:                ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i196:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn229, i32 0, i32 1
  %186 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i.i, align 4
  %188 = ptrtoint ptr %.pn229 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %.pn229, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev1.i.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %189, ptr %187, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i196, %if.then62.list_del.exit_crit_edge
  %192 = ptrtoint ptr %.pn229 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn229, align 4
  %prev.i197 = getelementptr inbounds %struct.list_head, ptr %.pn229, i32 0, i32 1
  %193 = ptrtoint ptr %prev.i197 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i197, align 4
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #17
  %194 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #17, !srcloc !228
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true57.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %195 = ptrtoint ptr %.pn229 to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn = load ptr, ptr %.pn229, align 4
  %cmp51.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp51.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %_uc.0230.le = getelementptr i8, ptr %.pn229, i32 -80
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %list_del.exit, %list_add_tail_rcu.exit.for.end_crit_edge
  %cmp51.not218 = phi i1 [ false, %list_del.exit ], [ true, %list_add_tail_rcu.exit.for.end_crit_edge ], [ true, %for.end.loopexit ]
  %uc.1 = phi ptr [ %_uc.0230.le246, %list_del.exit ], [ inttoptr (i32 -1 to ptr), %list_add_tail_rcu.exit.for.end_crit_edge ], [ %_uc.0230.le, %for.end.loopexit ]
  %196 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i198.not = icmp eq ptr %197, %mfc_unres_queue
  br i1 %cmp.i198.not, label %if.then73, label %for.end.if.end75_crit_edge

for.end.if.end75_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %ipmr_expire_timer = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 5
  %call74 = call i32 @del_timer(ptr noundef %ipmr_expire_timer) #17
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.end.if.end75_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  br i1 %cmp51.not218, label %if.end75.if.end78_crit_edge, label %if.then77

if.end75.if.end78_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end78

if.then77:                                        ; preds = %if.end75
  %unresolved.i = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 3, i32 0, i32 1
  %198 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %unresolved.i, align 4
  %cmp.i.i38.i = icmp eq ptr %199, %unresolved.i
  %tobool.not.i3739.i = icmp eq ptr %199, null
  %tobool.not.i40.i = or i1 %cmp.i.i38.i, %tobool.not.i3739.i
  br i1 %tobool.not.i40.i, label %if.then77.ipmr_cache_resolve.exit_crit_edge, label %while.body.lr.ph.i

if.then77.ipmr_cache_resolve.exit_crit_edge:      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_cache_resolve.exit

while.body.lr.ph.i:                               ; preds = %if.then77
  %qlen.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 3, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %200 = phi ptr [ %199, %while.body.lr.ph.i ], [ %227, %if.end17.i.while.body.i_crit_edge ]
  %201 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i199 = add i32 %202, -1
  store volatile i32 %sub.i.i.i199, ptr %qlen.i.i.i, align 4
  %203 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %200, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %200, i32 0, i32 1
  %205 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %200, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %204, i32 0, i32 1
  %207 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %206, ptr %prev17.i.i.i, align 4
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %204, ptr %206, align 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %200, i32 0, i32 18
  %209 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %200, i32 0, i32 15, i32 0, i32 20
  %211 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %212 to i32
  %add.ptr.i.i.i200 = getelementptr i8, ptr %210, i32 %conv.i.i.i
  %213 = ptrtoint ptr %add.ptr.i.i.i200 to i32
  call void @__asan_load1_noabort(i32 %213)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load.i)
  %cmp.i201 = icmp ult i8 %bf.load.i, 16
  br i1 %cmp.i201, label %if.then.i202, label %if.else16.i

if.then.i202:                                     ; preds = %while.body.i
  %call3.i = call ptr @skb_pull(ptr noundef nonnull %200, i32 noundef 20) #17
  %add.ptr.i.i = getelementptr i8, ptr %call3.i, i32 16
  %call6.i = call i32 @mr_fill_mroute(ptr noundef %mrt, ptr noundef nonnull %200, ptr noundef %call.i.i161, ptr noundef %add.ptr.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #19
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %200, i32 0, i32 16
  %214 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %215 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %216 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %if.end.i203

if.else.i:                                        ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #19
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %call3.i, i32 0, i32 1
  %217 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 2, ptr %nlmsg_type.i, align 4
  %218 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 36, ptr %call3.i, align 4
  call void @skb_trim(ptr noundef nonnull %200, i32 noundef 36) #17
  %219 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -90, ptr %add.ptr.i.i, align 4
  %msg.i = getelementptr i8, ptr %call3.i, i32 20
  %220 = call ptr @memset(ptr %msg.i, i32 0, i32 16)
  br label %if.end.i203

if.end.i203:                                      ; preds = %if.else.i, %if.then9.i
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %200, i32 0, i32 3, i32 12
  %221 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %portid.i, align 4
  %call15.i = call i32 @rtnl_unicast(ptr noundef nonnull %200, ptr noundef %net, i32 noundef %222) #17
  br label %if.end17.i

if.else16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %223 = getelementptr inbounds %struct.anon.83, ptr %200, i32 0, i32 2
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  call fastcc void @ip_mr_forward(ptr noundef %net, ptr noundef %mrt, ptr noundef %225, ptr noundef nonnull %200, ptr noundef %call.i.i161, i32 noundef 0) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else16.i, %if.end.i203
  %226 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %unresolved.i, align 4
  %cmp.i.i.i = icmp eq ptr %227, %unresolved.i
  %tobool.not.i37.i = icmp eq ptr %227, null
  %tobool.not.i.i204 = or i1 %cmp.i.i.i, %tobool.not.i37.i
  br i1 %tobool.not.i.i204, label %if.end17.i.ipmr_cache_resolve.exit_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end17.i.ipmr_cache_resolve.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_cache_resolve.exit

ipmr_cache_resolve.exit:                          ; preds = %if.end17.i.ipmr_cache_resolve.exit_crit_edge, %if.then77.ipmr_cache_resolve.exit_crit_edge
  %rcu.i205 = getelementptr inbounds %struct.mr_mfc, ptr %uc.1, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i205, ptr noundef nonnull @ipmr_cache_free_rcu) #17
  br label %if.end78

if.end78:                                         ; preds = %ipmr_cache_resolve.exit, %if.end75.if.end78_crit_edge
  %id79 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %228 = ptrtoint ptr %id79 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %id79, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i206) #17
  %230 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i206, i32 0, i32 1
  %231 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i206, i32 0, i32 1
  %232 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i206, i32 0, i32 2
  %233 = ptrtoint ptr %info.i.i206 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 128, ptr %info.i.i206, align 4
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %230, align 4
  %235 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call.i.i161, ptr %231, align 4
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %229, ptr %232, align 4
  %call.i.i207 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %tobool.not.i.i208 = icmp eq i32 %call.i.i207, 0
  br i1 %tobool.not.i.i208, label %land.rhs.i.i210, label %if.end78.call_ipmr_mfc_entry_notifiers.exit215_crit_edge

if.end78.call_ipmr_mfc_entry_notifiers.exit215_crit_edge: ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit215

land.rhs.i.i210:                                  ; preds = %if.end78
  %.b1.i.i209 = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i209, label %land.rhs.i.i210.call_ipmr_mfc_entry_notifiers.exit215_crit_edge, label %if.then.i.i211, !prof !212

land.rhs.i.i210.call_ipmr_mfc_entry_notifiers.exit215_crit_edge: ; preds = %land.rhs.i.i210
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit215

if.then.i.i211:                                   ; preds = %land.rhs.i.i210
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 208) #17
  br label %call_ipmr_mfc_entry_notifiers.exit215

call_ipmr_mfc_entry_notifiers.exit215:            ; preds = %if.then.i.i211, %land.rhs.i.i210.call_ipmr_mfc_entry_notifiers.exit215_crit_edge, %if.end78.call_ipmr_mfc_entry_notifiers.exit215_crit_edge
  %ipmr_seq.i212 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 135
  %237 = ptrtoint ptr %ipmr_seq.i212 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ipmr_seq.i212, align 4
  %inc.i.i213 = add i32 %238, 1
  store i32 %inc.i.i213, ptr %ipmr_seq.i212, align 4
  %call43.i.i214 = call i32 @call_fib_notifiers(ptr noundef %net, i32 noundef 2, ptr noundef nonnull %info.i.i206) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i206) #17
  call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i.i161, i32 noundef 24)
  br label %cleanup

cleanup:                                          ; preds = %call_ipmr_mfc_entry_notifiers.exit215, %do.end, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %call_ipmr_mfc_entry_notifiers.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %call_ipmr_mfc_entry_notifiers.exit ], [ %169, %do.end ], [ 0, %call_ipmr_mfc_entry_notifiers.exit215 ], [ -23, %entry.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mroute_clean_tables(ptr noundef %mrt, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.mfc_entry_notifier_info, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #17
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %and = and i32 %flags, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %for.cond.preheader

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

for.cond.preheader:                               ; preds = %entry
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %5 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp153 = icmp sgt i32 %6, 0
  br i1 %cmp153, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and5 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and14 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags2 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %i.0154, i32 8
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp slt i16 %8, 0
  %or.cond = and i1 %tobool6.not, %tobool4.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %tobool12.not = icmp sgt i16 %8, -1
  %or.cond143 = and i1 %tobool15.not, %tobool12.not
  %or.cond165 = or i1 %or.cond, %or.cond143
  br i1 %or.cond165, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call17 = call fastcc i32 @vif_delete(ptr noundef %mrt, i32 noundef %i.0154, i32 noundef 0, ptr noundef nonnull %list)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0154, 1
  %9 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxvif, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #17
  br label %if.end18

if.end18:                                         ; preds = %for.end, %entry.if.end18_crit_edge
  %and19 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end59_crit_edge, label %if.then21

if.end18.if.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then21:                                        ; preds = %if.end18
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 9
  %11 = ptrtoint ptr %mfc_cache_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfc_cache_list, align 4
  %cmp32.not158 = icmp eq ptr %12, %mfc_cache_list
  br i1 %cmp32.not158, label %if.then21.if.end59_crit_edge, label %for.body34.lr.ph

if.then21.if.end59_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

for.body34.lr.ph:                                 ; preds = %if.then21
  %and38 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %mfc_hash = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 8
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %13 = getelementptr inbounds %struct.fib_notifier_info, ptr %info.i.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.mfc_entry_notifier_info, ptr %info.i.i, i32 0, i32 2
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 135
  br label %for.body34

for.body34:                                       ; preds = %for.inc52.for.body34_crit_edge, %for.body34.lr.ph
  %.pn134.in159 = phi ptr [ %12, %for.body34.lr.ph ], [ %.pn134161, %for.inc52.for.body34_crit_edge ]
  %c.0160 = getelementptr i8, ptr %.pn134.in159, i32 -80
  %16 = ptrtoint ptr %.pn134.in159 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn134161 = load ptr, ptr %.pn134.in159, align 4
  %mfc_flags = getelementptr i8, ptr %.pn134.in159, i32 -68
  %17 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mfc_flags, align 4
  %and35 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp ne i32 %and35, 0
  %or.cond144 = and i1 %tobool39.not, %tobool36.not
  br i1 %or.cond144, label %for.body34.for.inc52_crit_edge, label %lor.lhs.false40

for.body34.for.inc52_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc52

lor.lhs.false40:                                  ; preds = %for.body34
  %19 = or i32 %18, %flags
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %lor.lhs.false40.for.inc52_crit_edge, label %if.end48

lor.lhs.false40.for.inc52_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc52

if.end48:                                         ; preds = %lor.lhs.false40
  call fastcc void @rhltable_remove(ptr noundef %mfc_hash, ptr noundef %c.0160, [7 x i32] [i32 196616, i32 6553600, i32 0, i32 256, i32 0, i32 0, i32 ptrtoint (ptr @ipmr_hash_cmp to i32)])
  %call.i.i146 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn134.in159) #17
  br i1 %call.i.i146, label %if.end.i.i, label %if.end48.list_del_rcu.exit_crit_edge

if.end48.list_del_rcu.exit_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn134.in159, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn134.in159 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn134.in159, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end48.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn134.in159, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #17
  %31 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %info.i.i, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %13, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %c.0160, ptr %14, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %30, ptr %15, align 4
  %call.i.i147 = call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %tobool.not.i.i = icmp eq i32 %call.i.i147, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge

list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

land.rhs.i.i:                                     ; preds = %list_del_rcu.exit
  %.b1.i.i = load i1, ptr @mr_call_mfc_notifiers.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, label %if.then.i.i, !prof !212

land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %call_ipmr_mfc_entry_notifiers.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mr_call_mfc_notifiers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 208) #17
  br label %call_ipmr_mfc_entry_notifiers.exit

call_ipmr_mfc_entry_notifiers.exit:               ; preds = %if.then.i.i, %land.rhs.i.i.call_ipmr_mfc_entry_notifiers.exit_crit_edge, %list_del_rcu.exit.call_ipmr_mfc_entry_notifiers.exit_crit_edge
  %35 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ipmr_seq.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %ipmr_seq.i, align 4
  %call43.i.i = call i32 @call_fib_notifiers(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %info.i.i) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #17
  call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef %c.0160, i32 noundef 25)
  %refcount.i = getelementptr i8, ptr %.pn134.in159, i32 -4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !222
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #17
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #17, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %call_ipmr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc52_crit_edge, label %if.then10.i.i.i.i, !prof !212

if.end5.i.i.i.i.for.inc52_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc52

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #17
  br label %for.inc52

if.then.i:                                        ; preds = %call_ipmr_mfc_entry_notifiers.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  %rcu.i = getelementptr i8, ptr %.pn134.in159, i32 8
  %free.i = getelementptr i8, ptr %.pn134.in159, i32 16
  %38 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %free.i, align 4
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef %39) #17
  br label %for.inc52

for.inc52:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc52_crit_edge, %lor.lhs.false40.for.inc52_crit_edge, %for.body34.for.inc52_crit_edge
  %cmp32.not = icmp eq ptr %.pn134161, %mfc_cache_list
  br i1 %cmp32.not, label %for.inc52.if.end59_crit_edge, label %for.inc52.for.body34_crit_edge

for.inc52.for.body34_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body34

for.inc52.if.end59_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.end59:                                         ; preds = %for.inc52.if.end59_crit_edge, %if.then21.if.end59_crit_edge, %if.end18.if.end59_crit_edge
  %and60 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end92_crit_edge, label %if.then62

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

if.then62:                                        ; preds = %if.end59
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #17
  %40 = ptrtoint ptr %cache_resolve_queue_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %cache_resolve_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp64.not = icmp eq i32 %41, 0
  br i1 %cmp64.not, label %if.then62.if.end92_crit_edge, label %if.then66

if.then62.if.end92_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end92

if.then66:                                        ; preds = %if.then62
  call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %42 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp79.not162 = icmp eq ptr %43, %mfc_unres_queue
  br i1 %cmp79.not162, label %if.then66.for.end90_crit_edge, label %if.then66.for.body82_crit_edge

if.then66.for.body82_crit_edge:                   ; preds = %if.then66
  br label %for.body82

if.then66.for.end90_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end90

for.body82:                                       ; preds = %list_del.exit.for.body82_crit_edge, %if.then66.for.body82_crit_edge
  %.pn.in163 = phi ptr [ %.pn, %list_del.exit.for.body82_crit_edge ], [ %43, %if.then66.for.body82_crit_edge ]
  %c.1 = getelementptr i8, ptr %.pn.in163, i32 -80
  %44 = ptrtoint ptr %.pn.in163 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn = load ptr, ptr %.pn.in163, align 4
  %call.i.i148 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in163) #17
  br i1 %call.i.i148, label %if.end.i.i151, label %for.body82.list_del.exit_crit_edge

for.body82.list_del.exit_crit_edge:               ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i151:                                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i149 = getelementptr inbounds %struct.list_head, ptr %.pn.in163, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i149, align 4
  %47 = ptrtoint ptr %.pn.in163 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn.in163, align 4
  %prev1.i.i.i150 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i150, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i151, %for.body82.list_del.exit_crit_edge
  %51 = ptrtoint ptr %.pn.in163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in163, align 4
  %prev.i152 = getelementptr inbounds %struct.list_head, ptr %.pn.in163, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i152, align 4
  call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef %c.1, i32 noundef 25)
  call fastcc void @ipmr_destroy_unres(ptr noundef %mrt, ptr noundef %c.1)
  %cmp79.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp79.not, label %list_del.exit.for.end90_crit_edge, label %list_del.exit.for.body82_crit_edge

list_del.exit.for.body82_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body82

list_del.exit.for.end90_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end90

for.end90:                                        ; preds = %list_del.exit.for.end90_crit_edge, %if.then66.for.end90_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  br label %if.end92

if.end92:                                         ; preds = %for.end90, %if.then62.if.end92_crit_edge, %if.end59.if.end92_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipmr_new_table(ptr noundef %net, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %id)
  %cmp1 = icmp ugt i32 %id, 999999999
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %0 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %4, %id
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ipmr_get_table.exit.if.end4_crit_edge, label %ipmr_get_table.exit.cleanup_crit_edge

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ipmr_get_table.exit.if.end4_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.end4:                                          ; preds = %ipmr_get_table.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  %call5 = tail call ptr @mr_table_alloc(ptr noundef %net, i32 noundef %id, ptr noundef nonnull @ipmr_mr_table_ops, ptr noundef nonnull @ipmr_expire_process, ptr noundef nonnull @ipmr_new_table_set) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %ipmr_get_table.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ %mrt.0.i, %ipmr_get_table.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mroute_getsockopt(ptr nocapture noundef readonly %sk, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.18, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp5.not = icmp eq i16 %6, 2
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ipmr_table = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 2
  %7 = ptrtoint ptr %ipmr_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ipmr_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %. = select i1 %tobool.not, i32 253, i32 %8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  %9 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i73

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i73:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i73, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %13, %.
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool9.not, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end11

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %ipmr_get_table.exit
  %14 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %optname, label %if.end11.cleanup_crit_edge [
    i32 206, label %sw.bb
    i32 208, label %sw.bb12
    i32 207, label %sw.bb18
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 773, ptr %val, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 13
  %16 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mroute_do_pim, align 1, !range !210
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 12
  %20 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mroute_do_assert, align 4, !range !210
  %22 = zext i8 %21 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb12, %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1570) #17
  %24 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !213
  %and.i = and i32 %26, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #17, !srcloc !229
  %asmresult = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool24.not = icmp eq i32 %asmresult, 0
  br i1 %tobool24.not, label %if.end26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  %asmresult22 = extractvalue { i32, i32 } %27, 1
  %28 = tail call i32 @llvm.umin.i32(i32 %asmresult22, i32 4)
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1575) #17
  %29 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i69 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i69 to ptr
  %cpu_domain.i.i70 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70) #10, !srcloc !213
  %and.i71 = and i32 %31, -13
  %or.i72 = or i32 %and.i71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %28, i32 -1226833921) #17, !srcloc !230
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #17, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool47.not = icmp eq i32 %32, 0
  br i1 %tobool47.not, label %if.then.i.i.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end26
  call void @__check_object_size(ptr noundef nonnull %val, i32 noundef %28, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #17
  %call.i.i = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %28, i32 -1226833920) #20, !srcloc !231
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef %28) #17
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %val, i32 noundef %28) #17
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %28, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %28, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool51.not = icmp eq i32 %n.addr.0.i, 0
  %.68 = select i1 %tobool51.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end26.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -2, %ipmr_get_table.exit.cleanup_crit_edge ], [ -92, %if.end11.cleanup_crit_edge ], [ -14, %sw.epilog.cleanup_crit_edge ], [ -14, %if.end26.cleanup_crit_edge ], [ %.68, %copy_to_user.exit ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmr_ioctl(ptr nocapture noundef readonly %sk, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  %sr = alloca %struct.sioc_sg_req, align 4
  %vr = alloca %struct.sioc_vif_req, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sr) #17
  %0 = getelementptr inbounds %struct.sioc_sg_req, ptr %sr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sioc_sg_req, ptr %sr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.sioc_sg_req, ptr %sr, i32 0, i32 3
  %3 = getelementptr inbounds %struct.sioc_sg_req, ptr %sr, i32 0, i32 4
  %4 = call ptr @memset(ptr %sr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vr) #17
  %5 = call ptr @memset(ptr %vr, i32 255, i32 20)
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %ipmr_table = getelementptr inbounds %struct.raw_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %ipmr_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ipmr_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %. = select i1 %tobool.not, i32 253, i32 %9
  %call.i122 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i122, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 127
  %10 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i123

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i123:                               ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i123.do.end.i_crit_edge

land.lhs.true.i123.do.end.i_crit_edge:            ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i123
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i124

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i124:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i124, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i123.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %14, %.
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool3.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool3.not, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipmr_get_table.exit
  %15 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35296, label %if.end59.i.i
    i32 35297, label %if.end59.i.i88
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #17
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 20, i32 -1226833920) #20
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !212

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %vr, i32 noundef 20) #17
  %17 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !213
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #17, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %vr, ptr noundef %arg, i32 noundef 20) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #17, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !212

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i152 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 20, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.0.i.i152
  %add.ptr.i.i = getelementptr i8, ptr %vr, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i152)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %21 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vr, align 4
  %conv = zext i16 %22 to i32
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %23 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv)
  %cmp.not = icmp sgt i32 %24, %conv
  br i1 %cmp.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %25 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %24) #17, !srcloc !232
  %26 = trunc i32 %25 to i16
  %conv19 = and i16 %22, %26
  %27 = ptrtoint ptr %vr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv19, ptr %vr, align 4
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %28 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vr, align 4
  %idxprom = zext i16 %29 to i32
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %if.end32, label %if.end59.i.i78

if.end59.i.i78:                                   ; preds = %if.end10
  %pkt_in = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 4
  %32 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pkt_in, align 4
  %icount = getelementptr inbounds %struct.sioc_vif_req, ptr %vr, i32 0, i32 1
  %34 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %icount, align 4
  %pkt_out = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 5
  %35 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pkt_out, align 4
  %ocount = getelementptr inbounds %struct.sioc_vif_req, ptr %vr, i32 0, i32 2
  %37 = ptrtoint ptr %ocount to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ocount, align 4
  %bytes_in = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 2
  %38 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes_in, align 4
  %ibytes = getelementptr inbounds %struct.sioc_vif_req, ptr %vr, i32 0, i32 3
  %40 = ptrtoint ptr %ibytes to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ibytes, align 4
  %bytes_out = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %idxprom, i32 3
  %41 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytes_out, align 4
  %obytes = getelementptr inbounds %struct.sioc_vif_req, ptr %vr, i32 0, i32 4
  %43 = ptrtoint ptr %obytes to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %obytes, align 4
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #17
  %call.i.i79 = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i79, label %if.end59.i.i78.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i78.cleanup_crit_edge:                 ; preds = %if.end59.i.i78
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i78
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i83 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vr, i32 noundef 20) #17
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %vr, i32 noundef 20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %cleanup

if.end32:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  br label %cleanup

if.end59.i.i88:                                   ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #17
  %call.i.i89 = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i89, label %if.end59.i.i88.if.then11.i.i105_crit_edge, label %land.lhs.true.i.i92

if.end59.i.i88.if.then11.i.i105_crit_edge:        ; preds = %if.end59.i.i88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i105

land.lhs.true.i.i92:                              ; preds = %if.end59.i.i88
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 20, i32 -1226833920) #20
  %asmresult.i.i90 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i90)
  %cmp.i6.i91 = icmp eq i32 %asmresult.i.i90, 0
  br i1 %cmp.i6.i91, label %if.end.i.i102, label %land.lhs.true.i.i92.if.then11.i.i105_crit_edge, !prof !212

land.lhs.true.i.i92.if.then11.i.i105_crit_edge:   ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i105

if.end.i.i102:                                    ; preds = %land.lhs.true.i.i92
  %call.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sr, i32 noundef 20) #17
  %45 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i.i94 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i94 to ptr
  %cpu_domain.i.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i95) #10, !srcloc !213
  %and.i.i.i.i96 = and i32 %47, -13
  %or.i.i.i.i97 = or i32 %and.i.i.i.i96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i97) #17, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  %call1.i.i.i98 = call i32 @arm_copy_from_user(ptr noundef nonnull %sr, ptr noundef %arg, i32 noundef 20) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #17, !srcloc !214
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i98)
  %tobool4.not.i.i101 = icmp eq i32 %call1.i.i.i98, 0
  br i1 %tobool4.not.i.i101, label %if.end37, label %if.end.i.i102.if.then11.i.i105_crit_edge, !prof !212

if.end.i.i102.if.then11.i.i105_crit_edge:         ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i105

if.then11.i.i105:                                 ; preds = %if.end.i.i102.if.then11.i.i105_crit_edge, %land.lhs.true.i.i92.if.then11.i.i105_crit_edge, %if.end59.i.i88.if.then11.i.i105_crit_edge
  %res.0.i.i100159 = phi i32 [ %call1.i.i.i98, %if.end.i.i102.if.then11.i.i105_crit_edge ], [ 20, %if.end59.i.i88.if.then11.i.i105_crit_edge ], [ 20, %land.lhs.true.i.i92.if.then11.i.i105_crit_edge ]
  %sub.i.i103 = sub i32 20, %res.0.i.i100159
  %add.ptr.i.i104 = getelementptr i8, ptr %sr, i32 %sub.i.i103
  %48 = call ptr @memset(ptr %add.ptr.i.i104, i32 0, i32 %res.0.i.i100159)
  br label %cleanup

if.end37:                                         ; preds = %if.end.i.i102
  %49 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end37.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end37.rcu_read_lock.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end37
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end37.rcu_read_lock.exit_crit_edge
  %53 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sr, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %57 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %58 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %arg.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %54, ptr %57, align 4
  %call.i.i125 = call ptr @mr_mfc_find_parent(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %arg.i, i32 noundef -1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %tobool40.not = icmp eq ptr %call.i.i125, null
  br i1 %tobool40.not, label %if.end51, label %if.then41

if.then41:                                        ; preds = %rcu_read_lock.exit
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 4
  %60 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pkt, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %1, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 3
  %63 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bytes, align 4
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %2, align 4
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i125, i32 0, i32 3, i32 0, i32 5
  %66 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wrong_if, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %3, align 4
  %call.i126 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i126, label %if.then41.if.end59.i.i111_crit_edge, label %land.lhs.true.i129

if.then41.if.end59.i.i111_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i.i111

land.lhs.true.i129:                               ; preds = %if.then41
  %call1.i127 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.if.end59.i.i111_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.if.end59.i.i111_crit_edge:     ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i.i111

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.if.end59.i.i111_crit_edge, label %if.then.i132

land.lhs.true2.i131.if.end59.i.i111_crit_edge:    ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i.i111

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %if.end59.i.i111

if.end59.i.i111:                                  ; preds = %if.then.i132, %land.lhs.true2.i131.if.end59.i.i111_crit_edge, %land.lhs.true.i129.if.end59.i.i111_crit_edge, %if.then41.if.end59.i.i111_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %69 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i133 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #17
  %call.i.i112 = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i112, label %if.end59.i.i111.cleanup_crit_edge, label %copy_to_user.exit121

if.end59.i.i111.cleanup_crit_edge:                ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

copy_to_user.exit121:                             ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i117 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sr, i32 noundef 20) #17
  %call.i12.i.i118 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %sr, i32 noundef 20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i118)
  %tobool48.not = icmp eq i32 %call.i12.i.i118, 0
  %spec.select164 = select i1 %tobool48.not, i32 0, i32 -14
  br label %cleanup

if.end51:                                         ; preds = %rcu_read_lock.exit
  %call.i136 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i136, label %if.end51.rcu_read_unlock.exit147_crit_edge, label %land.lhs.true.i139

if.end51.rcu_read_unlock.exit147_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit147

land.lhs.true.i139:                               ; preds = %if.end51
  %call1.i137 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge, label %land.lhs.true2.i141

land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit147

land.lhs.true2.i141:                              ; preds = %land.lhs.true.i139
  %.b4.i140 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140, label %land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge, label %if.then.i142

land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge: ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit147

if.then.i142:                                     ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit147

rcu_read_unlock.exit147:                          ; preds = %if.then.i142, %land.lhs.true2.i141.rcu_read_unlock.exit147_crit_edge, %land.lhs.true.i139.rcu_read_unlock.exit147_crit_edge, %if.end51.rcu_read_unlock.exit147_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %73 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i143 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %preempt_count.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i144, align 4
  %sub.i.i.i145 = add i32 %76, -1
  store volatile i32 %sub.i.i.i145, ptr %preempt_count.i.i.i.i144, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit147, %copy_to_user.exit121, %if.end59.i.i111.cleanup_crit_edge, %if.then11.i.i105, %if.end32, %copy_to_user.exit, %if.end59.i.i78.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %rcu_read_unlock.exit147 ], [ -99, %if.end32 ], [ -2, %ipmr_get_table.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i78.cleanup_crit_edge ], [ -14, %if.then11.i.i105 ], [ -14, %if.end59.i.i111.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select164, %copy_to_user.exit121 ], [ -2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vr) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sr) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mr_input(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %arg.i166 = alloca %struct.mfc_cache_cmp_arg, align 4
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !218

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i.i = and i32 %9, -2
  %10 = inttoptr i32 %and25.i.i to ptr
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rt_flags, align 4
  %and = and i32 %12, -2147483648
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %skb_rtable.exit.if.end5_crit_edge, label %if.then

skb_rtable.exit.if.end5_crit_edge:                ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %skb_rtable.exit
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb, align 8
  %call3 = tail call ptr @dev_get_by_index_rcu(ptr noundef %4, i32 noundef %18) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup96

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %skb_rtable.exit.if.end5_crit_edge
  %dev.0 = phi ptr [ %call3, %if.then.if.end5_crit_edge ], [ %14, %skb_rtable.exit.if.end5_crit_edge ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 4
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not = icmp eq i16 %21, 0
  br i1 %tobool9.not, label %if.end11, label %dont_forward

if.end11:                                         ; preds = %if.end5
  %call12 = tail call fastcc ptr @ipmr_rt_fib_lookup(ptr noundef %4, ptr noundef %skb)
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  %22 = ptrtoint ptr %call12 to i32
  br label %cleanup96

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end49_crit_edge

if.end16.if.end49_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then18:                                        ; preds = %if.end16
  %router_alert = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 17
  %23 = ptrtoint ptr %router_alert to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %router_alert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool21.not = icmp eq i8 %24, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then18
  %call23 = tail call zeroext i1 @ip_call_ra_chain(ptr noundef %skb) #17
  br i1 %call23, label %if.then22.cleanup96_crit_edge, label %if.then22.if.end49_crit_edge

if.then22.if.end49_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then22.cleanup96_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup96

if.else:                                          ; preds = %if.then18
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %28 to i32
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp = icmp eq i8 %30, 2
  br i1 %cmp, label %if.then29, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then29:                                        ; preds = %if.else
  %mroute_sk30 = getelementptr inbounds %struct.mr_table, ptr %call12, i32 0, i32 4
  %31 = ptrtoint ptr %mroute_sk30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %mroute_sk30, align 4
  %call32 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.then29.do.end41_crit_edge

if.then29.do.end41_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

land.lhs.true:                                    ; preds = %if.then29
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true.do.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true
  %.b151 = load i1, ptr @ip_mr_input.__warned, align 1
  br i1 %.b151, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ip_mr_input.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2114, ptr noundef nonnull @.str.5) #17
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true.do.end41_crit_edge, %if.then29.do.end41_crit_edge
  %tobool43.not = icmp eq ptr %32, null
  br i1 %tobool43.not, label %do.end41.if.end49_crit_edge, label %if.then44

do.end41.if.end49_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.then44:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @nf_reset_ct(ptr noundef %skb)
  %call45 = tail call i32 @raw_rcv(ptr noundef nonnull %32, ptr noundef %skb) #17
  br label %cleanup96

if.end49:                                         ; preds = %do.end41.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.then22.if.end49_crit_edge, %if.end16.if.end49_crit_edge
  %head.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i152, align 8
  %network_header.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i153 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i153, align 4
  %conv.i.i154 = zext i16 %36 to i32
  %add.ptr.i.i155 = getelementptr i8, ptr %34, i32 %conv.i.i154
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i155, i32 0, i32 8
  %37 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i155, i32 0, i32 9
  %39 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %41 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %42 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %arg.i, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %41, align 4
  %call.i.i160 = call ptr @mr_mfc_find_parent(ptr noundef %call12, ptr noundef nonnull %arg.i, i32 noundef -1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %tobool53.not = icmp eq ptr %call.i.i160, null
  br i1 %tobool53.not, label %if.then54, label %if.end49.if.end87_crit_edge

if.end49.if.end87_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then54:                                        ; preds = %if.end49
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %call12, i32 0, i32 10
  %44 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then54
  %ct.0.in.i = phi i32 [ %45, %if.then54 ], [ %ct.0.i, %for.body.i.for.cond.i_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i161 = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i161, label %for.body.i, label %for.cond.i.if.then65_crit_edge

for.cond.i.if.then65_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then65

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.mr_table, ptr %call12, i32 0, i32 7, i32 %ct.0.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %47, %dev.0
  br i1 %cmp2.i, label %if.then58, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then58:                                        ; preds = %for.body.i
  %48 = ptrtoint ptr %head.i.i152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i152, align 8
  %50 = ptrtoint ptr %network_header.i.i153 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i153, align 4
  %conv.i.i164 = zext i16 %51 to i32
  %add.ptr.i.i165 = getelementptr i8, ptr %49, i32 %conv.i.i164
  %daddr60 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i165, i32 0, i32 9
  %52 = ptrtoint ptr %daddr60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %daddr60, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i166) #17
  %54 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i166, i32 0, i32 1
  %55 = ptrtoint ptr %arg.i166 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %arg.i166, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i167 = icmp eq i32 %53, 0
  br i1 %cmp.i167, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = call ptr @mr_mfc_find_any_parent(ptr noundef %call12, i32 noundef %ct.0.i) #17
  br label %if.end63

if.end.i:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = call ptr @mr_mfc_find_any(ptr noundef %call12, i32 noundef %ct.0.i, ptr noundef nonnull %arg.i166) #17
  br label %if.end63

if.end63:                                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i166) #17
  %tobool64.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool64.not, label %if.end63.if.then65_crit_edge, label %if.end63.if.end87_crit_edge

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.end63.if.then65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then65

if.then65:                                        ; preds = %if.end63.if.then65_crit_edge, %for.cond.i.if.then65_crit_edge
  br i1 %tobool17.not, label %if.then65.if.end77_crit_edge, label %if.then68

if.then65.if.end77_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then68:                                        ; preds = %if.then65
  %call69 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #17
  %call70 = call i32 @ip_local_deliver(ptr noundef %skb) #17
  %tobool71.not = icmp eq ptr %call69, null
  br i1 %tobool71.not, label %if.then68.cleanup96_crit_edge, label %if.then68.if.end77_crit_edge

if.then68.if.end77_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then68.cleanup96_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup96

if.end77:                                         ; preds = %if.then68.if.end77_crit_edge, %if.then65.if.end77_crit_edge
  %skb.addr.1 = phi ptr [ %call69, %if.then68.if.end77_crit_edge ], [ %skb, %if.then65.if.end77_crit_edge ]
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %57 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i173

for.cond.i173:                                    ; preds = %for.body.i176.for.cond.i173_crit_edge, %if.end77
  %ct.0.in.i170 = phi i32 [ %58, %if.end77 ], [ %ct.0.i171, %for.body.i176.for.cond.i173_crit_edge ]
  %ct.0.i171 = add i32 %ct.0.in.i170, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i171)
  %cmp.i172 = icmp sgt i32 %ct.0.i171, -1
  br i1 %cmp.i172, label %for.body.i176, label %if.end85

for.body.i176:                                    ; preds = %for.cond.i173
  %arrayidx.i174 = getelementptr %struct.mr_table, ptr %call12, i32 0, i32 7, i32 %ct.0.i171
  %59 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i174, align 4
  %cmp2.i175 = icmp eq ptr %60, %dev.0
  br i1 %cmp2.i175, label %if.then81, label %for.body.i176.for.cond.i173_crit_edge

for.body.i176.for.cond.i173_crit_edge:            ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i173

if.then81:                                        ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #19
  %conv82 = trunc i32 %ct.0.i171 to i16
  %call83 = call fastcc i32 @ipmr_cache_unresolved(ptr noundef %call12, i16 noundef zeroext %conv82, ptr noundef %skb.addr.1, ptr noundef %dev.0)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  br label %cleanup96

if.end85:                                         ; preds = %for.cond.i173
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #17
  br label %cleanup96

if.end87:                                         ; preds = %if.end63.if.end87_crit_edge, %if.end49.if.end87_crit_edge
  %cache.1187 = phi ptr [ %retval.0.i, %if.end63.if.end87_crit_edge ], [ %call.i.i160, %if.end49.if.end87_crit_edge ]
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  call fastcc void @ip_mr_forward(ptr noundef %4, ptr noundef %call12, ptr noundef %dev.0, ptr noundef %skb, ptr noundef nonnull %cache.1187, i32 noundef %and)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  br i1 %tobool17.not, label %if.end87.cleanup96_crit_edge, label %if.then89

if.end87.cleanup96_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup96

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %call90 = call i32 @ip_local_deliver(ptr noundef %skb) #17
  br label %cleanup96

dont_forward:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.end95, label %if.then93

if.then93:                                        ; preds = %dont_forward
  call void @__sanitizer_cov_trace_pc() #19
  %call94 = tail call i32 @ip_local_deliver(ptr noundef %skb) #17
  br label %cleanup96

if.end95:                                         ; preds = %dont_forward
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup96

cleanup96:                                        ; preds = %if.end95, %if.then93, %if.then89, %if.end87.cleanup96_crit_edge, %if.end85, %if.then81, %if.then68.cleanup96_crit_edge, %if.then44, %if.then22.cleanup96_crit_edge, %if.then14, %if.then4
  %retval.4 = phi i32 [ %call94, %if.then93 ], [ 0, %if.end95 ], [ %22, %if.then14 ], [ %call90, %if.then89 ], [ -19, %if.then4 ], [ 0, %if.then22.cleanup96_crit_edge ], [ 0, %if.then44 ], [ %call83, %if.then81 ], [ -19, %if.end85 ], [ -105, %if.then68.cleanup96_crit_edge ], [ 0, %if.end87.cleanup96_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipmr_rt_fib_lookup(ptr noundef %net, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %res.i = alloca %struct.ipmr_result, align 4
  %arg.i = alloca %struct.fib_lookup_arg, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !218

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #17
  %10 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %cond.end.thread, label %cond.false5

cond.end.thread:                                  ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #19
  %13 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  %18 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fl4, align 8
  %flowic_iif30 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  br label %cond.end7

cond.false5:                                      ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fl4, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ifindex6 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %ifindex6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifindex6, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.end.thread
  %flowic_iif31 = phi ptr [ %flowic_iif, %cond.false5 ], [ %flowic_iif30, %cond.end.thread ]
  %cond8 = phi i32 [ %24, %cond.false5 ], [ 1, %cond.end.thread ]
  %25 = ptrtoint ptr %flowic_iif31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond8, ptr %flowic_iif31, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flowic_mark, align 8
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %32 = and i8 %31, 30
  %33 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %flowic_tos, align 4
  %flowic_scope = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %saddr10 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %34 = call ptr @memset(ptr %flowic_scope, i32 0, i32 23)
  %35 = ptrtoint ptr %saddr10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saddr10, align 4
  %37 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %saddr, align 8
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %daddr11 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %daddr11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daddr11, align 4
  %40 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %daddr, align 4
  %uli = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %41 = ptrtoint ptr %uli to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %uli, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #17
  %42 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #17
  %43 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 2
  %45 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 3
  %46 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 4
  %47 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 5
  %48 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arg.i, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %43, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %res.i, ptr %44, align 4
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %45, align 4
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %46, align 4
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %47, align 4
  call void @l3mdev_update_flow(ptr noundef %net, ptr noundef nonnull %fl4) #17
  %mr_rules_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 128
  %54 = ptrtoint ptr %mr_rules_ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mr_rules_ops.i, align 4
  %call2.i = call i32 @fib_rules_lookup(ptr noundef %55, ptr noundef nonnull %fl4, i32 noundef 0, ptr noundef nonnull %arg.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i28 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i28, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #17
  %56 = inttoptr i32 %call2.i to ptr
  br label %cleanup

if.end:                                           ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #19
  %57 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %res.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %56, %if.then ], [ %58, %if.end ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #17
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_call_ra_chain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_reset_ct(ptr nocapture noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_put.exit_crit_edge, label %land.lhs.true.i

entry.nf_conntrack_put.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %nf_conntrack_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #17
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #17, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !212

if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nf_conntrack_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #17
  br label %nf_conntrack_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %2) #17
  br label %nf_conntrack_put.exit

nf_conntrack_put.exit:                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, %entry.nf_conntrack_put.exit_crit_edge
  %4 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_nfct.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_rcv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_deliver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmr_cache_unresolved(ptr noundef %mrt, i16 noundef zeroext %vifi, ptr noundef %skb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 6
  %4 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn87 = load ptr, ptr %mfc_unres_queue, align 4
  %cmp.not88 = icmp eq ptr %.pn87, %mfc_unres_queue
  br i1 %cmp.not88, label %entry.if.then10.critedge_crit_edge, label %for.body.lr.ph

entry.if.then10.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then10.critedge

for.body.lr.ph:                                   ; preds = %entry
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn89 = phi ptr [ %.pn87, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %7 = getelementptr i8, ptr %.pn89, i32 20
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %6)
  %cmp2 = icmp eq i32 %9, %6
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mfc_origin = getelementptr i8, ptr %.pn89, i32 24
  %10 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mfc_origin, align 4
  %12 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3 = icmp eq i32 %11, %13
  br i1 %cmp3, label %if.end34.loopexit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn89, align 4
  %cmp.not = icmp eq ptr %.pn, %mfc_unres_queue
  br i1 %cmp.not, label %for.inc.if.then10.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.if.then10.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then10.critedge

if.then10.critedge:                               ; preds = %for.inc.if.then10.critedge_crit_edge, %entry.if.then10.critedge_crit_edge
  %15 = load ptr, ptr @mrt_cachep, align 4
  %call.i.i84 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef 2848) #17
  %tobool.not.i = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10.critedge
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

if.end14:                                         ; preds = %if.then10.critedge
  %mfc_un.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 3
  %unresolved.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 3, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 3, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #17
  %16 = ptrtoint ptr %unresolved.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %unresolved.i, ptr %unresolved.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 3, i32 0, i32 2
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %unresolved.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 3, i32 0, i32 3
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, 1000
  %20 = ptrtoint ptr %mfc_un.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %mfc_un.i, align 8
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 1
  %21 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %mfc_parent, align 8
  %saddr16 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %saddr16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr16, align 4
  %24 = getelementptr inbounds %struct.mfc_cache, ptr %call.i.i84, i32 0, i32 1
  %mfc_origin17 = getelementptr inbounds %struct.mfc_cache, ptr %call.i.i84, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %mfc_origin17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %mfc_origin17, align 8
  %daddr18 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %daddr18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %daddr18, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %24, align 4
  %call20 = tail call fastcc i32 @ipmr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %vifi, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ipmr_cache_free_rcu) #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #17, !srcloc !226
  %list25 = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 4
  %30 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mfc_unres_queue, align 4
  %call.i.i85 = tail call zeroext i1 @__list_add_valid(ptr noundef %list25, ptr noundef %mfc_unres_queue, ptr noundef %31) #17
  br i1 %call.i.i85, label %if.end.i.i, label %if.end23.list_add.exit_crit_edge

if.end23.list_add.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list25, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %list25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %list25, align 8
  %prev3.i.i = getelementptr inbounds %struct.mr_mfc, ptr %call.i.i84, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mfc_unres_queue, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list25, ptr %mfc_unres_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end23.list_add.exit_crit_edge
  tail call fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef nonnull %call.i.i84, i32 noundef 24)
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #17
  %36 = ptrtoint ptr %cache_resolve_queue_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %cache_resolve_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp29 = icmp eq i32 %37, 1
  br i1 %cmp29, label %if.then30, label %list_add.exit.if.end34_crit_edge

list_add.exit.if.end34_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then30:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ipmr_expire_timer = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 5
  %38 = ptrtoint ptr %mfc_un.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mfc_un.i, align 8
  %call32 = tail call i32 @mod_timer(ptr noundef %ipmr_expire_timer, i32 noundef %39) #17
  br label %if.end34

if.end34.loopexit:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %c.0.le = getelementptr i8, ptr %.pn89, i32 -80
  br label %if.end34

if.end34:                                         ; preds = %if.end34.loopexit, %if.then30, %list_add.exit.if.end34_crit_edge
  %c.1 = phi ptr [ %call.i.i84, %if.then30 ], [ %call.i.i84, %list_add.exit.if.end34_crit_edge ], [ %c.0.le, %if.end34.loopexit ]
  %unresolved = getelementptr inbounds %struct.mr_mfc, ptr %c.1, i32 0, i32 3, i32 0, i32 1
  %qlen = getelementptr inbounds %struct.mr_mfc, ptr %c.1, i32 0, i32 3, i32 0, i32 3
  %40 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp37 = icmp ugt i32 %41, 3
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %if.end45

if.else:                                          ; preds = %if.end34
  %tobool39.not = icmp eq ptr %dev, null
  br i1 %tobool39.not, label %if.else.if.end41_crit_edge, label %if.then40

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %42 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev, ptr %42, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %44 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %46 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %skb_iif, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else.if.end41_crit_edge
  tail call void @skb_queue_tail(ptr noundef %unresolved, ptr noundef %skb) #17
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.then38
  %err.0 = phi i32 [ -105, %if.then38 ], [ 0, %if.end41 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @mfc_unres_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then22, %if.then13
  %retval.0 = phi i32 [ %err.0, %if.end45 ], [ %call20, %if.then22 ], [ -105, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_mr_forward(ptr noundef %net, ptr noundef %mrt, ptr noundef readnone %dev, ptr noundef %skb, ptr nocapture noundef %c, i32 noundef %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %0 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxvif.i, align 4
  %2 = add i32 %1, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %2, i32 -1) #17
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ct.0.in.i = phi i32 [ %1, %entry ], [ %ct.0.i, %for.body.i.for.cond.i_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.ipmr_find_vif.exit_crit_edge

for.cond.i.ipmr_find_vif.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_find_vif.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %ct.0.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %4, %dev
  br i1 %cmp2.i, label %for.body.i.ipmr_find_vif.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

for.body.i.ipmr_find_vif.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_find_vif.exit

ipmr_find_vif.exit:                               ; preds = %for.body.i.ipmr_find_vif.exit_crit_edge, %for.cond.i.ipmr_find_vif.exit_crit_edge
  %ct.0.lcssa.i = phi i32 [ %ct.0.i, %for.body.i.ipmr_find_vif.exit_crit_edge ], [ %smin.i, %for.cond.i.ipmr_find_vif.exit_crit_edge ]
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mfc_parent, align 4
  %conv = zext i16 %6 to i32
  %mfc_un = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pkt, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes, align 4
  %add = add i32 %12, %10
  store i32 %add, ptr %bytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 6
  %14 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lastuse, align 4
  %15 = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mfc_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.lcssa.i)
  %cmp7 = icmp sgt i32 %ct.0.lcssa.i, -1
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then, label %ipmr_find_vif.exit.if.end17_crit_edge

ipmr_find_vif.exit.if.end17_crit_edge:            ; preds = %ipmr_find_vif.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.then:                                          ; preds = %ipmr_find_vif.exit
  %call9 = tail call ptr @mr_mfc_find_any_parent(ptr noundef %mrt, i32 noundef %conv) #17
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.then.if.end17_crit_edge, label %land.lhs.true10

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

land.lhs.true10:                                  ; preds = %if.then
  %arrayidx = getelementptr %struct.mr_mfc, ptr %call9, i32 0, i32 3, i32 0, i32 7, i32 %ct.0.lcssa.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp14.not = icmp eq i8 %19, -1
  br i1 %cmp14.not, label %land.lhs.true10.if.end17_crit_edge, label %land.lhs.true10.forward_crit_edge

land.lhs.true10.forward_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #19
  br label %forward

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true10.if.end17_crit_edge, %if.then.if.end17_crit_edge, %ipmr_find_vif.exit.if.end17_crit_edge
  %arrayidx18 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %cmp20.not = icmp eq ptr %21, %dev
  br i1 %cmp20.not, label %if.end17.forward_crit_edge, label %if.then22

if.end17.forward_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %forward

if.then22:                                        ; preds = %if.end17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then22.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.then22.skb_rtable.exit_crit_edge:              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.then22
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !218

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.then22.skb_rtable.exit_crit_edge
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 8
  %and25.i.i = and i32 %26, -2
  %27 = inttoptr i32 %and25.i.i to ptr
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i230 = icmp eq i8 %29, 0
  br i1 %cmp.i230, label %skb_rtable.exit.dont_forward_crit_edge, label %if.end26

skb_rtable.exit.dont_forward_crit_edge:           ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

if.end26:                                         ; preds = %skb_rtable.exit
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 5
  %30 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wrong_if, align 4
  %inc29 = add i32 %31, 1
  store i32 %inc29, ptr %wrong_if, align 4
  br i1 %cmp7, label %land.lhs.true32, label %if.end26.dont_forward_crit_edge

if.end26.dont_forward_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true32:                                  ; preds = %if.end26
  %mroute_do_assert = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 12
  %32 = ptrtoint ptr %mroute_do_assert to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mroute_do_assert, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool33.not = icmp eq i8 %33, 0
  br i1 %tobool33.not, label %land.lhs.true32.dont_forward_crit_edge, label %land.lhs.true35

land.lhs.true32.dont_forward_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 13
  %34 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mroute_do_pim, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool36.not = icmp eq i8 %35, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %land.lhs.true35.land.lhs.true45_crit_edge

land.lhs.true35.land.lhs.true45_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true45

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %arrayidx41 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %ct.0.lcssa.i
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp43.not = icmp eq i8 %37, -1
  br i1 %cmp43.not, label %lor.lhs.false.dont_forward_crit_edge, label %lor.lhs.false.land.lhs.true45_crit_edge

lor.lhs.false.land.lhs.true45_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true45

lor.lhs.false.dont_forward_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true45:                                  ; preds = %lor.lhs.false.land.lhs.true45_crit_edge, %land.lhs.true35.land.lhs.true45_crit_edge
  %38 = ptrtoint ptr %mfc_un to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mfc_un, align 4
  %add48 = add i32 %39, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add48, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp49 = icmp slt i32 %sub, 0
  br i1 %cmp49, label %if.then51, label %land.lhs.true45.dont_forward_crit_edge

land.lhs.true45.dont_forward_crit_edge:           ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

if.then51:                                        ; preds = %land.lhs.true45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %42 = ptrtoint ptr %mfc_un to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mfc_un, align 4
  %conv55 = trunc i32 %ct.0.lcssa.i to i16
  %call56 = tail call fastcc i32 @ipmr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %conv55, i32 noundef 2)
  %mroute_do_wrvifwhole = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 14
  %43 = ptrtoint ptr %mroute_do_wrvifwhole to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mroute_do_wrvifwhole, align 2, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool57.not = icmp eq i8 %44, 0
  br i1 %tobool57.not, label %if.then51.dont_forward_crit_edge, label %if.then58

if.then51.dont_forward_crit_edge:                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

if.then58:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #19
  %call60 = tail call fastcc i32 @ipmr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %conv55, i32 noundef 4)
  br label %dont_forward

forward:                                          ; preds = %if.end17.forward_crit_edge, %land.lhs.true10.forward_crit_edge
  %pkt_in = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 4
  %45 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pkt_in, align 4
  %inc66 = add i32 %46, 1
  store i32 %inc66, ptr %pkt_in, align 4
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %bytes_in = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %conv, i32 2
  %49 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytes_in, align 4
  %add70 = add i32 %50, %48
  store i32 %add70, ptr %bytes_in, align 4
  %51 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mfc_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp72 = icmp eq i32 %52, 0
  br i1 %cmp72, label %land.lhs.true74, label %forward.if.end103_crit_edge

forward.if.end103_crit_edge:                      ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

land.lhs.true74:                                  ; preds = %forward
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp75 = icmp eq i32 %54, 0
  br i1 %cmp75, label %if.then77, label %land.lhs.true74.if.end103_crit_edge

land.lhs.true74.if.end103_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.then77:                                        ; preds = %land.lhs.true74
  br i1 %cmp7, label %land.lhs.true80, label %if.then77.dont_forward_crit_edge

if.then77.dont_forward_crit_edge:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true80:                                  ; preds = %if.then77
  %55 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mfc_parent, align 4
  %conv83 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0.lcssa.i, i32 %conv83)
  %cmp84.not = icmp eq i32 %ct.0.lcssa.i, %conv83
  br i1 %cmp84.not, label %land.lhs.true80.dont_forward_crit_edge, label %land.lhs.true86

land.lhs.true80.dont_forward_crit_edge:           ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true86:                                  ; preds = %land.lhs.true80
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %57 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %59 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %60 to i32
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %conv.i.i
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ttl, align 4
  %arrayidx94 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %conv83
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp96 = icmp ugt i8 %62, %64
  br i1 %cmp96, label %land.lhs.true86.if.then140_crit_edge, label %land.lhs.true86.dont_forward_crit_edge

land.lhs.true86.dont_forward_crit_edge:           ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

land.lhs.true86.if.then140_crit_edge:             ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then140

if.end103:                                        ; preds = %land.lhs.true74.if.end103_crit_edge, %forward.if.end103_crit_edge
  %maxvif = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 2
  %65 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %maxvif, align 4
  %minvif = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 1
  %ct.0241 = add i32 %66, -1
  %67 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %minvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0241, i32 %68)
  %cmp109.not242 = icmp slt i32 %ct.0241, %68
  br i1 %cmp109.not242, label %if.end103.dont_forward_crit_edge, label %for.body.lr.ph

if.end103.dont_forward_crit_edge:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

for.body.lr.ph:                                   ; preds = %if.end103
  %head.i.i231 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i232 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ct.0244 = phi i32 [ %ct.0241, %for.body.lr.ph ], [ %ct.0, %for.inc.for.body_crit_edge ]
  %psend.0243 = phi i32 [ -1, %for.body.lr.ph ], [ %psend.1, %for.inc.for.body_crit_edge ]
  %69 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mfc_origin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp112.not = icmp eq i32 %70, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ct.0244, i32 %ct.0.lcssa.i)
  %cmp115.not = icmp eq i32 %ct.0244, %ct.0.lcssa.i
  %or.cond229 = select i1 %cmp112.not, i1 %cmp115.not, i1 false
  br i1 %or.cond229, label %for.body.for.inc_crit_edge, label %land.lhs.true117

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true117:                                 ; preds = %for.body
  %71 = ptrtoint ptr %head.i.i231 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i.i231, align 8
  %73 = ptrtoint ptr %network_header.i.i232 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %network_header.i.i232, align 4
  %conv.i.i233 = zext i16 %74 to i32
  %add.ptr.i.i234 = getelementptr i8, ptr %72, i32 %conv.i.i233
  %ttl119 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i234, i32 0, i32 5
  %75 = ptrtoint ptr %ttl119 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ttl119, align 4
  %arrayidx124 = getelementptr %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 7, i32 %ct.0244
  %77 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp126 = icmp ugt i8 %76, %78
  br i1 %cmp126, label %if.then128, label %land.lhs.true117.for.inc_crit_edge

land.lhs.true117.for.inc_crit_edge:               ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then128:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %psend.0243)
  %cmp129.not = icmp eq i32 %psend.0243, -1
  br i1 %cmp129.not, label %if.then128.for.inc_crit_edge, label %if.then131

if.then128.for.inc_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then131:                                       ; preds = %if.then128
  %call132 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #17
  %tobool133.not = icmp eq ptr %call132, null
  br i1 %tobool133.not, label %if.then131.for.inc_crit_edge, label %if.then134

if.then131.for.inc_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then134:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ipmr_queue_xmit(ptr noundef %net, ptr noundef %mrt, i32 noundef %ct.0.lcssa.i, ptr noundef nonnull %call132, i32 noundef %psend.0243)
  br label %for.inc

for.inc:                                          ; preds = %if.then134, %if.then131.for.inc_crit_edge, %if.then128.for.inc_crit_edge, %land.lhs.true117.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %psend.1 = phi i32 [ %psend.0243, %land.lhs.true117.for.inc_crit_edge ], [ %psend.0243, %for.body.for.inc_crit_edge ], [ %ct.0244, %if.then131.for.inc_crit_edge ], [ %ct.0244, %if.then134 ], [ %ct.0244, %if.then128.for.inc_crit_edge ]
  %ct.0 = add i32 %ct.0244, -1
  %79 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %minvif, align 4
  %cmp109.not = icmp slt i32 %ct.0, %80
  br i1 %cmp109.not, label %last_forward, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

last_forward:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %psend.1)
  %cmp138.not = icmp eq i32 %psend.1, -1
  br i1 %cmp138.not, label %last_forward.dont_forward_crit_edge, label %last_forward.if.then140_crit_edge

last_forward.if.then140_crit_edge:                ; preds = %last_forward
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then140

last_forward.dont_forward_crit_edge:              ; preds = %last_forward
  call void @__sanitizer_cov_trace_pc() #19
  br label %dont_forward

if.then140:                                       ; preds = %last_forward.if.then140_crit_edge, %land.lhs.true86.if.then140_crit_edge
  %psend.2239 = phi i32 [ %psend.1, %last_forward.if.then140_crit_edge ], [ %conv83, %land.lhs.true86.if.then140_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool141.not = icmp eq i32 %local, 0
  br i1 %tobool141.not, label %if.else, label %if.then142

if.then142:                                       ; preds = %if.then140
  %call144 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #17
  %tobool145.not = icmp eq ptr %call144, null
  br i1 %tobool145.not, label %if.then142.cleanup153_crit_edge, label %if.then146

if.then142.cleanup153_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup153

if.then146:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ipmr_queue_xmit(ptr noundef %net, ptr noundef %mrt, i32 noundef %ct.0.lcssa.i, ptr noundef nonnull %call144, i32 noundef %psend.2239)
  br label %cleanup153

if.else:                                          ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @ipmr_queue_xmit(ptr noundef %net, ptr noundef %mrt, i32 noundef %ct.0.lcssa.i, ptr noundef %skb, i32 noundef %psend.2239)
  br label %cleanup153

dont_forward:                                     ; preds = %last_forward.dont_forward_crit_edge, %if.end103.dont_forward_crit_edge, %land.lhs.true86.dont_forward_crit_edge, %land.lhs.true80.dont_forward_crit_edge, %if.then77.dont_forward_crit_edge, %if.then58, %if.then51.dont_forward_crit_edge, %land.lhs.true45.dont_forward_crit_edge, %lor.lhs.false.dont_forward_crit_edge, %land.lhs.true32.dont_forward_crit_edge, %if.end26.dont_forward_crit_edge, %skb_rtable.exit.dont_forward_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %tobool150.not = icmp eq i32 %local, 0
  br i1 %tobool150.not, label %if.then151, label %dont_forward.cleanup153_crit_edge

dont_forward.cleanup153_crit_edge:                ; preds = %dont_forward
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup153

if.then151:                                       ; preds = %dont_forward
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup153

cleanup153:                                       ; preds = %if.then151, %dont_forward.cleanup153_crit_edge, %if.else, %if.then146, %if.then142.cleanup153_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pim_rcv_v1(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 27
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp3.i = icmp ult i32 %6, 28
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !218

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 28, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #17
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %call3 = tail call fastcc ptr @ipmr_rt_fib_lookup(ptr noundef %4, ptr noundef %skb)
  %cmp.i24 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.end.drop_crit_edge, label %if.end6

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end6:                                          ; preds = %if.end
  %mroute_do_pim = getelementptr inbounds %struct.mr_table, ptr %call3, i32 0, i32 13
  %13 = ptrtoint ptr %mroute_do_pim to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mroute_do_pim, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end6.drop_crit_edge, label %lor.lhs.false

if.end6.drop_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

lor.lhs.false:                                    ; preds = %if.end6
  %group = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %group, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %16)
  %cmp.not = icmp eq i32 %16, 268435456
  br i1 %cmp.not, label %lor.lhs.false7, label %lor.lhs.false.drop_crit_edge

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %code = getelementptr inbounds %struct.igmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp8.not = icmp eq i8 %18, 1
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false7.drop_crit_edge

lor.lhs.false7.drop_crit_edge:                    ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end11:                                         ; preds = %lor.lhs.false7
  %call12 = tail call fastcc i32 @__pim_rcv(ptr noundef %call3, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.end11.drop_crit_edge

if.end11.drop_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

drop:                                             ; preds = %if.end11.drop_crit_edge, %lor.lhs.false7.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end6.drop_crit_edge, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %if.end15

if.end15:                                         ; preds = %drop, %if.end11.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__pim_rcv(ptr nocapture noundef readonly %mrt, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 8
  %daddr = getelementptr i8, ptr %add.ptr.i, i32 24
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daddr, align 4
  %and.i = and i32 %5, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tot_len = getelementptr i8, ptr %add.ptr.i, i32 10
  %6 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tot_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp6 = icmp ugt i32 %add, %9
  br i1 %cmp6, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  tail call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %10 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mroute_reg_vif_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp8 = icmp sgt i32 %11, -1
  br i1 %cmp8, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end12
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header, align 4
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %mac_header, align 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call15 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub) #17
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i2 = trunc i32 %sub.ptr.sub.i to i16
  %23 = ptrtoint ptr %network_header to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i2, ptr %network_header, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2048, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %25 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 127
  %26 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_net.i, align 4
  %stats.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36
  %28 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 2
  %32 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %33, %31
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %34 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %13, ptr %34, align 8
  %bf.load.i.i.i = load i16, ptr %ip_summed, align 8
  %36 = and i16 %bf.load.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i.i.i = icmp eq i16 %36, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end14.skb_tunnel_rx.exit_crit_edge

if.end14.skb_tunnel_rx.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_tunnel_rx.exit

if.then.i.i.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %hash.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %37 = ptrtoint ptr %hash.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %hash.i.i.i.i, align 4
  %bf.clear2.i.i.i.i = and i16 %bf.load.i.i.i, -193
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.clear2.i.i.i.i, ptr %ip_summed, align 8
  br label %skb_tunnel_rx.exit

skb_tunnel_rx.exit:                               ; preds = %if.then.i.i.i, %if.end14.skb_tunnel_rx.exit_crit_edge
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %39 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %queue_mapping1.i.i.i, align 8
  %40 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.i.i = icmp ne ptr %41, %27
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i.i) #17
  %call17 = tail call i32 @netif_rx(ptr noundef %skb) #17
  br label %cleanup

cleanup:                                          ; preds = %skb_tunnel_rx.exit, %if.end12.cleanup_crit_edge, %if.end12.thread, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_tunnel_rx.exit ], [ 1, %lor.lhs.false3.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ], [ 1, %if.end12.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipmr_get_route(ptr noundef %net, ptr noundef %skb, i32 noundef %saddr, i32 noundef %daddr, ptr noundef %rtm, i32 noundef %portid) local_unnamed_addr #0 align 64 {
entry:
  %arg.i75 = alloca %struct.mfc_cache_cmp_arg, align 4
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i70 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i70, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %0 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i71

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i71:                                ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i71.do.end.i_crit_edge

land.lhs.true.i71.do.end.i_crit_edge:             ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i71
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i72

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i72:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i72, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i71.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup38_crit_edge, label %for.body.i

for.cond.i.cleanup38_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup38

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %4, 253
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ipmr_get_table.exit.cleanup38_crit_edge, label %if.end

ipmr_get_table.exit.cleanup38_crit_edge:          ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup38

if.end:                                           ; preds = %ipmr_get_table.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %9 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %10 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %daddr, ptr %arg.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %saddr, ptr %9, align 4
  %call.i.i = call ptr @mr_mfc_find_parent(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %arg.i, i32 noundef -1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.if.end36_crit_edge

rcu_read_lock.exit.if.end36_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %12 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.then11.thread, label %if.then4

if.then11.thread:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  br label %if.then18

if.then4:                                         ; preds = %land.lhs.true
  %maxvif.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %15 = ptrtoint ptr %maxvif.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxvif.i, align 4
  br label %for.cond.i73

for.cond.i73:                                     ; preds = %for.body.i74.for.cond.i73_crit_edge, %if.then4
  %ct.0.in.i = phi i32 [ %16, %if.then4 ], [ %ct.0.i, %for.body.i74.for.cond.i73_crit_edge ]
  %ct.0.i = add i32 %ct.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i)
  %cmp.i = icmp sgt i32 %ct.0.i, -1
  br i1 %cmp.i, label %for.body.i74, label %for.cond.i73.if.then11_crit_edge

for.cond.i73.if.then11_crit_edge:                 ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

for.body.i74:                                     ; preds = %for.cond.i73
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %ct.0.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %18, %14
  br i1 %cmp2.i, label %if.then6, label %for.body.i74.for.cond.i73_crit_edge

for.body.i74.for.cond.i73_crit_edge:              ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i73

if.then6:                                         ; preds = %for.body.i74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i75) #17
  %19 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i75, i32 0, i32 1
  %20 = ptrtoint ptr %arg.i75 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %daddr, ptr %arg.i75, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %daddr)
  %cmp.i76 = icmp eq i32 %daddr, 0
  br i1 %cmp.i76, label %if.then.i78, label %if.end.i

if.then.i78:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %call.i77 = call ptr @mr_mfc_find_any_parent(ptr noundef nonnull %mrt.0.i, i32 noundef %ct.0.i) #17
  br label %if.end9

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i79 = call ptr @mr_mfc_find_any(ptr noundef nonnull %mrt.0.i, i32 noundef %ct.0.i, ptr noundef nonnull %arg.i75) #17
  br label %if.end9

if.end9:                                          ; preds = %if.end.i, %if.then.i78
  %retval.0.i80 = phi ptr [ %call.i77, %if.then.i78 ], [ %call1.i79, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i75) #17
  %tobool10.not = icmp eq ptr %retval.0.i80, null
  br i1 %tobool10.not, label %if.end9.if.then11_crit_edge, label %if.end9.if.end36_crit_edge

if.end9.if.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %for.cond.i73.if.then11_crit_edge
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %12, align 8
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %tobool13.not = icmp eq ptr %.pr, null
  br i1 %tobool13.not, label %if.then11.if.then18_crit_edge, label %if.then14

if.then11.if.then18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

if.then14:                                        ; preds = %if.then11
  %maxvif.i81 = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %23 = ptrtoint ptr %maxvif.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxvif.i81, align 4
  br label %for.cond.i86

for.cond.i86:                                     ; preds = %for.body.i89.for.cond.i86_crit_edge, %if.then14
  %ct.0.in.i83 = phi i32 [ %24, %if.then14 ], [ %ct.0.i84, %for.body.i89.for.cond.i86_crit_edge ]
  %ct.0.i84 = add i32 %ct.0.in.i83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i84)
  %cmp.i85 = icmp sgt i32 %ct.0.i84, -1
  br i1 %cmp.i85, label %for.body.i89, label %for.cond.i86.if.then18_crit_edge

for.cond.i86.if.then18_crit_edge:                 ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then18

for.body.i89:                                     ; preds = %for.cond.i86
  %arrayidx.i87 = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %ct.0.i84
  %25 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i87, align 4
  %cmp2.i88 = icmp eq ptr %26, %.pr
  br i1 %cmp2.i88, label %if.end19, label %for.body.i89.for.cond.i86_crit_edge

for.body.i89.for.cond.i86_crit_edge:              ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i86

if.then18:                                        ; preds = %for.cond.i86.if.then18_crit_edge, %if.then11.if.then18_crit_edge, %if.then11.thread
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  %call.i92 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i92, label %if.then18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i95

if.then18.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i95:                                ; preds = %if.then18
  %call1.i93 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool.not.i94, label %land.lhs.true.i95.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i97

land.lhs.true.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i97:                               ; preds = %land.lhs.true.i95
  %.b4.i96 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96, label %land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge, label %if.then.i98

land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i98:                                      ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i98, %land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i95.rcu_read_unlock.exit_crit_edge, %if.then18.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  br label %cleanup38.sink.split

if.end19:                                         ; preds = %for.body.i89
  %call20 = call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 20) #17
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  %call.i102 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i102, label %if.then22.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true.i105

if.then22.rcu_read_unlock.exit113_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit113

land.lhs.true.i105:                               ; preds = %if.then22
  %call1.i103 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool.not.i104, label %land.lhs.true.i105.rcu_read_unlock.exit113_crit_edge, label %land.lhs.true2.i107

land.lhs.true.i105.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit113

land.lhs.true2.i107:                              ; preds = %land.lhs.true.i105
  %.b4.i106 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i106, label %land.lhs.true2.i107.rcu_read_unlock.exit113_crit_edge, label %if.then.i108

land.lhs.true2.i107.rcu_read_unlock.exit113_crit_edge: ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit113

if.then.i108:                                     ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit113

rcu_read_unlock.exit113:                          ; preds = %if.then.i108, %land.lhs.true2.i107.rcu_read_unlock.exit113_crit_edge, %land.lhs.true.i105.rcu_read_unlock.exit113_crit_edge, %if.then22.rcu_read_unlock.exit113_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  br label %cleanup38.sink.split

if.end23:                                         ; preds = %if.end19
  %portid24 = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %portid24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %portid, ptr %portid24, align 4
  %call25 = call ptr @skb_push(ptr noundef nonnull %call20, i32 noundef 20) #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 18
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call20, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i
  %saddr27 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %saddr27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %saddr, ptr %saddr27, align 4
  %daddr28 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %daddr28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %daddr, ptr %daddr28, align 4
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %add.ptr.i.i, align 4
  %conv = trunc i32 %ct.0.i84 to i16
  %call32 = call fastcc i32 @ipmr_cache_unresolved(ptr noundef nonnull %mrt.0.i, i16 noundef zeroext %conv, ptr noundef nonnull %call20, ptr noundef nonnull %.pr)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  %call.i114 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i114, label %if.end23.rcu_read_unlock.exit125_crit_edge, label %land.lhs.true.i117

if.end23.rcu_read_unlock.exit125_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit125

land.lhs.true.i117:                               ; preds = %if.end23
  %call1.i115 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.rcu_read_unlock.exit125_crit_edge, label %land.lhs.true2.i119

land.lhs.true.i117.rcu_read_unlock.exit125_crit_edge: ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit125

land.lhs.true2.i119:                              ; preds = %land.lhs.true.i117
  %.b4.i118 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i118, label %land.lhs.true2.i119.rcu_read_unlock.exit125_crit_edge, label %if.then.i120

land.lhs.true2.i119.rcu_read_unlock.exit125_crit_edge: ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit125

if.then.i120:                                     ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit125

rcu_read_unlock.exit125:                          ; preds = %if.then.i120, %land.lhs.true2.i119.rcu_read_unlock.exit125_crit_edge, %land.lhs.true.i117.rcu_read_unlock.exit125_crit_edge, %if.end23.rcu_read_unlock.exit125_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  br label %cleanup38.sink.split

if.end36:                                         ; preds = %if.end9.if.end36_crit_edge, %rcu_read_lock.exit.if.end36_crit_edge
  %cache.1148 = phi ptr [ %retval.0.i80, %if.end9.if.end36_crit_edge ], [ %call.i.i, %rcu_read_lock.exit.if.end36_crit_edge ]
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %call37 = call i32 @mr_fill_mroute(ptr noundef nonnull %mrt.0.i, ptr noundef %skb, ptr noundef nonnull %cache.1148, ptr noundef %rtm) #17
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  %call.i126 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i126, label %if.end36.rcu_read_unlock.exit137_crit_edge, label %land.lhs.true.i129

if.end36.rcu_read_unlock.exit137_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit137

land.lhs.true.i129:                               ; preds = %if.end36
  %call1.i127 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.rcu_read_unlock.exit137_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.rcu_read_unlock.exit137_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit137

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.rcu_read_unlock.exit137_crit_edge, label %if.then.i132

land.lhs.true2.i131.rcu_read_unlock.exit137_crit_edge: ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit137

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit137

rcu_read_unlock.exit137:                          ; preds = %if.then.i132, %land.lhs.true2.i131.rcu_read_unlock.exit137_crit_edge, %land.lhs.true.i129.rcu_read_unlock.exit137_crit_edge, %if.end36.rcu_read_unlock.exit137_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  br label %cleanup38.sink.split

cleanup38.sink.split:                             ; preds = %rcu_read_unlock.exit137, %rcu_read_unlock.exit125, %rcu_read_unlock.exit113, %rcu_read_unlock.exit
  %retval.1.ph = phi i32 [ -12, %rcu_read_unlock.exit113 ], [ %call32, %rcu_read_unlock.exit125 ], [ -19, %rcu_read_unlock.exit ], [ %call37, %rcu_read_unlock.exit137 ]
  %36 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i133 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.sink.split, %ipmr_get_table.exit.cleanup38_crit_edge, %for.cond.i.cleanup38_crit_edge
  %retval.1 = phi i32 [ -2, %ipmr_get_table.exit.cleanup38_crit_edge ], [ %retval.1.ph, %cleanup38.sink.split ], [ -2, %for.cond.i.cleanup38_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_fill_mroute(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mr_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 0, i32 noundef 270336, ptr noundef null) #17
  store ptr %call, ptr @mrt_cachep, align 4
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipmr_net_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.reg_pernet_fail_crit_edge

entry.reg_pernet_fail_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %reg_pernet_fail

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ip_mr_notifier) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.reg_notif_fail_crit_edge

if.end.reg_notif_fail_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %reg_notif_fail

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @inet_add_protocol(ptr noundef nonnull @pim_protocol, i8 noundef zeroext 103) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #21
  %call10 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ip_mr_notifier) #17
  br label %reg_notif_fail

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtnl_register(i32 noundef 128, i32 noundef 26, ptr noundef nonnull @ipmr_rtm_getroute, ptr noundef nonnull @ipmr_rtm_dumproute, i32 noundef 0) #17
  tail call void @rtnl_register(i32 noundef 128, i32 noundef 24, ptr noundef nonnull @ipmr_rtm_route, ptr noundef null, i32 noundef 0) #17
  tail call void @rtnl_register(i32 noundef 128, i32 noundef 25, ptr noundef nonnull @ipmr_rtm_route, ptr noundef null, i32 noundef 0) #17
  tail call void @rtnl_register(i32 noundef 128, i32 noundef 18, ptr noundef null, ptr noundef nonnull @ipmr_rtm_dumplink, i32 noundef 0) #17
  br label %cleanup

reg_notif_fail:                                   ; preds = %do.end, %if.end.reg_notif_fail_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.reg_notif_fail_crit_edge ], [ -11, %do.end ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipmr_net_ops) #17
  br label %reg_pernet_fail

reg_pernet_fail:                                  ; preds = %reg_notif_fail, %entry.reg_pernet_fail_crit_edge
  %err.1 = phi i32 [ %call1, %entry.reg_pernet_fail_crit_edge ], [ %err.0, %reg_notif_fail ]
  %0 = load ptr, ptr @mrt_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %reg_pernet_fail, %if.end9
  %retval.0 = phi i32 [ %err.1, %reg_pernet_fail ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rtm_getroute(ptr noundef %in_skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %arg.i = alloca %struct.mfc_cache_cmp_arg, align 4
  %tb = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %tb) #17
  %5 = call ptr @memset(ptr %tb, i32 255, i32 124)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i = icmp ult i32 %7, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_rtm_valid_getroute_req.__msg) #17
  %tobool.not.i62 = icmp eq ptr %extack, null
  br i1 %tobool.not.i62, label %do.body.i.errout_crit_edge, label %if.then1.i

do.body.i.errout_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ipmr_rtm_valid_getroute_req.__msg, ptr %extack, align 4
  br label %errout

if.end2.i:                                        ; preds = %entry
  %call3.i = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %in_skb) #17
  br i1 %call3.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  %9 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %10)
  %cmp.i.i.i = icmp ult i32 %10, 28
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end2.i.i.i

do.body.i.i.i:                                    ; preds = %if.then4.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #17
  %tobool.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.errout_crit_edge, label %if.then1.i.i.i

do.body.i.i.i.errout_crit_edge:                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %errout

if.end2.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i.i = add i32 %10, -28
  %call5.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 30, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub1.i.i.i.i, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 0, ptr noundef %extack) #17
  br label %ipmr_rtm_valid_getroute_req.exit

if.end6.i:                                        ; preds = %if.end2.i
  %rtm_src_len.i = getelementptr i8, ptr %nlh, i32 18
  %12 = ptrtoint ptr %rtm_src_len.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rtm_src_len.i, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %13, label %if.end6.i.do.body38.i_crit_edge [
    i8 0, label %if.end6.i.lor.lhs.false.i_crit_edge
    i8 32, label %if.end6.i.lor.lhs.false.i_crit_edge97
  ]

if.end6.i.lor.lhs.false.i_crit_edge97:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

if.end6.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i

if.end6.i.do.body38.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false.i:                                  ; preds = %if.end6.i.lor.lhs.false.i_crit_edge, %if.end6.i.lor.lhs.false.i_crit_edge97
  %rtm_dst_len.i = getelementptr i8, ptr %nlh, i32 17
  %15 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rtm_dst_len.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %16, label %lor.lhs.false.i.do.body38.i_crit_edge [
    i8 0, label %lor.lhs.false.i.lor.lhs.false20.i_crit_edge
    i8 32, label %lor.lhs.false.i.lor.lhs.false20.i_crit_edge98
  ]

lor.lhs.false.i.lor.lhs.false20.i_crit_edge98:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false20.i

lor.lhs.false.i.lor.lhs.false20.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false20.i

lor.lhs.false.i.do.body38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i.lor.lhs.false20.i_crit_edge, %lor.lhs.false.i.lor.lhs.false20.i_crit_edge98
  %rtm_tos.i = getelementptr i8, ptr %nlh, i32 19
  %18 = ptrtoint ptr %rtm_tos.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rtm_tos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not.i = icmp eq i8 %19, 0
  br i1 %tobool22.not.i, label %lor.lhs.false23.i, label %lor.lhs.false20.i.do.body38.i_crit_edge

lor.lhs.false20.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false20.i
  %rtm_table.i = getelementptr i8, ptr %nlh, i32 20
  %20 = ptrtoint ptr %rtm_table.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rtm_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not.i = icmp eq i8 %21, 0
  br i1 %tobool25.not.i, label %lor.lhs.false26.i, label %lor.lhs.false23.i.do.body38.i_crit_edge

lor.lhs.false23.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %rtm_protocol.i = getelementptr i8, ptr %nlh, i32 21
  %22 = ptrtoint ptr %rtm_protocol.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rtm_protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool28.not.i = icmp eq i8 %23, 0
  br i1 %tobool28.not.i, label %lor.lhs.false29.i, label %lor.lhs.false26.i.do.body38.i_crit_edge

lor.lhs.false26.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false26.i
  %rtm_scope.i = getelementptr i8, ptr %nlh, i32 22
  %24 = ptrtoint ptr %rtm_scope.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rtm_scope.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not.i = icmp eq i8 %25, 0
  br i1 %tobool31.not.i, label %lor.lhs.false32.i, label %lor.lhs.false29.i.do.body38.i_crit_edge

lor.lhs.false29.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false32.i:                                ; preds = %lor.lhs.false29.i
  %rtm_type.i = getelementptr i8, ptr %nlh, i32 23
  %26 = ptrtoint ptr %rtm_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rtm_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not.i = icmp eq i8 %27, 0
  br i1 %tobool34.not.i, label %lor.lhs.false35.i, label %lor.lhs.false32.i.do.body38.i_crit_edge

lor.lhs.false32.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false32.i
  %rtm_flags.i = getelementptr i8, ptr %nlh, i32 24
  %28 = ptrtoint ptr %rtm_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rtm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool36.not.i = icmp eq i32 %29, 0
  br i1 %tobool36.not.i, label %if.end46.i, label %lor.lhs.false35.i.do.body38.i_crit_edge

lor.lhs.false35.i.do.body38.i_crit_edge:          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body38.i

do.body38.i:                                      ; preds = %lor.lhs.false35.i.do.body38.i_crit_edge, %lor.lhs.false32.i.do.body38.i_crit_edge, %lor.lhs.false29.i.do.body38.i_crit_edge, %lor.lhs.false26.i.do.body38.i_crit_edge, %lor.lhs.false23.i.do.body38.i_crit_edge, %lor.lhs.false20.i.do.body38.i_crit_edge, %lor.lhs.false.i.do.body38.i_crit_edge, %if.end6.i.do.body38.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_rtm_valid_getroute_req.__msg.58) #17
  %tobool40.not.i = icmp eq ptr %extack, null
  br i1 %tobool40.not.i, label %do.body38.i.errout_crit_edge, label %if.then41.i

do.body38.i.errout_crit_edge:                     ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.then41.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ipmr_rtm_valid_getroute_req.__msg.58, ptr %extack, align 4
  br label %errout

if.end46.i:                                       ; preds = %lor.lhs.false35.i
  %call47.i = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %nlh, ptr noundef nonnull %tb, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end46.i.ipmr_rtm_valid_getroute_req.exit_crit_edge

if.end46.i.ipmr_rtm_valid_getroute_req.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_rtm_valid_getroute_req.exit

if.end50.i:                                       ; preds = %if.end46.i
  %arrayidx.i = getelementptr inbounds ptr, ptr %tb, i32 2
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool51.not.i = icmp eq ptr %32, null
  br i1 %tobool51.not.i, label %if.end50.i.lor.lhs.false55.i_crit_edge, label %land.lhs.true52.i

if.end50.i.lor.lhs.false55.i_crit_edge:           ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false55.i

land.lhs.true52.i:                                ; preds = %if.end50.i
  %33 = ptrtoint ptr %rtm_src_len.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rtm_src_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool54.not.i = icmp eq i8 %34, 0
  br i1 %tobool54.not.i, label %land.lhs.true52.i.do.body62.i_crit_edge, label %land.lhs.true52.i.lor.lhs.false55.i_crit_edge

land.lhs.true52.i.lor.lhs.false55.i_crit_edge:    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false55.i

land.lhs.true52.i.do.body62.i_crit_edge:          ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body62.i

lor.lhs.false55.i:                                ; preds = %land.lhs.true52.i.lor.lhs.false55.i_crit_edge, %if.end50.i.lor.lhs.false55.i_crit_edge
  %arrayidx56.i = getelementptr inbounds ptr, ptr %tb, i32 1
  %35 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx56.i, align 4
  %tobool57.not.i = icmp eq ptr %36, null
  br i1 %tobool57.not.i, label %lor.lhs.false55.i.for.body.i.preheader_crit_edge, label %land.lhs.true58.i

lor.lhs.false55.i.for.body.i.preheader_crit_edge: ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true58.i.for.body.i.preheader_crit_edge, %lor.lhs.false55.i.for.body.i.preheader_crit_edge
  br label %for.body.i

land.lhs.true58.i:                                ; preds = %lor.lhs.false55.i
  %37 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rtm_dst_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool60.not.i = icmp eq i8 %38, 0
  br i1 %tobool60.not.i, label %land.lhs.true58.i.do.body62.i_crit_edge, label %land.lhs.true58.i.for.body.i.preheader_crit_edge

land.lhs.true58.i.for.body.i.preheader_crit_edge: ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

land.lhs.true58.i.do.body62.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body62.i

do.body62.i:                                      ; preds = %land.lhs.true58.i.do.body62.i_crit_edge, %land.lhs.true52.i.do.body62.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_rtm_valid_getroute_req.__msg.59) #17
  %tobool64.not.i = icmp eq ptr %extack, null
  br i1 %tobool64.not.i, label %do.body62.i.errout_crit_edge, label %if.then65.i

do.body62.i.errout_crit_edge:                     ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.then65.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #19
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ipmr_rtm_valid_getroute_req.__msg.59, ptr %extack, align 4
  br label %errout

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0118.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx73.i = getelementptr ptr, ptr %tb, i32 %i.0118.i
  %40 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx73.i, align 4
  %tobool74.not.i = icmp eq ptr %41, null
  br i1 %tobool74.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end76.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end76.i:                                       ; preds = %for.body.i
  %42 = zext i32 %i.0118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %i.0118.i, label %do.body77.i [
    i32 2, label %if.end76.i.for.inc.i_crit_edge
    i32 1, label %if.end76.i.for.inc.i_crit_edge99
    i32 15, label %if.end76.i.for.inc.i_crit_edge100
  ]

if.end76.i.for.inc.i_crit_edge100:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end76.i.for.inc.i_crit_edge99:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.end76.i.for.inc.i_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

do.body77.i:                                      ; preds = %if.end76.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_rtm_valid_getroute_req.__msg.60) #17
  %tobool79.not.i = icmp eq ptr %extack, null
  br i1 %tobool79.not.i, label %do.body77.i.errout_crit_edge, label %if.then80.i

do.body77.i.errout_crit_edge:                     ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.then80.i:                                      ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ipmr_rtm_valid_getroute_req.__msg.60, ptr %extack, align 4
  br label %errout

for.inc.i:                                        ; preds = %if.end76.i.for.inc.i_crit_edge, %if.end76.i.for.inc.i_crit_edge99, %if.end76.i.for.inc.i_crit_edge100, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0118.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

ipmr_rtm_valid_getroute_req.exit:                 ; preds = %if.end46.i.ipmr_rtm_valid_getroute_req.exit_crit_edge, %if.end2.i.i.i
  %retval.0.i = phi i32 [ %call47.i, %if.end46.i.ipmr_rtm_valid_getroute_req.exit_crit_edge ], [ %call5.i.i.i, %if.end2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ipmr_rtm_valid_getroute_req.exit.errout_crit_edge, label %ipmr_rtm_valid_getroute_req.exit.if.end_crit_edge

ipmr_rtm_valid_getroute_req.exit.if.end_crit_edge: ; preds = %ipmr_rtm_valid_getroute_req.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

ipmr_rtm_valid_getroute_req.exit.errout_crit_edge: ; preds = %ipmr_rtm_valid_getroute_req.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.end:                                           ; preds = %ipmr_rtm_valid_getroute_req.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %arrayidx = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %47, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %arrayidx4 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %49, null
  br i1 %tobool5.not, label %cond.end.cond.end10_crit_edge, label %cond.true6

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end10

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i63 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i63, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true6, %cond.end.cond.end10_crit_edge
  %cond11 = phi i32 [ %51, %cond.true6 ], [ 0, %cond.end.cond.end10_crit_edge ]
  %arrayidx12 = getelementptr inbounds [31 x ptr], ptr %tb, i32 0, i32 15
  %52 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %53, null
  br i1 %tobool13.not, label %cond.end10.cond.end18.thread_crit_edge, label %cond.end18

cond.end10.cond.end18.thread_crit_edge:           ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end18.thread

cond.end18:                                       ; preds = %cond.end10
  %add.ptr.i.i64 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not = icmp eq i32 %55, 0
  br i1 %tobool20.not, label %cond.end18.cond.end18.thread_crit_edge, label %cond.end18._crit_edge

cond.end18._crit_edge:                            ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %56

cond.end18.cond.end18.thread_crit_edge:           ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end18.thread

cond.end18.thread:                                ; preds = %cond.end18.cond.end18.thread_crit_edge, %cond.end10.cond.end18.thread_crit_edge
  br label %56

56:                                               ; preds = %cond.end18.thread, %cond.end18._crit_edge
  %57 = phi i32 [ 253, %cond.end18.thread ], [ %55, %cond.end18._crit_edge ]
  %call.i65 = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i65, label %.do.end.i_crit_edge, label %lor.lhs.false.i66

.do.end.i_crit_edge:                              ; preds = %56
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i66:                                ; preds = %56
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  %58 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %59, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i66.do.end.i_crit_edge, label %land.lhs.true.i67

lor.lhs.false.i66.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i66
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i67:                                ; preds = %lor.lhs.false.i66
  %call2.i = call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i67.do.end.i_crit_edge

land.lhs.true.i67.do.end.i_crit_edge:             ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i67
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i68

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i68:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i68, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i67.do.end.i_crit_edge, %lor.lhs.false.i66.do.end.i_crit_edge, %.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i69.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i69.for.cond.i_crit_edge ]
  %60 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.errout_free_crit_edge, label %for.body.i69

for.cond.i.errout_free_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout_free

for.body.i69:                                     ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %61 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %62, %57
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i69.for.cond.i_crit_edge

for.body.i69.for.cond.i_crit_edge:                ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i69
  %tobool26.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool26.not, label %ipmr_get_table.exit.errout_free_crit_edge, label %if.end28

ipmr_get_table.exit.errout_free_crit_edge:        ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout_free

if.end28:                                         ; preds = %ipmr_get_table.exit
  %63 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end28.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end28.rcu_read_lock.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end28
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end28.rcu_read_lock.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #17
  %67 = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %arg.i, i32 0, i32 1
  %68 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cond11, ptr %arg.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %67, align 4
  %call.i.i = call ptr @mr_mfc_find_parent(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %arg.i, i32 noundef -1) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #17
  %call.i71 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i71, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i74

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i74:                                ; preds = %rcu_read_lock.exit
  %call1.i72 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %70 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i78 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i79, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %tobool30.not = icmp eq ptr %call.i.i, null
  br i1 %tobool30.not, label %rcu_read_unlock.exit.errout_free_crit_edge, label %if.end32

rcu_read_unlock.exit.errout_free_crit_edge:       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout_free

if.end32:                                         ; preds = %rcu_read_unlock.exit
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %74 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %maxvif, align 4
  %mul.i = shl i32 %75, 3
  %sub.i.i = add i32 %mul.i, 95
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i81 = call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool35.not = icmp eq ptr %call.i.i81, null
  br i1 %tobool35.not, label %if.end32.errout_free_crit_edge, label %if.end37

if.end32.errout_free_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout_free

if.end37:                                         ; preds = %if.end32
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %76 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %78 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nlmsg_seq, align 4
  %call38 = call fastcc i32 @ipmr_fill_mroute(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %call.i.i81, i32 noundef %77, i32 noundef %79, ptr noundef nonnull %call.i.i, i32 noundef 24, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.errout_free_crit_edge, label %if.end41

if.end37.errout_free_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout_free

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %portid, align 4
  %call44 = call i32 @rtnl_unicast(ptr noundef nonnull %call.i.i81, ptr noundef %4, i32 noundef %81) #17
  br label %errout

errout:                                           ; preds = %errout_free, %if.end41, %ipmr_rtm_valid_getroute_req.exit.errout_crit_edge, %if.then80.i, %do.body77.i.errout_crit_edge, %if.then65.i, %do.body62.i.errout_crit_edge, %if.then41.i, %do.body38.i.errout_crit_edge, %if.then1.i.i.i, %do.body.i.i.i.errout_crit_edge, %if.then1.i, %do.body.i.errout_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %ipmr_rtm_valid_getroute_req.exit.errout_crit_edge ], [ %err.1, %errout_free ], [ %call44, %if.end41 ], [ -22, %if.then1.i ], [ -22, %do.body.i.errout_crit_edge ], [ -22, %if.then41.i ], [ -22, %do.body38.i.errout_crit_edge ], [ -22, %if.then65.i ], [ -22, %do.body62.i.errout_crit_edge ], [ -22, %if.then80.i ], [ -22, %do.body77.i.errout_crit_edge ], [ -22, %if.then1.i.i.i ], [ -22, %do.body.i.i.i.errout_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %tb) #17
  ret i32 %err.0

errout_free:                                      ; preds = %if.end37.errout_free_crit_edge, %if.end32.errout_free_crit_edge, %rcu_read_unlock.exit.errout_free_crit_edge, %ipmr_get_table.exit.errout_free_crit_edge, %for.cond.i.errout_free_crit_edge
  %skb.0 = phi ptr [ %call.i.i81, %if.end37.errout_free_crit_edge ], [ null, %ipmr_get_table.exit.errout_free_crit_edge ], [ null, %rcu_read_unlock.exit.errout_free_crit_edge ], [ null, %if.end32.errout_free_crit_edge ], [ null, %for.cond.i.errout_free_crit_edge ]
  %err.1 = phi i32 [ %call38, %if.end37.errout_free_crit_edge ], [ -2, %ipmr_get_table.exit.errout_free_crit_edge ], [ -2, %rcu_read_unlock.exit.errout_free_crit_edge ], [ -105, %if.end32.errout_free_crit_edge ], [ -2, %for.cond.i.errout_free_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #17
  br label %errout
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rtm_dumproute(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  %filter = alloca %struct.fib_dump_filter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %filter) #17
  %0 = call ptr @memset(ptr %filter, i32 0, i32 20)
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %1 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %strict_check, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %call1 = call i32 @ip_valid_fib_dump_req(ptr noundef %7, ptr noundef %9, ptr noundef nonnull %filter, ptr noundef %cb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup25_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup25

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %10 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end23, label %if.then5

if.then5:                                         ; preds = %if.end3
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %skc_net.i43 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i43, align 4
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.then5.do.end.i_crit_edge, label %lor.lhs.false.i

if.then5.do.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then5
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 127
  %17 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.then5.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.if.then10_crit_edge, label %for.body.i

for.cond.i.if.then10_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then10

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %21, %11
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool9.not, label %ipmr_get_table.exit.if.then10_crit_edge, label %if.end19

ipmr_get_table.exit.if.then10_crit_edge:          ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then10

if.then10:                                        ; preds = %ipmr_get_table.exit.if.then10_crit_edge, %for.cond.i.if.then10_crit_edge
  %nlh11 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %22 = ptrtoint ptr %nlh11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh11, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp.not.i44 = icmp eq i32 %25, 16
  br i1 %cmp.not.i44, label %if.then10.if.then14_crit_edge, label %rtnl_msg_family.exit

if.then10.if.then14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

rtnl_msg_family.exit:                             ; preds = %if.then10
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 16
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %27)
  %cmp13.not = icmp eq i8 %27, -128
  br i1 %cmp13.not, label %do.body, label %rtnl_msg_family.exit.if.then14_crit_edge

rtnl_msg_family.exit.if.then14_crit_edge:         ; preds = %rtnl_msg_family.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then14

if.then14:                                        ; preds = %rtnl_msg_family.exit.if.then14_crit_edge, %if.then10.if.then14_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  br label %cleanup25

do.body:                                          ; preds = %rtnl_msg_family.exit
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_rtm_dumproute.__msg) #17
  %tobool16.not = icmp eq ptr %31, null
  br i1 %tobool16.not, label %do.body.cleanup25_crit_edge, label %if.then17

do.body.cleanup25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup25

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ipmr_rtm_dumproute.__msg, ptr %31, align 4
  br label %cleanup25

if.end19:                                         ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call20 = call i32 @mr_table_dump(ptr noundef nonnull %mrt.0.i, ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @_ipmr_fill_mroute, ptr noundef nonnull @mfc_unres_lock, ptr noundef nonnull %filter) #17
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool22.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool22.not, i32 %call20, i32 %34
  br label %cleanup25

if.end23:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %call24 = call i32 @mr_rtm_dumproute(ptr noundef %skb, ptr noundef %cb, ptr noundef nonnull @ipmr_mr_table_iter, ptr noundef nonnull @_ipmr_fill_mroute, ptr noundef nonnull @mfc_unres_lock, ptr noundef nonnull %filter) #17
  br label %cleanup25

cleanup25:                                        ; preds = %if.end23, %if.end19, %if.then17, %do.body.cleanup25_crit_edge, %if.then14, %if.then.cleanup25_crit_edge
  %retval.1 = phi i32 [ %call24, %if.end23 ], [ %call1, %if.then.cleanup25_crit_edge ], [ %spec.select, %if.end19 ], [ %29, %if.then14 ], [ -2, %if.then17 ], [ -2, %do.body.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %filter) #17
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rtm_route(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %mfcc = alloca %struct.mfcctl, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mfcc) #17
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp.i.i = icmp ult i32 %6, 28
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %nlmsg_validate_deprecated.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

nlmsg_validate_deprecated.exit.i:                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %6, -28
  %call3.i.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, i32 noundef 30, ptr noundef nonnull @rtm_ipmr_policy, i32 noundef 0, ptr noundef %extack) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i, label %nlmsg_validate_deprecated.exit.i.cleanup_crit_edge, label %if.end.i

nlmsg_validate_deprecated.exit.i.cleanup_crit_edge: ; preds = %nlmsg_validate_deprecated.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %nlmsg_validate_deprecated.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 16
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %8)
  %cmp2.not.i = icmp eq i8 %8, -128
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %rtm_dst_len.i = getelementptr i8, ptr %nlh, i32 17
  %9 = ptrtoint ptr %rtm_dst_len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtm_dst_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp5.not.i = icmp eq i8 %10, 32
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %rtm_type.i = getelementptr i8, ptr %nlh, i32 23
  %11 = ptrtoint ptr %rtm_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtm_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp9.not.i = icmp eq i8 %12, 5
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false7.i.cleanup_crit_edge

lor.lhs.false7.i.cleanup_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false11.i:                                ; preds = %lor.lhs.false7.i
  %rtm_scope.i = getelementptr i8, ptr %nlh, i32 22
  %13 = ptrtoint ptr %rtm_scope.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rtm_scope.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp13.not.i = icmp eq i8 %14, 0
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false11.i.cleanup_crit_edge

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false15.i:                                ; preds = %lor.lhs.false11.i
  %rtm_protocol.i = getelementptr i8, ptr %nlh, i32 21
  %15 = ptrtoint ptr %rtm_protocol.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rtm_protocol.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %16, label %lor.lhs.false15.i.cleanup_crit_edge [
    i8 17, label %lor.lhs.false15.i.if.end18.i_crit_edge
    i8 4, label %lor.lhs.false15.i.if.end18.i_crit_edge39
  ]

lor.lhs.false15.i.if.end18.i_crit_edge39:         ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.i

lor.lhs.false15.i.if.end18.i_crit_edge:           ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.i

lor.lhs.false15.i.cleanup_crit_edge:              ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18.i:                                       ; preds = %lor.lhs.false15.i.if.end18.i_crit_edge, %lor.lhs.false15.i.if.end18.i_crit_edge39
  %18 = call ptr @memset(ptr %mfcc, i32 0, i32 60)
  %mfcc_parent.i = getelementptr inbounds %struct.mfcctl, ptr %mfcc, i32 0, i32 2
  %19 = ptrtoint ptr %mfcc_parent.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %mfcc_parent.i, align 4
  %20 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlh, align 4
  %sub1.i.i = add i32 %21, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.i)
  %cmp.i84106.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i84106.i, label %land.lhs.true.i.lr.ph.i, label %if.end18.i.for.end.i_crit_edge

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

land.lhs.true.i.lr.ph.i:                          ; preds = %if.end18.i
  %mfcc_mcastgrp.i = getelementptr inbounds %struct.mfcctl, ptr %mfcc, i32 0, i32 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.lr.ph.i
  %ret.0111.i = phi i32 [ 0, %land.lhs.true.i.lr.ph.i ], [ %ret.1.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %attr.0110.i = phi ptr [ %add.ptr.i.i.i, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i96.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %tblid.0109.i = phi i32 [ 253, %land.lhs.true.i.lr.ph.i ], [ %tblid.1.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %dev.0108.i = phi ptr [ null, %land.lhs.true.i.lr.ph.i ], [ %dev.1.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %rem.0107.i = phi i32 [ %sub1.i.i, %land.lhs.true.i.lr.ph.i ], [ %sub1.i95.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %22 = ptrtoint ptr %attr.0110.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %attr.0110.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %23)
  %cmp1.i.i = icmp ult i16 %23, 4
  %conv.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0107.i, i32 %conv.i.i)
  %cmp5.i.not.i = icmp ult i32 %rem.0107.i, %conv.i.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.for.end.i_crit_edge, label %for.body.i

land.lhs.true.i.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %attr.0110.i, i32 0, i32 1
  %24 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nla_type.i.i, align 2
  %26 = and i16 %25, 16383
  %and.i.i = zext i16 %26 to i32
  %27 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %and.i.i, label %for.body.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb24.i
    i32 3, label %sw.bb27.i
    i32 9, label %sw.bb33.i
    i32 7, label %sw.bb39.i
    i32 15, label %sw.bb40.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i85.i = getelementptr i8, ptr %attr.0110.i, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i85.i, align 4
  %30 = ptrtoint ptr %mfcc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mfcc, align 4
  br label %for.inc.i

sw.bb24.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i86.i = getelementptr i8, ptr %attr.0110.i, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i86.i, align 4
  %33 = ptrtoint ptr %mfcc_mcastgrp.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mfcc_mcastgrp.i, align 4
  br label %for.inc.i

sw.bb27.i:                                        ; preds = %for.body.i
  %add.ptr.i.i87.i = getelementptr i8, ptr %attr.0110.i, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i87.i, align 4
  %call29.i = tail call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %35) #17
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %sw.bb27.i.cleanup_crit_edge, label %sw.bb27.i.for.inc.i_crit_edge

sw.bb27.i.for.inc.i_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb27.i.cleanup_crit_edge:                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb33.i:                                        ; preds = %for.body.i
  %sub.i.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %23)
  %cmp.i17.i.i = icmp ugt i16 %23, 11
  br i1 %cmp.i17.i.i, label %land.lhs.true.i.preheader.i.i, label %sw.bb33.i.ipmr_nla_get_ttls.exit.i_crit_edge

sw.bb33.i.ipmr_nla_get_ttls.exit.i_crit_edge:     ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_nla_get_ttls.exit.i

land.lhs.true.i.preheader.i.i:                    ; preds = %sw.bb33.i
  %add.ptr.i.i88.i = getelementptr i8, ptr %attr.0110.i, i32 4
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i91.i.land.lhs.true.i.i.i_crit_edge, %land.lhs.true.i.preheader.i.i
  %vifi.020.i.i = phi i32 [ %inc.i.i, %if.end.i91.i.land.lhs.true.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.preheader.i.i ]
  %rtnh.019.i.i = phi ptr [ %add.ptr.i13.i.i, %if.end.i91.i.land.lhs.true.i.i.i_crit_edge ], [ %add.ptr.i.i88.i, %land.lhs.true.i.preheader.i.i ]
  %remaining.018.i.i = phi i32 [ %sub1.i.i90.i, %if.end.i91.i.land.lhs.true.i.i.i_crit_edge ], [ %sub.i.i.i, %land.lhs.true.i.preheader.i.i ]
  %36 = ptrtoint ptr %rtnh.019.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rtnh.019.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %37)
  %cmp1.i.i.i = icmp ult i16 %37, 8
  %conv.i10.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.018.i.i, i32 %conv.i10.i.i)
  %cmp5.i.not.i.i = icmp ult i32 %remaining.018.i.i, %conv.i10.i.i
  %or.cond.i.i = select i1 %cmp1.i.i.i, i1 true, i1 %cmp5.i.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.i.ipmr_nla_get_ttls.exit.i_crit_edge, label %while.body.i.i

land.lhs.true.i.i.i.ipmr_nla_get_ttls.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_nla_get_ttls.exit.i

while.body.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %rtnh_hops.i.i = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.019.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %rtnh_hops.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rtnh_hops.i.i, align 1
  %arrayidx.i.i = getelementptr %struct.mfcctl, ptr %mfcc, i32 0, i32 3, i32 %vifi.020.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %vifi.020.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i.i)
  %cmp.i89.i = icmp eq i32 %inc.i.i, 32
  br i1 %cmp.i89.i, label %while.body.i.i.ipmr_nla_get_ttls.exit.i_crit_edge, label %if.end.i91.i

while.body.i.i.ipmr_nla_get_ttls.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_nla_get_ttls.exit.i

if.end.i91.i:                                     ; preds = %while.body.i.i
  %sub.i12.i.i = add nuw nsw i32 %conv.i10.i.i, 3
  %and.i.i.i = and i32 %sub.i12.i.i, 131068
  %sub1.i.i90.i = sub nsw i32 %remaining.018.i.i, %and.i.i.i
  %add.ptr.i13.i.i = getelementptr i8, ptr %rtnh.019.i.i, i32 %and.i.i.i
  %cmp.i.i.i = icmp sgt i32 %sub1.i.i90.i, 7
  br i1 %cmp.i.i.i, label %if.end.i91.i.land.lhs.true.i.i.i_crit_edge, label %if.end.i91.i.ipmr_nla_get_ttls.exit.i_crit_edge

if.end.i91.i.ipmr_nla_get_ttls.exit.i_crit_edge:  ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_nla_get_ttls.exit.i

if.end.i91.i.land.lhs.true.i.i.i_crit_edge:       ; preds = %if.end.i91.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i.i

ipmr_nla_get_ttls.exit.i:                         ; preds = %if.end.i91.i.ipmr_nla_get_ttls.exit.i_crit_edge, %while.body.i.i.ipmr_nla_get_ttls.exit.i_crit_edge, %land.lhs.true.i.i.i.ipmr_nla_get_ttls.exit.i_crit_edge, %sw.bb33.i.ipmr_nla_get_ttls.exit.i_crit_edge
  %remaining.0.lcssa.i.i = phi i32 [ %sub.i.i.i, %sw.bb33.i.ipmr_nla_get_ttls.exit.i_crit_edge ], [ %sub1.i.i90.i, %if.end.i91.i.ipmr_nla_get_ttls.exit.i_crit_edge ], [ %remaining.018.i.i, %land.lhs.true.i.i.i.ipmr_nla_get_ttls.exit.i_crit_edge ], [ %remaining.018.i.i, %while.body.i.i.ipmr_nla_get_ttls.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0.lcssa.i.i)
  %cmp4.i.i = icmp sgt i32 %remaining.0.lcssa.i.i, 0
  br i1 %cmp4.i.i, label %ipmr_nla_get_ttls.exit.i.cleanup_crit_edge, label %ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge

ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge:     ; preds = %ipmr_nla_get_ttls.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

ipmr_nla_get_ttls.exit.i.cleanup_crit_edge:       ; preds = %ipmr_nla_get_ttls.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb39.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

sw.bb40.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i92.i = getelementptr i8, ptr %attr.0110.i, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i92.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb40.i, %sw.bb39.i, %ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge, %sw.bb27.i.for.inc.i_crit_edge, %sw.bb24.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %dev.1.i = phi ptr [ %dev.0108.i, %for.body.i.for.inc.i_crit_edge ], [ %dev.0108.i, %sw.bb40.i ], [ %dev.0108.i, %sw.bb39.i ], [ %dev.0108.i, %ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge ], [ %call29.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %dev.0108.i, %sw.bb24.i ], [ %dev.0108.i, %sw.bb.i ]
  %tblid.1.i = phi i32 [ %tblid.0109.i, %for.body.i.for.inc.i_crit_edge ], [ %42, %sw.bb40.i ], [ %tblid.0109.i, %sw.bb39.i ], [ %tblid.0109.i, %ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge ], [ %tblid.0109.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %tblid.0109.i, %sw.bb24.i ], [ %tblid.0109.i, %sw.bb.i ]
  %ret.1.i = phi i32 [ %ret.0111.i, %for.body.i.for.inc.i_crit_edge ], [ %ret.0111.i, %sw.bb40.i ], [ 1, %sw.bb39.i ], [ %ret.0111.i, %ipmr_nla_get_ttls.exit.i.for.inc.i_crit_edge ], [ %ret.0111.i, %sw.bb27.i.for.inc.i_crit_edge ], [ %ret.0111.i, %sw.bb24.i ], [ %ret.0111.i, %sw.bb.i ]
  %43 = ptrtoint ptr %attr.0110.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %attr.0110.i, align 2
  %conv.i93.i = zext i16 %44 to i32
  %sub.i.i = add nuw nsw i32 %conv.i93.i, 3
  %and.i94.i = and i32 %sub.i.i, 131068
  %sub1.i95.i = sub i32 %rem.0107.i, %and.i94.i
  %add.ptr.i96.i = getelementptr i8, ptr %attr.0110.i, i32 %and.i94.i
  %cmp.i84.i = icmp sgt i32 %sub1.i95.i, 3
  br i1 %cmp.i84.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.i.for.end.i_crit_edge, %if.end18.i.for.end.i_crit_edge
  %dev.0.lcssa.i = phi ptr [ null, %if.end18.i.for.end.i_crit_edge ], [ %dev.0108.i, %land.lhs.true.i.i.for.end.i_crit_edge ], [ %dev.1.i, %for.inc.i.for.end.i_crit_edge ]
  %tblid.0.lcssa.i = phi i32 [ 253, %if.end18.i.for.end.i_crit_edge ], [ %tblid.0109.i, %land.lhs.true.i.i.for.end.i_crit_edge ], [ %tblid.1.i, %for.inc.i.for.end.i_crit_edge ]
  %ret.0.lcssa.i = phi i32 [ 0, %if.end18.i.for.end.i_crit_edge ], [ %ret.0111.i, %land.lhs.true.i.i.for.end.i_crit_edge ], [ %ret.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %for.end.i.do.end.i_crit_edge, label %lor.lhs.false.i18

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i18:                                ; preds = %for.end.i
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  %45 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %46, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i18.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i18.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i18
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i18
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i18.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i19.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i19.for.cond.i_crit_edge ]
  %47 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i19

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i19:                                     ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %49, %tblid.0.lcssa.i
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i19.for.cond.i_crit_edge

for.body.i19.for.cond.i_crit_edge:                ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i19
  %tobool44.not.i = icmp eq ptr %mrt.0.i, null
  br i1 %tobool44.not.i, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end46.i

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end46.i:                                       ; preds = %ipmr_get_table.exit
  %50 = ptrtoint ptr %rtm_protocol.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rtm_protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %51)
  %cmp49.i = icmp eq i8 %51, 17
  %cond.i = zext i1 %cmp49.i to i32
  %tobool51.not.i = icmp eq ptr %dev.0.lcssa.i, null
  br i1 %tobool51.not.i, label %if.end46.i.if.end_crit_edge, label %if.then52.i

if.end46.i.if.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then52.i:                                      ; preds = %if.end46.i
  %maxvif.i.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 10
  %52 = ptrtoint ptr %maxvif.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxvif.i.i, align 4
  %54 = add i32 %53, -1
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %54, i32 -1) #17
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then52.i
  %ct.0.in.i.i = phi i32 [ %53, %if.then52.i ], [ %ct.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %ct.0.i.i = add i32 %ct.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ct.0.i.i)
  %cmp.i97.i = icmp sgt i32 %ct.0.i.i, -1
  br i1 %cmp.i97.i, label %for.body.i.i, label %for.cond.i.i.ipmr_find_vif.exit.i_crit_edge

for.cond.i.i.ipmr_find_vif.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_find_vif.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i98.i = getelementptr %struct.mr_table, ptr %mrt.0.i, i32 0, i32 7, i32 %ct.0.i.i
  %55 = ptrtoint ptr %arrayidx.i98.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i98.i, align 4
  %cmp2.i.i = icmp eq ptr %56, %dev.0.lcssa.i
  br i1 %cmp2.i.i, label %for.body.i.i.ipmr_find_vif.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

for.body.i.i.ipmr_find_vif.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_find_vif.exit.i

ipmr_find_vif.exit.i:                             ; preds = %for.body.i.i.ipmr_find_vif.exit.i_crit_edge, %for.cond.i.i.ipmr_find_vif.exit.i_crit_edge
  %ct.0.lcssa.i.i = phi i32 [ %ct.0.i.i, %for.body.i.i.ipmr_find_vif.exit.i_crit_edge ], [ %smin.i.i, %for.cond.i.i.ipmr_find_vif.exit.i_crit_edge ]
  %conv54.i = trunc i32 %ct.0.lcssa.i.i to i16
  %57 = ptrtoint ptr %mfcc_parent.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv54.i, ptr %mfcc_parent.i, align 4
  br label %if.end

if.end:                                           ; preds = %ipmr_find_vif.exit.i, %if.end46.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool.not = icmp eq i32 %ret.0.lcssa.i, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %58 = ptrtoint ptr %mfcc_parent.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mfcc_parent.i, align 4
  %conv = zext i16 %59 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %60 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %61)
  %cmp3 = icmp eq i16 %61, 24
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = call fastcc i32 @ipmr_mfc_add(ptr noundef %4, ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfcc, i32 noundef %cond.i, i32 noundef %cond)
  br label %cleanup

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = call fastcc i32 @ipmr_mfc_delete(ptr noundef nonnull %mrt.0.i, ptr noundef nonnull %mfcc, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %ipmr_nla_get_ttls.exit.i.cleanup_crit_edge, %sw.bb27.i.cleanup_crit_edge, %lor.lhs.false15.i.cleanup_crit_edge, %lor.lhs.false11.i.cleanup_crit_edge, %lor.lhs.false7.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %nlmsg_validate_deprecated.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -2, %ipmr_get_table.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false15.i.cleanup_crit_edge ], [ -22, %lor.lhs.false11.i.cleanup_crit_edge ], [ -22, %lor.lhs.false7.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call3.i.i, %nlmsg_validate_deprecated.exit.i.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ], [ -22, %ipmr_nla_get_ttls.exit.i.cleanup_crit_edge ], [ -19, %sw.bb27.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mfcc) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rtm_dumplink(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tmp.i76.i = alloca i32, align 4
  %tmp.i74.i = alloca i32, align 4
  %tmp.i72.i = alloca i64, align 8
  %tmp.i70.i = alloca i64, align 8
  %tmp.i68.i = alloca i64, align 8
  %tmp.i66.i = alloca i64, align 8
  %tmp.i64.i = alloca i16, align 2
  %tmp.i62.i = alloca i32, align 4
  %tmp.i.i174 = alloca i32, align 4
  %tmp.i39.i = alloca i8, align 1
  %tmp.i37.i = alloca i8, align 1
  %tmp.i35.i = alloca i8, align 1
  %tmp.i33.i = alloca i32, align 4
  %tmp.i31.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %strict_check = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 12
  %5 = ptrtoint ptr %strict_check to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %strict_check, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then:                                          ; preds = %entry
  %nlh1 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %7 = ptrtoint ptr %nlh1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh1, align 4
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp.i = icmp ult i32 %12, 32
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_valid_dumplink.__msg) #17
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body.i.cleanup84_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

do.body.i.cleanup84_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup84

if.end2.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %tobool4.not.i = icmp eq i32 %12, 32
  br i1 %tobool4.not.i, label %if.end14.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_valid_dumplink.__msg.62) #17
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %do.body6.i.cleanup84_crit_edge, label %do.body6.i.cleanup.sink.split.i_crit_edge

do.body6.i.cleanup.sink.split.i_crit_edge:        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

do.body6.i.cleanup84_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup84

if.end14.i:                                       ; preds = %if.end2.i
  %__ifi_pad.i = getelementptr i8, ptr %8, i32 17
  %13 = ptrtoint ptr %__ifi_pad.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %__ifi_pad.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not.i = icmp eq i8 %14, 0
  br i1 %tobool16.not.i, label %lor.lhs.false.i, label %if.end14.i.do.body26.i_crit_edge

if.end14.i.do.body26.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body26.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %ifi_type.i = getelementptr i8, ptr %8, i32 18
  %15 = ptrtoint ptr %ifi_type.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ifi_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool18.not.i = icmp eq i16 %16, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false.i.do.body26.i_crit_edge

lor.lhs.false.i.do.body26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body26.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %ifi_flags.i = getelementptr i8, ptr %8, i32 24
  %17 = ptrtoint ptr %ifi_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifi_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not.i = icmp eq i32 %18, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %lor.lhs.false19.i.do.body26.i_crit_edge

lor.lhs.false19.i.do.body26.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body26.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false19.i
  %ifi_change.i = getelementptr i8, ptr %8, i32 28
  %19 = ptrtoint ptr %ifi_change.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifi_change.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not.i = icmp eq i32 %20, 0
  br i1 %tobool22.not.i, label %lor.lhs.false23.i, label %lor.lhs.false21.i.do.body26.i_crit_edge

lor.lhs.false21.i.do.body26.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body26.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false21.i
  %ifi_index.i = getelementptr i8, ptr %8, i32 20
  %21 = ptrtoint ptr %ifi_index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifi_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not.i = icmp eq i32 %22, 0
  br i1 %tobool24.not.i, label %lor.lhs.false23.i.if.end4_crit_edge, label %lor.lhs.false23.i.do.body26.i_crit_edge

lor.lhs.false23.i.do.body26.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body26.i

lor.lhs.false23.i.if.end4_crit_edge:              ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

do.body26.i:                                      ; preds = %lor.lhs.false23.i.do.body26.i_crit_edge, %lor.lhs.false21.i.do.body26.i_crit_edge, %lor.lhs.false19.i.do.body26.i_crit_edge, %lor.lhs.false.i.do.body26.i_crit_edge, %if.end14.i.do.body26.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ipmr_valid_dumplink.__msg.63) #17
  %tobool28.not.i = icmp eq ptr %10, null
  br i1 %tobool28.not.i, label %do.body26.i.cleanup84_crit_edge, label %do.body26.i.cleanup.sink.split.i_crit_edge

do.body26.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

do.body26.i.cleanup84_crit_edge:                  ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup84

cleanup.sink.split.i:                             ; preds = %do.body26.i.cleanup.sink.split.i_crit_edge, %do.body6.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %ipmr_valid_dumplink.__msg.63.sink.i = phi ptr [ @ipmr_valid_dumplink.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @ipmr_valid_dumplink.__msg.62, %do.body6.i.cleanup.sink.split.i_crit_edge ], [ @ipmr_valid_dumplink.__msg.63, %do.body26.i.cleanup.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ipmr_valid_dumplink.__msg.63.sink.i, ptr %10, align 4
  br label %cleanup84

if.end4:                                          ; preds = %lor.lhs.false23.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %24 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %arrayidx5 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call6, label %if.end4.do.end_crit_edge, label %lor.lhs.false

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end4
  %mr_tables = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  %29 = ptrtoint ptr %mr_tables to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %mr_tables, align 4
  %cmp.i142.not = icmp eq ptr %30, %mr_tables
  br i1 %cmp.i142.not, label %lor.lhs.false.do.end_crit_edge, label %land.lhs.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call9 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end_crit_edge, label %land.lhs.true14

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %.b141 = load i1, ptr @ipmr_rtm_dumplink.__warned, align 1
  br i1 %.b141, label %land.lhs.true14.do.end_crit_edge, label %if.then16

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_rtm_dumplink.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2824, ptr noundef nonnull @.str.9) #17
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14.do.end_crit_edge, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end4.do.end_crit_edge
  %mr_tables22 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 127
  %31 = ptrtoint ptr %mr_tables22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %mrt.0268 = load volatile ptr, ptr %mr_tables22, align 4
  %cmp26.not269 = icmp eq ptr %mrt.0268, %mr_tables22
  br i1 %cmp26.not269, label %do.end.out_crit_edge, label %for.body.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body.lr.ph:                                   ; preds = %do.end
  %nlh32 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup65.for.body_crit_edge, %for.body.lr.ph
  %mrt.0274 = phi ptr [ %mrt.0268, %for.body.lr.ph ], [ %mrt.0, %cleanup65.for.body_crit_edge ]
  %t.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %inc64, %cleanup65.for.body_crit_edge ]
  %s_e.0270 = phi i32 [ %28, %for.body.lr.ph ], [ %s_e.1, %cleanup65.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %t.0271, i32 %26)
  %cmp27 = icmp ult i32 %t.0271, %26
  br i1 %cmp27, label %for.body.cleanup65_crit_edge, label %if.end29

for.body.cleanup65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

if.end29:                                         ; preds = %for.body
  %32 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %portid, align 4
  %36 = ptrtoint ptr %nlh32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nlh32, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlmsg_seq, align 4
  %40 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

skb_tailroom.exit.i:                              ; preds = %if.end29
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %44 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i)
  %cmp.i143 = icmp slt i32 %sub.ptr.sub.i.i, 32
  br i1 %cmp.i143, label %skb_tailroom.exit.i.out_crit_edge, label %nlmsg_put.exit, !prof !218

skb_tailroom.exit.i.out_crit_edge:                ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %35, i32 noundef %39, i32 noundef 16, i32 noundef 16, i32 noundef 2) #17
  %tobool34.not = icmp eq ptr %call3.i, null
  br i1 %tobool34.not, label %nlmsg_put.exit.out_crit_edge, label %if.end36

nlmsg_put.exit.out_crit_edge:                     ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end36:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %46 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 16)
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -128, ptr %add.ptr.i, align 4
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i146 = icmp slt i32 %call1.i, 0
  %tobool39.not234 = icmp eq ptr %49, null
  %tobool39.not = select i1 %cmp.i146, i1 true, i1 %tobool39.not234
  br i1 %tobool39.not, label %if.then.i.i, label %if.end41

if.then.i.i:                                      ; preds = %if.end36
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %51, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !218

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i147 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i148 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i149 = sub i32 %sub.ptr.lhs.cast.i.i147, %sub.ptr.rhs.cast.i.i148
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i149) #17
  br label %out

if.end41:                                         ; preds = %if.end36
  %cache_resolve_queue_len.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cache_resolve_queue_len.i, i32 noundef 4) #17
  %54 = ptrtoint ptr %cache_resolve_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %cache_resolve_queue_len.i, align 4
  %id.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 3
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #17
  %58 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i150 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i150, label %lor.lhs.false.i151, label %if.end41.if.then.i.i157_crit_edge

if.end41.if.then.i.i157_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

lor.lhs.false.i151:                               ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31.i) #17
  %59 = ptrtoint ptr %tmp.i31.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %55, ptr %tmp.i31.i, align 4
  %call.i32.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i31.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool3.not.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i151.if.then.i.i157_crit_edge

lor.lhs.false.i151.if.then.i.i157_crit_edge:      ; preds = %lor.lhs.false.i151
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i151
  %mroute_reg_vif_num.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 15
  %60 = ptrtoint ptr %mroute_reg_vif_num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mroute_reg_vif_num.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33.i) #17
  %62 = ptrtoint ptr %tmp.i33.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i33.i, align 4
  %call.i34.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i33.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool6.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false4.i.if.then.i.i157_crit_edge

lor.lhs.false4.i.if.then.i.i157_crit_edge:        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %mroute_do_assert.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 12
  %63 = ptrtoint ptr %mroute_do_assert.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %mroute_do_assert.i, align 4, !range !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i35.i) #17
  %65 = ptrtoint ptr %tmp.i35.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tmp.i35.i, align 1
  %call.i36.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i35.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i35.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool10.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false7.i.if.then.i.i157_crit_edge

lor.lhs.false7.i.if.then.i.i157_crit_edge:        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

lor.lhs.false11.i:                                ; preds = %lor.lhs.false7.i
  %mroute_do_pim.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 13
  %66 = ptrtoint ptr %mroute_do_pim.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mroute_do_pim.i, align 1, !range !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i37.i) #17
  %68 = ptrtoint ptr %tmp.i37.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %tmp.i37.i, align 1
  %call.i38.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i37.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i37.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool15.not.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool15.not.i, label %ipmr_fill_table.exit, label %lor.lhs.false11.i.if.then.i.i157_crit_edge

lor.lhs.false11.i.if.then.i.i157_crit_edge:       ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

ipmr_fill_table.exit:                             ; preds = %lor.lhs.false11.i
  %mroute_do_wrvifwhole.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 14
  %69 = ptrtoint ptr %mroute_do_wrvifwhole.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mroute_do_wrvifwhole.i, align 2, !range !210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39.i) #17
  %71 = ptrtoint ptr %tmp.i39.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %tmp.i39.i, align 1
  %call.i40.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i39.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool20.not.i152 = icmp eq i32 %call.i40.i, 0
  br i1 %tobool20.not.i152, label %if.end44, label %ipmr_fill_table.exit.if.then.i.i157_crit_edge

ipmr_fill_table.exit.if.then.i.i157_crit_edge:    ; preds = %ipmr_fill_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i157

if.then.i.i157:                                   ; preds = %ipmr_fill_table.exit.if.then.i.i157_crit_edge, %lor.lhs.false11.i.if.then.i.i157_crit_edge, %lor.lhs.false7.i.if.then.i.i157_crit_edge, %lor.lhs.false4.i.if.then.i.i157_crit_edge, %lor.lhs.false.i151.if.then.i.i157_crit_edge, %if.end41.if.then.i.i157_crit_edge
  %data.i.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i155, align 4
  %cmp.i.i156 = icmp ugt ptr %73, %call3.i
  br i1 %cmp.i.i156, label %do.end.i.i158, label %if.then.i.i157.nlmsg_cancel.exit163_crit_edge, !prof !218

if.then.i.i157.nlmsg_cancel.exit163_crit_edge:    ; preds = %if.then.i.i157
  call void @__sanitizer_cov_trace_pc() #19
  br label %nlmsg_cancel.exit163

do.end.i.i158:                                    ; preds = %if.then.i.i157
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nlmsg_cancel.exit163

nlmsg_cancel.exit163:                             ; preds = %do.end.i.i158, %if.then.i.i157.nlmsg_cancel.exit163_crit_edge
  %74 = ptrtoint ptr %data.i.i155 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i155, align 4
  %sub.ptr.lhs.cast.i.i159 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i160 = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i161 = sub i32 %sub.ptr.lhs.cast.i.i159, %sub.ptr.rhs.cast.i.i160
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i161) #17
  br label %out

if.end44:                                         ; preds = %ipmr_fill_table.exit
  %76 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i, align 8
  %call1.i165 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %cmp.i166 = icmp slt i32 %call1.i165, 0
  %tobool46.not278 = icmp eq ptr %77, null
  %tobool46.not = select i1 %cmp.i166, i1 true, i1 %tobool46.not278
  br i1 %tobool46.not, label %if.then47, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %if.end44
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.0274, i32 0, i32 10
  %78 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp51263.not = icmp eq i32 %79, 0
  br i1 %cmp51263.not, label %for.cond50.preheader.for.end_crit_edge, label %for.cond50.preheader.for.body52_crit_edge

for.cond50.preheader.for.body52_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body52

for.cond50.preheader.for.end_crit_edge:           ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i169 = trunc i32 %sub.ptr.sub.i to i16
  %82 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i169, ptr %49, align 2
  %83 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i171 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i172 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i173 = sub i32 %sub.ptr.lhs.cast.i171, %sub.ptr.rhs.cast.i172
  %84 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.ptr.sub.i173, ptr %call3.i, align 4
  br label %out

for.body52:                                       ; preds = %skip_entry.for.body52_crit_edge, %for.cond50.preheader.for.body52_crit_edge
  %i.0266 = phi i32 [ %inc61, %skip_entry.for.body52_crit_edge ], [ 0, %for.cond50.preheader.for.body52_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0266, i32 %s_e.0270)
  %cmp53 = icmp ult i32 %i.0266, %s_e.0270
  br i1 %cmp53, label %for.body52.skip_entry_crit_edge, label %if.end55

for.body52.skip_entry_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_entry

if.end55:                                         ; preds = %for.body52
  %arrayidx.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i175 = icmp eq ptr %86, null
  br i1 %tobool.not.i175, label %if.end55.skip_entry_crit_edge, label %if.end.i178

if.end55.skip_entry_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %skip_entry

if.end.i178:                                      ; preds = %if.end55
  %87 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i176 = icmp slt i32 %call1.i.i, 0
  %tobool3.not79.i = icmp eq ptr %88, null
  %tobool3.not.i177 = select i1 %cmp.i.i176, i1 true, i1 %tobool3.not79.i
  br i1 %tobool3.not.i177, label %if.end.i178.if.then57_crit_edge, label %if.end5.i

if.end.i178.if.then57_crit_edge:                  ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then57

if.end5.i:                                        ; preds = %if.end.i178
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 17
  %91 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i174) #17
  %93 = ptrtoint ptr %tmp.i.i174 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %tmp.i.i174, align 4
  %call.i.i179 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i174) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i174) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool8.not.i180 = icmp eq i32 %call.i.i179, 0
  br i1 %tobool8.not.i180, label %lor.lhs.false.i182, label %if.end5.i.if.then.i.i.i_crit_edge

if.end5.i.if.then.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false.i182:                               ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i62.i) #17
  %94 = ptrtoint ptr %tmp.i62.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %i.0266, ptr %tmp.i62.i, align 4
  %call.i63.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i62.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i62.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool10.not.i181 = icmp eq i32 %call.i63.i, 0
  br i1 %tobool10.not.i181, label %lor.lhs.false11.i183, label %lor.lhs.false.i182.if.then.i.i.i_crit_edge

lor.lhs.false.i182.if.then.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false11.i183:                             ; preds = %lor.lhs.false.i182
  %flags.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 8
  %95 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %flags.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i64.i) #17
  %97 = ptrtoint ptr %tmp.i64.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %tmp.i64.i, align 2
  %call.i65.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i64.i) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i64.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool13.not.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false11.i183.if.then.i.i.i_crit_edge

lor.lhs.false11.i183.if.then.i.i.i_crit_edge:     ; preds = %lor.lhs.false11.i183
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false11.i183
  %bytes_in.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 2
  %98 = ptrtoint ptr %bytes_in.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bytes_in.i, align 4
  %conv.i184 = zext i32 %99 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i66.i) #17
  %100 = ptrtoint ptr %tmp.i66.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %conv.i184, ptr %tmp.i66.i, align 8
  %call.i67.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i66.i, i32 noundef 10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i66.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool16.not.i185 = icmp eq i32 %call.i67.i, 0
  br i1 %tobool16.not.i185, label %lor.lhs.false17.i, label %lor.lhs.false14.i.if.then.i.i.i_crit_edge

lor.lhs.false14.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %bytes_out.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 3
  %101 = ptrtoint ptr %bytes_out.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bytes_out.i, align 4
  %conv18.i = zext i32 %102 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i68.i) #17
  %103 = ptrtoint ptr %tmp.i68.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %conv18.i, ptr %tmp.i68.i, align 8
  %call.i69.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i68.i, i32 noundef 10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i68.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool20.not.i186 = icmp eq i32 %call.i69.i, 0
  br i1 %tobool20.not.i186, label %lor.lhs.false21.i188, label %lor.lhs.false17.i.if.then.i.i.i_crit_edge

lor.lhs.false17.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false21.i188:                             ; preds = %lor.lhs.false17.i
  %pkt_in.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 4
  %104 = ptrtoint ptr %pkt_in.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pkt_in.i, align 4
  %conv22.i = zext i32 %105 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i70.i) #17
  %106 = ptrtoint ptr %tmp.i70.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv22.i, ptr %tmp.i70.i, align 8
  %call.i71.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i70.i, i32 noundef 10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i70.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool24.not.i187 = icmp eq i32 %call.i71.i, 0
  br i1 %tobool24.not.i187, label %lor.lhs.false25.i, label %lor.lhs.false21.i188.if.then.i.i.i_crit_edge

lor.lhs.false21.i188.if.then.i.i.i_crit_edge:     ; preds = %lor.lhs.false21.i188
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i188
  %pkt_out.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 5
  %107 = ptrtoint ptr %pkt_out.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pkt_out.i, align 4
  %conv26.i = zext i32 %108 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i72.i) #17
  %109 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv26.i, ptr %tmp.i72.i, align 8
  %call.i73.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i72.i, i32 noundef 10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i72.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool28.not.i189 = icmp eq i32 %call.i73.i, 0
  br i1 %tobool28.not.i189, label %lor.lhs.false29.i, label %lor.lhs.false25.i.if.then.i.i.i_crit_edge

lor.lhs.false25.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false25.i
  %local.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 11
  %110 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %local.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i74.i) #17
  %112 = ptrtoint ptr %tmp.i74.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %tmp.i74.i, align 4
  %call.i75.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i74.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i74.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool31.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool31.not.i, label %lor.lhs.false32.i, label %lor.lhs.false29.i.if.then.i.i.i_crit_edge

lor.lhs.false29.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false32.i:                                ; preds = %lor.lhs.false29.i
  %remote.i = getelementptr %struct.mr_table, ptr %mrt.0274, i32 0, i32 7, i32 %i.0266, i32 12
  %113 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %remote.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i76.i) #17
  %115 = ptrtoint ptr %tmp.i76.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %tmp.i76.i, align 4
  %call.i77.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i76.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i76.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool34.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %lor.lhs.false32.i.if.then.i.i.i_crit_edge

lor.lhs.false32.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false32.i.if.then.i.i.i_crit_edge, %lor.lhs.false29.i.if.then.i.i.i_crit_edge, %lor.lhs.false25.i.if.then.i.i.i_crit_edge, %lor.lhs.false21.i188.if.then.i.i.i_crit_edge, %lor.lhs.false17.i.if.then.i.i.i_crit_edge, %lor.lhs.false14.i.if.then.i.i.i_crit_edge, %lor.lhs.false11.i183.if.then.i.i.i_crit_edge, %lor.lhs.false.i182.if.then.i.i.i_crit_edge, %if.end5.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %117, %88
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !218

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %118 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #17
  br label %if.then57

if.end36.i:                                       ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #19
  %120 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i190 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast.i.i191 = ptrtoint ptr %88 to i32
  %sub.ptr.sub.i.i192 = sub i32 %sub.ptr.lhs.cast.i.i190, %sub.ptr.rhs.cast.i.i191
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i192 to i16
  %122 = ptrtoint ptr %88 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i.i, ptr %88, align 2
  br label %skip_entry

if.then57:                                        ; preds = %nla_nest_cancel.exit.i, %if.end.i178.if.then57_crit_edge
  %123 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i195 = ptrtoint ptr %124 to i32
  %sub.ptr.rhs.cast.i196 = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i197 = sub i32 %sub.ptr.lhs.cast.i195, %sub.ptr.rhs.cast.i196
  %conv.i198 = trunc i32 %sub.ptr.sub.i197 to i16
  %125 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i198, ptr %77, align 2
  %126 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i200 = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i201 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i202 = sub i32 %sub.ptr.lhs.cast.i200, %sub.ptr.rhs.cast.i201
  %conv.i203 = trunc i32 %sub.ptr.sub.i202 to i16
  %127 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv.i203, ptr %49, align 2
  %128 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i205 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast.i206 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i207 = sub i32 %sub.ptr.lhs.cast.i205, %sub.ptr.rhs.cast.i206
  %129 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %sub.ptr.sub.i207, ptr %call3.i, align 4
  br label %out

skip_entry:                                       ; preds = %if.end36.i, %if.end55.skip_entry_crit_edge, %for.body52.skip_entry_crit_edge
  %inc61 = add nuw i32 %i.0266, 1
  %130 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %maxvif, align 4
  %cmp51 = icmp ult i32 %inc61, %131
  br i1 %cmp51, label %skip_entry.for.body52_crit_edge, label %skip_entry.for.end_crit_edge

skip_entry.for.end_crit_edge:                     ; preds = %skip_entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

skip_entry.for.body52_crit_edge:                  ; preds = %skip_entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body52

for.end:                                          ; preds = %skip_entry.for.end_crit_edge, %for.cond50.preheader.for.end_crit_edge
  %132 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i209 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast.i210 = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i211 = sub i32 %sub.ptr.lhs.cast.i209, %sub.ptr.rhs.cast.i210
  %conv.i212 = trunc i32 %sub.ptr.sub.i211 to i16
  %134 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i212, ptr %77, align 2
  %135 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i214 = ptrtoint ptr %135 to i32
  %sub.ptr.rhs.cast.i215 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i216 = sub i32 %sub.ptr.lhs.cast.i214, %sub.ptr.rhs.cast.i215
  %conv.i217 = trunc i32 %sub.ptr.sub.i216 to i16
  %136 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i217, ptr %49, align 2
  %137 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i219 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast.i220 = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i221 = sub i32 %sub.ptr.lhs.cast.i219, %sub.ptr.rhs.cast.i220
  %138 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.ptr.sub.i221, ptr %call3.i, align 4
  br label %cleanup65

cleanup65:                                        ; preds = %for.end, %for.body.cleanup65_crit_edge
  %s_e.1 = phi i32 [ %s_e.0270, %for.body.cleanup65_crit_edge ], [ 0, %for.end ]
  %inc64 = add i32 %t.0271, 1
  %139 = ptrtoint ptr %mrt.0274 to i32
  call void @__asan_load4_noabort(i32 %139)
  %mrt.0 = load volatile ptr, ptr %mrt.0274, align 4
  %cmp26.not = icmp eq ptr %mrt.0, %mr_tables22
  br i1 %cmp26.not, label %cleanup65.out_crit_edge, label %cleanup65.for.body_crit_edge

cleanup65.for.body_crit_edge:                     ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup65.out_crit_edge:                          ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %cleanup65.out_crit_edge, %if.then57, %if.then47, %nlmsg_cancel.exit163, %nlmsg_cancel.exit, %nlmsg_put.exit.out_crit_edge, %skb_tailroom.exit.i.out_crit_edge, %if.end29.out_crit_edge, %do.end.out_crit_edge
  %t.0244 = phi i32 [ %t.0271, %nlmsg_cancel.exit ], [ %t.0271, %nlmsg_cancel.exit163 ], [ %t.0271, %if.then47 ], [ %t.0271, %if.then57 ], [ 0, %do.end.out_crit_edge ], [ %inc64, %cleanup65.out_crit_edge ], [ %t.0271, %nlmsg_put.exit.out_crit_edge ], [ %t.0271, %skb_tailroom.exit.i.out_crit_edge ], [ %t.0271, %if.end29.out_crit_edge ]
  %e.4 = phi i32 [ 0, %nlmsg_cancel.exit ], [ 0, %nlmsg_cancel.exit163 ], [ 0, %if.then47 ], [ %i.0266, %if.then57 ], [ 0, %do.end.out_crit_edge ], [ 0, %if.end29.out_crit_edge ], [ 0, %skb_tailroom.exit.i.out_crit_edge ], [ 0, %nlmsg_put.exit.out_crit_edge ], [ 0, %cleanup65.out_crit_edge ]
  %140 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %e.4, ptr %arrayidx5, align 4
  %141 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %t.0244, ptr %24, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %out, %cleanup.sink.split.i, %do.body26.i.cleanup84_crit_edge, %do.body6.i.cleanup84_crit_edge, %do.body.i.cleanup84_crit_edge
  %retval.2 = phi i32 [ %143, %out ], [ -22, %do.body.i.cleanup84_crit_edge ], [ -22, %do.body6.i.cleanup84_crit_edge ], [ -22, %do.body26.i.cleanup84_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_allmulti(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !218

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !219
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_multicast_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vif_device_init(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_port_parent_id(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @reg_vif_setup(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 779, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1472, ptr %mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @reg_vif_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %4 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %needs_free_netdev, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %or = or i64 %6, 8192
  store i64 %or, ptr %features, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipmr_init_vif_indev(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @ipmr_init_vif_indev.__already_done, align 1
  br i1 %.b46, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !212

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_init_vif_indev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 426) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %if.end29.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end29.__in_dev_get_rtnl.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 249, ptr noundef nonnull @.str.1) #17
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end29.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %0 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip_ptr.i, align 32
  %tobool38.not = icmp eq ptr %1, null
  br i1 %tobool38.not, label %__in_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end40

__in_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #19
  %state.i = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %state.i, align 4
  %arp_parms = getelementptr inbounds %struct.in_device, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %arp_parms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arp_parms, align 4
  %data_state.i = getelementptr inbounds %struct.neigh_parms, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %data_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data_state.i, align 4
  %arrayidx = getelementptr %struct.in_device, ptr %1, i32 0, i32 21, i32 1, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %__in_dev_get_rtnl.exit.cleanup_crit_edge
  %7 = xor i1 %tobool38.not, true
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !216
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !217
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !218

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #17, !srcloc !219
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_vif_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #0 align 64 {
entry:
  %res.i = alloca %struct.ipmr_result, align 4
  %arg.i = alloca %struct.fib_lookup_arg, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #17
  %2 = getelementptr inbounds i8, ptr %fl4, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %6 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fl4, align 8
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %7 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %. = select i1 %tobool.not, i32 1, i32 %8
  %9 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %flowic_iif, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowic_mark, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #17
  %14 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg.i) #17
  %15 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 4
  %19 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg.i, i32 0, i32 5
  %20 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arg.i, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %15, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %res.i, ptr %16, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %17, align 4
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %18, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %19, align 4
  call void @l3mdev_update_flow(ptr noundef %1, ptr noundef nonnull %fl4) #17
  %mr_rules_ops.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 128
  %26 = ptrtoint ptr %mr_rules_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mr_rules_ops.i, align 4
  %call2.i = call i32 @fib_rules_lookup(ptr noundef %27, ptr noundef nonnull %fl4, i32 noundef 0, ptr noundef nonnull %arg.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #17
  call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %33, %31
  store i32 %add, ptr %tx_bytes, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %34 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx_packets, align 4
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %29, i32 0, i32 15
  %36 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mroute_reg_vif_num, align 4
  %conv = trunc i32 %37 to i16
  %call3 = call fastcc i32 @ipmr_cache_report(ptr noundef %29, ptr noundef %skb, i16 noundef zeroext %conv, i32 noundef 3)
  call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2.i, %if.then ], [ 0, %if.end ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reg_vif_get_iflink(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmr_cache_report(ptr noundef %mrt, ptr noundef %pkt, i16 noundef zeroext %vifi, i32 noundef %assert) unnamed_addr #0 align 64 {
entry:
  %tmp.i72.i = alloca i32, align 4
  %tmp.i.i70.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i67.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %5 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %5 to i32
  %assert.off = add i32 %assert, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %assert.off)
  %switch = icmp ult i32 %assert.off, 2
  br i1 %switch, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_realloc_headroom(ptr noundef %pkt, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %call.i149 = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %tobool.not227 = icmp eq ptr %call.i149, null
  br i1 %tobool.not227, label %if.end.thread.cleanup_crit_edge, label %if.else33

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %call10 = tail call ptr @skb_push(ptr noundef nonnull %call2, i32 noundef 20) #17
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i158 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i158
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i161 = zext i16 %15 to i32
  %add.ptr.i162 = getelementptr i8, ptr %13, i32 %conv.i161
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr.i162, i32 20)
  %conv = trunc i32 %assert to i8
  %im_msgtype = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i, i32 0, i32 2
  %17 = ptrtoint ptr %im_msgtype to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %im_msgtype, align 4
  %im_mbz = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i, i32 0, i32 3
  %18 = ptrtoint ptr %im_mbz to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %im_mbz, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %assert)
  %cmp13 = icmp eq i32 %assert, 4
  br i1 %cmp13, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %conv16 = trunc i16 %vifi to i8
  %im_vif = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i, i32 0, i32 4
  %19 = ptrtoint ptr %im_vif to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv16, ptr %im_vif, align 2
  %20 = lshr i16 %vifi, 8
  %conv18 = trunc i16 %20 to i8
  br label %if.end26

if.else19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %mroute_reg_vif_num = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 15
  %21 = ptrtoint ptr %mroute_reg_vif_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mroute_reg_vif_num, align 4
  %conv20 = trunc i32 %22 to i8
  %im_vif21 = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i, i32 0, i32 4
  %23 = ptrtoint ptr %im_vif21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv20, ptr %im_vif21, align 2
  %24 = load i32, ptr %mroute_reg_vif_num, align 4
  %25 = lshr i32 %24, 8
  %conv24 = trunc i32 %25 to i8
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %if.then15
  %conv24.sink = phi i8 [ %conv18, %if.then15 ], [ %conv24, %if.else19 ]
  %26 = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24.sink, ptr %26, align 1
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, -16
  %bf.set = or i8 %bf.clear, 5
  store i8 %bf.set, ptr %add.ptr.i.i, align 4
  %33 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i, align 8
  %35 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i165 = zext i16 %36 to i32
  %add.ptr.i.i166 = getelementptr i8, ptr %34, i32 %conv.i.i165
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i166, i32 0, i32 2
  %37 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tot_len, align 2
  %add = add i16 %38, 20
  %39 = load ptr, ptr %head.i, align 8
  %40 = load i16, ptr %network_header.i, align 4
  %conv.i.i169 = zext i16 %40 to i32
  %add.ptr.i.i170 = getelementptr i8, ptr %39, i32 %conv.i.i169
  %tot_len32 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i170, i32 0, i32 2
  %41 = ptrtoint ptr %tot_len32 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add, ptr %tot_len32, align 2
  br label %if.end53

if.else33:                                        ; preds = %if.end.thread
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %head.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i171 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i171, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i172 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i173 = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 15, i32 0, i32 20
  %48 = trunc i32 %43 to i16
  %conv1.i = add i16 %conv.i.i172, %48
  %49 = ptrtoint ptr %network_header.i.i173 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i, ptr %network_header.i.i173, align 4
  %call34 = tail call ptr @skb_put(ptr noundef nonnull %call.i149, i32 noundef %mul.i) #17
  %data = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 19
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %54 = call ptr @memcpy(ptr %53, ptr %51, i32 %mul.i)
  %55 = ptrtoint ptr %head.i.i171 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i171, align 8
  %57 = ptrtoint ptr %network_header.i.i173 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %network_header.i.i173, align 4
  %conv.i.i177 = zext i16 %58 to i32
  %add.ptr.i.i178 = getelementptr i8, ptr %56, i32 %conv.i.i177
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i178, i32 0, i32 6
  %59 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %protocol, align 1
  %60 = load ptr, ptr %head.i.i171, align 8
  %61 = load i16, ptr %network_header.i.i173, align 4
  %conv.i181 = zext i16 %61 to i32
  %add.ptr.i182 = getelementptr i8, ptr %60, i32 %conv.i181
  %conv37 = trunc i16 %vifi to i8
  %im_vif38 = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i182, i32 0, i32 4
  %62 = ptrtoint ptr %im_vif38 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv37, ptr %im_vif38, align 2
  %63 = lshr i16 %vifi, 8
  %conv41 = trunc i16 %63 to i8
  %im_vif_hi42 = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i182, i32 0, i32 5
  %64 = ptrtoint ptr %im_vif_hi42 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv41, ptr %im_vif_hi42, align 1
  %65 = getelementptr inbounds %struct.sk_buff, ptr %pkt, i32 0, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %and.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i183 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i183, label %if.else33.skb_dst.exit_crit_edge, label %land.lhs.true.i185

if.else33.skb_dst.exit_crit_edge:                 ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.lhs.true.i185:                               ; preds = %if.else33
  %call.i184 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool1.not.i = icmp eq i32 %call.i184, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i185.skb_dst.exit_crit_edge

land.lhs.true.i185.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i185
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !218

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i185.skb_dst.exit_crit_edge, %if.else33.skb_dst.exit_crit_edge
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %65, align 8
  %and25.i = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i186 = icmp eq i32 %and25.i, 0
  br i1 %tobool.not.i186, label %skb_dst.exit.dst_clone.exit_crit_edge, label %if.then.i187

skb_dst.exit.dst_clone.exit_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_clone.exit

if.then.i187:                                     ; preds = %skb_dst.exit
  %70 = inttoptr i32 %and25.i to ptr
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %70, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !233
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #17
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #17, !srcloc !234
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !235
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i187
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 231, i32 noundef 9, ptr noundef null) #17
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %skb_dst.exit.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 15, i32 0, i32 3
  %72 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load.i189 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i189, 4096
  %bf.shl.i = select i1 %tobool.not.i186, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i189, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %73 = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and25.i, ptr %73, align 8
  %call45 = tail call ptr @skb_put(ptr noundef nonnull %call.i149, i32 noundef 8) #17
  %conv46 = trunc i32 %assert to i8
  %75 = ptrtoint ptr %call45 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv46, ptr %call45, align 4
  %im_msgtype48 = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i182, i32 0, i32 2
  %76 = ptrtoint ptr %im_msgtype48 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv46, ptr %im_msgtype48, align 4
  %code = getelementptr inbounds %struct.igmphdr, ptr %call45, i32 0, i32 1
  %77 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %code, align 1
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %conv50 = trunc i32 %79 to i16
  %80 = ptrtoint ptr %head.i.i171 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i171, align 8
  %82 = ptrtoint ptr %network_header.i.i173 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %network_header.i.i173, align 4
  %conv.i.i192 = zext i16 %83 to i32
  %add.ptr.i.i193 = getelementptr i8, ptr %81, i32 %conv.i.i192
  %tot_len52 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i193, i32 0, i32 2
  %84 = ptrtoint ptr %tot_len52 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv50, ptr %tot_len52, align 2
  %85 = load i16, ptr %network_header.i.i173, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call.i149, i32 0, i32 15, i32 0, i32 19
  %86 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %transport_header, align 2
  br label %if.end53

if.end53:                                         ; preds = %dst_clone.exit, %if.end26
  %skb.0229 = phi ptr [ %call.i149, %dst_clone.exit ], [ %call2, %if.end26 ]
  %87 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %90, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end53.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end53.rcu_read_lock.exit_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end53
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end53.rcu_read_lock.exit_crit_edge
  %mroute_sk54 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 4
  %91 = ptrtoint ptr %mroute_sk54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %mroute_sk54, align 4
  %call56 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end65_crit_edge

rcu_read_lock.exit.do.end65_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true.do.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true
  %.b145 = load i1, ptr @ipmr_cache_report.__warned, align 1
  br i1 %.b145, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_cache_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1070, ptr noundef nonnull @.str.5) #17
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true.do.end65_crit_edge, %rcu_read_lock.exit.do.end65_crit_edge
  %tobool67.not = icmp eq ptr %92, null
  br i1 %tobool67.not, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.end65
  %call.i194 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i194, label %if.then68.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i197

if.then68.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i197:                               ; preds = %if.then68
  %call1.i195 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i195)
  %tobool.not.i196 = icmp eq i32 %call1.i195, 0
  br i1 %tobool.not.i196, label %land.lhs.true.i197.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i199

land.lhs.true.i197.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i199:                              ; preds = %land.lhs.true.i197
  %.b4.i198 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i198, label %land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge, label %if.then.i200

land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i199
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i200:                                     ; preds = %land.lhs.true2.i199
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i200, %land.lhs.true2.i199.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i197.rcu_read_unlock.exit_crit_edge, %if.then68.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %93 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i201 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i201 to ptr
  %preempt_count.i.i.i.i202 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i202, align 4
  %sub.i.i.i = add i32 %96, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i202, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.0229, i32 noundef 0) #17
  br label %cleanup

if.end69:                                         ; preds = %do.end65
  %net1.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %97 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net1.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0229, i32 0, i32 6
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %100, -20
  %head.i.i204 = getelementptr inbounds %struct.sk_buff, ptr %skb.0229, i32 0, i32 18
  %101 = ptrtoint ptr %head.i.i204 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %head.i.i204, align 8
  %network_header.i.i205 = getelementptr inbounds %struct.sk_buff, ptr %skb.0229, i32 0, i32 15, i32 0, i32 20
  %103 = ptrtoint ptr %network_header.i.i205 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %network_header.i.i205, align 4
  %conv.i.i206 = zext i16 %104 to i32
  %add.ptr.i.i207 = getelementptr i8, ptr %102, i32 %conv.i.i206
  %105 = add i32 %100, 31
  %add10.i.i = and i32 %105, -4
  %sub.i.i.i208 = add i32 %add10.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i208, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %tobool.not.i209 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i209, label %if.end69.errout.i_crit_edge, label %if.end.i

if.end69.errout.i_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout.i

if.end.i:                                         ; preds = %if.end69
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %106 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i.i.i = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end.i.errout.i_crit_edge

if.end.i.errout.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout.i

skb_tailroom.exit.i.i:                            ; preds = %if.end.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %108 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %110 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.errout.i_crit_edge, label %nlmsg_put.exit.i, !prof !218

skb_tailroom.exit.i.i.errout.i_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout.i

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 96, i32 noundef 1, i32 noundef 0) #17
  %tobool6.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool6.not.i, label %nlmsg_put.exit.i.errout.i_crit_edge, label %if.end8.i

nlmsg_put.exit.i.errout.i_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout.i

if.end8.i:                                        ; preds = %nlmsg_put.exit.i
  %add.ptr.i66.i = getelementptr i8, ptr %call3.i.i, i32 16
  %112 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -128, ptr %add.ptr.i66.i, align 1
  %im_msgtype.i = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i.i207, i32 0, i32 2
  %113 = ptrtoint ptr %im_msgtype.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %im_msgtype.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #17
  %115 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then.i.i.i_crit_edge

if.end8.i.if.then.i.i.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %im_vif.i = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i.i207, i32 0, i32 4
  %116 = ptrtoint ptr %im_vif.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %im_vif.i, align 2
  %conv.i210 = zext i8 %117 to i32
  %im_vif_hi.i = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i.i207, i32 0, i32 5
  %118 = ptrtoint ptr %im_vif_hi.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %im_vif_hi.i, align 1
  %conv12.i = zext i8 %119 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %or.i = or i32 %shl.i, %conv.i210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67.i) #17
  %120 = ptrtoint ptr %tmp.i67.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i, ptr %tmp.i67.i, align 4
  %call.i68.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i67.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool14.not.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %im_src.i = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i.i207, i32 0, i32 6
  %121 = ptrtoint ptr %im_src.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %im_src.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #17
  %123 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %tmp.i.i.i, align 4
  %call.i.i69.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %tobool17.not.i = icmp eq i32 %call.i.i69.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false18.i, label %lor.lhs.false15.i.if.then.i.i.i_crit_edge

lor.lhs.false15.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %im_dst.i = getelementptr inbounds %struct.igmpmsg, ptr %add.ptr.i.i207, i32 0, i32 7
  %124 = ptrtoint ptr %im_dst.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %im_dst.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i70.i) #17
  %126 = ptrtoint ptr %tmp.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %tmp.i.i70.i, align 4
  %call.i.i71.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i70.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i70.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %tobool21.not.i = icmp eq i32 %call.i.i71.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %lor.lhs.false18.i.if.then.i.i.i_crit_edge

lor.lhs.false18.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false18.i
  %id.i = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %127 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %id.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i72.i) #17
  %129 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %tmp.i72.i, align 4
  %call.i73.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i72.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool24.not.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %lor.lhs.false22.i.if.then.i.i.i_crit_edge

lor.lhs.false22.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

if.end26.i:                                       ; preds = %lor.lhs.false22.i
  %call27.i = call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef %sub.i) #17
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.end26.i.if.then.i.i.i_crit_edge, label %lor.lhs.false29.i

if.end26.i.if.then.i.i.i_crit_edge:               ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

lor.lhs.false29.i:                                ; preds = %if.end26.i
  %add.ptr.i74.i = getelementptr i8, ptr %call27.i, i32 4
  %call31.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb.0229, i32 noundef 20, ptr noundef %add.ptr.i74.i, i32 noundef %sub.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %lor.lhs.false29.i.if.then.i.i.i_crit_edge

lor.lhs.false29.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i

if.end34.i:                                       ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i211 = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast.i.i212 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i213 = sub i32 %sub.ptr.lhs.cast.i.i211, %sub.ptr.rhs.cast.i.i212
  %132 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub.ptr.sub.i.i213, ptr %call3.i.i, align 4
  call void @rtnl_notify(ptr noundef nonnull %call.i.i.i, ptr noundef %98, i32 noundef 0, i32 noundef 30, ptr noundef null, i32 noundef 2592) #17
  br label %igmpmsg_netlink_event.exit

if.then.i.i.i:                                    ; preds = %lor.lhs.false29.i.if.then.i.i.i_crit_edge, %if.end26.i.if.then.i.i.i_crit_edge, %lor.lhs.false22.i.if.then.i.i.i_crit_edge, %lor.lhs.false18.i.if.then.i.i.i_crit_edge, %lor.lhs.false15.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end8.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %133 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %134, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !218

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %135 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i76.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i77.i = ptrtoint ptr %136 to i32
  %sub.ptr.sub.i.i78.i = sub i32 %sub.ptr.lhs.cast.i.i76.i, %sub.ptr.rhs.cast.i.i77.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i78.i) #17
  br label %errout.i

errout.i:                                         ; preds = %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.errout.i_crit_edge, %skb_tailroom.exit.i.i.errout.i_crit_edge, %if.end.i.errout.i_crit_edge, %if.end69.errout.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %call.i.i.i, i32 noundef 0) #17
  call void @rtnl_set_sk_err(ptr noundef %98, i32 noundef 30, i32 noundef -105) #17
  br label %igmpmsg_netlink_event.exit

igmpmsg_netlink_event.exit:                       ; preds = %errout.i, %if.end34.i
  %call70 = call i32 @sock_queue_rcv_skb(ptr noundef nonnull %92, ptr noundef nonnull %skb.0229) #17
  %call.i214 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i214, label %igmpmsg_netlink_event.exit.rcu_read_unlock.exit225_crit_edge, label %land.lhs.true.i217

igmpmsg_netlink_event.exit.rcu_read_unlock.exit225_crit_edge: ; preds = %igmpmsg_netlink_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit225

land.lhs.true.i217:                               ; preds = %igmpmsg_netlink_event.exit
  %call1.i215 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i215)
  %tobool.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217.rcu_read_unlock.exit225_crit_edge, label %land.lhs.true2.i219

land.lhs.true.i217.rcu_read_unlock.exit225_crit_edge: ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit225

land.lhs.true2.i219:                              ; preds = %land.lhs.true.i217
  %.b4.i218 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i218, label %land.lhs.true2.i219.rcu_read_unlock.exit225_crit_edge, label %if.then.i220

land.lhs.true2.i219.rcu_read_unlock.exit225_crit_edge: ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit225

if.then.i220:                                     ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit225

rcu_read_unlock.exit225:                          ; preds = %if.then.i220, %land.lhs.true2.i219.rcu_read_unlock.exit225_crit_edge, %land.lhs.true.i217.rcu_read_unlock.exit225_crit_edge, %igmpmsg_netlink_event.exit.rcu_read_unlock.exit225_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %137 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i221 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i221 to ptr
  %preempt_count.i.i.i.i222 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i222, align 4
  %sub.i.i.i223 = add i32 %140, -1
  store volatile i32 %sub.i.i.i223, ptr %preempt_count.i.i.i.i222, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.body74, label %rcu_read_unlock.exit225.cleanup_crit_edge

rcu_read_unlock.exit225.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit225
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body74:                                        ; preds = %rcu_read_unlock.exit225
  %call75 = call i32 @net_ratelimit() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.do.end85_crit_edge, label %do.end80

do.body74.do.end85_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end85

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #19
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  br label %do.end85

do.end85:                                         ; preds = %do.end80, %do.body74.do.end85_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.0229, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %rcu_read_unlock.exit225.cleanup_crit_edge, %rcu_read_unlock.exit, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ -105, %if.end.cleanup_crit_edge ], [ %call70, %do.end85 ], [ %call70, %rcu_read_unlock.exit225.cleanup_crit_edge ], [ -105, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l3mdev_update_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhltable_remove(ptr noundef %hlt, ptr noundef %list, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %hlt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlt, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1076, ptr noundef nonnull @.str.5) #17
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %53, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %list, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !218

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #17
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #17
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i6.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i6.i.i, label %cond.false.i8.i.i, label %cond.true.i7.i.i, !prof !212

cond.true.i7.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  br label %rht_bucket_var.exit.i.i

cond.false.i8.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i8.i.i, %cond.true.i7.i.i
  %cond.i9.i.i = phi ptr [ %call.i.i.i, %cond.true.i7.i.i ], [ %arrayidx.i.i.i, %cond.false.i8.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i9.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #17
  %call.i11.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.1) #17
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i9.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i9.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i34.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34.i.i)
  %tobool.i.not35.i.i = icmp eq i32 %and.i34.i.i, 0
  br i1 %tobool.i.not35.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge

rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge: ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast_one.exit.thread21.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i35.i = icmp eq ptr %27, %list
  br i1 %cmp.not.i35.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge

for.body.preheader.i.i.do.body.i.preheader.i_crit_edge: ; preds = %for.body.preheader.i.i
  br label %do.body.i.preheader.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %37, %list
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body.i.preheader.i_crit_edge

for.body.i.i.do.body.i.preheader.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.preheader.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body54.i.i

do.body.i.preheader.i:                            ; preds = %for.body.i.i.do.body.i.preheader.i_crit_edge, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge
  %he.036.i36.i = phi ptr [ %37, %for.body.i.i.do.body.i.preheader.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body.i.preheader.i_crit_edge ]
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %do.body.i.preheader.i
  %list.0.i.i = phi ptr [ %29, %do.end.i.i.do.body.i.i_crit_edge ], [ %he.036.i36.i, %do.body.i.preheader.i ]
  %next8.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list.0.i.i, i32 0, i32 1
  %call10.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i4.i, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.lhs.true.i4.i:                               ; preds = %do.body.i.i
  %call12.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i4.i.do.end.i.i_crit_edge, label %land.lhs.true14.i.i

land.lhs.true.i4.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i4.i
  %.b5.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned, align 1
  br i1 %.b5.i.i, label %land.lhs.true14.i.i.do.end.i.i_crit_edge, label %if.then16.i.i

land.lhs.true14.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1020, ptr noundef nonnull @.str.1) #17
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then16.i.i, %land.lhs.true14.i.i.do.end.i.i_crit_edge, %land.lhs.true.i4.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %28 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next8.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %29, null
  %cmp22.not.i.i = icmp eq ptr %29, %list
  %or.cond.i.i = or i1 %tobool21.not.i.i, %cmp22.not.i.i
  br i1 %or.cond.i.i, label %do.end23.i.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %do.end.i.i
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool21.not.i.i, label %do.body145.i.i, label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true30.i.i, label %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge

do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true30.i.i:                              ; preds = %do.body27.i.i
  %call31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %land.lhs.true33.i.i

land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast_one.exit.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true30.i.i
  %.b2284.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  br i1 %.b2284.i.i, label %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, label %if.then35.i.i

land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge: ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast_one.exit.i

if.then35.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1026, ptr noundef nonnull @.str.1) #17
  br label %__rhashtable_remove_fast_one.exit.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.037.i.lcssa.i = phi ptr [ %he.036.i36.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2293.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  br i1 %.b2293.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1032, ptr noundef nonnull @.str.1) #17
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  %call71.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %land.lhs.true73.i.i, label %do.end65.i.i.do.end81.i.i_crit_edge

do.end65.i.i.do.end81.i.i_crit_edge:              ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end81.i.i

land.lhs.true73.i.i:                              ; preds = %do.end65.i.i
  %call74.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i.i)
  %tobool75.not.i.i = icmp eq i32 %call74.i.i, 0
  br i1 %tobool75.not.i.i, label %land.lhs.true73.i.i.do.end81.i.i_crit_edge, label %land.lhs.true76.i.i

land.lhs.true73.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end81.i.i

land.lhs.true76.i.i:                              ; preds = %land.lhs.true73.i.i
  %.b2302.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.27, align 1
  br i1 %.b2302.i.i, label %land.lhs.true76.i.i.do.end81.i.i_crit_edge, label %if.then78.i.i

land.lhs.true76.i.i.do.end81.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end81.i.i

if.then78.i.i:                                    ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1036, ptr noundef nonnull @.str.1) #17
  br label %do.end81.i.i

do.end81.i.i:                                     ; preds = %if.then78.i.i, %land.lhs.true76.i.i.do.end81.i.i_crit_edge, %land.lhs.true73.i.i.do.end81.i.i_crit_edge, %do.end65.i.i.do.end81.i.i_crit_edge
  %next83.i.i = getelementptr inbounds %struct.rhlist_head, ptr %list, i32 0, i32 1
  %32 = ptrtoint ptr %next83.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next83.i.i, align 4
  %tobool84.not.i.i = icmp eq ptr %33, null
  br i1 %tobool84.not.i.i, label %do.end81.i.i.if.end102.i.i_crit_edge, label %do.body91.i.i

do.end81.i.i.if.end102.i.i_crit_edge:             ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102.i.i

do.body91.i.i:                                    ; preds = %do.end81.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %do.body91.i.i, %do.end81.i.i.if.end102.i.i_crit_edge
  %obj.addr.1.i.i = phi ptr [ %33, %do.body91.i.i ], [ %31, %do.end81.i.i.if.end102.i.i_crit_edge ]
  %tobool103.not.i.i = icmp eq ptr %pprev.037.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !236
  %35 = ptrtoint ptr %pprev.037.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %obj.addr.1.i.i, ptr %pprev.037.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #17
  br label %unlocked.i.i

if.else142.i.i:                                   ; preds = %if.end102.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i, ptr noundef %obj.addr.1.i.i) #17
  br label %unlocked.i.i

do.body145.i.i:                                   ; preds = %do.end23.i.i
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2311.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  br i1 %.b2311.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1004, ptr noundef nonnull @.str.1) #17
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %36 = ptrtoint ptr %he.036.i36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %he.036.i36.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge

do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge: ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast_one.exit.thread21.i

unlocked.i.i:                                     ; preds = %if.else142.i.i, %do.body105.i.i
  br i1 %tobool84.not.i.i, label %if.then160.i.i, label %unlocked.i.i.while.end.i_crit_edge

unlocked.i.i.while.end.i_crit_edge:               ; preds = %unlocked.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then160.i.i:                                   ; preds = %unlocked.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #17
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #17, !srcloc !228
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool161.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i13.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #17
  %42 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %nelems.i.i, align 4
  %44 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %45, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %43, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 3, i32 5
  %46 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i14.i.i = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i14.i.i)
  %cmp2.i.i.i = icmp ugt i32 %45, %conv.i14.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !218

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %hlt, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %run_work.i.i) #17
  br label %while.end.i

__rhashtable_remove_fast_one.exit.thread21.i:     ; preds = %do.end156.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge, %rht_ptr.exit.i.i.__rhashtable_remove_fast_one.exit.thread21.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #17
  br label %land.rhs.i

__rhashtable_remove_fast_one.exit.i:              ; preds = %if.then35.i.i, %land.lhs.true33.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %land.lhs.true30.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge, %do.body27.i.i.__rhashtable_remove_fast_one.exit.i_crit_edge
  %next40.i.i = getelementptr inbounds %struct.rhlist_head, ptr %29, i32 0, i32 1
  %49 = ptrtoint ptr %next40.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %next40.i.i, align 4
  %51 = ptrtoint ptr %next8.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %next8.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i9.i.i) #17
  br label %while.end.i

land.rhs.i:                                       ; preds = %__rhashtable_remove_fast_one.exit.thread21.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %hlt) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.24, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__rhashtable_remove_fast.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1085, ptr noundef nonnull @.str.5) #17
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %53, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %__rhashtable_remove_fast_one.exit.i, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge, %unlocked.i.i.while.end.i_crit_edge
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i5.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i8.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i8.i:                               ; preds = %while.end.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__rhashtable_remove_fast.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i8.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %54 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i12.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mroute_netlink_event(ptr noundef %mrt, ptr noundef %mfc, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %mfc, i32 0, i32 1
  %2 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfc_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %cmp = icmp ugt i16 %3, 31
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 10
  %4 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxvif, align 4
  %mul.i = shl i32 %5, 3
  %add11.i.op = add i32 %mul.i, 95
  %add11.i.op.op = and i32 %add11.i.op, -4
  %and.i.i = select i1 %cmp, i32 52, i32 %add11.i.op.op
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.errout_crit_edge, label %if.end

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @ipmr_fill_mroute(ptr noundef %mrt, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef %mfc, i32 noundef %cmd, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.errout_crit_edge, label %if.end9

if.end.errout_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %errout

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 6, ptr noundef null, i32 noundef 2592) #17
  br label %cleanup

errout:                                           ; preds = %if.end.errout_crit_edge, %entry.errout_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.errout_crit_edge ], [ -105, %entry.errout_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #17
  tail call void @rtnl_set_sk_err(ptr noundef %1, i32 noundef 6, i32 noundef %err.0) #17
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_parent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !237
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !238

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !239
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !240
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !212

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !241
  %7 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !242
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !243
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !244
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #17
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !218

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #17, !srcloc !245
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !246
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #17, !srcloc !247
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !248
  %3 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !249
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !250
  %2 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmr_hash_cmp(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.mfc_cache, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp.not = icmp eq i32 %3, %6
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %mfc_origin = getelementptr inbounds %struct.mfc_cache_cmp_arg, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mfc_origin, align 4
  %mfc_origin2 = getelementptr inbounds %struct.mfc_cache, ptr %ptr, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %mfc_origin2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mfc_origin2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3 = icmp ne i32 %8, %10
  %phi.cast = zext i1 %cmp3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %11 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipmr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i51 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !218

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %cmd, i32 noundef 12, i32 noundef %flags) #17
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %add.ptr.i, align 4
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %rtm_src_len, align 2
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %rtm_tos, align 1
  %id = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %conv = trunc i32 %11 to i8
  %rtm_table = getelementptr i8, ptr %call3.i, i32 20
  %12 = ptrtoint ptr %rtm_table to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %rtm_table, align 4
  %13 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end6:                                          ; preds = %if.end
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %15 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %rtm_type, align 1
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %16 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rtm_scope, align 2
  %mfc_flags = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 2
  %17 = ptrtoint ptr %mfc_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mfc_flags, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool7.not, i8 17, i8 4
  %19 = getelementptr i8, ptr %call3.i, i32 21
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 1
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %21 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rtm_flags, align 4
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mfc_origin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #17
  %24 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end6.if.then.i.i_crit_edge

if.end6.if.then.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end6
  %25 = getelementptr inbounds %struct.mfc_cache, ptr %c, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i51) #17
  %28 = ptrtoint ptr %tmp.i.i51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i.i51, align 4
  %call.i.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i51) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i51) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool14.not = icmp eq i32 %call.i.i52, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end16:                                         ; preds = %lor.lhs.false
  %call18 = call i32 @mr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, ptr noundef %c, ptr noundef %add.ptr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp = icmp sgt i32 %call18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call18)
  %cmp20.not = icmp eq i32 %call18, -2
  %or.cond = or i1 %cmp, %cmp20.not
  br i1 %or.cond, label %if.end23, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %31 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end16.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end6.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %33, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !218

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 991, i32 noundef 9, ptr noundef null) #17
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i54 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i55 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i56 = sub i32 %sub.ptr.lhs.cast.i.i54, %sub.ptr.rhs.cast.i.i55
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i56) #17
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end23, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end23 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_cache_free_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  %0 = load ptr, ptr @mrt_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmr_destroy_unres(ptr noundef %mrt, ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 1
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %cache_resolve_queue_len = getelementptr inbounds %struct.mr_table, ptr %mrt, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cache_resolve_queue_len, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %cache_resolve_queue_len, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cache_resolve_queue_len, ptr %cache_resolve_queue_len, i32 1, ptr elementtype(i32) %cache_resolve_queue_len) #17, !srcloc !228
  %unresolved = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 3, i32 0, i32 1
  %call221 = tail call ptr @skb_dequeue(ptr noundef %unresolved) #17
  %tobool.not22 = icmp eq ptr %call221, null
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call223 = phi ptr [ %call2, %if.end.while.body_crit_edge ], [ %call221, %entry.while.body_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call ptr @skb_pull(ptr noundef nonnull %call223, i32 noundef 20) #17
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %nlmsg_type, align 4
  %9 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 36, ptr %call5, align 4
  tail call void @skb_trim(ptr noundef nonnull %call223, i32 noundef 36) #17
  %add.ptr.i = getelementptr i8, ptr %call5, i32 16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -110, ptr %add.ptr.i, align 4
  %msg = getelementptr i8, ptr %call5, i32 20
  %11 = call ptr @memset(ptr %msg, i32 0, i32 16)
  %portid = getelementptr inbounds %struct.sk_buff, ptr %call223, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %call9 = tail call i32 @rtnl_unicast(ptr noundef nonnull %call223, ptr noundef %1, i32 noundef %13) #17
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef nonnull %call223, i32 noundef 0) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = tail call ptr @skb_dequeue(ptr noundef %unresolved) #17
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %rcu.i = getelementptr inbounds %struct.mr_mfc, ptr %c, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @ipmr_cache_free_rcu) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_table_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_expire_process(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -28
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @mfc_unres_lock) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 10
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mfc_unres_queue = getelementptr i8, ptr %t, i32 48
  %1 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i.not = icmp eq ptr %2, %mfc_unres_queue
  br i1 %cmp.i.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %.pn.in69 = phi ptr [ %2, %if.end5 ], [ %.pn72, %for.inc.for.body_crit_edge ]
  %expires.068 = phi i32 [ 1000, %if.end5 ], [ %expires.2, %for.inc.for.body_crit_edge ]
  %c.071 = getelementptr i8, ptr %.pn.in69, i32 -80
  %4 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn72 = load ptr, ptr %.pn.in69, align 4
  %mfc_un = getelementptr i8, ptr %.pn.in69, i32 -64
  %5 = ptrtoint ptr %mfc_un to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mfc_un, align 4
  %sub = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp18 = icmp slt i32 %sub, 0
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %sub22 = sub i32 %6, %3
  %7 = tail call i32 @llvm.umin.i32(i32 %sub22, i32 %expires.068)
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del.exit_crit_edge

if.end26.list_del.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end26.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in69, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @mroute_netlink_event(ptr noundef %add.ptr, ptr noundef %c.071, i32 noundef 25)
  tail call fastcc void @ipmr_destroy_unres(ptr noundef %add.ptr, ptr noundef %c.071)
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then19
  %expires.2 = phi i32 [ %7, %if.then19 ], [ %expires.068, %list_del.exit ]
  %cmp.not = icmp eq ptr %.pn72, %mfc_unres_queue
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %mfc_unres_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mfc_unres_queue, align 4
  %cmp.i63.not = icmp eq ptr %17, %mfc_unres_queue
  br i1 %cmp.i63.not, label %for.end.out_crit_edge, label %if.then36

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add38 = add i32 %18, %expires.2
  %call39 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add38) #17
  br label %out

out:                                              ; preds = %if.then36, %for.end.out_crit_edge, %if.end.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mfc_unres_lock) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_new_table_set(ptr noundef %mrt, ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mrt, ptr noundef %1, ptr noundef %mr_tables) #17
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail_rcu.exit_crit_edge

entry.list_add_tail_rcu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %mrt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mr_tables, ptr %mrt, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %mrt, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !227
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mrt, ptr %1, align 4
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mrt, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %entry.list_add_tail_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_any_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_find_any(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmr_queue_xmit(ptr noundef %net, ptr noundef %mrt, i32 noundef %in_vifi, ptr noundef %skb, i32 noundef %vifi) unnamed_addr #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #19
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
  %arrayidx = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #17
  %4 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.out_free_crit_edge, label %if.end

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end:                                           ; preds = %entry
  %flags = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not = icmp eq i16 %9, 0
  br i1 %tobool2.not, label %if.end12, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %pkt_out = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 5
  %10 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pkt_out, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %pkt_out, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %bytes_out = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 3
  %14 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_out, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %bytes_out, align 4
  %16 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 3
  %17 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_bytes, align 4
  %add6 = add i32 %18, %16
  store i32 %add6, ptr %tx_bytes, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets, align 4
  %inc9 = add i32 %22, 1
  store i32 %inc9, ptr %tx_packets, align 4
  %conv10 = trunc i32 %vifi to i16
  %call11 = tail call fastcc i32 @ipmr_cache_report(ptr noundef %mrt, ptr noundef %skb, i16 noundef zeroext %conv10, i32 noundef 3)
  br label %out_free

if.end12:                                         ; preds = %if.end
  %offload_l3_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %offload_l3_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %offload_l3_fwd_mark.i, align 2
  %24 = and i32 %bf.load.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end12.if.end15_crit_edge, label %if.end.i

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.end.i:                                         ; preds = %if.end12
  %dev_parent_id.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 10
  %id_len.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 10, i32 1
  %25 = ptrtoint ptr %id_len.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i = icmp eq i8 %26, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15_crit_edge, label %lor.lhs.false.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

lor.lhs.false.i:                                  ; preds = %if.end.i
  %id_len5.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %in_vifi, i32 10, i32 1
  %27 = ptrtoint ptr %id_len5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id_len5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not.i = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp.i.i = icmp eq i8 %26, %28
  %or.cond = select i1 %tobool6.not.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond, label %ipmr_forward_offloaded.exit, label %lor.lhs.false.i.if.end15_crit_edge

lor.lhs.false.i.if.end15_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

ipmr_forward_offloaded.exit:                      ; preds = %lor.lhs.false.i
  %dev_parent_id4.i = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %in_vifi, i32 10
  %conv.i.i166 = zext i8 %26 to i32
  %bcmp.i.i = tail call i32 @bcmp(ptr %dev_parent_id.i, ptr %dev_parent_id4.i, i32 %conv.i.i166) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp8.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp8.i.i, label %ipmr_forward_offloaded.exit.out_free_crit_edge, label %ipmr_forward_offloaded.exit.if.end15_crit_edge

ipmr_forward_offloaded.exit.if.end15_crit_edge:   ; preds = %ipmr_forward_offloaded.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

ipmr_forward_offloaded.exit.out_free_crit_edge:   ; preds = %ipmr_forward_offloaded.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end15:                                         ; preds = %ipmr_forward_offloaded.exit.if.end15_crit_edge, %lor.lhs.false.i.if.end15_crit_edge, %if.end.i.if.end15_crit_edge, %if.end12.if.end15_crit_edge
  %29 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool19.not = icmp eq i16 %29, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %remote = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 12
  %30 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %remote, align 4
  %local = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 11
  %32 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %local, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tos, align 1
  %36 = and i8 %35, 30
  %link = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 9
  %37 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %link, align 4
  %user_ns.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %39 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_ns.i.i, align 4
  %call.i.i = tail call i32 @make_kuid(ptr noundef %40, i32 noundef 0) #17
  %41 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %42 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %43 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %44 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %36, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %45 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %46 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %47 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %48 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %49 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %50 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %51 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %31, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %52 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %33, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %53 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.104, ptr %uli.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %55 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4, ptr noundef null) #17
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20.out_free_crit_edge, label %if.then20.if.end37_crit_edge

if.then20.if.end37_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.then20.out_free_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.else:                                          ; preds = %if.end15
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %daddr, align 4
  %tos28 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %tos28 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tos28, align 1
  %60 = and i8 %59, 30
  %link32 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 9
  %61 = ptrtoint ptr %link32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %link32, align 4
  %user_ns.i.i167 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %63 = ptrtoint ptr %user_ns.i.i167 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %user_ns.i.i167, align 4
  %call.i.i168 = tail call i32 @make_kuid(ptr noundef %64, i32 noundef 0) #17
  %65 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %fl4, align 8
  %flowic_iif.i.i169 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %66 = ptrtoint ptr %flowic_iif.i.i169 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %flowic_iif.i.i169, align 4
  %flowic_mark.i.i170 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %67 = ptrtoint ptr %flowic_mark.i.i170 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %flowic_mark.i.i170, align 8
  %flowic_tos.i.i171 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %68 = ptrtoint ptr %flowic_tos.i.i171 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %60, ptr %flowic_tos.i.i171, align 4
  %flowic_scope.i.i172 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %69 = ptrtoint ptr %flowic_scope.i.i172 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %flowic_scope.i.i172, align 1
  %flowic_proto.i.i173 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %70 = ptrtoint ptr %flowic_proto.i.i173 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %flowic_proto.i.i173, align 2
  %flowic_flags.i.i174 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %71 = ptrtoint ptr %flowic_flags.i.i174 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %flowic_flags.i.i174, align 1
  %flowic_secid.i.i175 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %72 = ptrtoint ptr %flowic_secid.i.i175 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %flowic_secid.i.i175, align 8
  %flowic_tun_key.i.i176 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %73 = ptrtoint ptr %flowic_tun_key.i.i176 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %flowic_tun_key.i.i176, align 8
  %flowic_uid.i.i177 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %74 = ptrtoint ptr %flowic_uid.i.i177 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i.i168, ptr %flowic_uid.i.i177, align 4
  %daddr10.i.i178 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %75 = ptrtoint ptr %daddr10.i.i178 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %57, ptr %daddr10.i.i178, align 4
  %saddr11.i.i179 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %76 = ptrtoint ptr %saddr11.i.i179 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %saddr11.i.i179, align 8
  %uli.i.i180 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %77 = ptrtoint ptr %uli.i.i180 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %uli.i.i180, align 8
  %sport14.i.i181 = getelementptr inbounds %struct.anon.104, ptr %uli.i.i180, i32 0, i32 1
  %78 = ptrtoint ptr %sport14.i.i181 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %sport14.i.i181, align 2
  %flowic_multipath_hash.i.i182 = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %79 = ptrtoint ptr %flowic_multipath_hash.i.i182 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %flowic_multipath_hash.i.i182, align 8
  %call11.i183 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4, ptr noundef null) #17
  %cmp.i184 = icmp ugt ptr %call11.i183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.else.out_free_crit_edge, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

if.else.out_free_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %if.then20.if.end37_crit_edge
  %encap.0 = phi i32 [ 0, %if.else.if.end37_crit_edge ], [ 20, %if.then20.if.end37_crit_edge ]
  %rt.0 = phi ptr [ %call11.i183, %if.else.if.end37_crit_edge ], [ %call11.i, %if.then20.if.end37_crit_edge ]
  %80 = ptrtoint ptr %rt.0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rt.0, align 4
  %len39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %82 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len39, align 4
  %add40 = add i32 %83, %encap.0
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0, i32 0, i32 1
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mtu.i, align 4
  %call.i = call i32 %87(ptr noundef %rt.0) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %call.i)
  %cmp = icmp ugt i32 %add40, %call.i
  br i1 %cmp, label %land.lhs.true, label %if.end37.if.end61_crit_edge

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end37
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %88 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %frag_off, align 2
  %90 = and i16 %89, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool46.not = icmp eq i16 %90, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end61_crit_edge, label %do.body

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end61

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %91 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mib, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu, align 4
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %97
  %98 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %99, %93
  %100 = inttoptr i32 %add53 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx54 = getelementptr [37 x i64], ptr %100, i32 0, i32 21
  %101 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx54, align 8
  %add55 = add i64 %102, 1
  store i64 %add55, ptr %arrayidx54, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %100, i32 0, i32 1, i32 0, i32 1
  %103 = call ptr @llvm.returnaddress(i32 0) #17
  %104 = ptrtoint ptr %103 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %104) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !251
  %105 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %106, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  call void @dst_release(ptr noundef %rt.0) #17
  br label %out_free

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 19
  %107 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %hard_header_len, align 2
  %conv62 = zext i16 %108 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 21
  %109 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %needed_headroom, align 8
  %conv63 = zext i16 %110 to i32
  %add64 = add nuw nsw i32 %conv63, %conv62
  %and65 = and i32 %add64, 131056
  %header_len = getelementptr inbounds %struct.dst_entry, ptr %rt.0, i32 0, i32 9
  %111 = ptrtoint ptr %header_len to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %header_len, align 4
  %conv68 = zext i16 %112 to i32
  %add66 = add nuw nsw i32 %encap.0, 16
  %add69 = add nuw nsw i32 %add66, %conv68
  %add70 = add nuw nsw i32 %add69, %and65
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %113 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end61.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i185

if.end61.skb_cloned.exit.i_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_cloned.exit.i

land.rhs.i.i185:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %114 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #17
  %116 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %117, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i185, %if.end61.skb_cloned.exit.i_crit_edge
  %118 = phi i1 [ true, %if.end61.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i185 ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %119 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i.i, align 4
  %121 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %120 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add70)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add70
  %or.cond.i.i = and i1 %118, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end74_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end74_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %123 = call i32 @llvm.usub.sat.i32(i32 %add70, i32 %sub.ptr.sub.i.i.i) #17
  %add.i.i = add nuw nsw i32 %123, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool72.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool72.not, label %skb_cow.exit.if.end74_crit_edge, label %if.then73

skb_cow.exit.if.end74_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then73:                                        ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @dst_release(ptr noundef %rt.0) #17
  br label %out_free

if.end74:                                         ; preds = %skb_cow.exit.if.end74_crit_edge, %skb_cloned.exit.i.if.end74_crit_edge
  %pkt_out75 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 5
  %124 = ptrtoint ptr %pkt_out75 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pkt_out75, align 4
  %inc76 = add i32 %125, 1
  store i32 %inc76, ptr %pkt_out75, align 4
  %126 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len39, align 4
  %bytes_out78 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 3
  %128 = ptrtoint ptr %bytes_out78 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bytes_out78, align 4
  %add79 = add i32 %129, %127
  store i32 %add79, ptr %bytes_out78, align 4
  %130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i186 = icmp ne i32 %132, 0
  %and.i.i187 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool.not.i.i188 = icmp eq i32 %and.i.i187, 0
  %or.cond204 = and i1 %tobool.not.i186, %tobool.not.i.i188
  br i1 %or.cond204, label %if.then.i.i, label %if.end74.skb_dst_drop.exit_crit_edge

if.end74.skb_dst_drop.exit_crit_edge:             ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i = and i32 %132, -2
  %133 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %133) #17
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end74.skb_dst_drop.exit_crit_edge
  %tobool.not.i190 = icmp eq ptr %rt.0, null
  %134 = ptrtoint ptr %offload_l3_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %bf.load.i191 = load i32, ptr %offload_l3_fwd_mark.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i191, 4096
  %bf.shl.i = select i1 %tobool.not.i190, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i191, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %offload_l3_fwd_mark.i, align 2
  %135 = ptrtoint ptr %rt.0 to i32
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %130, align 8
  %137 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %head.i.i, align 8
  %139 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i194 = zext i16 %140 to i32
  %add.ptr.i.i195 = getelementptr i8, ptr %138, i32 %conv.i.i194
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i195, i32 0, i32 7
  %141 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %check1.i, align 2
  %add.i = add i16 %142, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -258, i16 %142)
  %cmp.i196 = icmp ugt i16 %142, -258
  %conv2.i = zext i1 %cmp.i196 to i16
  %add3.i = add i16 %add.i, %conv2.i
  %143 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %add3.i, ptr %check1.i, align 2
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i195, i32 0, i32 5
  %144 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ttl.i, align 4
  %dec.i = add i8 %145, -1
  store i8 %dec.i, ptr %ttl.i, align 4
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %flags, align 2
  %148 = and i16 %147, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool86.not = icmp eq i16 %148, 0
  br i1 %tobool86.not, label %skb_dst_drop.exit.if.end99_crit_edge, label %if.then87

skb_dst_drop.exit.if.end99_crit_edge:             ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.then87:                                        ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #19
  %local88 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 11
  %149 = ptrtoint ptr %local88 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %local88, align 4
  %remote89 = getelementptr %struct.mr_table, ptr %mrt, i32 0, i32 7, i32 %vifi, i32 12
  %151 = ptrtoint ptr %remote89 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %remote89, align 4
  call fastcc void @ip_encap(ptr noundef %net, ptr noundef %skb, i32 noundef %150, i32 noundef %152)
  %153 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx, align 4
  %tx_packets92 = getelementptr inbounds %struct.net_device, ptr %154, i32 0, i32 36, i32 1
  %155 = ptrtoint ptr %tx_packets92 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_packets92, align 4
  %inc93 = add i32 %156, 1
  store i32 %inc93, ptr %tx_packets92, align 4
  %157 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %len39, align 4
  %159 = load ptr, ptr %arrayidx, align 4
  %tx_bytes97 = getelementptr inbounds %struct.net_device, ptr %159, i32 0, i32 36, i32 3
  %160 = ptrtoint ptr %tx_bytes97 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_bytes97, align 4
  %add98 = add i32 %161, %158
  store i32 %add98, ptr %tx_bytes97, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then87, %skb_dst_drop.exit.if.end99_crit_edge
  %flags100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %162 = ptrtoint ptr %flags100 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %flags100, align 4
  %164 = or i16 %163, 1
  store i16 %164, ptr %flags100, align 4
  %165 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 8
  %call.i197 = call fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %167, ptr noundef %81) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i197)
  %cmp.i198 = icmp eq i32 %call.i197, 1
  br i1 %cmp.i198, label %if.then.i199, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i199:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = call i32 @ipmr_forward_finish(ptr noundef %net, ptr noundef null, ptr noundef %skb) #17
  br label %cleanup

out_free:                                         ; preds = %if.then73, %do.body, %if.else.out_free_crit_edge, %if.then20.out_free_crit_edge, %ipmr_forward_offloaded.exit.out_free_crit_edge, %if.then3, %entry.out_free_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then.i199, %if.end99.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !252
  %5 = tail call i32 @llvm.read_register.i32(metadata !198) #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !253
  %14 = tail call i32 @llvm.read_register.i32(metadata !198) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !198) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !254
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !255
  %33 = tail call i32 @llvm.read_register.i32(metadata !198) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !212

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 271, i32 noundef 9, ptr noundef null) #17
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !256
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #17
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_encap(ptr noundef %net, ptr noundef %skb, i32 noundef %saddr, i32 noundef %daddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #17
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %transport_header, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %conv.i.i31 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i32 = getelementptr i8, ptr %10, i32 %conv.i.i31
  %11 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %add.ptr.i.i32, align 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, ptr %add.ptr.i.i32, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos, align 1
  %tos3 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 1
  %14 = ptrtoint ptr %tos3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tos3, align 1
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ttl, align 4
  %ttl4 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 5
  %17 = ptrtoint ptr %ttl4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %ttl4, align 4
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 4
  %18 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %frag_off, align 2
  %daddr5 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 9
  %19 = ptrtoint ptr %daddr5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %daddr, ptr %daddr5, align 4
  %saddr6 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 8
  %20 = ptrtoint ptr %saddr6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %saddr, ptr %saddr6, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 6
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %protocol, align 1
  store i8 69, ptr %add.ptr.i.i32, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv = trunc i32 %23 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i32, i32 0, i32 2
  %24 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %tot_len, align 2
  %25 = load ptr, ptr %head.i.i, align 8
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_off.i.i, align 2
  %29 = and i16 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool9.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool9.not.i.i, label %entry.if.else.i.i_crit_edge, label %land.lhs.true10.i.i

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

land.lhs.true10.i.i:                              ; preds = %entry
  %ignore_df.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ignore_df.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %ignore_df.i.i, align 8
  %31 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool11.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true10.i.i.if.else.i.i_crit_edge

land.lhs.true10.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %land.lhs.true10.i.i.if.else.i.i_crit_edge, %entry.if.else.i.i_crit_edge
  tail call void @__ip_select_ident(ptr noundef %net, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #17
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i32) #17
  %opt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %33 = call ptr @memset(ptr %opt, i32 0, i32 16)
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %34 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %35, -8
  %36 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %ip_select_ident.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

ip_select_ident.exit.nf_reset_ct.exit_crit_edge:  ; preds = %ip_select_ident.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %ip_select_ident.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %36, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr nonnull %36, i32 1, i32 3, i32 1) #17
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #17, !srcloc !223
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !212

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef 3) #17
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !224
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %36) #17
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %ip_select_ident.exit.nf_reset_ct.exit_crit_edge
  %38 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %_nfct.i.i, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %0 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mib, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %9, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx5 = getelementptr [37 x i64], ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx5, align 8
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %arrayidx5, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %9, i32 0, i32 1, i32 0, i32 1
  %12 = tail call ptr @llvm.returnaddress(i32 0) #17
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %13) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !251
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %16 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mib, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %22, %18
  %23 = inttoptr i32 %add27 to ptr
  %syncp28 = getelementptr inbounds %struct.ipstats_mib, ptr %23, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp28)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %conv = zext i32 %25 to i64
  %arrayidx30 = getelementptr [37 x i64], ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %27, %conv
  store i64 %add31, ptr %arrayidx30, align 8
  %dep_map.i.i49 = getelementptr inbounds %struct.ipstats_mib, ptr %23, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i49, i32 noundef %13) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !251
  %28 = ptrtoint ptr %syncp28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %syncp28, align 4
  %inc.i.i.i50 = add i32 %29, 1
  store i32 %inc.i.i.i50, ptr %syncp28, align 4
  tail call fastcc void @local_bh_enable()
  %optlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ip_forward_options(ptr noundef %skb) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end.dst_output.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !218

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1013, i32 noundef 9, ptr noundef null) #17
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end.dst_output.exit_crit_edge
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 8
  %and25.i.i = and i32 %36, -2
  %37 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #17
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 2, i32 2), ptr blockaddress(@nf_hook, %if.end)) #17
          to label %cleanup [label %if.end], !srcloc !257

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !220
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b1 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b1, label %land.lhs.true9.sw.epilog_crit_edge, label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @nf_hook.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 229, ptr noundef nonnull @.str.5) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #17
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 2, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %pf2.i, align 1
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
  store ptr @ipmr_forward_finish, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #17
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %13 = call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_forward_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ipmr_seq.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 135
  %0 = ptrtoint ptr %ipmr_seq.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ipmr_seq.i, align 4
  %call.i = tail call ptr @fib_notifier_ops_register(ptr noundef nonnull @ipmr_notifier_ops_template, ptr noundef %net) #17
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ipmr_notifier_init.exit, label %ipmr_notifier_init.exit.thread

ipmr_notifier_init.exit.thread:                   ; preds = %entry
  %ipmr_notifier_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 134
  %1 = ptrtoint ptr %ipmr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %ipmr_notifier_ops.i, align 128
  %call.i22 = tail call ptr @fib_rules_register(ptr noundef nonnull @ipmr_rules_ops_template, ptr noundef %net) #17
  %cmp.i.i23 = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i23, label %if.then.i24, label %if.end.i25

ipmr_notifier_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.then.i24:                                      ; preds = %ipmr_notifier_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %call.i22 to i32
  br label %ipmr_rules_init.exit

if.end.i25:                                       ; preds = %ipmr_notifier_init.exit.thread
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %4 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mr_tables.i, ptr %mr_tables.i, align 4
  %prev.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mr_tables.i, ptr %prev.i.i, align 4
  %call3.i = tail call fastcc ptr @ipmr_new_table(ptr noundef %net, i32 noundef 253) #17
  %cmp.i24.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %call3.i to i32
  br label %err1.i

if.end7.i:                                        ; preds = %if.end.i25
  %call8.i = tail call i32 @fib_default_rule_add(ptr noundef %call.i22, i32 noundef 32767, i32 noundef 253, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %err2.i, label %ipmr_rules_init.exit.thread

ipmr_rules_init.exit.thread:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  %mr_rules_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 128
  %7 = ptrtoint ptr %mr_rules_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i22, ptr %mr_rules_ops.i, align 4
  br label %if.end3

err2.i:                                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtnl_lock() #17
  %ipmr_expire_timer.i.i = getelementptr inbounds %struct.mr_table, ptr %call3.i, i32 0, i32 5
  %call.i.i = tail call i32 @del_timer_sync(ptr noundef %ipmr_expire_timer.i.i) #17
  tail call fastcc void @mroute_clean_tables(ptr noundef %call3.i, i32 noundef 15) #17
  %mfc_hash.i.i = getelementptr inbounds %struct.mr_table, ptr %call3.i, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %mfc_hash.i.i, ptr noundef null, ptr noundef null) #17
  tail call void @kfree(ptr noundef %call3.i) #17
  tail call void @rtnl_unlock() #17
  br label %err1.i

err1.i:                                           ; preds = %err2.i, %if.then5.i
  %err.0.i = phi i32 [ %6, %if.then5.i ], [ %call8.i, %err2.i ]
  tail call void @fib_rules_unregister(ptr noundef %call.i22) #17
  br label %ipmr_rules_init.exit

ipmr_rules_init.exit:                             ; preds = %err1.i, %if.then.i24
  %retval.0.i26 = phi i32 [ %3, %if.then.i24 ], [ %err.0.i, %err1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i26)
  %cmp = icmp slt i32 %retval.0.i26, 0
  br i1 %cmp, label %ipmr_rules_init.exit.ipmr_rules_fail_crit_edge, label %ipmr_rules_init.exit.if.end3_crit_edge

ipmr_rules_init.exit.if.end3_crit_edge:           ; preds = %ipmr_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3

ipmr_rules_init.exit.ipmr_rules_fail_crit_edge:   ; preds = %ipmr_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ipmr_rules_fail

if.end3:                                          ; preds = %ipmr_rules_init.exit.if.end3_crit_edge, %ipmr_rules_init.exit.thread
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %8 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_net, align 4
  %call4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.49, i16 noundef zeroext 0, ptr noundef %9, ptr noundef nonnull @ipmr_vif_seq_ops, i32 noundef 16, ptr noundef null) #17
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.proc_vif_fail_crit_edge, label %if.end7

if.end3.proc_vif_fail_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %proc_vif_fail

if.end7:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_net, align 4
  %call9 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.50, i16 noundef zeroext 0, ptr noundef %11, ptr noundef nonnull @ipmr_mfc_seq_ops, i32 noundef 20, ptr noundef null) #17
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %proc_cache_fail, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

proc_cache_fail:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.49, ptr noundef %13) #17
  br label %proc_vif_fail

proc_vif_fail:                                    ; preds = %proc_cache_fail, %if.end3.proc_vif_fail_crit_edge
  tail call fastcc void @ipmr_rules_exit(ptr noundef %net)
  br label %ipmr_rules_fail

ipmr_rules_fail:                                  ; preds = %proc_vif_fail, %ipmr_rules_init.exit.ipmr_rules_fail_crit_edge
  %err.0 = phi i32 [ %retval.0.i26, %ipmr_rules_init.exit.ipmr_rules_fail_crit_edge ], [ -12, %proc_vif_fail ]
  %14 = ptrtoint ptr %ipmr_notifier_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipmr_notifier_ops.i, align 128
  tail call void @fib_notifier_ops_unregister(ptr noundef %15) #17
  %16 = ptrtoint ptr %ipmr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ipmr_notifier_ops.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %ipmr_rules_fail, %if.end7.cleanup_crit_edge, %ipmr_notifier_init.exit
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ %2, %ipmr_notifier_init.exit ], [ %err.0, %ipmr_rules_fail ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.50, ptr noundef %1) #17
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.49, ptr noundef %3) #17
  %ipmr_notifier_ops.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 134
  %4 = ptrtoint ptr %ipmr_notifier_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipmr_notifier_ops.i, align 128
  tail call void @fib_notifier_ops_unregister(ptr noundef %5) #17
  %6 = ptrtoint ptr %ipmr_notifier_ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ipmr_notifier_ops.i, align 128
  tail call fastcc void @ipmr_rules_exit(ptr noundef %net)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmr_rules_exit(ptr noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #17
  %mr_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %0 = ptrtoint ptr %mr_tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tables, align 4
  %cmp.not22 = icmp eq ptr %1, %mr_tables
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %mrt.023 = phi ptr [ %next.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %mrt.023, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mrt.023) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mrt.023, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrt.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %mrt.023 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %mrt.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mrt.023, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ipmr_expire_timer.i = getelementptr inbounds %struct.mr_table, ptr %mrt.023, i32 0, i32 5
  %call.i = tail call i32 @del_timer_sync(ptr noundef %ipmr_expire_timer.i) #17
  tail call fastcc void @mroute_clean_tables(ptr noundef %mrt.023, i32 noundef 15) #17
  %mfc_hash.i = getelementptr inbounds %struct.mr_table, ptr %mrt.023, i32 0, i32 8
  tail call void @rhashtable_free_and_destroy(ptr noundef %mfc_hash.i, ptr noundef null, ptr noundef null) #17
  tail call void @kfree(ptr noundef %mrt.023) #17
  %cmp.not = icmp eq ptr %next.0, %mr_tables
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mr_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 128
  %11 = ptrtoint ptr %mr_rules_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mr_rules_ops, align 4
  tail call void @fib_rules_unregister(ptr noundef %12) #17
  tail call void @rtnl_unlock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_notifier_ops_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_seq_read(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @ipmr_seq_read.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !212

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_seq_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3013, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 3013) #17
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %ipmr_seq = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 135
  %0 = ptrtoint ptr %ipmr_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ipmr_seq, align 4
  %call.i = tail call i32 @fib_rules_seq_read(ptr noundef %net, i32 noundef 128) #17
  %add = add i32 %call.i, %1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mr_dump(ptr noundef %net, ptr noundef %nb, i16 noundef zeroext 128, ptr noundef nonnull @ipmr_rules_dump, ptr noundef nonnull @ipmr_mr_table_iter, ptr noundef nonnull @mrt_lock, ptr noundef %extack) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_seq_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_dump(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rules_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_dump(ptr noundef %net, ptr noundef %nb, i32 noundef 128, ptr noundef %extack) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ipmr_mr_table_iter(ptr noundef %net, ptr noundef %mrt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mrt, null
  %mr_tables = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 127
  %ret.0.in = select i1 %tobool.not, ptr %mr_tables, ptr %mrt
  %0 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ret.0 = load volatile ptr, ptr %ret.0.in, align 4
  %cmp = icmp eq ptr %ret.0, %mr_tables
  %retval.0 = select i1 %cmp, ptr null, ptr %ret.0
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_rule_action(ptr nocapture noundef readonly %rule, ptr nocapture noundef readnone %flp, i32 noundef %flags, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %result, align 4
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %action, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %3, label %sw.default [
    i8 1, label %sw.epilog
    i8 7, label %entry.cleanup_crit_edge
    i8 8, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %5 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %table.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %table1.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %cond.in.i = select i1 %tobool.not.i, ptr %table1.i, ptr %table.i
  %7 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %8 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %table.i, align 4
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %9 = ptrtoint ptr %fr_net to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fr_net, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %sw.epilog.do.end.i_crit_edge, label %lor.lhs.false.i

sw.epilog.do.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 35, i32 127
  %11 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %sw.epilog.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %14 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %15, %cond.i
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mrt.0.i, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.default, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -13, %sw.bb1 ], [ 0, %if.end ], [ -101, %entry.cleanup_crit_edge ], [ -11, %ipmr_get_table.exit.cleanup_crit_edge ], [ -11, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmr_rule_match(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %fl, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmr_rule_configure(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %frh, ptr nocapture noundef readnone %tb, ptr nocapture noundef readnone %extack) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipmr_rule_compare(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %frh, ptr nocapture noundef readnone %tb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ipmr_rule_fill(ptr nocapture noundef readnone %rule, ptr nocapture noundef readnone %skb, ptr nocapture noundef writeonly %frh) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dst_len, align 1
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %1 = ptrtoint ptr %src_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %src_len, align 2
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %2 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tos, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipmr_vif_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  %4 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %8, 253
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipmr_get_table.exit
  %mrt3 = getelementptr inbounds %struct.mr_vif_iter, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mrt3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mrt.0.i, ptr %mrt3, align 4
  tail call void @_raw_read_lock(ptr noundef nonnull @mrt_lock) #17
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %sub.i = add i64 %11, -1
  %call1.i = tail call ptr @mr_vif_seq_idx(ptr noundef %15, ptr noundef %13, i64 noundef %sub.i) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end.cleanup_crit_edge, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %ipmr_get_table.exit.cleanup_crit_edge ], [ %call1.i, %cond.true.i ], [ inttoptr (i32 1 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmr_vif_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @mrt_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_vif_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_vif_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.51) #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_vif_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, ptr @.str.52, ptr %5
  %vif_table = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 7
  %sub.ptr.lhs.cast = ptrtoint ptr %v to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %vif_table to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 80
  %bytes_in = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %bytes_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_in, align 4
  %pkt_in = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 4
  %8 = ptrtoint ptr %pkt_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pkt_in, align 4
  %bytes_out = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 3
  %10 = ptrtoint ptr %bytes_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes_out, align 4
  %pkt_out = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 5
  %12 = ptrtoint ptr %pkt_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkt_out, align 4
  %flags = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %conv = zext i16 %15 to i32
  %local = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 11
  %16 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %local, align 4
  %remote = getelementptr inbounds %struct.vif_device, ptr %v, i32 0, i32 12
  %18 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %remote, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.53, i32 noundef %sub.ptr.div, ptr noundef nonnull %spec.select, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %17, i32 noundef %19) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_vif_seq_idx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipmr_mfc_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mr_tables.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  %4 = ptrtoint ptr %mr_tables.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr_tables.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %mr_tables.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call2.i = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b35.i = load i1, ptr @ipmr_get_table.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_get_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.9) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %mr_tables13.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %mrt.0.in.i = phi ptr [ %mr_tables13.i, %do.end.i ], [ %mrt.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %mrt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.0.i = load volatile ptr, ptr %mrt.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %mrt.0.i, %mr_tables13.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id17.i = getelementptr inbounds %struct.mr_table, ptr %mrt.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id17.i, align 4
  %cmp18.i = icmp eq i32 %8, 253
  br i1 %cmp18.i, label %ipmr_get_table.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

ipmr_get_table.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mrt.0.i, null
  br i1 %tobool.not, label %ipmr_get_table.exit.cleanup_crit_edge, label %if.end

ipmr_get_table.exit.cleanup_crit_edge:            ; preds = %ipmr_get_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %ipmr_get_table.exit
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 8
  %mrt1.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mrt1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mrt.0.i, ptr %mrt1.i, align 4
  %cache.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %cache.i, align 4
  %lock2.i = getelementptr inbounds %struct.mr_mfc_iter, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %lock2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mfc_unres_lock, ptr %lock2.i, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool.not.i = icmp eq i64 %15, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %cond.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sub.i = add i64 %15, -1
  %call4.i = tail call ptr @mr_mfc_seq_idx(ptr noundef %19, ptr noundef %17, i64 noundef %sub.i) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end.cleanup_crit_edge, %ipmr_get_table.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %ipmr_get_table.exit.cleanup_crit_edge ], [ %call4.i, %cond.true.i ], [ inttoptr (i32 1 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mr_mfc_seq_stop(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %cache = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 6
  %cmp = icmp eq ptr %5, %mfc_unres_queue
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lock = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #17
  br label %if.end5

if.else:                                          ; preds = %entry
  %mfc_cache_list = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 9
  %cmp3 = icmp eq ptr %5, %mfc_cache_list
  br i1 %cmp3, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then4:                                         ; preds = %if.else
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %if.then4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.then4.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.then4.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !221
  %8 = tail call i32 @llvm.read_register.i32(metadata !198) #17
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br label %if.end5

if.end5:                                          ; preds = %rcu_read_unlock.exit, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_seq_next(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_mfc_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.54) #17
  br label %if.end30

if.else:                                          ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mrt1 = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrt1, align 4
  %4 = getelementptr inbounds %struct.mfc_cache, ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %mfc_origin = getelementptr inbounds %struct.mfc_cache, ptr %v, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mfc_origin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mfc_origin, align 4
  %mfc_parent = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 1
  %9 = ptrtoint ptr %mfc_parent to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mfc_parent, align 4
  %conv = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, i32 noundef %6, i32 noundef %8, i32 noundef %conv) #17
  %cache = getelementptr inbounds %struct.mr_mfc_iter, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %mfc_unres_queue = getelementptr inbounds %struct.mr_table, ptr %3, i32 0, i32 6
  %cmp2.not = icmp eq ptr %12, %mfc_unres_queue
  br i1 %cmp2.not, label %if.else28, label %if.then4

if.then4:                                         ; preds = %if.else
  %pkt = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pkt, align 4
  %bytes = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes, align 4
  %wrong_if = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 5
  %17 = ptrtoint ptr %wrong_if to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wrong_if, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, i32 noundef %14, i32 noundef %16, i32 noundef %18) #17
  %minvif = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %minvif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minvif, align 4
  %maxvif = getelementptr inbounds %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 2
  %21 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp1454 = icmp slt i32 %20, %22
  br i1 %cmp1454, label %if.then4.for.body_crit_edge, label %if.then4.if.end29_crit_edge

if.then4.if.end29_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4.for.body_crit_edge
  %n.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %20, %if.then4.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mr_table, ptr %3, i32 0, i32 7, i32 %n.055
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx18 = getelementptr %struct.mr_mfc, ptr %v, i32 0, i32 3, i32 0, i32 7, i32 %n.055
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp20.not = icmp eq i8 %26, -1
  br i1 %cmp20.not, label %land.lhs.true.for.inc_crit_edge, label %if.then22

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %conv19 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %n.055, i32 noundef %conv19) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %n.055, 1
  %27 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxvif, align 4
  %cmp14 = icmp slt i32 %inc, %28
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.if.end29_crit_edge

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %for.inc.if.end29_crit_edge, %if.then4.if.end29_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mr_mfc_seq_idx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_notifier_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmr_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp.not = icmp eq i32 %event, 6
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call2, label %do.body.do.end_crit_edge, label %lor.lhs.false

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %mr_tables = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  %4 = ptrtoint ptr %mr_tables to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mr_tables, align 4
  %cmp.i.not = icmp eq ptr %5, %mr_tables
  br i1 %cmp.i.not, label %lor.lhs.false.do.end_crit_edge, label %land.lhs.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @rcu_read_lock_any_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b55 = load i1, ptr @ipmr_device_event.__warned, align 1
  br i1 %.b55, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ipmr_device_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1728, ptr noundef nonnull @.str.9) #17
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %mr_tables17 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 127
  %6 = ptrtoint ptr %mr_tables17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %mrt.060 = load volatile ptr, ptr %mr_tables17, align 4
  %cmp21.not61 = icmp eq ptr %mrt.060, %mr_tables17
  br i1 %cmp21.not61, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %7 = ptrtoint ptr %mrt.062 to i32
  call void @__asan_load4_noabort(i32 %7)
  %mrt.0 = load volatile ptr, ptr %mrt.062, align 4
  %cmp21.not = icmp eq ptr %mrt.0, %mr_tables17
  br i1 %cmp21.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %do.end.for.body_crit_edge
  %mrt.062 = phi ptr [ %mrt.0, %for.cond.loopexit.for.body_crit_edge ], [ %mrt.060, %do.end.for.body_crit_edge ]
  %maxvif = getelementptr inbounds %struct.mr_table, ptr %mrt.062, i32 0, i32 10
  %8 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxvif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2356 = icmp sgt i32 %9, 0
  br i1 %cmp2356, label %for.body24.preheader, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit

for.body24.preheader:                             ; preds = %for.body
  %vif_table = getelementptr inbounds %struct.mr_table, ptr %mrt.062, i32 0, i32 7
  br label %for.body24

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %for.body24.preheader
  %v.059 = phi ptr [ %incdec.ptr, %for.inc.for.body24_crit_edge ], [ %vif_table, %for.body24.preheader ]
  %ct.057 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %10 = ptrtoint ptr %v.059 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v.059, align 4
  %cmp26 = icmp eq ptr %11, %1
  br i1 %cmp26, label %if.then27, label %for.body24.for.inc_crit_edge

for.body24.for.inc_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then27:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #19
  %call28 = tail call fastcc i32 @vif_delete(ptr noundef %mrt.062, i32 noundef %ct.057, i32 noundef 1, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body24.for.inc_crit_edge
  %inc = add nuw nsw i32 %ct.057, 1
  %incdec.ptr = getelementptr %struct.vif_device, ptr %v.059, i32 1
  %12 = ptrtoint ptr %maxvif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxvif, align 4
  %cmp23 = icmp slt i32 %inc, %13
  br i1 %cmp23, label %for.inc.for.body24_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body24

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pim_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 27
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %6)
  %cmp3.i = icmp ult i32 %6, 28
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !218

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 28, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #17
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %14)
  %cmp.not = icmp eq i8 %14, 33
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.pimreghdr, ptr %add.ptr.i, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.drop_crit_edge

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef 0) #17
  %17 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #20, !srcloc !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %17)
  %cmp7.not = icmp ugt i32 %17, -65537
  br i1 %cmp7.not, label %lor.lhs.false4.if.end14_crit_edge, label %land.lhs.true

lor.lhs.false4.if.end14_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %call9 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %19, i32 noundef 0) #17
  %20 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call9) #20, !srcloc !258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %20)
  %tobool12.not = icmp ugt i32 %20, -65537
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.drop_crit_edge

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %lor.lhs.false4.if.end14_crit_edge
  %call15 = tail call fastcc ptr @ipmr_rt_fib_lookup(ptr noundef %4, ptr noundef %skb)
  %cmp.i34 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34, label %if.end14.drop_crit_edge, label %if.end18

if.end14.drop_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @__pim_rcv(ptr noundef %call15, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.end18.drop_crit_edge

if.end18.drop_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %drop

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

drop:                                             ; preds = %if.end18.drop_crit_edge, %if.end14.drop_crit_edge, %land.lhs.true.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %if.end.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %if.end22

if.end22:                                         ; preds = %drop, %if.end18.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %nlh, ptr noundef %tb, ptr noundef %extack) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1)
  %cmp.i = icmp ult i32 %1, 28
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #17
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.__nlmsg_parse.exit_crit_edge, label %if.then1.i

do.body.i.__nlmsg_parse.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__nlmsg_parse.exit

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %__nlmsg_parse.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i = add i32 %1, -28
  %call5.i = tail call i32 @__nla_parse(ptr noundef %tb, i32 noundef 30, ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 3, ptr noundef %extack) #17
  br label %__nlmsg_parse.exit

__nlmsg_parse.exit:                               ; preds = %if.end2.i, %if.then1.i, %do.body.i.__nlmsg_parse.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end2.i ], [ -22, %if.then1.i ], [ -22, %do.body.i.__nlmsg_parse.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_valid_fib_dump_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_table_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ipmr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ipmr_fill_mroute(ptr noundef %mrt, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %c, i32 noundef %cmd, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mr_rtm_dumproute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !98, !100, !102, !104, !105, !107, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196}
!llvm.named.register.sp = !{!198}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__ksymtab_ipmr_rule_default, !1, !"__ksymtab_ipmr_rule_default", i1 false, i1 false}
!1 = !{!"../net/ipv4/ipmr.c", i32 295, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/ipv4/ipmr.c", i32 1384, i32 7}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv4/ipmr.c", i32 1428, i32 17}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv4/ipmr.c", i32 1456, i32 15}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/ipv4/ipmr.c", i32 1518, i32 13}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/ipv4/ipmr.c", i32 2114, i32 16}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/ipmr.c", i32 3107, i32 33}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv4/ipmr.c", i32 3121, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ip_mr_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ip_mr_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mrt_cachep, !23, !"mrt_cachep", i1 false, i1 false}
!23 = !{!"../net/ipv4/ipmr.c", i32 95, i32 27}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/ipv4/ipmr.c", i32 138, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ipv4/ipmr.c", i32 1326, i32 2}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/ipv4/ipmr.c", i32 1327, i32 13}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/ipmr.c", i32 541, i32 17}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ipv4/ipmr.c", i32 543, i32 17}
!35 = !{ptr @reg_vif_netdev_ops, !36, !"reg_vif_netdev_ops", i1 false, i1 false}
!36 = !{!"../net/ipv4/ipmr.c", i32 520, i32 36}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv4/ipmr.c", i32 1070, i32 14}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv4/ipmr.c", i32 1083, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ipmr_cache_report._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ipmr_cache_report._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/net/dst.h", i32 231, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/netlink.h", i32 991, i32 3}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/ipv4/ipmr.c", i32 426, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv4/ipmr.c", i32 444, i32 38}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/ipv4/ipmr.c", i32 453, i32 18}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/mroute_base.h", i32 89, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!80 = !{ptr @ipmr_rht_params, !81, !"ipmr_rht_params", i1 false, i1 false}
!81 = !{!"../net/ipv4/ipmr.c", i32 367, i32 39}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/mroute_base.h", i32 208, i32 2}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ipv4/ipmr.c", i32 1233, i32 3}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ipmr_mfc_add._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ipmr_mfc_add._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ipv4/ipmr.c", i32 85, i32 8}
!97 = !{ptr @mfc_unres_lock, !96, !"mfc_unres_lock", i1 false, i1 false}
!98 = !{ptr @ipmr_mr_table_ops, !99, !"ipmr_mr_table_ops", i1 false, i1 false}
!99 = !{!"../net/ipv4/ipmr.c", i32 389, i32 28}
!100 = !{ptr @ipmr_mr_table_ops_cmparg_any, !101, !"ipmr_mr_table_ops_cmparg_any", i1 false, i1 false}
!101 = !{!"../net/ipv4/ipmr.c", i32 384, i32 33}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!104 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/ipv4/ipmr.c", i32 80, i32 8}
!111 = !{ptr @mrt_lock, !110, !"mrt_lock", i1 false, i1 false}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!114 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!118 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @skb_queue_head_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!121 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!127 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!140 = !{ptr @ipmr_net_ops, !141, !"ipmr_net_ops", i1 false, i1 false}
!141 = !{!"../net/ipv4/ipmr.c", i32 3098, i32 33}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ipv4/ipmr.c", i32 3067, i32 7}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ipv4/ipmr.c", i32 3070, i32 7}
!146 = !{ptr @ipmr_notifier_ops_template, !147, !"ipmr_notifier_ops_template", i1 false, i1 false}
!147 = !{!"../net/ipv4/ipmr.c", i32 3025, i32 38}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../net/ipv4/ipmr.c", i32 3013, i32 2}
!150 = !{ptr @ipmr_rules_ops_template, !151, !"ipmr_rules_ops_template", i1 false, i1 false}
!151 = !{!"../net/ipv4/ipmr.c", i32 220, i32 51}
!152 = !{ptr @ipmr_vif_seq_ops, !153, !"ipmr_vif_seq_ops", i1 false, i1 false}
!153 = !{!"../net/ipv4/ipmr.c", i32 2937, i32 36}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/ipv4/ipmr.c", i32 2921, i32 5}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/ipv4/ipmr.c", i32 2925, i32 26}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ipv4/ipmr.c", i32 2928, i32 7}
!160 = !{ptr @ipmr_mfc_seq_ops, !161, !"ipmr_mfc_seq_ops", i1 false, i1 false}
!161 = !{!"../net/ipv4/ipmr.c", i32 2997, i32 36}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/ipv4/ipmr.c", i32 2962, i32 4}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/ipv4/ipmr.c", i32 2968, i32 19}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/ipv4/ipmr.c", i32 2974, i32 20}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/ipv4/ipmr.c", i32 2983, i32 9}
!170 = !{ptr @ip_mr_notifier, !171, !"ip_mr_notifier", i1 false, i1 false}
!171 = !{!"../net/ipv4/ipmr.c", i32 1738, i32 30}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../net/ipv4/ipmr.c", i32 1728, i32 2}
!174 = !{ptr @pim_protocol, !175, !"pim_protocol", i1 false, i1 false}
!175 = !{!"../net/ipv4/ipmr.c", i32 3006, i32 34}
!176 = !{ptr @ipmr_rtm_valid_getroute_req.__msg, !177, !"__msg", i1 false, i1 false}
!177 = !{!"../net/ipv4/ipmr.c", i32 2467, i32 3}
!178 = !{ptr @ipmr_rtm_valid_getroute_req.__msg.58, !179, !"__msg", i1 false, i1 false}
!179 = !{!"../net/ipv4/ipmr.c", i32 2480, i32 3}
!180 = !{ptr @ipmr_rtm_valid_getroute_req.__msg.59, !181, !"__msg", i1 false, i1 false}
!181 = !{!"../net/ipv4/ipmr.c", i32 2491, i32 3}
!182 = !{ptr @ipmr_rtm_valid_getroute_req.__msg.60, !183, !"__msg", i1 false, i1 false}
!183 = !{!"../net/ipv4/ipmr.c", i32 2505, i32 4}
!184 = !{ptr @__nlmsg_parse.__msg, !185, !"__msg", i1 false, i1 false}
!185 = !{!"../include/net/netlink.h", i32 729, i32 3}
!186 = !{ptr @ipmr_rtm_dumproute.__msg, !187, !"__msg", i1 false, i1 false}
!187 = !{!"../net/ipv4/ipmr.c", i32 2590, i32 4}
!188 = !{ptr @rtm_ipmr_policy, !189, !"rtm_ipmr_policy", i1 false, i1 false}
!189 = !{!"../net/ipv4/ipmr.c", i32 2602, i32 32}
!190 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!191 = !{!"../net/ipv4/ipmr.c", i32 2824, i32 2}
!192 = !{ptr @ipmr_valid_dumplink.__msg, !193, !"__msg", i1 false, i1 false}
!193 = !{!"../net/ipv4/ipmr.c", i32 2787, i32 3}
!194 = !{ptr @ipmr_valid_dumplink.__msg.62, !195, !"__msg", i1 false, i1 false}
!195 = !{!"../net/ipv4/ipmr.c", i32 2792, i32 3}
!196 = !{ptr @ipmr_valid_dumplink.__msg.63, !197, !"__msg", i1 false, i1 false}
!197 = !{!"../net/ipv4/ipmr.c", i32 2799, i32 3}
!198 = !{!"sp"}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
!209 = !{i64 2158551628}
!210 = !{i8 0, i8 2}
!211 = !{i64 2150573524, i64 2150573549}
!212 = !{!"branch_weights", i32 2000, i32 1}
!213 = !{i64 3069079}
!214 = !{i64 3069276}
!215 = !{i64 2150554509}
!216 = !{i64 913082, i64 913143}
!217 = !{i64 915814}
!218 = !{!"branch_weights", i32 1, i32 2000}
!219 = !{i64 916099}
!220 = !{i64 2149336091}
!221 = !{i64 2149336357}
!222 = !{i64 2148608355}
!223 = !{i64 2148522819, i64 2148522851, i64 2148522880, i64 2148522914, i64 2148522945, i64 2148522968}
!224 = !{i64 2149644078}
!225 = !{i64 2157648203}
!226 = !{i64 2148518824, i64 2148518850, i64 2148518879, i64 2148518913, i64 2148518944, i64 2148518967}
!227 = !{i64 2149361483}
!228 = !{i64 2148521289, i64 2148521315, i64 2148521344, i64 2148521378, i64 2148521409, i64 2148521432}
!229 = !{i64 2158569375, i64 2158569655, i64 2158569989, i64 2158570323}
!230 = !{i64 2158580723, i64 2158581003, i64 2158581337, i64 2158581671}
!231 = !{i64 2150574205, i64 2150574230}
!232 = !{i64 968606, i64 968623}
!233 = !{i64 2148518243}
!234 = !{i64 1004843, i64 1004868, i64 1004890, i64 1004906, i64 1004918, i64 1004938, i64 1004962, i64 1004978, i64 1004990}
!235 = !{i64 2148518431}
!236 = !{i64 2157679238}
!237 = !{i64 2151977439}
!238 = !{!"branch_weights", i32 2146410443, i32 1073205}
!239 = !{i64 2148527682, i64 2148527714, i64 2148527743, i64 2148527777, i64 2148527808, i64 2148527831}
!240 = !{i64 2148616763}
!241 = !{i64 2151977599}
!242 = !{i64 2151977876}
!243 = !{i64 2151977718}
!244 = !{i64 2151978081}
!245 = !{i64 2151979144, i64 2151979636, i64 2151979181, i64 2151979237, i64 2151979271, i64 2151979295, i64 2151979336, i64 2151979357, i64 2151979385, i64 2151979419}
!246 = !{i64 2148615650}
!247 = !{i64 2148526069, i64 2148526101, i64 2148526130, i64 2148526164, i64 2148526195, i64 2148526218}
!248 = !{i64 2151980539}
!249 = !{i64 2157608996}
!250 = !{i64 2157611295}
!251 = !{i64 2150264272}
!252 = !{i64 2150155874}
!253 = !{i64 2150160808}
!254 = !{i64 2150182526}
!255 = !{i64 2150187420}
!256 = !{i64 2150263947}
!257 = !{i64 2148332217, i64 2148332222, i64 2148332235, i64 2148332279, i64 2148332313, i64 2148332334}
!258 = !{i64 6780514}
