; ModuleID = '/llk/IR_all_yes/net/ipv4/fib_semantics.c_pt.bc'
source_filename = "../net/ipv4/fib_semantics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib_nh_common_release\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_nh_common_release\09\09\09\09"
module asm "\09.long\09__crc_fib_nh_common_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nh_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nh_common_release\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nh_common_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_fib_info\22, \22a\22\09"
module asm "\09.weak\09__crc_free_fib_info\09\09\09\09"
module asm "\09.long\09__crc_free_fib_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_fib_info:\09\09\09\09\09"
module asm "\09.asciz \09\22free_fib_info\22\09\09\09\09\09"
module asm "__kstrtabns_free_fib_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_nh_common_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_nh_common_init\09\09\09\09"
module asm "\09.long\09__crc_fib_nh_common_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nh_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nh_common_init\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nh_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_nexthop_info\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_nexthop_info\09\09\09\09"
module asm "\09.long\09__crc_fib_nexthop_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_nexthop_info:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_nexthop_info\22\09\09\09\09\09"
module asm "__kstrtabns_fib_nexthop_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fib_add_nexthop\22, \22a\22\09"
module asm "\09.weak\09__crc_fib_add_nexthop\09\09\09\09"
module asm "\09.long\09__crc_fib_add_nexthop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib_add_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22fib_add_nexthop\22\09\09\09\09\09"
module asm "__kstrtabns_fib_add_nexthop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fib_prop = type { i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.184, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.184 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.183 = type { ptr }
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
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.fnhe_hash_bucket = type { ptr }
%struct.fib_nh_exception = type { ptr, i32, i32, i32, i8, i32, i32, ptr, ptr, i32, %struct.callback_head }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.55, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.55 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.192 }
%union.anon.192 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.194, %struct.list_head, ptr }
%union.anon.194 = type { %struct.anon.196 }
%struct.anon.196 = type { %struct.list_head, i16, i16 }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.fib_alias = type { %struct.hlist_node, ptr, i8, i8, i8, i8, i32, i16, i8, i8, i8, %struct.callback_head }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.fib_config = type { i8, i8, i8, i8, i8, i8, i32, i32, %union.anon.197, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.nl_info, ptr, i16 }
%union.anon.197 = type { %struct.in6_addr }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.nlattr = type { i16, i16 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.193 }
%union.anon.193 = type { %struct.fib_nh }
%struct.fib_nh_notifier_info = type { %struct.fib_notifier_info, ptr }
%struct.fib_notifier_info = type { i32, ptr }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }

@fib_props = dso_local constant { [12 x %struct.fib_prop], [32 x i8] } { [12 x %struct.fib_prop] [%struct.fib_prop { i32 0, i8 -1 }, %struct.fib_prop zeroinitializer, %struct.fib_prop { i32 0, i8 -2 }, %struct.fib_prop { i32 0, i8 -3 }, %struct.fib_prop { i32 0, i8 -3 }, %struct.fib_prop zeroinitializer, %struct.fib_prop { i32 -22, i8 0 }, %struct.fib_prop { i32 -113, i8 0 }, %struct.fib_prop { i32 -13, i8 0 }, %struct.fib_prop { i32 -11, i8 0 }, %struct.fib_prop { i32 -22, i8 -1 }, %struct.fib_prop { i32 -22, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_fib_nh_common_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nh_common_release = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nh_common_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nh_common_release to i32), ptr @__kstrtab_fib_nh_common_release, ptr @__kstrtabns_fib_nh_common_release }, section "___ksymtab_gpl+fib_nh_common_release", align 4
@free_fib_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Freeing alive fib_info %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_fib_info\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ipv4/fib_semantics.c\00", [39 x i8] zeroinitializer }, align 32
@free_fib_info._entry_ptr = internal global ptr @free_fib_info._entry, section ".printk_index", align 4
@__kstrtab_free_fib_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_fib_info = external dso_local constant [0 x i8], align 1
@__ksymtab_free_fib_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_fib_info to i32), ptr @__kstrtab_free_fib_info, ptr @__kstrtabns_free_fib_info }, section "___ksymtab_gpl+free_fib_info", align 4
@fib_info_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@fib_info_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fib_nh_common_init.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LWT encap type not specified\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_fib_nh_common_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nh_common_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nh_common_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nh_common_init to i32), ptr @__kstrtab_fib_nh_common_init, ptr @__kstrtabns_fib_nh_common_init }, section "___ksymtab_gpl+fib_nh_common_init", align 4
@fib_nh_match.__msg = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Nexthop configuration can not contain both GATEWAY and VIA\00", [37 x i8] zeroinitializer }, align 32
@fib_nh_match.__msg.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid RTA_FLOW\00", [47 x i8] zeroinitializer }, align 32
@fib_create_info.__msg = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid scope\00", [18 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid rtm_flags - can not contain DEAD or LINKDOWN\00", [43 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nexthop id does not exist\00", [38 x i8] zeroinitializer }, align 32
@fib_info_hash_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fib_create_info.__msg.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Nexthop has been deleted\00", [39 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Gateway, device and multipath can not be specified for this route type\00", [57 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid route type\00", [45 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid scope\00", [18 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Route with host scope can not have multiple nexthops\00", [43 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Route with host scope can not have a gateway\00", [51 x i8] zeroinitializer }, align 32
@fib_create_info.__msg.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid prefsrc address\00", [40 x i8] zeroinitializer }, align 32
@fib_info_hash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fib_nexthop_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_nexthop_info = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_nexthop_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_nexthop_info to i32), ptr @__kstrtab_fib_nexthop_info, ptr @__kstrtabns_fib_nexthop_info }, section "___ksymtab_gpl+fib_nexthop_info", align 4
@__kstrtab_fib_add_nexthop = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib_add_nexthop = external dso_local constant [0 x i8], align 1
@__ksymtab_fib_add_nexthop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib_add_nexthop to i32), ptr @__kstrtab_fib_add_nexthop, ptr @__kstrtabns_fib_add_nexthop }, section "___ksymtab_gpl+fib_add_nexthop", align 4
@fib_info_laddrhash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fib_info_lock\00", [18 x i8] zeroinitializer }, align 32
@nexthop_num_path.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fib_info_devhash = internal global { [256 x %struct.hlist_head], [256 x i8] } zeroinitializer, align 32
@nexthop_fib_nhc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_fib_nhc.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib_gw_from_attr.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid IPv4 address in RTA_GATEWAY\00", [60 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nexthop has invalid scope\00", [38 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Nexthop device required for onlink\00", [61 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Nexthop device is not up\00", [39 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Nexthop has invalid gateway\00", [36 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Nexthop has invalid gateway\00", [36 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Nexthop has invalid gateway\00", [36 x i8] zeroinitializer }, align 32
@fib_check_nh_v4_gw.__msg.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No egress device for nexthop gateway\00", [59 x i8] zeroinitializer }, align 32
@fib_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/net/ip_fib.h\00", [43 x i8] zeroinitializer }, align 32
@fib_lookup.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@fib_check_nh_nongw.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Invalid flags for nexthop - PERVASIVE and ONLINK can not be set\00", [32 x i8] zeroinitializer }, align 32
@fib_check_nh_nongw.__msg.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device for nexthop is not up\00", [35 x i8] zeroinitializer }, align 32
@fib_count_nexthops.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid nexthop configuration - extra data after nexthops\00", [38 x i8] zeroinitializer }, align 32
@fib_info_hash_bits = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fib_get_nhs.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid nexthop configuration - extra data after nexthop\00", [39 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid flags for nexthop - can not contain DEAD or LINKDOWN\00", [35 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Nexthop configuration can not contain both GATEWAY and VIA\00", [37 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid RTA_FLOW\00", [47 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Nexthop device index does not match RTA_OIF\00", [52 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Nexthop gateway does not match RTA_GATEWAY or RTA_VIA\00", [42 x i8] zeroinitializer }, align 32
@fib_get_nhs.__msg.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Nexthop class id does not match RTA_FLOW\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ip_ignore_linkdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nexthop_is_blackhole.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_is_blackhole.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_mpath_fill_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nexthop_mpath_fill_node.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_path_fib_result.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@fib_select_default.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 254]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"fib_props\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 97, i32 23 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 251, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"fib_info_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"fib_info_cnt\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 56, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 596, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 943, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 984, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1405, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1410, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1426, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"fib_info_hash_size\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 54, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1487, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1510, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1524, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1530, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1543, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1548, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1576, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"fib_info_hash\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 52, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"fib_info_laddrhash\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 53, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 51, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 295, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"fib_info_devhash\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 60, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 677, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1118, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1123, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1127, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1132, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1174, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1181, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1188, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [24 x i8] c"../include/net/ip_fib.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 380, i32 7 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1208, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1221, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 665, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"fib_info_hash_bits\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 55, i32 21 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 702, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 708, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 723, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 744, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 770, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 780, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 787, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 695, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 258, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 313, i32 9 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 723, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 319, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 991, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 749, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 305, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 760, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private constant [28 x i8] c"../net/ipv4/fib_semantics.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2066, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__ksymtab_fib_add_nexthop, ptr @__ksymtab_fib_nexthop_info, ptr @__ksymtab_fib_nh_common_init, ptr @__ksymtab_fib_nh_common_release, ptr @__ksymtab_free_fib_info, ptr @free_fib_info._entry, ptr @free_fib_info._entry_ptr, ptr @fib_props, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fib_info_lock, ptr @fib_info_cnt, ptr @fib_nh_common_init.__msg, ptr @fib_nh_match.__msg, ptr @fib_nh_match.__msg.3, ptr @fib_create_info.__msg, ptr @fib_create_info.__msg.4, ptr @fib_create_info.__msg.5, ptr @fib_info_hash_size, ptr @fib_create_info.__msg.6, ptr @fib_create_info.__msg.7, ptr @fib_create_info.__msg.8, ptr @fib_create_info.__msg.9, ptr @fib_create_info.__msg.10, ptr @fib_create_info.__msg.11, ptr @fib_create_info.__msg.12, ptr @fib_info_hash, ptr @fib_info_laddrhash, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @fib_info_devhash, ptr @fib_gw_from_attr.__msg, ptr @fib_check_nh_v4_gw.__msg, ptr @fib_check_nh_v4_gw.__msg.21, ptr @fib_check_nh_v4_gw.__msg.22, ptr @fib_check_nh_v4_gw.__msg.23, ptr @fib_check_nh_v4_gw.__msg.24, ptr @fib_check_nh_v4_gw.__msg.25, ptr @fib_check_nh_v4_gw.__msg.26, ptr @.str.27, ptr @fib_check_nh_nongw.__msg, ptr @fib_check_nh_nongw.__msg.29, ptr @fib_count_nexthops.__msg, ptr @fib_info_hash_bits, ptr @fib_get_nhs.__msg, ptr @fib_get_nhs.__msg.30, ptr @fib_get_nhs.__msg.31, ptr @fib_get_nhs.__msg.32, ptr @fib_get_nhs.__msg.33, ptr @fib_get_nhs.__msg.34, ptr @fib_get_nhs.__msg.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_props to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_fib_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nh_common_init.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nh_match.__msg to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_nh_match.__msg.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_hash_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_create_info.__msg.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_hash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_laddrhash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_devhash to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_gw_from_attr.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_v4_gw.__msg.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_nongw.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_check_nh_nongw.__msg.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_count_nexthops.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_info_hash_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib_get_nhs.__msg.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_nh_common_release(ptr noundef %nhc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put_track.exit_crit_edge, label %do.body1.i.i

entry.dev_put_track.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %entry
  %nhc_dev_tracker = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %nhc_dev_tracker) #12
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i.i = add i32 %14, -1
  store i32 %add13.i.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !179
  %and.i.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !180

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !181
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %entry.dev_put_track.exit_crit_edge
  %nhc_lwtstate = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 7
  %16 = ptrtoint ptr %nhc_lwtstate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhc_lwtstate, align 4
  %tobool.not.i6 = icmp eq ptr %17, null
  br i1 %tobool.not.i6, label %dev_put_track.exit.lwtstate_put.exit_crit_edge, label %if.end.i

dev_put_track.exit.lwtstate_put.exit_crit_edge:   ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwtstate_put.exit

if.end.i:                                         ; preds = %dev_put_track.exit
  %refcnt.i = getelementptr inbounds %struct.lwtunnel_state, ptr %17, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !183
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %if.end.i.lwtstate_put.exit_crit_edge

if.end.i.lwtstate_put.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwtstate_put.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lwtstate_free(ptr noundef nonnull %17) #12
  br label %lwtstate_put.exit

lwtstate_put.exit:                                ; preds = %if.then1.i, %if.end.i.lwtstate_put.exit_crit_edge, %dev_put_track.exit.lwtstate_put.exit_crit_edge
  %nhc_pcpu_rth_output = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 11
  %19 = ptrtoint ptr %nhc_pcpu_rth_output to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nhc_pcpu_rth_output, align 4
  %tobool.not.i7 = icmp eq ptr %20, null
  br i1 %tobool.not.i7, label %lwtstate_put.exit.rt_fibinfo_free_cpus.exit_crit_edge, label %for.cond.preheader.i

lwtstate_put.exit.rt_fibinfo_free_cpus.exit_crit_edge: ; preds = %lwtstate_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rt_fibinfo_free_cpus.exit

for.cond.preheader.i:                             ; preds = %lwtstate_put.exit
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %21)
  %cmp17.i = icmp ult i32 %call16.i, %21
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %22 = ptrtoint ptr %20 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call18.i = phi i32 [ %call16.i, %for.body.lr.ph.i ], [ %call.i, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %22
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool6.not.i = icmp eq ptr %27, null
  br i1 %tobool6.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then7.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dst_dev_put(ptr noundef nonnull %27) #12
  tail call void @dst_release_immediate(ptr noundef nonnull %27) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %for.body.i.if.end9.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call18.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %28
  br i1 %cmp.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @free_percpu(ptr noundef nonnull %20) #12
  br label %rt_fibinfo_free_cpus.exit

rt_fibinfo_free_cpus.exit:                        ; preds = %for.end.i, %lwtstate_put.exit.rt_fibinfo_free_cpus.exit_crit_edge
  %nhc_rth_input = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 12
  %29 = ptrtoint ptr %nhc_rth_input to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nhc_rth_input, align 4
  %tobool.not.i8 = icmp eq ptr %30, null
  br i1 %tobool.not.i8, label %rt_fibinfo_free_cpus.exit.rt_fibinfo_free.exit_crit_edge, label %if.end.i9

rt_fibinfo_free_cpus.exit.rt_fibinfo_free.exit_crit_edge: ; preds = %rt_fibinfo_free_cpus.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rt_fibinfo_free.exit

if.end.i9:                                        ; preds = %rt_fibinfo_free_cpus.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dst_dev_put(ptr noundef nonnull %30) #12
  tail call void @dst_release_immediate(ptr noundef nonnull %30) #12
  br label %rt_fibinfo_free.exit

rt_fibinfo_free.exit:                             ; preds = %if.end.i9, %rt_fibinfo_free_cpus.exit.rt_fibinfo_free.exit_crit_edge
  %nhc_exceptions.i = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 13
  %31 = ptrtoint ptr %nhc_exceptions.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nhc_exceptions.i, align 4
  %tobool.not.i10 = icmp eq ptr %32, null
  br i1 %tobool.not.i10, label %rt_fibinfo_free.exit.free_nh_exceptions.exit_crit_edge, label %rt_fibinfo_free.exit.for.body.i12_crit_edge

rt_fibinfo_free.exit.for.body.i12_crit_edge:      ; preds = %rt_fibinfo_free.exit
  br label %for.body.i12

rt_fibinfo_free.exit.free_nh_exceptions.exit_crit_edge: ; preds = %rt_fibinfo_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_nh_exceptions.exit

for.body.i12:                                     ; preds = %while.end.i.for.body.i12_crit_edge, %rt_fibinfo_free.exit.for.body.i12_crit_edge
  %i.024.i = phi i32 [ %inc.i, %while.end.i.for.body.i12_crit_edge ], [ 0, %rt_fibinfo_free.exit.for.body.i12_crit_edge ]
  %arrayidx.i11 = getelementptr %struct.fnhe_hash_bucket, ptr %32, i32 %i.024.i
  %33 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i11, align 4
  %tobool5.not22.i = icmp eq ptr %34, null
  br i1 %tobool5.not22.i, label %for.body.i12.while.end.i_crit_edge, label %for.body.i12.while.body.i_crit_edge

for.body.i12.while.body.i_crit_edge:              ; preds = %for.body.i12
  br label %while.body.i

for.body.i12.while.end.i_crit_edge:               ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %rt_fibinfo_free.exit21.i.while.body.i_crit_edge, %for.body.i12.while.body.i_crit_edge
  %fnhe.023.i = phi ptr [ %36, %rt_fibinfo_free.exit21.i.while.body.i_crit_edge ], [ %34, %for.body.i12.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %fnhe.023.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fnhe.023.i, align 4
  %fnhe_rth_input.i = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.023.i, i32 0, i32 7
  %37 = ptrtoint ptr %fnhe_rth_input.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fnhe_rth_input.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %while.body.i.rt_fibinfo_free.exit.i_crit_edge, label %if.end.i.i

while.body.i.rt_fibinfo_free.exit.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rt_fibinfo_free.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dst_dev_put(ptr noundef nonnull %38) #12
  tail call void @dst_release_immediate(ptr noundef nonnull %38) #12
  br label %rt_fibinfo_free.exit.i

rt_fibinfo_free.exit.i:                           ; preds = %if.end.i.i, %while.body.i.rt_fibinfo_free.exit.i_crit_edge
  %fnhe_rth_output.i = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.023.i, i32 0, i32 8
  %39 = ptrtoint ptr %fnhe_rth_output.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fnhe_rth_output.i, align 4
  %tobool.not.i19.i = icmp eq ptr %40, null
  br i1 %tobool.not.i19.i, label %rt_fibinfo_free.exit.i.rt_fibinfo_free.exit21.i_crit_edge, label %if.end.i20.i

rt_fibinfo_free.exit.i.rt_fibinfo_free.exit21.i_crit_edge: ; preds = %rt_fibinfo_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rt_fibinfo_free.exit21.i

if.end.i20.i:                                     ; preds = %rt_fibinfo_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dst_dev_put(ptr noundef nonnull %40) #12
  tail call void @dst_release_immediate(ptr noundef nonnull %40) #12
  br label %rt_fibinfo_free.exit21.i

rt_fibinfo_free.exit21.i:                         ; preds = %if.end.i20.i, %rt_fibinfo_free.exit.i.rt_fibinfo_free.exit21.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %fnhe.023.i) #12
  %tobool5.not.i = icmp eq ptr %36, null
  br i1 %tobool5.not.i, label %rt_fibinfo_free.exit21.i.while.end.i_crit_edge, label %rt_fibinfo_free.exit21.i.while.body.i_crit_edge

rt_fibinfo_free.exit21.i.while.body.i_crit_edge:  ; preds = %rt_fibinfo_free.exit21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

rt_fibinfo_free.exit21.i.while.end.i_crit_edge:   ; preds = %rt_fibinfo_free.exit21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %rt_fibinfo_free.exit21.i.while.end.i_crit_edge, %for.body.i12.while.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.end.i13, label %while.end.i.for.body.i12_crit_edge

while.end.i.for.body.i12_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i12

for.end.i13:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %32) #12
  br label %free_nh_exceptions.exit

free_nh_exceptions.exit:                          ; preds = %for.end.i13, %rt_fibinfo_free.exit.free_nh_exceptions.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_nh_release(ptr noundef %net, ptr noundef %fib_nh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh_tclassid = getelementptr inbounds %struct.fib_nh, ptr %fib_nh, i32 0, i32 3
  %0 = ptrtoint ptr %nh_tclassid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nh_tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fib_num_tclassid_users = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users, ptr %fib_num_tclassid_users, i32 1, ptr elementtype(i32) %fib_num_tclassid_users) #12, !srcloc !185
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @fib_nh_common_release(ptr noundef %fib_nh)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_fib_info(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_dead = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 7
  %0 = ptrtoint ptr %fib_dead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fib_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %fi) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @free_fib_info_rcu) #12
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_fib_info_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !187
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !189
  %rcu.i = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @nexthop_free_rcu) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %fib_nh = getelementptr i8, ptr %head, i32 8
  %fib_nhs.i = getelementptr i8, ptr %head, i32 -12
  %fib_net = getelementptr i8, ptr %head, i32 -48
  br label %for.cond

for.cond:                                         ; preds = %fib_nh_release.exit, %if.else
  %nhsel.0 = phi i32 [ 0, %if.else ], [ %inc, %fib_nh_release.exit ]
  %nexthop_nh.0 = phi ptr [ %fib_nh, %if.else ], [ %incdec.ptr, %fib_nh_release.exit ]
  %3 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nh, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i10, !prof !188

if.then.i10:                                      ; preds = %for.cond
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_group.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i23 = icmp eq i8 %6, 0
  br i1 %tobool.not.i23, label %if.then.i10.fib_info_num_path.exit_crit_edge, label %if.then.i25

if.then.i10.fib_info_num_path.exit_crit_edge:     ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then.i25:                                      ; preds = %if.then.i10
  %7 = getelementptr inbounds %struct.nexthop, ptr %4, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %call.i24 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i24, label %if.then.i25.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i25.do.end10.i_crit_edge:                 ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i25
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i26, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i26:                                ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i26.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i26.do.end10.i_crit_edge:           ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i26
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i26.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i25.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_multipath.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not.i = icmp eq i8 %11, 0
  br i1 %tobool12.not.i, label %do.end10.i.fib_info_num_path.exit_crit_edge, label %if.then13.i

do.end10.i.fib_info_num_path.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %13 to i32
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then13.i, %do.end10.i.fib_info_num_path.exit_crit_edge, %if.then.i10.fib_info_num_path.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ 1, %if.then.i10.fib_info_num_path.exit_crit_edge ], [ %conv.i, %if.then13.i ], [ 1, %do.end10.i.fib_info_num_path.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp, label %for.body, label %fib_info_num_path.exit.if.end_crit_edge

fib_info_num_path.exit.if.end_crit_edge:          ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %fib_info_num_path.exit
  %nh_tclassid.i = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh.0, i32 0, i32 3
  %16 = ptrtoint ptr %nh_tclassid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nh_tclassid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i11 = icmp eq i32 %17, 0
  br i1 %tobool.not.i11, label %for.body.fib_nh_release.exit_crit_edge, label %if.then.i12

for.body.fib_nh_release.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_nh_release.exit

if.then.i12:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fib_net, align 4
  %fib_num_tclassid_users.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 35, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users.i, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users.i, ptr %fib_num_tclassid_users.i, i32 1, ptr elementtype(i32) %fib_num_tclassid_users.i) #12, !srcloc !185
  br label %fib_nh_release.exit

fib_nh_release.exit:                              ; preds = %if.then.i12, %for.body.fib_nh_release.exit_crit_edge
  tail call void @fib_nh_common_release(ptr noundef %nexthop_nh.0) #12
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  br label %for.cond

if.end:                                           ; preds = %fib_info_num_path.exit.if.end_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge
  %fib_metrics = getelementptr i8, ptr %head, i32 -16
  %21 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fib_metrics, align 4
  %cmp.not.i = icmp eq ptr %22, @dst_default_metrics
  br i1 %cmp.not.i, label %if.end.ip_fib_metrics_put.exit_crit_edge, label %land.lhs.true.i

if.end.ip_fib_metrics_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_fib_metrics_put.exit

land.lhs.true.i:                                  ; preds = %if.end
  %refcnt.i14 = getelementptr inbounds %struct.dst_metrics, ptr %22, i32 0, i32 1
  %call.i.i.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i14, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %refcnt.i14, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i14, ptr %refcnt.i14, i32 1, ptr elementtype(i32) %refcnt.i14) #12, !srcloc !187
  %asmresult.i.i.i.i.i.i.i16 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i16)
  %cmp.i.i.i.i17 = icmp eq i32 %asmresult.i.i.i.i.i.i.i16, 1
  br i1 %cmp.i.i.i.i17, label %if.then.i21, label %if.end5.i.i.i.i19

if.end5.i.i.i.i19:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i16)
  %.not.i.i.i.i18 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i16, 0
  br i1 %.not.i.i.i.i18, label %if.end5.i.i.i.i19.ip_fib_metrics_put.exit_crit_edge, label %if.then10.i.i.i.i20, !prof !188

if.end5.i.i.i.i19.ip_fib_metrics_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_fib_metrics_put.exit

if.then10.i.i.i.i20:                              ; preds = %if.end5.i.i.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i14, i32 noundef 3) #12
  br label %ip_fib_metrics_put.exit

if.then.i21:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @kfree(ptr noundef %22) #12
  br label %ip_fib_metrics_put.exit

ip_fib_metrics_put.exit:                          ; preds = %if.then.i21, %if.then10.i.i.i.i20, %if.end5.i.i.i.i19.ip_fib_metrics_put.exit_crit_edge, %if.end.ip_fib_metrics_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -72
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_release_info(ptr noundef %fi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #12
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %fib_treeref = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_treeref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %fib_treeref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_treeref, ptr %fib_treeref, i32 1, ptr elementtype(i32) %fib_treeref) #12, !srcloc !187
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i, !prof !188

if.end5.i.i.i.if.end14_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib_treeref, i32 noundef 3) #12
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !189
  %1 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fi, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev2.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then.hlist_del.exit_crit_edge
  %7 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %fi, align 4
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %9 = load i32, ptr @fib_info_cnt, align 4
  %sub = add i32 %9, -1
  store volatile i32 %sub, ptr @fib_info_cnt, align 4
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 11
  %10 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %hlist_del.exit.if.end_crit_edge, label %if.then6

hlist_del.exit.if.end_crit_edge:                  ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6:                                         ; preds = %hlist_del.exit
  %fib_lhash = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 1
  %12 = ptrtoint ptr %fib_lhash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fib_lhash, align 4
  %pprev2.i.i28 = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %pprev2.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i28, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i29 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i29, label %if.then6.hlist_del.exit32_crit_edge, label %do.body13.i.i31

if.then6.hlist_del.exit32_crit_edge:              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit32

do.body13.i.i31:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i30 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i30, align 4
  br label %hlist_del.exit32

hlist_del.exit32:                                 ; preds = %do.body13.i.i31, %if.then6.hlist_del.exit32_crit_edge
  %18 = ptrtoint ptr %fib_lhash to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %fib_lhash, align 4
  %19 = ptrtoint ptr %pprev2.i.i28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i28, align 4
  br label %if.end

if.end:                                           ; preds = %hlist_del.exit32, %hlist_del.exit.if.end_crit_edge
  %nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %20 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nh, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %nh_list = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nh_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %nh_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nh_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %28 = ptrtoint ptr %nh_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %nh_list, align 4
  %prev.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %30 = phi ptr [ %.pr, %for.inc ], [ null, %if.else ]
  %nhsel.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.else ]
  %nexthop_nh.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %fib_nh, %if.else ]
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %30) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %32, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp, label %for.body, label %fib_info_num_path.exit.if.end13_crit_edge

fib_info_num_path.exit.if.end13_crit_edge:        ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.body:                                         ; preds = %fib_info_num_path.exit
  %33 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nexthop_nh.0, align 4
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh.0, i32 0, i32 1
  %35 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nh_hash, align 4
  %pprev2.i.i33 = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh.0, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %pprev2.i.i33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pprev2.i.i33, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %36, ptr %38, align 4
  %tobool.not.i.i34 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i34, label %if.end12.hlist_del.exit37_crit_edge, label %do.body13.i.i36

if.end12.hlist_del.exit37_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit37

do.body13.i.i36:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i35 = getelementptr inbounds %struct.hlist_node, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %pprev14.i.i35, align 4
  br label %hlist_del.exit37

hlist_del.exit37:                                 ; preds = %do.body13.i.i36, %if.end12.hlist_del.exit37_crit_edge
  %41 = ptrtoint ptr %nh_hash to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %nh_hash, align 4
  %42 = ptrtoint ptr %pprev2.i.i33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i33, align 4
  br label %for.inc

for.inc:                                          ; preds = %hlist_del.exit37, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  %43 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %nh, align 4
  br label %for.cond

if.end13:                                         ; preds = %fib_info_num_path.exit.if.end13_crit_edge, %list_del.exit
  %fib_dead = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 7
  %44 = ptrtoint ptr %fib_dead to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %fib_dead, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #12
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #12, !srcloc !187
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i38, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.if.end14_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #12
  br label %if.end14

if.then.i38:                                      ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !189
  %46 = ptrtoint ptr %fib_dead to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fib_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp.i.i = icmp eq i8 %47, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i40

do.end.i.i:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %fi) #16
  br label %if.end14

if.end.i.i40:                                     ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @free_fib_info_rcu) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i40, %do.end.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end14_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_fib_check_default(i32 noundef %gw, ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @fib_info_lock) #12
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_mix.i.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex.i, align 4
  %xor.i = xor i32 %5, %3
  %mul.i.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %shr.i.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -56
  %tobool2.not3033 = icmp eq ptr %add.ptr, null
  %tobool2.not30 = or i1 %tobool.not, %tobool2.not3033
  br i1 %tobool2.not30, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nh.031 = phi ptr [ %add.ptr14, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %nh.031 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nh.031, align 4
  %cmp = icmp eq ptr %9, %dev
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %nh.031, i32 0, i32 8
  %10 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nhc_gw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %gw)
  %cmp4 = icmp eq i32 %11, %gw
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nh.031, i32 0, i32 6
  %12 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nhc_flags, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nh.031, i32 0, i32 1
  %15 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nh_hash, align 4
  %tobool10.not = icmp eq ptr %16, null
  %add.ptr14 = getelementptr i8, ptr %16, i32 -56
  %tobool2.not34 = icmp eq ptr %add.ptr14, null
  %tobool2.not = or i1 %tobool10.not, %tobool2.not34
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true5.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fib_info_lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nlmsg_size(ptr nocapture noundef readonly %fi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %0 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %fib_info_num_path.exit.thread, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %entry
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_group.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i65 = icmp eq i8 %3, 0
  br i1 %tobool.not.i65, label %if.then.i.fib_info_num_path.exit_crit_edge, label %if.then.i67

if.then.i.fib_info_num_path.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then.i67:                                      ; preds = %if.then.i
  %4 = getelementptr inbounds %struct.nexthop, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %call.i66 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i66, label %if.then.i67.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i67.do.end10.i_crit_edge:                 ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i67
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i67.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_multipath.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not.i = icmp eq i8 %8, 0
  br i1 %tobool12.not.i, label %do.end10.i.fib_info_num_path.exit_crit_edge, label %if.then13.i

do.end10.i.fib_info_num_path.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %10 to i32
  br label %fib_info_num_path.exit

fib_info_num_path.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  %11 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fib_nhs.i, align 4
  br label %if.end

fib_info_num_path.exit:                           ; preds = %if.then13.i, %do.end10.i.fib_info_num_path.exit_crit_edge, %if.then.i.fib_info_num_path.exit_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %do.end10.i.fib_info_num_path.exit_crit_edge ], [ %conv.i, %if.then13.i ], [ 1, %if.then.i.fib_info_num_path.exit_crit_edge ]
  %13 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %nh.i, align 4
  %tobool.not = icmp eq ptr %.pr, null
  %spec.select = select i1 %tobool.not, i32 204, i32 212
  br label %if.end

if.end:                                           ; preds = %fib_info_num_path.exit, %fib_info_num_path.exit.thread
  %retval.0.i90 = phi i32 [ %12, %fib_info_num_path.exit.thread ], [ %retval.0.i.ph, %fib_info_num_path.exit ]
  %payload.0 = phi i32 [ 204, %fib_info_num_path.exit.thread ], [ %spec.select, %fib_info_num_path.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90)
  %tobool15.not = icmp eq i32 %retval.0.i90, 0
  br i1 %tobool15.not, label %if.end.if.end35_crit_edge, label %for.cond.preheader

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.cond.preheader:                               ; preds = %if.end
  %fib_nhs.i53 = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %for.cond.preheader
  %nh_encapsize.0 = phi i32 [ %nh_encapsize.1, %if.end30 ], [ 0, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %if.end30 ], [ 0, %for.cond.preheader ]
  %14 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh.i, align 4
  %tobool.not.i50 = icmp eq ptr %15, null
  br i1 %tobool.not.i50, label %if.end.i54, label %if.then.i52, !prof !188

if.then.i52:                                      ; preds = %for.cond
  %is_group.i68 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %is_group.i68 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_group.i68, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i69 = icmp eq i8 %17, 0
  br i1 %tobool.not.i69, label %if.then.i52.fib_info_num_path.exit56_crit_edge, label %if.then.i70

if.then.i52.fib_info_num_path.exit56_crit_edge:   ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit56

if.then.i70:                                      ; preds = %if.then.i52
  %18 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %18, align 4
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %if.then.i70.do.end10.i82_crit_edge, label %lor.lhs.false.i73

if.then.i70.do.end10.i82_crit_edge:               ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i82

lor.lhs.false.i73:                                ; preds = %if.then.i70
  %call2.i71 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i71)
  %tobool3.not.i72 = icmp eq i32 %call2.i71, 0
  br i1 %tobool3.not.i72, label %land.lhs.true.i76, label %lor.lhs.false.i73.do.end10.i82_crit_edge

lor.lhs.false.i73.do.end10.i82_crit_edge:         ; preds = %lor.lhs.false.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i82

land.lhs.true.i76:                                ; preds = %lor.lhs.false.i73
  %call4.i74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i74)
  %tobool5.not.i75 = icmp eq i32 %call4.i74, 0
  br i1 %tobool5.not.i75, label %land.lhs.true.i76.do.end10.i82_crit_edge, label %land.lhs.true6.i78

land.lhs.true.i76.do.end10.i82_crit_edge:         ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i82

land.lhs.true6.i78:                               ; preds = %land.lhs.true.i76
  %.b18.i77 = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i77, label %land.lhs.true6.i78.do.end10.i82_crit_edge, label %if.then8.i79

land.lhs.true6.i78.do.end10.i82_crit_edge:        ; preds = %land.lhs.true6.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i82

if.then8.i79:                                     ; preds = %land.lhs.true6.i78
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i82

do.end10.i82:                                     ; preds = %if.then8.i79, %land.lhs.true6.i78.do.end10.i82_crit_edge, %land.lhs.true.i76.do.end10.i82_crit_edge, %lor.lhs.false.i73.do.end10.i82_crit_edge, %if.then.i70.do.end10.i82_crit_edge
  %is_multipath.i80 = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %is_multipath.i80 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_multipath.i80, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not.i81 = icmp eq i8 %22, 0
  br i1 %tobool12.not.i81, label %do.end10.i82.fib_info_num_path.exit56_crit_edge, label %if.then13.i85

do.end10.i82.fib_info_num_path.exit56_crit_edge:  ; preds = %do.end10.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit56

if.then13.i85:                                    ; preds = %do.end10.i82
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i83 = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %num_nh.i83 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_nh.i83, align 4
  %conv.i84 = zext i16 %24 to i32
  br label %fib_info_num_path.exit56

if.end.i54:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %fib_nhs.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fib_nhs.i53, align 4
  br label %fib_info_num_path.exit56

fib_info_num_path.exit56:                         ; preds = %if.end.i54, %if.then13.i85, %do.end10.i82.fib_info_num_path.exit56_crit_edge, %if.then.i52.fib_info_num_path.exit56_crit_edge
  %retval.0.i55 = phi i32 [ %26, %if.end.i54 ], [ 1, %if.then.i52.fib_info_num_path.exit56_crit_edge ], [ %conv.i84, %if.then13.i85 ], [ 1, %do.end10.i82.fib_info_num_path.exit56_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %retval.0.i55)
  %cmp = icmp ult i32 %i.0, %retval.0.i55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %fib_info_num_path.exit56
  %27 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nh.i, align 4
  %tobool.not.i58 = icmp eq ptr %28, null
  br i1 %tobool.not.i58, label %if.end.i61, label %if.then.i60, !prof !188

if.then.i60:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call.i59 = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %28, i32 noundef %i.0) #12
  br label %fib_info_nhc.exit

if.end.i61:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.fib_info, ptr %fi, i32 0, i32 20, i32 %i.0
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i61, %if.then.i60
  %retval.0.i62 = phi ptr [ %call.i59, %if.then.i60 ], [ %arrayidx.i, %if.end.i61 ]
  %nhc_lwtstate = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i62, i32 0, i32 7
  %29 = ptrtoint ptr %nhc_lwtstate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nhc_lwtstate, align 4
  %tobool23.not = icmp eq ptr %30, null
  br i1 %tobool23.not, label %fib_info_nhc.exit.if.end30_crit_edge, label %if.then24

fib_info_nhc.exit.if.end30_crit_edge:             ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @lwtunnel_get_encap_size(ptr noundef nonnull %30) #12
  %add27 = add i32 %nh_encapsize.0, 8
  %add29 = add i32 %add27, %call26
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %fib_info_nhc.exit.if.end30_crit_edge
  %nh_encapsize.1 = phi i32 [ %add29, %if.then24 ], [ %nh_encapsize.0, %fib_info_nhc.exit.if.end30_crit_edge ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %fib_info_num_path.exit56
  call void @__sanitizer_cov_trace_pc() #14
  %mul31 = mul i32 %retval.0.i90, 28
  %add32 = add i32 %mul31, 7
  %sub.i63 = add i32 %add32, %nh_encapsize.0
  %and.i64 = and i32 %sub.i63, -4
  %add34 = add i32 %and.i64, %payload.0
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end.if.end35_crit_edge
  %payload.1 = phi i32 [ %add34, %for.end ], [ %payload.0, %if.end.if.end35_crit_edge ]
  ret i32 %payload.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_get_encap_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtmsg_fib(i32 noundef %event, i32 noundef %key, ptr noundef %fa, i32 noundef %dst_len, i32 noundef %tb_id, ptr nocapture noundef readonly %info, i32 noundef %nlm_flags) local_unnamed_addr #0 align 64 {
entry:
  %fri = alloca %struct.fib_rt_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fri) #12
  %0 = getelementptr inbounds i8, ptr %fri, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlmsg_seq, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %fa_info = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 1
  %6 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fa_info, align 4
  %call = tail call i32 @fib_nlmsg_size(ptr noundef %7)
  %sub.i.i = add i32 %call, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %cond.end.if.then60_crit_edge, label %if.end

cond.end.if.then60_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60

if.end:                                           ; preds = %cond.end
  %8 = ptrtoint ptr %fa_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fa_info, align 4
  %10 = ptrtoint ptr %fri to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fri, align 4
  %tb_id5 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 1
  %11 = ptrtoint ptr %tb_id5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %tb_id, ptr %tb_id5, align 4
  %dst = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 2
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %key, ptr %dst, align 4
  %dst_len6 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 3
  %13 = ptrtoint ptr %dst_len6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dst_len, ptr %dst_len6, align 4
  %fa_tos = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 2
  %14 = ptrtoint ptr %fa_tos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fa_tos, align 4
  %tos = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 4
  %16 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tos, align 4
  %fa_type = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 3
  %17 = ptrtoint ptr %fa_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fa_type, align 1
  %type = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 5
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %type, align 1
  %offload = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 8
  %20 = ptrtoint ptr %offload to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %offload, align 2
  %offload7 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 6
  %22 = ptrtoint ptr %offload7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %offload7, align 2
  %bf.shl = shl i8 %21, 7
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, %bf.shl
  %trap = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 9
  %23 = ptrtoint ptr %trap to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %trap, align 1
  %bf.value14 = shl i8 %24, 6
  %bf.shl15 = and i8 %bf.value14, 64
  %bf.set17 = or i8 %bf.shl15, %bf.set
  %offload_failed = getelementptr inbounds %struct.fib_alias, ptr %fa, i32 0, i32 10
  %25 = ptrtoint ptr %offload_failed to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %offload_failed, align 4
  %bf.value24 = shl i8 %26, 5
  %bf.shl25 = and i8 %bf.value24, 32
  %bf.set27 = or i8 %bf.set17, %bf.shl25
  store i8 %bf.set27, ptr %offload7, align 2
  %portid = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 2
  %27 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %portid, align 4
  %call28 = call i32 @fib_dump_info(ptr noundef nonnull %call.i.i, i32 noundef %28, i32 noundef %cond, i32 noundef %event, ptr noundef nonnull %fri, i32 noundef %nlm_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.then29, label %if.end56

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call28)
  %cmp30 = icmp eq i32 %call28, -90
  br i1 %cmp30, label %do.end42, label %if.then29.if.end48_crit_edge, !prof !180

if.then29.if.end48_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end42:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 534, i32 noundef 9, ptr noundef null) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.then29.if.end48_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %if.then60

if.end56:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nl_net = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nl_net, align 4
  %31 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %portid, align 4
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %30, i32 noundef %32, i32 noundef 7, ptr noundef %34, i32 noundef 3264) #12
  br label %cleanup

if.then60:                                        ; preds = %if.end48, %cond.end.if.then60_crit_edge
  %err.0 = phi i32 [ %call28, %if.end48 ], [ -105, %cond.end.if.then60_crit_edge ]
  %nl_net61 = getelementptr inbounds %struct.nl_info, ptr %info, i32 0, i32 1
  %35 = ptrtoint ptr %nl_net61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nl_net61, align 4
  tail call void @rtnl_set_sk_err(ptr noundef %36, i32 noundef 7, i32 noundef %err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end56
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fri) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_dump_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, ptr nocapture noundef readonly %fri, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i194 = alloca i32, align 4
  %tmp.i186 = alloca i32, align 4
  %tmp.i.i184 = alloca i32, align 4
  %tmp.i182 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %flags61 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fri, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %3) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %5, %if.end.i ]
  %6 = ptrtoint ptr %fri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fri, align 4
  %tb_id3 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 1
  %8 = ptrtoint ptr %tb_id3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tb_id3, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %fib_info_num_path.exit.cleanup113_crit_edge

fib_info_num_path.exit.cleanup113_crit_edge:      ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

skb_tailroom.exit.i:                              ; preds = %fib_info_num_path.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 28
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup113_crit_edge, label %nlmsg_put.exit, !prof !180

skb_tailroom.exit.i.cleanup113_crit_edge:         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 12, i32 noundef %flags) #12
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup113_crit_edge, label %if.end

nlmsg_put.exit.cleanup113_crit_edge:              ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %add.ptr.i, align 4
  %dst_len = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 3
  %17 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_len, align 4
  %conv = trunc i32 %18 to i8
  %rtm_dst_len = getelementptr i8, ptr %call3.i, i32 17
  %19 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %rtm_dst_len, align 1
  %rtm_src_len = getelementptr i8, ptr %call3.i, i32 18
  %20 = ptrtoint ptr %rtm_src_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rtm_src_len, align 2
  %tos = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 4
  %21 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tos, align 4
  %rtm_tos = getelementptr i8, ptr %call3.i, i32 19
  %23 = ptrtoint ptr %rtm_tos to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %rtm_tos, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %9)
  %cmp = icmp ult i32 %9, 256
  %conv8 = trunc i32 %9 to i8
  %spec.select = select i1 %cmp, i8 %conv8, i8 -4
  %24 = getelementptr i8, ptr %call3.i, i32 20
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %9, ptr %tmp.i, align 4
  %call.i181 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool12.not = icmp eq i32 %call.i181, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end14:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 5
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 1
  %rtm_type = getelementptr i8, ptr %call3.i, i32 23
  %29 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %rtm_type, align 1
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 6
  %30 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fib_flags, align 4
  %rtm_flags = getelementptr i8, ptr %call3.i, i32 24
  %32 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rtm_flags, align 4
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 9
  %33 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fib_scope, align 2
  %rtm_scope = getelementptr i8, ptr %call3.i, i32 22
  %35 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %rtm_scope, align 2
  %fib_protocol = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 8
  %36 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fib_protocol, align 1
  %rtm_protocol = getelementptr i8, ptr %call3.i, i32 21
  %38 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %rtm_protocol, align 1
  %39 = ptrtoint ptr %rtm_dst_len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rtm_dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool17.not = icmp eq i8 %40, 0
  br i1 %tobool17.not, label %if.end14.if.end21_crit_edge, label %land.lhs.true

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %dst = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 2
  %41 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %43 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 13
  %44 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fib_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool22.not = icmp eq i32 %45, 0
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i182) #12
  %46 = ptrtoint ptr %tmp.i182 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i182, align 4
  %call.i183 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i182) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i182) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool26.not = icmp eq i32 %call.i183, 0
  br i1 %tobool26.not, label %land.lhs.true23.if.end28_crit_edge, label %land.lhs.true23.if.then.i.i_crit_edge

land.lhs.true23.if.then.i.i_crit_edge:            ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %fib_metrics = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 14
  %47 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fib_metrics, align 4
  %call29 = call i32 @rtnetlink_put_metrics(ptr noundef %skb, ptr noundef %48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.if.then.i.i_crit_edge, label %if.end33

if.end28.if.then.i.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end28
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 11
  %49 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool34.not = icmp eq i32 %50, 0
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %land.lhs.true35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.lhs.true35:                                  ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i184) #12
  %51 = ptrtoint ptr %tmp.i.i184 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i.i184, align 4
  %call.i.i185 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i184) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i184) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185)
  %tobool38.not = icmp eq i32 %call.i.i185, 0
  br i1 %tobool38.not, label %land.lhs.true35.if.end40_crit_edge, label %land.lhs.true35.if.then.i.i_crit_edge

land.lhs.true35.if.then.i.i_crit_edge:            ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true35.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %nh = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 18
  %52 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nh, align 4
  %tobool41.not = icmp eq ptr %53, null
  br i1 %tobool41.not, label %if.end40.if.end56_crit_edge, label %if.then42

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then42:                                        ; preds = %if.end40
  %id = getelementptr inbounds %struct.nexthop, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i186) #12
  %56 = ptrtoint ptr %tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i186, align 4
  %call.i187 = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 4, ptr noundef nonnull %tmp.i186) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i186) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool45.not = icmp eq i32 %call.i187, 0
  br i1 %tobool45.not, label %if.end47, label %if.then42.if.then.i.i_crit_edge

if.then42.if.then.i.i_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end47:                                         ; preds = %if.then42
  %57 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nh, align 4
  %call49 = call fastcc zeroext i1 @nexthop_is_blackhole(ptr noundef %58)
  br i1 %call49, label %if.then50, label %if.end47.if.end52_crit_edge

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %rtm_type to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 6, ptr %rtm_type, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47.if.end52_crit_edge
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 3
  %60 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fib_net, align 4
  %sysctl_nexthop_compat_mode = getelementptr inbounds %struct.net, ptr %61, i32 0, i32 35, i32 48
  %62 = ptrtoint ptr %sysctl_nexthop_compat_mode to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sysctl_nexthop_compat_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool53.not = icmp eq i8 %63, 0
  br i1 %tobool53.not, label %if.end52.offload_crit_edge, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end52.offload_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %offload

if.end56:                                         ; preds = %if.end52.if.end56_crit_edge, %if.end40.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp57 = icmp eq i32 %retval.0.i, 1
  br i1 %cmp57, label %if.then59, label %if.else86

if.then59:                                        ; preds = %if.end56
  %64 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nh, align 4
  %tobool.not.i189 = icmp eq ptr %65, null
  br i1 %tobool.not.i189, label %if.end.i192, label %if.then.i191, !prof !188

if.then.i191:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %call.i190 = call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %65, i32 noundef 0) #12
  br label %fib_info_nhc.exit

if.end.i192:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.fib_info, ptr %7, i32 0, i32 20, i32 0
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i192, %if.then.i191
  %retval.0.i193 = phi ptr [ %call.i190, %if.then.i191 ], [ %arrayidx.i, %if.end.i192 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags61) #12
  %66 = ptrtoint ptr %flags61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %flags61, align 1
  %call62 = call i32 @fib_nexthop_info(ptr noundef %skb, ptr noundef %retval.0.i193, i8 noundef zeroext 2, ptr noundef nonnull %flags61, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %fib_info_nhc.exit.cleanup82_crit_edge, label %if.end66

fib_info_nhc.exit.cleanup82_crit_edge:            ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

if.end66:                                         ; preds = %fib_info_nhc.exit
  %67 = ptrtoint ptr %flags61 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags61, align 1
  %conv67 = zext i8 %68 to i32
  %69 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv67, ptr %rtm_flags, align 4
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i193, i32 0, i32 4
  %70 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nhc_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp70 = icmp eq i8 %71, 2
  br i1 %cmp70, label %if.then72, label %if.end66.cleanup82.thread_crit_edge

if.end66.cleanup82.thread_crit_edge:              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82.thread

if.then72:                                        ; preds = %if.end66
  %nh_tclassid = getelementptr inbounds %struct.fib_nh, ptr %retval.0.i193, i32 0, i32 3
  %72 = ptrtoint ptr %nh_tclassid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nh_tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool74.not = icmp eq i32 %73, 0
  br i1 %tobool74.not, label %if.then72.cleanup82.thread_crit_edge, label %land.lhs.true75

if.then72.cleanup82.thread_crit_edge:             ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82.thread

land.lhs.true75:                                  ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i194) #12
  %74 = ptrtoint ptr %tmp.i194 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %tmp.i194, align 4
  %call.i195 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i194) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i194) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool78.not = icmp eq i32 %call.i195, 0
  br i1 %tobool78.not, label %land.lhs.true75.cleanup82.thread_crit_edge, label %land.lhs.true75.cleanup82_crit_edge

land.lhs.true75.cleanup82_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82

land.lhs.true75.cleanup82.thread_crit_edge:       ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup82.thread

cleanup82.thread:                                 ; preds = %land.lhs.true75.cleanup82.thread_crit_edge, %if.then72.cleanup82.thread_crit_edge, %if.end66.cleanup82.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags61) #12
  br label %offload

cleanup82:                                        ; preds = %land.lhs.true75.cleanup82_crit_edge, %fib_info_nhc.exit.cleanup82_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags61) #12
  br label %if.then.i.i

if.else86:                                        ; preds = %if.end56
  %call87 = call fastcc i32 @fib_add_multipath(ptr noundef %skb, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.else86.if.then.i.i_crit_edge, label %if.else86.offload_crit_edge

if.else86.offload_crit_edge:                      ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #14
  br label %offload

if.else86.if.then.i.i_crit_edge:                  ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

offload:                                          ; preds = %if.else86.offload_crit_edge, %cleanup82.thread, %if.end52.offload_crit_edge
  %offload93 = getelementptr inbounds %struct.fib_rt_info, ptr %fri, i32 0, i32 6
  %75 = ptrtoint ptr %offload93 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load = load i8, ptr %offload93, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool94.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool94.not, label %offload.if.end97_crit_edge, label %if.then95

offload.if.end97_crit_edge:                       ; preds = %offload
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then95:                                        ; preds = %offload
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rtm_flags, align 4
  %or = or i32 %77, 16384
  store i32 %or, ptr %rtm_flags, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %offload.if.end97_crit_edge
  %78 = ptrtoint ptr %offload93 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load98 = load i8, ptr %offload93, align 2
  %79 = and i8 %bf.load98, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool100.not = icmp eq i8 %79, 0
  br i1 %tobool100.not, label %if.end97.if.end104_crit_edge, label %if.then101

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rtm_flags, align 4
  %or103 = or i32 %81, 32768
  store i32 %or103, ptr %rtm_flags, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end97.if.end104_crit_edge
  %82 = ptrtoint ptr %offload93 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load105 = load i8, ptr %offload93, align 2
  %83 = and i8 %bf.load105, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool108.not = icmp eq i8 %83, 0
  br i1 %tobool108.not, label %if.end104.if.end112_crit_edge, label %if.then109

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rtm_flags, align 4
  %or111 = or i32 %85, 536870912
  store i32 %or111, ptr %rtm_flags, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end104.if.end112_crit_edge
  %86 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %88 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup113

if.then.i.i:                                      ; preds = %if.else86.if.then.i.i_crit_edge, %cleanup82, %if.then42.if.then.i.i_crit_edge, %land.lhs.true35.if.then.i.i_crit_edge, %if.end28.if.then.i.i_crit_edge, %land.lhs.true23.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %89 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %90, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !180

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %91 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i197 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i198 = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i199 = sub i32 %sub.ptr.lhs.cast.i.i197, %sub.ptr.rhs.cast.i.i198
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i199) #12
  br label %cleanup113

cleanup113:                                       ; preds = %nlmsg_cancel.exit, %if.end112, %nlmsg_put.exit.cleanup113_crit_edge, %skb_tailroom.exit.i.cleanup113_crit_edge, %fib_info_num_path.exit.cleanup113_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end112 ], [ -90, %nlmsg_put.exit.cleanup113_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup113_crit_edge ], [ -90, %fib_info_num_path.exit.cleanup113_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nh_common_init(ptr noundef %net, ptr nocapture noundef %nhc, ptr noundef %encap, i16 noundef zeroext %encap_type, ptr noundef %cfg, i32 noundef %gfp_flags, ptr noundef %extack) #0 align 64 {
entry:
  %lwtstate = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %gfp_flags) #17
  %nhc_pcpu_rth_output = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 11
  %0 = ptrtoint ptr %nhc_pcpu_rth_output to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %nhc_pcpu_rth_output, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %encap, null
  br i1 %tobool2.not, label %if.end.cleanup19_crit_edge, label %if.then3

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lwtstate) #12
  %1 = ptrtoint ptr %lwtstate to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %lwtstate, align 4, !annotation !191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %encap_type)
  %cmp = icmp eq i16 %encap_type, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.then3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nh_common_init.__msg) #12
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.lwt_failure_crit_edge, label %if.then7

do.body.lwt_failure_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwt_failure

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fib_nh_common_init.__msg, ptr %extack, align 4
  br label %lwt_failure

if.end9:                                          ; preds = %if.then3
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 4
  %3 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nhc_family, align 1
  %conv10 = zext i8 %4 to i32
  %call11 = call i32 @lwtunnel_build_state(ptr noundef %net, i16 noundef zeroext %encap_type, ptr noundef nonnull %encap, i32 noundef %conv10, ptr noundef %cfg, ptr noundef nonnull %lwtstate, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.lwt_failure_crit_edge

if.end9.lwt_failure_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwt_failure

if.end14:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.then.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %refcnt.i = getelementptr inbounds %struct.lwtunnel_state, ptr %6, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %7 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !192
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end14.cleanup_crit_edge
  %nhc_lwtstate = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 7
  %8 = ptrtoint ptr %nhc_lwtstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %nhc_lwtstate, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lwtstate) #12
  br label %cleanup19

lwt_failure:                                      ; preds = %if.end9.lwt_failure_crit_edge, %if.then7, %do.body.lwt_failure_crit_edge
  %err.0.ph = phi i32 [ %call11, %if.end9.lwt_failure_crit_edge ], [ -22, %do.body.lwt_failure_crit_edge ], [ -22, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lwtstate) #12
  %9 = ptrtoint ptr %nhc_pcpu_rth_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhc_pcpu_rth_output, align 4
  %tobool.not.i31 = icmp eq ptr %10, null
  br i1 %tobool.not.i31, label %lwt_failure.rt_fibinfo_free_cpus.exit_crit_edge, label %for.cond.preheader.i

lwt_failure.rt_fibinfo_free_cpus.exit_crit_edge:  ; preds = %lwt_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %rt_fibinfo_free_cpus.exit

for.cond.preheader.i:                             ; preds = %lwt_failure
  %call16.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %11)
  %cmp17.i = icmp ult i32 %call16.i, %11
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %12 = ptrtoint ptr %10 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call18.i = phi i32 [ %call16.i, %for.body.lr.ph.i ], [ %call.i, %if.end9.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %12
  %15 = inttoptr i32 %add.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %for.body.i.if.end9.i_crit_edge, label %if.then7.i

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dst_dev_put(ptr noundef nonnull %17) #12
  call void @dst_release_immediate(ptr noundef nonnull %17) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %for.body.i.if.end9.i_crit_edge
  %call.i = call i32 @cpumask_next(i32 noundef %call18.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %18
  br i1 %cmp.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @free_percpu(ptr noundef nonnull %10) #12
  br label %rt_fibinfo_free_cpus.exit

rt_fibinfo_free_cpus.exit:                        ; preds = %for.end.i, %lwt_failure.rt_fibinfo_free_cpus.exit_crit_edge
  %19 = ptrtoint ptr %nhc_pcpu_rth_output to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %nhc_pcpu_rth_output, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %rt_fibinfo_free_cpus.exit, %cleanup, %if.end.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %rt_fibinfo_free_cpus.exit ], [ -12, %entry.cleanup19_crit_edge ], [ 0, %cleanup ], [ 0, %if.end.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_build_state(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nh_init(ptr noundef %net, ptr nocapture noundef %nh, ptr noundef %cfg, i32 noundef %nh_weight, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 4
  %0 = ptrtoint ptr %nhc_family to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %nhc_family, align 1
  %fc_encap = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 21
  %1 = ptrtoint ptr %fc_encap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fc_encap, align 4
  %fc_encap_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 22
  %3 = ptrtoint ptr %fc_encap_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fc_encap_type, align 4
  %call = tail call i32 @fib_nh_common_init(ptr noundef %net, ptr noundef %nh, ptr noundef %2, i16 noundef zeroext %4, ptr noundef %cfg, i32 noundef 3264, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fc_oif = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 9
  %5 = ptrtoint ptr %fc_oif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fc_oif, align 4
  %nhc_oif = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 2
  %7 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nhc_oif, align 4
  %fc_gw_family = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %fc_gw_family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fc_gw_family, align 1
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 5
  %10 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %nhc_gw_family, align 2
  %11 = load i8, ptr %fc_gw_family, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end.if.end16_crit_edge [
    i8 2, label %if.then6
    i8 10, label %if.then12
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 8
  %16 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nhc_gw, align 4
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw14 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 8
  %17 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %18 = call ptr @memcpy(ptr %nhc_gw14, ptr %17, i32 16)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then6, %if.end.if.end16_crit_edge
  %fc_flags = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 10
  %19 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fc_flags, align 4
  %conv17 = trunc i32 %20 to i8
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %21 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %nhc_flags, align 1
  %fc_flow = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 18
  %22 = ptrtoint ptr %fc_flow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fc_flow, align 4
  %nh_tclassid = getelementptr inbounds %struct.fib_nh, ptr %nh, i32 0, i32 3
  %24 = ptrtoint ptr %nh_tclassid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nh_tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %fib_num_tclassid_users = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users, ptr %fib_num_tclassid_users, i32 1, ptr elementtype(i32) %fib_num_tclassid_users) #12, !srcloc !192
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  %nhc_weight = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 9
  %26 = ptrtoint ptr %nhc_weight to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %nh_weight, ptr %nhc_weight, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nh_match(ptr noundef %net, ptr noundef %cfg, ptr nocapture noundef readonly %fi, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %lwtstate.i = alloca ptr, align 4
  %cfg2 = alloca %struct.fib_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_priority = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 11
  %0 = ptrtoint ptr %fc_priority to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fc_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 13
  %2 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_priority, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup202_crit_edge

land.lhs.true.cleanup202_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fc_nh_id = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 13
  %4 = ptrtoint ptr %fc_nh_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_nh_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %6 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nh, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then3.if.end10_crit_edge, label %land.lhs.true5

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true5:                                   ; preds = %if.then3
  %id = getelementptr inbounds %struct.nexthop, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp8 = icmp eq i32 %5, %9
  br i1 %cmp8, label %land.lhs.true5.cleanup202_crit_edge, label %land.lhs.true5.if.end10_crit_edge

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true5.cleanup202_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end10:                                         ; preds = %land.lhs.true5.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  br label %cleanup202

if.end11:                                         ; preds = %if.end
  %fc_oif = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 9
  %10 = ptrtoint ptr %fc_oif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fc_oif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end11.if.then14_crit_edge

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end11
  %fc_gw_family = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 5
  %12 = ptrtoint ptr %fc_gw_family to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fc_gw_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end71, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %14 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then14.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !188

if.then14.fib_info_nh.exit_crit_edge:             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 468, i32 noundef 9, ptr noundef null) #12
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %if.then14.fib_info_nh.exit_crit_edge
  %arrayidx.i = getelementptr %struct.fib_info, ptr %fi, i32 0, i32 20, i32 0
  %fc_encap = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 21
  %16 = ptrtoint ptr %fc_encap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fc_encap, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %fib_info_nh.exit.if.end23_crit_edge, label %if.then17

fib_info_nh.exit.if.end23_crit_edge:              ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then17:                                        ; preds = %fib_info_nh.exit
  %fc_encap_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 22
  %18 = ptrtoint ptr %fc_encap_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fc_encap_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lwtstate.i) #12
  %20 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %lwtstate.i, align 4, !annotation !191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i = icmp eq i16 %19, 0
  br i1 %cmp.i, label %if.then17.fib_encap_match.exit.thread_crit_edge, label %if.end.i

if.then17.fib_encap_match.exit.thread_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_encap_match.exit.thread

if.end.i:                                         ; preds = %if.then17
  %call.i = call i32 @lwtunnel_build_state(ptr noundef %net, i16 noundef zeroext %19, ptr noundef nonnull %17, i32 noundef 2, ptr noundef %cfg, ptr noundef nonnull %lwtstate.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i287 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i287, label %fib_encap_match.exit, label %if.end.i.fib_encap_match.exit.thread_crit_edge

if.end.i.fib_encap_match.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_encap_match.exit.thread

fib_encap_match.exit.thread:                      ; preds = %if.end.i.fib_encap_match.exit.thread_crit_edge, %if.then17.fib_encap_match.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lwtstate.i) #12
  br label %if.end23

fib_encap_match.exit:                             ; preds = %if.end.i
  %21 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lwtstate.i, align 4
  %nhc_lwtstate.i = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 2
  %23 = ptrtoint ptr %nhc_lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nhc_lwtstate.i, align 4
  %call3.i = call i32 @lwtunnel_cmp_encap(ptr noundef %22, ptr noundef %24) #12
  %25 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lwtstate.i, align 4
  call void @lwtstate_free(ptr noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lwtstate.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool20.not = icmp eq i32 %call3.i, 0
  br i1 %tobool20.not, label %fib_encap_match.exit.if.end23_crit_edge, label %fib_encap_match.exit.cleanup202_crit_edge

fib_encap_match.exit.cleanup202_crit_edge:        ; preds = %fib_encap_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

fib_encap_match.exit.if.end23_crit_edge:          ; preds = %fib_encap_match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %fib_encap_match.exit.if.end23_crit_edge, %fib_encap_match.exit.thread, %fib_info_nh.exit.if.end23_crit_edge
  %fc_flow = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 18
  %27 = ptrtoint ptr %fc_flow to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fc_flow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %land.lhs.true25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true25:                                  ; preds = %if.end23
  %nh_tclassid = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 18
  %29 = ptrtoint ptr %nh_tclassid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nh_tclassid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp27.not = icmp eq i32 %28, %30
  br i1 %cmp27.not, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true25.cleanup202_crit_edge

land.lhs.true25.cleanup202_crit_edge:             ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %31 = ptrtoint ptr %fc_oif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fc_oif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool32.not = icmp eq i32 %32, 0
  br i1 %tobool32.not, label %if.end30.lor.lhs.false37_crit_edge, label %land.lhs.true33

if.end30.lor.lhs.false37_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false37

land.lhs.true33:                                  ; preds = %if.end30
  %nhc_oif = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 1
  %33 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nhc_oif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp35.not = icmp eq i32 %32, %34
  br i1 %cmp35.not, label %land.lhs.true33.lor.lhs.false37_crit_edge, label %land.lhs.true33.cleanup202_crit_edge

land.lhs.true33.cleanup202_crit_edge:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true33.lor.lhs.false37_crit_edge:        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true33.lor.lhs.false37_crit_edge, %if.end30.lor.lhs.false37_crit_edge
  %fc_gw_family38 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 5
  %35 = ptrtoint ptr %fc_gw_family38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fc_gw_family38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool40.not = icmp eq i8 %36, 0
  br i1 %tobool40.not, label %lor.lhs.false37.if.end70_crit_edge, label %land.lhs.true41

lor.lhs.false37.if.end70_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true41:                                  ; preds = %lor.lhs.false37
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i, i32 0, i32 5
  %37 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nhc_gw_family, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp46.not = icmp eq i8 %36, %38
  br i1 %cmp46.not, label %if.end49, label %land.lhs.true41.cleanup202_crit_edge

land.lhs.true41.cleanup202_crit_edge:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end49:                                         ; preds = %land.lhs.true41
  %39 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %36, label %if.end49.if.end70_crit_edge [
    i8 2, label %land.lhs.true54
    i8 10, label %land.lhs.true64
  ]

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true54:                                  ; preds = %if.end49
  %40 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %nhc_gw = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 2, i32 1
  %43 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nhc_gw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp56.not = icmp eq i32 %42, %44
  br i1 %cmp56.not, label %land.lhs.true54.if.end70_crit_edge, label %land.lhs.true54.cleanup202_crit_edge

land.lhs.true54.cleanup202_crit_edge:             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true54.if.end70_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

land.lhs.true64:                                  ; preds = %if.end49
  %45 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %nhc_gw66 = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 2, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %45, ptr noundef dereferenceable(16) %nhc_gw66, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool68.not = icmp eq i32 %bcmp, 0
  br i1 %tobool68.not, label %land.lhs.true64.if.end70_crit_edge, label %land.lhs.true64.cleanup202_crit_edge

land.lhs.true64.cleanup202_crit_edge:             ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true64.if.end70_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true64.if.end70_crit_edge, %land.lhs.true54.if.end70_crit_edge, %if.end49.if.end70_crit_edge, %lor.lhs.false37.if.end70_crit_edge
  br label %cleanup202

if.end71:                                         ; preds = %lor.lhs.false
  %fc_mp = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 15
  %46 = ptrtoint ptr %fc_mp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fc_mp, align 4
  %tobool72.not = icmp eq ptr %47, null
  br i1 %tobool72.not, label %if.end71.cleanup202_crit_edge, label %if.end74

if.end71.cleanup202_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end74:                                         ; preds = %if.end71
  %fc_mp_len = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 17
  %48 = ptrtoint ptr %fc_mp_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fc_mp_len, align 4
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  %nh.i289 = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  %fc_gw_family148 = getelementptr inbounds %struct.fib_config, ptr %cfg2, i32 0, i32 5
  %50 = getelementptr inbounds %struct.fib_config, ptr %cfg2, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end74
  %remaining.0 = phi i32 [ %49, %if.end74 ], [ %sub1.i, %for.inc ]
  %rtnh.0 = phi ptr [ %47, %if.end74 ], [ %add.ptr.i304, %for.inc ]
  %nhsel.0 = phi i32 [ 0, %if.end74 ], [ %inc, %for.inc ]
  %nh76.0 = phi ptr [ %fib_nh, %if.end74 ], [ %incdec.ptr, %for.inc ]
  %51 = ptrtoint ptr %nh.i289 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nh.i289, align 4
  %tobool.not.i290 = icmp eq ptr %52, null
  br i1 %tobool.not.i290, label %if.end.i292, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i291 = call fastcc i32 @nexthop_num_path(ptr noundef nonnull %52) #12
  br label %fib_info_num_path.exit

if.end.i292:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i292, %if.then.i
  %retval.0.i293 = phi i32 [ %call.i291, %if.then.i ], [ %54, %if.end.i292 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i293)
  %cmp78 = icmp ult i32 %nhsel.0, %retval.0.i293
  br i1 %cmp78, label %for.body, label %fib_info_num_path.exit.cleanup202_crit_edge

fib_info_num_path.exit.cleanup202_crit_edge:      ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

for.body:                                         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %remaining.0)
  %cmp.i294 = icmp sgt i32 %remaining.0, 7
  br i1 %cmp.i294, label %land.lhs.true.i, label %for.body.cleanup202_crit_edge

for.body.cleanup202_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true.i:                                  ; preds = %for.body
  %55 = ptrtoint ptr %rtnh.0 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rtnh.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %56)
  %cmp1.i = icmp ult i16 %56, 8
  %conv.i = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %remaining.0, %conv.i
  %or.cond325 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond325, label %land.lhs.true.i.cleanup202_crit_edge, label %if.end83

land.lhs.true.i.cleanup202_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end83:                                         ; preds = %land.lhs.true.i
  %rtnh_ifindex = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.0, i32 0, i32 3
  %57 = ptrtoint ptr %rtnh_ifindex to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rtnh_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool84.not = icmp eq i32 %58, 0
  br i1 %tobool84.not, label %if.end83.if.end92_crit_edge, label %land.lhs.true85

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

land.lhs.true85:                                  ; preds = %if.end83
  %nhc_oif88 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 2
  %59 = ptrtoint ptr %nhc_oif88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nhc_oif88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp89.not = icmp eq i32 %58, %60
  br i1 %cmp89.not, label %land.lhs.true85.if.end92_crit_edge, label %land.lhs.true85.cleanup202_crit_edge

land.lhs.true85.cleanup202_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

land.lhs.true85.if.end92_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true85.if.end92_crit_edge, %if.end83.if.end92_crit_edge
  %61 = ptrtoint ptr %rtnh.0 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rtnh.0, align 4
  %conv.i295 = zext i16 %62 to i32
  %sub.i = add nsw i32 %conv.i295, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %62)
  %cmp94 = icmp ugt i16 %62, 8
  br i1 %cmp94, label %if.then96, label %if.end92.for.inc_crit_edge

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then96:                                        ; preds = %if.end92
  %add.ptr.i = getelementptr i8, ptr %rtnh.0, i32 8
  %call98 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 5) #12
  %call99 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 18) #12
  %tobool100.not = icmp eq ptr %call98, null
  %tobool102.not = icmp eq ptr %call99, null
  %or.cond = select i1 %tobool100.not, i1 true, i1 %tobool102.not
  br i1 %or.cond, label %if.end107, label %do.body

do.body:                                          ; preds = %if.then96
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nh_match.__msg) #12
  %tobool104.not = icmp eq ptr %extack, null
  br i1 %tobool104.not, label %do.body.cleanup202_crit_edge, label %if.then105

do.body.cleanup202_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.then105:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @fib_nh_match.__msg, ptr %extack, align 4
  br label %cleanup202

if.end107:                                        ; preds = %if.then96
  br i1 %tobool100.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.end107
  %64 = ptrtoint ptr %call98 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %call98, align 2
  %66 = and i16 %65, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %66)
  %cmp.i296 = icmp eq i16 %66, 4
  br i1 %cmp.i296, label %do.body.i, label %if.end113

do.body.i:                                        ; preds = %if.then109
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_attr.__msg) #12
  %tobool.not.i297 = icmp eq ptr %extack, null
  br i1 %tobool.not.i297, label %do.body.i.cleanup202_crit_edge, label %if.then1.i

do.body.i.cleanup202_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @fib_gw_from_attr.__msg, ptr %extack, align 4
  br label %cleanup202

if.end113:                                        ; preds = %if.then109
  %nhc_gw_family115 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 5
  %68 = ptrtoint ptr %nhc_gw_family115 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nhc_gw_family115, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp117.not = icmp eq i8 %69, 2
  br i1 %cmp117.not, label %cleanup126, label %if.end113.cleanup202_crit_edge

if.end113.cleanup202_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

cleanup126:                                       ; preds = %if.end113
  %add.ptr.i.i.i = getelementptr i8, ptr %call98, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i.i, align 4
  %nhc_gw121 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 8
  %72 = ptrtoint ptr %nhc_gw121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nhc_gw121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp122.not = icmp eq i32 %71, %73
  br i1 %cmp122.not, label %cleanup126.if.end163_crit_edge, label %cleanup126.cleanup202_crit_edge

cleanup126.cleanup202_crit_edge:                  ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

cleanup126.if.end163_crit_edge:                   ; preds = %cleanup126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.else:                                          ; preds = %if.end107
  br i1 %tobool102.not, label %if.else.if.end163_crit_edge, label %if.then128

if.else.if.end163_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then128:                                       ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %cfg2) #12
  %74 = call ptr @memset(ptr %cfg2, i32 255, i32 100)
  %call129 = call i32 @fib_gw_from_via(ptr noundef nonnull %cfg2, ptr noundef nonnull %call99, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.then128.cleanup159.thread_crit_edge

if.then128.cleanup159.thread_crit_edge:           ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159.thread

if.end132:                                        ; preds = %if.then128
  %nhc_gw_family134 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 5
  %75 = ptrtoint ptr %nhc_gw_family134 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nhc_gw_family134, align 2
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %76, label %if.end132.cleanup159_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb147
  ]

if.end132.cleanup159_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

sw.bb:                                            ; preds = %if.end132
  %78 = ptrtoint ptr %fc_gw_family148 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fc_gw_family148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %79)
  %cmp138.not = icmp eq i8 %79, 2
  br i1 %cmp138.not, label %lor.lhs.false140, label %sw.bb.cleanup159.thread_crit_edge

sw.bb.cleanup159.thread_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159.thread

lor.lhs.false140:                                 ; preds = %sw.bb
  %80 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %50, align 4
  %nhc_gw142 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 8
  %82 = ptrtoint ptr %nhc_gw142 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nhc_gw142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp143.not = icmp eq i32 %81, %83
  br i1 %cmp143.not, label %lor.lhs.false140.cleanup159_crit_edge, label %lor.lhs.false140.cleanup159.thread_crit_edge

lor.lhs.false140.cleanup159.thread_crit_edge:     ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159.thread

lor.lhs.false140.cleanup159_crit_edge:            ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

sw.bb147:                                         ; preds = %if.end132
  %84 = ptrtoint ptr %fc_gw_family148 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %fc_gw_family148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %85)
  %cmp150.not = icmp eq i8 %85, 10
  br i1 %cmp150.not, label %lor.lhs.false152, label %sw.bb147.cleanup159.thread_crit_edge

sw.bb147.cleanup159.thread_crit_edge:             ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159.thread

lor.lhs.false152:                                 ; preds = %sw.bb147
  %nhc_gw154 = getelementptr inbounds %struct.fib_nh_common, ptr %nh76.0, i32 0, i32 8
  %bcmp324 = call i32 @bcmp(ptr noundef dereferenceable(16) %50, ptr noundef dereferenceable(16) %nhc_gw154, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp324)
  %tobool156.not = icmp eq i32 %bcmp324, 0
  br i1 %tobool156.not, label %lor.lhs.false152.cleanup159_crit_edge, label %lor.lhs.false152.cleanup159.thread_crit_edge

lor.lhs.false152.cleanup159.thread_crit_edge:     ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159.thread

lor.lhs.false152.cleanup159_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup159

cleanup159.thread:                                ; preds = %lor.lhs.false152.cleanup159.thread_crit_edge, %sw.bb147.cleanup159.thread_crit_edge, %lor.lhs.false140.cleanup159.thread_crit_edge, %sw.bb.cleanup159.thread_crit_edge, %if.then128.cleanup159.thread_crit_edge
  %retval.3.ph = phi i32 [ 1, %sw.bb147.cleanup159.thread_crit_edge ], [ 1, %lor.lhs.false152.cleanup159.thread_crit_edge ], [ 1, %sw.bb.cleanup159.thread_crit_edge ], [ 1, %lor.lhs.false140.cleanup159.thread_crit_edge ], [ %call129, %if.then128.cleanup159.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %cfg2) #12
  br label %cleanup202

cleanup159:                                       ; preds = %lor.lhs.false152.cleanup159_crit_edge, %lor.lhs.false140.cleanup159_crit_edge, %if.end132.cleanup159_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %cfg2) #12
  br label %if.end163

if.end163:                                        ; preds = %cleanup159, %if.else.if.end163_crit_edge, %cleanup126.if.end163_crit_edge
  %call164 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 11) #12
  %tobool165.not = icmp eq ptr %call164, null
  br i1 %tobool165.not, label %if.end163.for.inc_crit_edge, label %if.then166

if.end163.for.inc_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then166:                                       ; preds = %if.end163
  %86 = ptrtoint ptr %call164 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %call164, align 2
  %88 = and i16 %87, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %88)
  %cmp168 = icmp eq i16 %88, 4
  br i1 %cmp168, label %do.body171, label %if.end179

do.body171:                                       ; preds = %if.then166
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_nh_match.__msg.3) #12
  %tobool173.not = icmp eq ptr %extack, null
  br i1 %tobool173.not, label %do.body171.cleanup202_crit_edge, label %if.then174

do.body171.cleanup202_crit_edge:                  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.then174:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @fib_nh_match.__msg.3, ptr %extack, align 4
  br label %cleanup202

if.end179:                                        ; preds = %if.then166
  %add.ptr.i.i = getelementptr i8, ptr %call164, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i, align 4
  %nh_tclassid181 = getelementptr inbounds %struct.fib_nh, ptr %nh76.0, i32 0, i32 3
  %92 = ptrtoint ptr %nh_tclassid181 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nh_tclassid181, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp182.not = icmp eq i32 %91, %93
  br i1 %cmp182.not, label %if.end179.for.inc_crit_edge, label %if.end179.cleanup202_crit_edge

if.end179.cleanup202_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup202

if.end179.for.inc_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end179.for.inc_crit_edge, %if.end163.for.inc_crit_edge, %if.end92.for.inc_crit_edge
  %94 = ptrtoint ptr %rtnh.0 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %rtnh.0, align 4
  %conv.i302 = zext i16 %95 to i32
  %sub.i303 = add nuw nsw i32 %conv.i302, 3
  %and.i = and i32 %sub.i303, 131068
  %sub1.i = sub nsw i32 %remaining.0, %and.i
  %add.ptr.i304 = getelementptr i8, ptr %rtnh.0, i32 %and.i
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nh76.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  br label %for.cond

cleanup202:                                       ; preds = %if.end179.cleanup202_crit_edge, %if.then174, %do.body171.cleanup202_crit_edge, %cleanup159.thread, %cleanup126.cleanup202_crit_edge, %if.end113.cleanup202_crit_edge, %if.then1.i, %do.body.i.cleanup202_crit_edge, %if.then105, %do.body.cleanup202_crit_edge, %land.lhs.true85.cleanup202_crit_edge, %land.lhs.true.i.cleanup202_crit_edge, %for.body.cleanup202_crit_edge, %fib_info_num_path.exit.cleanup202_crit_edge, %if.end71.cleanup202_crit_edge, %if.end70, %land.lhs.true64.cleanup202_crit_edge, %land.lhs.true54.cleanup202_crit_edge, %land.lhs.true41.cleanup202_crit_edge, %land.lhs.true33.cleanup202_crit_edge, %land.lhs.true25.cleanup202_crit_edge, %fib_encap_match.exit.cleanup202_crit_edge, %if.end10, %land.lhs.true5.cleanup202_crit_edge, %land.lhs.true.cleanup202_crit_edge
  %retval.9 = phi i32 [ 1, %if.end10 ], [ 1, %land.lhs.true.cleanup202_crit_edge ], [ 0, %land.lhs.true5.cleanup202_crit_edge ], [ 0, %if.end70 ], [ 1, %fib_encap_match.exit.cleanup202_crit_edge ], [ 1, %land.lhs.true25.cleanup202_crit_edge ], [ 1, %land.lhs.true41.cleanup202_crit_edge ], [ 1, %land.lhs.true33.cleanup202_crit_edge ], [ 1, %land.lhs.true54.cleanup202_crit_edge ], [ 1, %land.lhs.true64.cleanup202_crit_edge ], [ 0, %if.end71.cleanup202_crit_edge ], [ -22, %do.body.i.cleanup202_crit_edge ], [ -22, %if.then1.i ], [ %retval.3.ph, %cleanup159.thread ], [ -22, %do.body171.cleanup202_crit_edge ], [ -22, %if.then174 ], [ -22, %do.body.cleanup202_crit_edge ], [ -22, %if.then105 ], [ 0, %fib_info_num_path.exit.cleanup202_crit_edge ], [ 1, %land.lhs.true85.cleanup202_crit_edge ], [ -22, %land.lhs.true.i.cleanup202_crit_edge ], [ -22, %for.body.cleanup202_crit_edge ], [ 1, %cleanup126.cleanup202_crit_edge ], [ 1, %if.end179.cleanup202_crit_edge ], [ 1, %if.end113.cleanup202_crit_edge ]
  ret i32 %retval.9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_gw_from_via(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fib_metrics_match(ptr nocapture noundef readonly %cfg, ptr nocapture noundef readonly %fi) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [16 x i8], align 1
  %ecn_ca = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_mx = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 14
  %0 = ptrtoint ptr %fc_mx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fc_mx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %if.end

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end:                                           ; preds = %entry
  %fc_mx_len = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 16
  %2 = ptrtoint ptr %fc_mx_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_mx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i52 = icmp sgt i32 %3, 3
  br i1 %cmp.i52, label %land.lhs.true.i.lr.ph, label %if.end.cleanup29_crit_edge

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 3
  %fib_metrics = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %nla.054 = phi ptr [ %1, %land.lhs.true.i.lr.ph ], [ %add.ptr.i, %for.inc.land.lhs.true.i_crit_edge ]
  %remaining.053 = phi i32 [ %3, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %4 = ptrtoint ptr %nla.054 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla.054, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp1.i = icmp ult i16 %5, 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.053, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %remaining.053, %conv.i
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup29_crit_edge, label %for.body

land.lhs.true.i.cleanup29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.054, i32 0, i32 1
  %6 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla_type.i, align 2
  %8 = and i16 %7, 16383
  %and.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %8)
  %cmp = icmp ugt i16 %8, 17
  br i1 %cmp, label %if.end6.cleanup29_crit_edge, label %if.end8

if.end6.cleanup29_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cmp9 = icmp eq i16 %8, 16
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #12
  %9 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecn_ca) #12
  %10 = ptrtoint ptr %ecn_ca to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ecn_ca, align 1
  %call11 = call i32 @nla_strscpy(ptr noundef nonnull %tmp, ptr noundef %nla.054, i32 noundef 16) #12
  %11 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fib_net, align 4
  %call13 = call i32 @tcp_ca_get_key_by_name(ptr noundef %12, ptr noundef nonnull %tmp, ptr noundef nonnull %ecn_ca) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecn_ca) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #12
  br label %if.end19

if.else:                                          ; preds = %if.end8
  %13 = ptrtoint ptr %nla.054 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nla.054, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %cmp15.not = icmp eq i16 %14, 8
  br i1 %cmp15.not, label %if.end17, label %if.else.cleanup29_crit_edge

if.else.cleanup29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %nla.054, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then10
  %val.0 = phi i32 [ %call13, %if.then10 ], [ %16, %if.end17 ]
  %17 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fib_metrics, align 4
  %sub = add nsw i32 %and.i, -1
  %arrayidx = getelementptr [17 x i32], ptr %18, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %8)
  %cmp20 = icmp eq i16 %8, 12
  %and = and i32 %20, 2147483647
  %spec.select = select i1 %cmp20, i32 %and, i32 %20
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %val.0)
  %cmp23.not = icmp eq i32 %spec.select, %val.0
  br i1 %cmp23.not, label %if.end19.for.inc_crit_edge, label %if.end19.cleanup29_crit_edge

if.end19.cleanup29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %nla.054 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nla.054, align 2
  %conv.i46 = zext i16 %22 to i32
  %sub.i47 = add nuw nsw i32 %conv.i46, 3
  %and.i48 = and i32 %sub.i47, 131068
  %sub1.i = sub nsw i32 %remaining.053, %and.i48
  %add.ptr.i = getelementptr i8, ptr %nla.054, i32 %and.i48
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup29_crit_edge

for.inc.cleanup29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

cleanup29:                                        ; preds = %for.inc.cleanup29_crit_edge, %if.end19.cleanup29_crit_edge, %if.else.cleanup29_crit_edge, %if.end6.cleanup29_crit_edge, %land.lhs.true.i.cleanup29_crit_edge, %if.end.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.2 = phi i1 [ true, %entry.cleanup29_crit_edge ], [ true, %if.end.cleanup29_crit_edge ], [ true, %land.lhs.true.i.cleanup29_crit_edge ], [ true, %for.inc.cleanup29_crit_edge ], [ false, %if.end6.cleanup29_crit_edge ], [ false, %if.else.cleanup29_crit_edge ], [ false, %if.end19.cleanup29_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ca_get_key_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_check_nh(ptr noundef %net, ptr noundef %nh, i32 noundef %table, i8 noundef zeroext %scope, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.fib6_config, align 4
  %fib6_nh.i = alloca %struct.fib6_nh, align 4
  %res.i = alloca %struct.fib_result, align 4
  %fl4.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 5
  %0 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nhc_gw_family, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %1, label %if.else9 [
    i8 2, label %if.then
    i8 10, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %res.i) #12
  %3 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 5
  %6 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 6
  %nhc_flags.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %7 = call ptr @memset(ptr %res.i, i32 255, i32 28)
  %8 = ptrtoint ptr %nhc_flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nhc_flags.i, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end55.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %scope)
  %cmp.i = icmp ugt i8 %scope, -4
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.then.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg) #12
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i.fib_check_nh_v4_gw.exit_crit_edge, label %if.then5.i

do.body.i.fib_check_nh_v4_gw.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_check_nh_v4_gw.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fib_check_nh_v4_gw.__msg, ptr %extack, align 4
  br label %fib_check_nh_v4_gw.exit

if.end6.i:                                        ; preds = %if.then.i
  %nhc_oif.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 2
  %12 = ptrtoint ptr %nhc_oif.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nhc_oif.i, align 4
  %call.i = tail call ptr @__dev_get_by_index(ptr noundef %net, i32 noundef %13) #12
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %do.body10.i, label %if.end18.i

do.body10.i:                                      ; preds = %if.end6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.21) #12
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.fib_check_nh_v4_gw.exit_crit_edge, label %if.then13.i

do.body10.i.fib_check_nh_v4_gw.exit_crit_edge:    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_check_nh_v4_gw.exit

if.then13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @fib_check_nh_v4_gw.__msg.21, ptr %extack, align 4
  br label %fib_check_nh_v4_gw.exit

if.end18.i:                                       ; preds = %if.end6.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and19.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body22.i, label %if.end30.i

do.body22.i:                                      ; preds = %if.end18.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.22) #12
  %tobool24.not.i = icmp eq ptr %extack, null
  br i1 %tobool24.not.i, label %do.body22.i.fib_check_nh_v4_gw.exit_crit_edge, label %if.then25.i

do.body22.i.fib_check_nh_v4_gw.exit_crit_edge:    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_check_nh_v4_gw.exit

if.then25.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fib_check_nh_v4_gw.__msg.22, ptr %extack, align 4
  br label %fib_check_nh_v4_gw.exit

if.end30.i:                                       ; preds = %if.end18.i
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 8
  %18 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nhc_gw.i, align 4
  %call32.i = tail call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef nonnull %call.i, i32 noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32.i)
  %cmp33.not.i = icmp eq i32 %call32.i, 1
  br i1 %cmp33.not.i, label %if.end44.i, label %do.body36.i

do.body36.i:                                      ; preds = %if.end30.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.23) #12
  %tobool38.not.i = icmp eq ptr %extack, null
  br i1 %tobool38.not.i, label %do.body36.i.fib_check_nh_v4_gw.exit_crit_edge, label %if.then39.i

do.body36.i.fib_check_nh_v4_gw.exit_crit_edge:    ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_check_nh_v4_gw.exit

if.then39.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @fib_check_nh_v4_gw.__msg.23, ptr %extack, align 4
  br label %fib_check_nh_v4_gw.exit

if.end44.i:                                       ; preds = %if.end30.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i.i, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i199.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i199.i, label %if.end44.i.do.body1.i.i.i_crit_edge, label %if.then46.i

if.end44.i.do.body1.i.i.i_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %nhc_flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nhc_flags.i, align 1
  %26 = or i8 %25, 16
  store i8 %26, ptr %nhc_flags.i, align 1
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.then46.i, %if.end44.i.do.body1.i.i.i_crit_edge
  %27 = ptrtoint ptr %nh to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %nh, align 4
  %nhc_dev_tracker.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 1
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %29 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i.i.i = add i32 %40, 1
  store i32 %add13.i.i.i, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !179
  %and.i.i.i.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold_track.exit.i_crit_edge, !prof !180

do.body1.i.i.i.dev_hold_track.exit.i_crit_edge:   ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold_track.exit.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_hold_track.exit.i

dev_hold_track.exit.i:                            ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold_track.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #12, !srcloc !181
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %nhc_dev_tracker.i, i32 noundef 2592) #12
  %nhc_scope.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 3
  %42 = ptrtoint ptr %nhc_scope.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -3, ptr %nhc_scope.i, align 4
  br label %fib_check_nh_v4_gw.exit

if.end55.i:                                       ; preds = %if.then
  %43 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end55.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end55.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end55.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end55.i.rcu_read_lock.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #12
  %47 = getelementptr inbounds i8, ptr %fl4.i, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 48)
  %nhc_oif57.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 2
  %49 = ptrtoint ptr %nhc_oif57.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nhc_oif57.i, align 4
  %51 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %fl4.i, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 1
  %52 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 4
  %add.i = add i8 %scope, 1
  %53 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add.i, ptr %flowic_scope.i, align 1
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %nhc_gw61.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 8
  %54 = ptrtoint ptr %nhc_gw61.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nhc_gw61.i, align 4
  %56 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %add.i)
  %cmp65.i = icmp ult i8 %add.i, -3
  br i1 %cmp65.i, label %if.then67.i, label %rcu_read_lock.exit.i.if.end70.i_crit_edge

rcu_read_lock.exit.i.if.end70.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.i

if.then67.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -3, ptr %flowic_scope.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then67.i, %rcu_read_lock.exit.i.if.end70.i_crit_edge
  %58 = zext i32 %table to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %table, label %if.end76.i [
    i32 0, label %if.end70.i.if.then83.i_crit_edge
    i32 254, label %if.end70.i.if.then83.i_crit_edge80
  ]

if.end70.i.if.then83.i_crit_edge80:               ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83.i

if.end70.i.if.then83.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83.i

if.end76.i:                                       ; preds = %if.end70.i
  %call75.i = tail call ptr @fib_get_table(ptr noundef %net, i32 noundef %table) #12
  %tobool77.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool77.not.i, label %if.end76.i.if.then83.i_crit_edge, label %if.end80.i

if.end76.i.if.then83.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83.i

if.end80.i:                                       ; preds = %if.end76.i
  %call79.i = call i32 @fib_table_lookup(ptr noundef nonnull %call75.i, ptr noundef nonnull %fl4.i, ptr noundef nonnull %res.i, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool82.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.cleanup.cont.i_crit_edge, label %if.end80.i.if.then83.i_crit_edge

if.end80.i.if.then83.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83.i

if.end80.i.cleanup.cont.i_crit_edge:              ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.i

if.then83.i:                                      ; preds = %if.end80.i.if.then83.i_crit_edge, %if.end76.i.if.then83.i_crit_edge, %if.end70.i.if.then83.i_crit_edge, %if.end70.i.if.then83.i_crit_edge80
  %fib_has_custom_rules.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 14
  %59 = ptrtoint ptr %fib_has_custom_rules.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fib_has_custom_rules.i.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i201.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i201.i, label %if.end.i.i, label %if.then.i203.i

if.then.i203.i:                                   ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i202.i = call i32 @__fib_lookup(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef nonnull %res.i, i32 noundef 3) #12
  br label %if.end85.i

if.end.i.i:                                       ; preds = %if.then83.i
  %61 = call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i204.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i204.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %5, align 4
  %fib_main.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 11
  %66 = ptrtoint ptr %fib_main.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %fib_main.i.i, align 8
  %call3.i.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call3.i.i, label %rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call4.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i205.i, label %lor.lhs.false.i.i.do.end13.i.i_crit_edge

lor.lhs.false.i.i.do.end13.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

land.lhs.true.i205.i:                             ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i205.i.do.end13.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i205.i.do.end13.i.i_crit_edge:      ; preds = %land.lhs.true.i205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i205.i
  %.b2.i.i = load i1, ptr @fib_lookup.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true8.i.i.do.end13.i.i_crit_edge, label %if.then10.i.i

land.lhs.true8.i.i.do.end13.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 380, ptr noundef nonnull @.str.19) #12
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.then10.i.i, %land.lhs.true8.i.i.do.end13.i.i_crit_edge, %land.lhs.true.i205.i.do.end13.i.i_crit_edge, %lor.lhs.false.i.i.do.end13.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %67, null
  br i1 %tobool15.not.i.i, label %do.end13.i.i.if.end21.i.i_crit_edge, label %if.end18.i.i

do.end13.i.i.if.end21.i.i_crit_edge:              ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

if.end18.i.i:                                     ; preds = %do.end13.i.i
  %call17.i.i = call i32 @fib_table_lookup(ptr noundef nonnull %67, ptr noundef nonnull %fl4.i, ptr noundef nonnull %res.i, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool19.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end18.i.i.out.thread.i.i_crit_edge, label %if.end18.i.i.if.end21.i.i_crit_edge

if.end18.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

if.end18.i.i.out.thread.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread.i.i

if.end21.i.i:                                     ; preds = %if.end18.i.i.if.end21.i.i_crit_edge, %do.end13.i.i.if.end21.i.i_crit_edge
  %err.014.i.i = phi i32 [ %call17.i.i, %if.end18.i.i.if.end21.i.i_crit_edge ], [ -101, %do.end13.i.i.if.end21.i.i_crit_edge ]
  %fib_default.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 12
  %68 = ptrtoint ptr %fib_default.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %fib_default.i.i, align 4
  %call28.i.i = call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call28.i.i, label %if.end21.i.i.do.end40.i.i_crit_edge, label %lor.lhs.false29.i.i

if.end21.i.i.do.end40.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i.i

lor.lhs.false29.i.i:                              ; preds = %if.end21.i.i
  %call30.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true32.i.i, label %lor.lhs.false29.i.i.do.end40.i.i_crit_edge

lor.lhs.false29.i.i.do.end40.i.i_crit_edge:       ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i.i

land.lhs.true32.i.i:                              ; preds = %lor.lhs.false29.i.i
  %call33.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %land.lhs.true32.i.i.do.end40.i.i_crit_edge, label %land.lhs.true35.i.i

land.lhs.true32.i.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true32.i.i
  %.b661.i.i = load i1, ptr @fib_lookup.__warned.28, align 1
  br i1 %.b661.i.i, label %land.lhs.true35.i.i.do.end40.i.i_crit_edge, label %if.then37.i.i

land.lhs.true35.i.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_lookup.__warned.28, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 387, ptr noundef nonnull @.str.19) #12
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then37.i.i, %land.lhs.true35.i.i.do.end40.i.i_crit_edge, %land.lhs.true32.i.i.do.end40.i.i_crit_edge, %lor.lhs.false29.i.i.do.end40.i.i_crit_edge, %if.end21.i.i.do.end40.i.i_crit_edge
  %tobool42.not.i.i = icmp eq ptr %69, null
  br i1 %tobool42.not.i.i, label %do.end40.i.i.out.i.i_crit_edge, label %if.then43.i.i

do.end40.i.i.out.i.i_crit_edge:                   ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then43.i.i:                                    ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call44.i.i = call i32 @fib_table_lookup(ptr noundef nonnull %69, ptr noundef nonnull %fl4.i, ptr noundef nonnull %res.i, i32 noundef 3) #12
  br label %out.i.i

out.i.i:                                          ; preds = %if.then43.i.i, %do.end40.i.i.out.i.i_crit_edge
  %err.1.i.i = phi i32 [ %call44.i.i, %if.then43.i.i ], [ %err.014.i.i, %do.end40.i.i.out.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1.i.i)
  %cmp.i.i = icmp eq i32 %err.1.i.i, -11
  %spec.select.i.i = select i1 %cmp.i.i, i32 -101, i32 %err.1.i.i
  br label %out.thread.i.i

out.thread.i.i:                                   ; preds = %out.i.i, %if.end18.i.i.out.thread.i.i_crit_edge
  %70 = phi i32 [ 0, %if.end18.i.i.out.thread.i.i_crit_edge ], [ %spec.select.i.i, %out.i.i ]
  %call.i3.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3.i.i, label %out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i

out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i6.i.i:                             ; preds = %out.thread.i.i
  %call1.i4.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, %out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %71 = call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i10.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %74, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end85.i

if.end85.i:                                       ; preds = %rcu_read_unlock.exit.i.i, %if.then.i203.i
  %err.1.i = phi i32 [ %call.i202.i, %if.then.i203.i ], [ %70, %rcu_read_unlock.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool86.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool86.not.i, label %if.end85.i.cleanup.cont.i_crit_edge, label %do.body88.i

if.end85.i.cleanup.cont.i_crit_edge:              ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.i

do.body88.i:                                      ; preds = %if.end85.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.24) #12
  %tobool90.not.i = icmp eq ptr %extack, null
  br i1 %tobool90.not.i, label %do.body88.i.cleanup97.i_crit_edge, label %if.then91.i

do.body88.i.cleanup97.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97.i

if.then91.i:                                      ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @fib_check_nh_v4_gw.__msg.24, ptr %extack, align 4
  br label %cleanup97.i

cleanup97.i:                                      ; preds = %if.then91.i, %do.body88.i.cleanup97.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  br label %out.i

cleanup.cont.i:                                   ; preds = %if.end85.i.cleanup.cont.i_crit_edge, %if.end80.i.cleanup.cont.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %3, align 2
  %.off.i = add i8 %77, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end116.i, label %do.body108.i

do.body108.i:                                     ; preds = %cleanup.cont.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.25) #12
  %tobool110.not.i = icmp eq ptr %extack, null
  br i1 %tobool110.not.i, label %do.body108.i.out.i_crit_edge, label %if.then111.i

do.body108.i.out.i_crit_edge:                     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then111.i:                                     ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @fib_check_nh_v4_gw.__msg.25, ptr %extack, align 4
  br label %out.i

if.end116.i:                                      ; preds = %cleanup.cont.i
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %4, align 1
  %nhc_scope119.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 3
  %81 = ptrtoint ptr %nhc_scope119.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %nhc_scope119.i, align 4
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 4
  %nhc_oif120.i = getelementptr inbounds %struct.fib_nh_common, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nhc_oif120.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nhc_oif120.i, align 4
  %86 = ptrtoint ptr %nhc_oif57.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %nhc_oif57.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %83, align 4
  %89 = ptrtoint ptr %nh to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %nh, align 4
  %tobool127.not.i = icmp eq ptr %88, null
  br i1 %tobool127.not.i, label %do.body129.i, label %do.body1.i.i215.i

do.body129.i:                                     ; preds = %if.end116.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_v4_gw.__msg.26) #12
  %tobool131.not.i = icmp eq ptr %extack, null
  br i1 %tobool131.not.i, label %do.body129.i.out.i_crit_edge, label %if.then132.i

do.body129.i.out.i_crit_edge:                     ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then132.i:                                     ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @fib_check_nh_v4_gw.__msg.26, ptr %extack, align 4
  br label %out.i

do.body1.i.i215.i:                                ; preds = %if.end116.i
  %nhc_dev_tracker139.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 1
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %pcpu_refcnt.i.i207.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 118
  %92 = ptrtoint ptr %pcpu_refcnt.i.i207.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcpu_refcnt.i.i207.i, align 4
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i208.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i208.i to ptr
  %cpu.i.i209.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %cpu.i.i209.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu.i.i209.i, align 4
  %arrayidx.i.i210.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i.i210.i, align 4
  %add.i.i211.i = add i32 %100, %94
  %101 = inttoptr i32 %add.i.i211.i to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %add13.i.i212.i = add i32 %103, 1
  store i32 %add13.i.i212.i, ptr %101, align 4
  %104 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !179
  %and.i.i.i.i213.i = and i32 %104, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i213.i)
  %tobool24.not.i.i214.i = icmp eq i32 %and.i.i.i.i213.i, 0
  br i1 %tobool24.not.i.i214.i, label %if.then28.i.i216.i, label %do.body1.i.i215.i.dev_hold_track.exit221.i_crit_edge, !prof !180

do.body1.i.i215.i.dev_hold_track.exit221.i_crit_edge: ; preds = %do.body1.i.i215.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold_track.exit221.i

if.then28.i.i216.i:                               ; preds = %do.body1.i.i215.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_hold_track.exit221.i

dev_hold_track.exit221.i:                         ; preds = %if.then28.i.i216.i, %do.body1.i.i215.i.dev_hold_track.exit221.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %91) #12, !srcloc !181
  %refcnt_tracker.i.i217.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 119
  %call.i.i218.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i217.i, ptr noundef %nhc_dev_tracker139.i, i32 noundef 2592) #12
  %state.i222.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 6
  %105 = ptrtoint ptr %state.i222.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %state.i222.i, align 4
  %107 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i223.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i223.i, label %dev_hold_track.exit221.i.if.end147.i_crit_edge, label %if.then141.i

dev_hold_track.exit221.i.if.end147.i_crit_edge:   ; preds = %dev_hold_track.exit221.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.i

if.then141.i:                                     ; preds = %dev_hold_track.exit221.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %nhc_flags.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %nhc_flags.i, align 1
  %110 = or i8 %109, 16
  store i8 %110, ptr %nhc_flags.i, align 1
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then141.i, %dev_hold_track.exit221.i.if.end147.i_crit_edge
  %flags148.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 14
  %111 = ptrtoint ptr %flags148.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags148.i, align 8
  %and149.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  %cond.i = select i1 %tobool150.not.i, i32 -100, i32 0
  br label %out.i

out.i:                                            ; preds = %if.end147.i, %if.then132.i, %do.body129.i.out.i_crit_edge, %if.then111.i, %do.body108.i.out.i_crit_edge, %cleanup97.i
  %err.2.i = phi i32 [ %err.1.i, %cleanup97.i ], [ %cond.i, %if.end147.i ], [ -22, %if.then111.i ], [ -22, %do.body108.i.out.i_crit_edge ], [ -22, %if.then132.i ], [ -22, %do.body129.i.out.i_crit_edge ]
  %call.i224.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i224.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i227.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i227.i:                             ; preds = %out.i
  %call1.i225.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i225.i)
  %tobool.not.i226.i = icmp eq i32 %call1.i225.i, 0
  br i1 %tobool.not.i226.i, label %land.lhs.true.i227.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i229.i

land.lhs.true.i227.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i227.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i229.i:                            ; preds = %land.lhs.true.i227.i
  %.b4.i228.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i228.i, label %land.lhs.true2.i229.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i230.i

land.lhs.true2.i229.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i229.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i230.i:                                   ; preds = %land.lhs.true2.i229.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i230.i, %land.lhs.true2.i229.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i227.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %113 = call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i231.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i231.i to ptr
  %preempt_count.i.i.i.i232.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i232.i, align 4
  %sub.i.i.i.i = add i32 %116, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i232.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %fib_check_nh_v4_gw.exit

fib_check_nh_v4_gw.exit:                          ; preds = %rcu_read_unlock.exit.i, %dev_hold_track.exit.i, %if.then39.i, %do.body36.i.fib_check_nh_v4_gw.exit_crit_edge, %if.then25.i, %do.body22.i.fib_check_nh_v4_gw.exit_crit_edge, %if.then13.i, %do.body10.i.fib_check_nh_v4_gw.exit_crit_edge, %if.then5.i, %do.body.i.fib_check_nh_v4_gw.exit_crit_edge
  %retval.1.i = phi i32 [ %err.2.i, %rcu_read_unlock.exit.i ], [ 0, %dev_hold_track.exit.i ], [ -22, %if.then5.i ], [ -22, %do.body.i.fib_check_nh_v4_gw.exit_crit_edge ], [ -19, %if.then13.i ], [ -19, %do.body10.i.fib_check_nh_v4_gw.exit_crit_edge ], [ -100, %if.then25.i ], [ -100, %do.body22.i.fib_check_nh_v4_gw.exit_crit_edge ], [ -22, %if.then39.i ], [ -22, %do.body36.i.fib_check_nh_v4_gw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %res.i) #12
  br label %if.end11

if.then7:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cfg.i) #12
  %117 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %118 = call ptr @memset(ptr %117, i32 0, i32 140)
  %119 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %table, ptr %cfg.i, align 4
  %fc_ifindex.i = getelementptr inbounds %struct.fib6_config, ptr %cfg.i, i32 0, i32 4
  %nhc_oif.i21 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 2
  %120 = ptrtoint ptr %nhc_oif.i21 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nhc_oif.i21, align 4
  %122 = ptrtoint ptr %fc_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %fc_ifindex.i, align 4
  %fc_flags.i = getelementptr inbounds %struct.fib6_config, ptr %cfg.i, i32 0, i32 5
  %nhc_flags.i22 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %123 = ptrtoint ptr %nhc_flags.i22 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %nhc_flags.i22, align 1
  %125 = or i8 %124, 2
  %or.i = zext i8 %125 to i32
  %126 = ptrtoint ptr %fc_flags.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or.i, ptr %fc_flags.i, align 4
  %fc_gateway.i = getelementptr inbounds %struct.fib6_config, ptr %cfg.i, i32 0, i32 13
  %nhc_gw.i23 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 8
  %127 = call ptr @memcpy(ptr %fc_gateway.i, ptr %nhc_gw.i23, i32 16)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %fib6_nh.i) #12
  %128 = call ptr @memset(ptr %fib6_nh.i, i32 0, i32 68)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %129 = load ptr, ptr @ipv6_stub, align 4
  %fib6_nh_init.i = getelementptr inbounds %struct.ipv6_stub, ptr %129, i32 0, i32 9
  %130 = ptrtoint ptr %fib6_nh_init.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fib6_nh_init.i, align 4
  %call.i24 = call i32 %131(ptr noundef %net, ptr noundef nonnull %fib6_nh.i, ptr noundef nonnull %cfg.i, i32 noundef 3264, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.then.i28, label %if.then7.fib_check_nh_v6_gw.exit_crit_edge

if.then7.fib_check_nh_v6_gw.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_check_nh_v6_gw.exit

if.then.i28:                                      ; preds = %if.then7
  %132 = ptrtoint ptr %fib6_nh.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fib6_nh.i, align 4
  %134 = ptrtoint ptr %nh to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %nh, align 4
  %nhc_dev_tracker.i26 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 1
  %tobool.not.i.i27 = icmp eq ptr %133, null
  br i1 %tobool.not.i.i27, label %if.then.i28.dev_hold_track.exit.i42_crit_edge, label %do.body1.i.i.i37

if.then.i28.dev_hold_track.exit.i42_crit_edge:    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold_track.exit.i42

do.body1.i.i.i37:                                 ; preds = %if.then.i28
  %135 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %pcpu_refcnt.i.i.i29 = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 118
  %136 = ptrtoint ptr %pcpu_refcnt.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcpu_refcnt.i.i.i29, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i30 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i30 to ptr
  %cpu.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %cpu.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu.i.i.i31, align 4
  %arrayidx.i.i.i32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i.i32, align 4
  %add.i.i.i33 = add i32 %144, %138
  %145 = inttoptr i32 %add.i.i.i33 to ptr
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %add13.i.i.i34 = add i32 %147, 1
  store i32 %add13.i.i.i34, ptr %145, align 4
  %148 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !179
  %and.i.i.i.i.i35 = and i32 %148, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i35)
  %tobool24.not.i.i.i36 = icmp eq i32 %and.i.i.i.i.i35, 0
  br i1 %tobool24.not.i.i.i36, label %if.then28.i.i.i38, label %do.body1.i.i.i37.dev_hold.exit.i.i_crit_edge, !prof !180

do.body1.i.i.i37.dev_hold.exit.i.i_crit_edge:     ; preds = %do.body1.i.i.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit.i.i

if.then28.i.i.i38:                                ; preds = %do.body1.i.i.i37
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i38, %do.body1.i.i.i37.dev_hold.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #12, !srcloc !181
  %refcnt_tracker.i.i.i39 = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 119
  %call.i.i.i40 = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i39, ptr noundef %nhc_dev_tracker.i26, i32 noundef 3264) #12
  br label %dev_hold_track.exit.i42

dev_hold_track.exit.i42:                          ; preds = %dev_hold.exit.i.i, %if.then.i28.dev_hold_track.exit.i42_crit_edge
  %149 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %nh, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 17
  %151 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ifindex.i, align 4
  %153 = ptrtoint ptr %nhc_oif.i21 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %nhc_oif.i21, align 4
  %nhc_scope.i41 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 3
  %154 = ptrtoint ptr %nhc_scope.i41 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -3, ptr %nhc_scope.i41, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %155 = load ptr, ptr @ipv6_stub, align 4
  %fib6_nh_release.i = getelementptr inbounds %struct.ipv6_stub, ptr %155, i32 0, i32 10
  %156 = ptrtoint ptr %fib6_nh_release.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fib6_nh_release.i, align 4
  call void %157(ptr noundef nonnull %fib6_nh.i) #12
  br label %fib_check_nh_v6_gw.exit

fib_check_nh_v6_gw.exit:                          ; preds = %dev_hold_track.exit.i42, %if.then7.fib_check_nh_v6_gw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %fib6_nh.i) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cfg.i) #12
  br label %if.end11

if.else9:                                         ; preds = %entry
  %nhc_flags.i43 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %158 = ptrtoint ptr %nhc_flags.i43 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %nhc_flags.i43, align 1
  %160 = and i8 %159, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i44 = icmp eq i8 %160, 0
  br i1 %tobool.not.i44, label %if.end3.i, label %do.body.i45

do.body.i45:                                      ; preds = %if.else9
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_nongw.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i45.if.end11_crit_edge, label %if.then2.i

do.body.i45.if.end11_crit_edge:                   ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then2.i:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @fib_check_nh_nongw.__msg, ptr %extack, align 4
  br label %if.end11

if.end3.i:                                        ; preds = %if.else9
  %162 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i.i46 = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %preempt_count.i.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %preempt_count.i.i.i.i.i47, align 4
  %add.i.i.i.i48 = add i32 %165, 1
  store volatile i32 %add.i.i.i.i48, ptr %preempt_count.i.i.i.i.i47, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i49 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i49, label %if.end3.i.rcu_read_lock.exit.i58_crit_edge, label %land.lhs.true.i.i52

if.end3.i.rcu_read_lock.exit.i58_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i58

land.lhs.true.i.i52:                              ; preds = %if.end3.i
  %call1.i.i50 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %call1.i.i50, 0
  br i1 %tobool.not.i.i51, label %land.lhs.true.i.i52.rcu_read_lock.exit.i58_crit_edge, label %land.lhs.true2.i.i54

land.lhs.true.i.i52.rcu_read_lock.exit.i58_crit_edge: ; preds = %land.lhs.true.i.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i58

land.lhs.true2.i.i54:                             ; preds = %land.lhs.true.i.i52
  %.b4.i.i53 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i53, label %land.lhs.true2.i.i54.rcu_read_lock.exit.i58_crit_edge, label %if.then.i.i55

land.lhs.true2.i.i54.rcu_read_lock.exit.i58_crit_edge: ; preds = %land.lhs.true2.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i58

if.then.i.i55:                                    ; preds = %land.lhs.true2.i.i54
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit.i58

rcu_read_lock.exit.i58:                           ; preds = %if.then.i.i55, %land.lhs.true2.i.i54.rcu_read_lock.exit.i58_crit_edge, %land.lhs.true.i.i52.rcu_read_lock.exit.i58_crit_edge, %if.end3.i.rcu_read_lock.exit.i58_crit_edge
  %nhc_oif.i56 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 2
  %166 = ptrtoint ptr %nhc_oif.i56 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nhc_oif.i56, align 4
  %call.i57 = tail call ptr @inetdev_by_index(ptr noundef %net, i32 noundef %167) #12
  %tobool5.not.i = icmp eq ptr %call.i57, null
  br i1 %tobool5.not.i, label %rcu_read_lock.exit.i58.out.i77_crit_edge, label %if.end7.i

rcu_read_lock.exit.i58.out.i77_crit_edge:         ; preds = %rcu_read_lock.exit.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i77

if.end7.i:                                        ; preds = %rcu_read_lock.exit.i58
  %168 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %call.i57, align 4
  %flags.i59 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 14
  %170 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags.i59, align 8
  %and8.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body11.i, label %if.end19.i

do.body11.i:                                      ; preds = %if.end7.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_check_nh_nongw.__msg.29) #12
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.out.i77_crit_edge, label %if.then14.i

do.body11.i.out.i77_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i77

if.then14.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  %172 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @fib_check_nh_nongw.__msg.29, ptr %extack, align 4
  br label %out.i77

if.end19.i:                                       ; preds = %if.end7.i
  %173 = ptrtoint ptr %nh to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %169, ptr %nh, align 4
  %nhc_dev_tracker.i60 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 1
  %tobool.not.i48.i = icmp eq ptr %169, null
  br i1 %tobool.not.i48.i, label %if.end19.i.dev_hold_track.exit.i76_crit_edge, label %do.body1.i.i.i69

if.end19.i.dev_hold_track.exit.i76_crit_edge:     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold_track.exit.i76

do.body1.i.i.i69:                                 ; preds = %if.end19.i
  %174 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !178
  %pcpu_refcnt.i.i.i61 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 118
  %175 = ptrtoint ptr %pcpu_refcnt.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pcpu_refcnt.i.i.i61, align 4
  %177 = ptrtoint ptr %176 to i32
  %178 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i62 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i.i.i.i62 to ptr
  %cpu.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %cpu.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cpu.i.i.i63, align 4
  %arrayidx.i.i.i64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %181
  %182 = ptrtoint ptr %arrayidx.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i.i.i64, align 4
  %add.i.i.i65 = add i32 %183, %177
  %184 = inttoptr i32 %add.i.i.i65 to ptr
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  %add13.i.i.i66 = add i32 %186, 1
  store i32 %add13.i.i.i66, ptr %184, align 4
  %187 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !179
  %and.i.i.i.i.i67 = and i32 %187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i67)
  %tobool24.not.i.i.i68 = icmp eq i32 %and.i.i.i.i.i67, 0
  br i1 %tobool24.not.i.i.i68, label %if.then28.i.i.i70, label %do.body1.i.i.i69.dev_hold.exit.i.i73_crit_edge, !prof !180

do.body1.i.i.i69.dev_hold.exit.i.i73_crit_edge:   ; preds = %do.body1.i.i.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit.i.i73

if.then28.i.i.i70:                                ; preds = %do.body1.i.i.i69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %dev_hold.exit.i.i73

dev_hold.exit.i.i73:                              ; preds = %if.then28.i.i.i70, %do.body1.i.i.i69.dev_hold.exit.i.i73_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %174) #12, !srcloc !181
  %refcnt_tracker.i.i.i71 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 119
  %call.i.i.i72 = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i71, ptr noundef %nhc_dev_tracker.i60, i32 noundef 2592) #12
  br label %dev_hold_track.exit.i76

dev_hold_track.exit.i76:                          ; preds = %dev_hold.exit.i.i73, %if.end19.i.dev_hold_track.exit.i76_crit_edge
  %nhc_scope.i74 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 3
  %188 = ptrtoint ptr %nhc_scope.i74 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -2, ptr %nhc_scope.i74, align 4
  %189 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %nh, align 4
  %state.i.i75 = getelementptr inbounds %struct.net_device, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %state.i.i75 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %state.i.i75, align 4
  %193 = and i32 %192, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i49.i = icmp eq i32 %193, 0
  br i1 %tobool.not.i49.i, label %dev_hold_track.exit.i76.out.i77_crit_edge, label %if.then29.i

dev_hold_track.exit.i76.out.i77_crit_edge:        ; preds = %dev_hold_track.exit.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i77

if.then29.i:                                      ; preds = %dev_hold_track.exit.i76
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %nhc_flags.i43 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %nhc_flags.i43, align 1
  %196 = or i8 %195, 16
  store i8 %196, ptr %nhc_flags.i43, align 1
  br label %out.i77

out.i77:                                          ; preds = %if.then29.i, %dev_hold_track.exit.i76.out.i77_crit_edge, %if.then14.i, %do.body11.i.out.i77_crit_edge, %rcu_read_lock.exit.i58.out.i77_crit_edge
  %err.0.i = phi i32 [ -19, %rcu_read_lock.exit.i58.out.i77_crit_edge ], [ -100, %if.then14.i ], [ -100, %do.body11.i.out.i77_crit_edge ], [ 0, %if.then29.i ], [ 0, %dev_hold_track.exit.i76.out.i77_crit_edge ]
  %call.i50.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i50.i, label %out.i77.rcu_read_unlock.exit.i79_crit_edge, label %land.lhs.true.i53.i

out.i77.rcu_read_unlock.exit.i79_crit_edge:       ; preds = %out.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i79

land.lhs.true.i53.i:                              ; preds = %out.i77
  %call1.i51.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call1.i51.i, 0
  br i1 %tobool.not.i52.i, label %land.lhs.true.i53.i.rcu_read_unlock.exit.i79_crit_edge, label %land.lhs.true2.i55.i

land.lhs.true.i53.i.rcu_read_unlock.exit.i79_crit_edge: ; preds = %land.lhs.true.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i79

land.lhs.true2.i55.i:                             ; preds = %land.lhs.true.i53.i
  %.b4.i54.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54.i, label %land.lhs.true2.i55.i.rcu_read_unlock.exit.i79_crit_edge, label %if.then.i56.i

land.lhs.true2.i55.i.rcu_read_unlock.exit.i79_crit_edge: ; preds = %land.lhs.true2.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i79

if.then.i56.i:                                    ; preds = %land.lhs.true2.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_unlock.exit.i79

rcu_read_unlock.exit.i79:                         ; preds = %if.then.i56.i, %land.lhs.true2.i55.i.rcu_read_unlock.exit.i79_crit_edge, %land.lhs.true.i53.i.rcu_read_unlock.exit.i79_crit_edge, %out.i77.rcu_read_unlock.exit.i79_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %197 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i57.i = and i32 %197, -16384
  %198 = inttoptr i32 %and.i.i.i.i.i57.i to ptr
  %preempt_count.i.i.i.i58.i = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %preempt_count.i.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %preempt_count.i.i.i.i58.i, align 4
  %sub.i.i.i.i78 = add i32 %200, -1
  store volatile i32 %sub.i.i.i.i78, ptr %preempt_count.i.i.i.i58.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end11

if.end11:                                         ; preds = %rcu_read_unlock.exit.i79, %if.then2.i, %do.body.i45.if.end11_crit_edge, %fib_check_nh_v6_gw.exit, %fib_check_nh_v4_gw.exit
  %err.0 = phi i32 [ %retval.1.i, %fib_check_nh_v4_gw.exit ], [ %call.i24, %fib_check_nh_v6_gw.exit ], [ %err.0.i, %rcu_read_unlock.exit.i79 ], [ -22, %if.then2.i ], [ -22, %do.body.i45.if.end11_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_info_update_nhc_saddr(ptr noundef %net, ptr nocapture noundef %nhc, i8 noundef zeroext %scope) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 4
  %0 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nhc_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  %2 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhc, align 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv2 = zext i8 %scope to i32
  %call = tail call i32 @inet_select_addr(ptr noundef %3, i32 noundef 0, i32 noundef %conv2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 8
  %4 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nhc_gw, align 4
  %conv5 = zext i8 %scope to i32
  %call6 = tail call i32 @inet_select_addr(ptr noundef %3, i32 noundef %5, i32 noundef %conv5) #12
  %nh_saddr = getelementptr inbounds %struct.fib_nh, ptr %nhc, i32 0, i32 4
  %6 = ptrtoint ptr %nh_saddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6, ptr %nh_saddr, align 4
  %dev_addr_genid = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 124
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev_addr_genid, i32 noundef 4) #12
  %7 = ptrtoint ptr %dev_addr_genid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dev_addr_genid, align 4
  %nh_saddr_genid = getelementptr inbounds %struct.fib_nh, ptr %nhc, i32 0, i32 5
  %9 = ptrtoint ptr %nh_saddr_genid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nh_saddr_genid, align 4
  %10 = ptrtoint ptr %nh_saddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nh_saddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_result_prefsrc(ptr noundef %net, ptr nocapture noundef readonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc1 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %0 = ptrtoint ptr %nhc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhc1, align 4
  %fi = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup13_crit_edge

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

if.end:                                           ; preds = %entry
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nhc_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then5, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fi, align 4
  %fib_scope22 = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %fib_scope22 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fib_scope22, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  br label %if.then.i

if.then5:                                         ; preds = %if.end
  %nh_saddr_genid = getelementptr inbounds %struct.fib_nh, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %nh_saddr_genid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nh_saddr_genid, align 4
  %dev_addr_genid = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 124
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev_addr_genid, i32 noundef 4) #12
  %16 = ptrtoint ptr %dev_addr_genid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_addr_genid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp6 = icmp eq i32 %15, %17
  br i1 %cmp6, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %nh_saddr = getelementptr inbounds %struct.fib_nh, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %nh_saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nh_saddr, align 4
  br label %cleanup13

if.end10:                                         ; preds = %if.then5
  %20 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %nhc_family, align 1
  %21 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fi, align 4
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fib_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp.not.i = icmp eq i8 %.pr, 2
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  br i1 %cmp.not.i, label %if.end.i, label %if.end10.if.then.i_crit_edge

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.end10.if.then.i_crit_edge, %if.end10.thread
  %27 = phi ptr [ %13, %if.end10.thread ], [ %26, %if.end10.if.then.i_crit_edge ]
  %28 = phi i8 [ %11, %if.end10.thread ], [ %24, %if.end10.if.then.i_crit_edge ]
  %conv2.i = zext i8 %28 to i32
  %call.i = tail call i32 @inet_select_addr(ptr noundef %27, i32 noundef 0, i32 noundef %conv2.i) #12
  br label %cleanup13

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nhc_gw.i, align 4
  %conv5.i = zext i8 %24 to i32
  %call6.i = tail call i32 @inet_select_addr(ptr noundef %26, i32 noundef %30, i32 noundef %conv5.i) #12
  %nh_saddr.i = getelementptr inbounds %struct.fib_nh, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %nh_saddr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call6.i, ptr %nh_saddr.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dev_addr_genid, i32 noundef 4) #12
  %32 = ptrtoint ptr %dev_addr_genid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %dev_addr_genid, align 4
  %34 = ptrtoint ptr %nh_saddr_genid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %nh_saddr_genid, align 4
  %35 = ptrtoint ptr %nh_saddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nh_saddr.i, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %if.end.i, %if.then.i, %cleanup.thread, %entry.cleanup13_crit_edge
  %retval.1 = phi i32 [ %5, %entry.cleanup13_crit_edge ], [ %19, %cleanup.thread ], [ %call.i, %if.then.i ], [ %36, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib_create_info(ptr noundef %cfg, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nl_net = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nl_net, align 4
  %fc_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %cmp = icmp ugt i8 %3, 11
  br i1 %cmp, label %entry.if.end366_crit_edge, label %if.end

entry.if.end366_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %scope = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %conv, i32 1
  %4 = ptrtoint ptr %scope to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scope, align 4
  %fc_scope = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %fc_scope to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fc_scope, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp5 = icmp ugt i8 %5, %7
  br i1 %cmp5, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end366_crit_edge, label %if.then8

do.body.if.end366_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fib_create_info.__msg, ptr %extack, align 4
  br label %if.end366

if.end10:                                         ; preds = %if.end
  %fc_flags = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 10
  %9 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fc_flags, align 4
  %and = and i32 %10, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end21, label %do.body13

do.body13:                                        ; preds = %if.end10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.4) #12
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.if.end366_crit_edge, label %if.then16

do.body13.if.end366_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fib_create_info.__msg.4, ptr %extack, align 4
  br label %if.end366

if.end21:                                         ; preds = %if.end10
  %fc_nh_id = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 13
  %12 = ptrtoint ptr %fc_nh_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fc_nh_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.end21.if.end43_crit_edge, label %if.then23

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then23:                                        ; preds = %if.end21
  %fc_mx = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 14
  %14 = ptrtoint ptr %fc_mx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fc_mx, align 4
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.then25, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.then23
  %mul.i.i.i.i = mul i32 %13, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %fc_protocol.i = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 2
  %16 = ptrtoint ptr %fc_protocol.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fc_protocol.i, align 2
  %fc_prefsrc.i = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 12
  %18 = ptrtoint ptr %fc_prefsrc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fc_prefsrc.i, align 4
  %fc_priority.i = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 11
  %20 = ptrtoint ptr %fc_priority.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fc_priority.i, align 4
  %conv.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %conv1.i.i = zext i8 %7 to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %xor.i.i = xor i32 %19, %shr.i.i.i
  %xor2.i.i = xor i32 %xor.i.i, %21
  %xor3.i.i = xor i32 %xor2.i.i, %or.i.i
  %22 = load i32, ptr @fib_info_hash_size, align 4
  %sub.i.i = add i32 %22, -1
  %shr.i.i = lshr i32 %xor3.i.i, 7
  %xor.i83.i = xor i32 %shr.i.i, %xor3.i.i
  %shr1.i.i = lshr i32 %xor3.i.i, 12
  %xor2.i84.i = xor i32 %xor.i83.i, %shr1.i.i
  %and.i.i = and i32 %xor2.i84.i, %sub.i.i
  %23 = load ptr, ptr @fib_info_hash, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %23, i32 %and.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %fi.086.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not87.i = icmp eq ptr %fi.086.i, null
  br i1 %tobool4.not87.i, label %if.then25.if.end29_crit_edge, label %for.body.lr.ph.i

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.body.lr.ph.i:                                 ; preds = %if.then25
  %fc_table.i = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fi.088.i = phi ptr [ %fi.086.i, %for.body.lr.ph.i ], [ %fi.0.i, %for.inc.i.for.body.i_crit_edge ]
  %fib_net.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 3
  %25 = ptrtoint ptr %fib_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fib_net.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %1
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 18
  %27 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nh.i, align 4
  %tobool7.not.i = icmp eq ptr %28, null
  br i1 %tobool7.not.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.nexthop, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %13)
  %cmp.not.i = icmp eq i32 %30, %13
  br i1 %cmp.not.i, label %if.end11.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %fib_protocol.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 8
  %31 = ptrtoint ptr %fib_protocol.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fib_protocol.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %32)
  %cmp14.i = icmp eq i8 %17, %32
  br i1 %cmp14.i, label %land.lhs.true.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %fib_scope.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 9
  %33 = ptrtoint ptr %fib_scope.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fib_scope.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %34)
  %cmp19.i = icmp eq i8 %7, %34
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %fib_prefsrc.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 11
  %35 = ptrtoint ptr %fib_prefsrc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fib_prefsrc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %36)
  %cmp23.i = icmp eq i32 %19, %36
  br i1 %cmp23.i, label %land.lhs.true25.i, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true25.i:                                ; preds = %land.lhs.true21.i
  %fib_priority.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 13
  %37 = ptrtoint ptr %fib_priority.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fib_priority.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %38)
  %cmp27.i = icmp eq i32 %21, %38
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true25.i.for.inc.i_crit_edge

land.lhs.true25.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true29.i:                                ; preds = %land.lhs.true25.i
  %fib_type.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 10
  %39 = ptrtoint ptr %fib_type.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fib_type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %40)
  %cmp32.i = icmp eq i8 %3, %40
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true29.i.for.inc.i_crit_edge

land.lhs.true29.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %41 = ptrtoint ptr %fc_table.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fc_table.i, align 4
  %fib_tb_id.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 12
  %43 = ptrtoint ptr %fib_tb_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fib_tb_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp35.i = icmp eq i32 %42, %44
  br i1 %cmp35.i, label %land.lhs.true37.i, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true37.i:                                ; preds = %land.lhs.true34.i
  %fib_flags.i = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 6
  %45 = ptrtoint ptr %fib_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fib_flags.i, align 4
  %xor.i = xor i32 %46, %10
  %and.i = and i32 %xor.i, -90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %if.then27, label %land.lhs.true37.i.for.inc.i_crit_edge

land.lhs.true37.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true37.i.for.inc.i_crit_edge, %land.lhs.true34.i.for.inc.i_crit_edge, %land.lhs.true29.i.for.inc.i_crit_edge, %land.lhs.true25.i.for.inc.i_crit_edge, %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %47 = ptrtoint ptr %fi.088.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %fi.0.i = load ptr, ptr %fi.088.i, align 4
  %tobool4.not.i = icmp eq ptr %fi.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.if.end29_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end29_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #14
  %fib_treeref = getelementptr inbounds %struct.fib_info, ptr %fi.088.i, i32 0, i32 4
  tail call fastcc void @refcount_inc(ptr noundef %fib_treeref)
  br label %cleanup368

if.end29:                                         ; preds = %for.inc.i.if.end29_crit_edge, %if.then25.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %call31 = tail call ptr @nexthop_find_by_id(ptr noundef %1, i32 noundef %13) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body34, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.body34:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.5) #12
  %tobool36.not = icmp eq ptr %extack, null
  br i1 %tobool36.not, label %do.body34.if.end366_crit_edge, label %if.then37

do.body34.if.end366_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.then37:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @fib_create_info.__msg.5, ptr %extack, align 4
  br label %if.end366

if.end43:                                         ; preds = %if.end29.if.end43_crit_edge, %if.end21.if.end43_crit_edge
  %nh.0 = phi ptr [ null, %if.end21.if.end43_crit_edge ], [ %call31, %if.end29.if.end43_crit_edge ]
  %nhs.0 = phi i32 [ 1, %if.end21.if.end43_crit_edge ], [ 0, %if.end29.if.end43_crit_edge ]
  %fc_mp = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 15
  %49 = ptrtoint ptr %fc_mp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fc_mp, align 4
  %tobool44.not = icmp eq ptr %50, null
  br i1 %tobool44.not, label %if.end43.if.end52_crit_edge, label %if.then45

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then45:                                        ; preds = %if.end43
  %fc_mp_len = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 17
  %51 = ptrtoint ptr %fc_mp_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fc_mp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %52)
  %cmp.i17.i = icmp sgt i32 %52, 7
  br i1 %cmp.i17.i, label %if.then45.land.lhs.true.i.i_crit_edge, label %while.end.i.thread

if.then45.land.lhs.true.i.i_crit_edge:            ; preds = %if.then45
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.land.lhs.true.i.i_crit_edge, %if.then45.land.lhs.true.i.i_crit_edge
  %nhs.020.i = phi i32 [ %inc.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ 0, %if.then45.land.lhs.true.i.i_crit_edge ]
  %rtnh.addr.019.i = phi ptr [ %add.ptr.i.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ %50, %if.then45.land.lhs.true.i.i_crit_edge ]
  %remaining.addr.018.i = phi i32 [ %sub1.i.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ %52, %if.then45.land.lhs.true.i.i_crit_edge ]
  %53 = ptrtoint ptr %rtnh.addr.019.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rtnh.addr.019.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %54)
  %cmp1.i.i = icmp ult i16 %54, 8
  %conv.i.i548 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.addr.018.i, i32 %conv.i.i548)
  %cmp5.i.not.i = icmp ult i32 %remaining.addr.018.i, %conv.i.i548
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.do.body.i_crit_edge, label %while.body.i

land.lhs.true.i.i.do.body.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.body.i:                                     ; preds = %land.lhs.true.i.i
  %inc.i = add i32 %nhs.020.i, 1
  %sub.i.i549 = add nuw nsw i32 %conv.i.i548, 3
  %and.i.i550 = and i32 %sub.i.i549, 131068
  %sub1.i.i = sub nsw i32 %remaining.addr.018.i, %and.i.i550
  %add.ptr.i.i = getelementptr i8, ptr %rtnh.addr.019.i, i32 %and.i.i550
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 7
  br i1 %cmp.i.i, label %while.body.i.land.lhs.true.i.i_crit_edge, label %while.end.i

while.body.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %cmp.i = icmp sgt i32 %sub1.i.i, 0
  br i1 %cmp.i, label %while.end.i.do.body.i_crit_edge, label %fib_count_nexthops.exit

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.end.i.thread:                               ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i696 = icmp sgt i32 %52, 0
  br i1 %cmp.i696, label %while.end.i.thread.do.body.i_crit_edge, label %while.end.i.thread.if.end366_crit_edge

while.end.i.thread.if.end366_crit_edge:           ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

while.end.i.thread.do.body.i_crit_edge:           ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.thread.do.body.i_crit_edge, %while.end.i.do.body.i_crit_edge, %land.lhs.true.i.i.do.body.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_count_nexthops.__msg) #12
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.if.end366_crit_edge, label %if.then3.i

do.body.i.if.end366_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @fib_count_nexthops.__msg, ptr %extack, align 4
  br label %if.end366

fib_count_nexthops.exit:                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp48 = icmp eq i32 %inc.i, 0
  br i1 %cmp48, label %fib_count_nexthops.exit.if.end366_crit_edge, label %fib_count_nexthops.exit.if.end52_crit_edge

fib_count_nexthops.exit.if.end52_crit_edge:       ; preds = %fib_count_nexthops.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

fib_count_nexthops.exit.if.end366_crit_edge:      ; preds = %fib_count_nexthops.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.end52:                                         ; preds = %fib_count_nexthops.exit.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %nhs.1 = phi i32 [ %inc.i, %fib_count_nexthops.exit.if.end52_crit_edge ], [ %nhs.0, %if.end43.if.end52_crit_edge ]
  %56 = load volatile i32, ptr @fib_info_cnt, align 4
  %57 = load i32, ptr @fib_info_hash_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp56.not = icmp ult i32 %56, %57
  br i1 %cmp56.not, label %if.end52.if.end8.i.i_crit_edge, label %if.then58

if.end52.if.end8.i.i_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then58:                                        ; preds = %if.end52
  %shl = shl i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool59.not = icmp eq i32 %shl, 0
  %spec.store.select = select i1 %tobool59.not, i32 16, i32 %shl
  %mul = shl i32 %spec.store.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul)
  %cmp.i551 = icmp ult i32 %mul, 4097
  br i1 %cmp.i551, label %if.end8.i.i.i574, label %get_order.exit.i587

if.end8.i.i.i574:                                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #17
  %call9.i.i.i573 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #17
  br label %fib_info_hash_alloc.exit589

get_order.exit.i587:                              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i552 = add i32 %mul, -1
  %shr.i.i553 = lshr i32 %sub.i.i552, 12
  %58 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i553, i1 true) #12, !range !195
  %sub.i.i.i = sub nuw nsw i32 32, %58
  %call2.i = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %sub.i.i.i) #12
  %59 = inttoptr i32 %call2.i to ptr
  %call2.i586 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef %sub.i.i.i) #12
  %60 = inttoptr i32 %call2.i586 to ptr
  br label %fib_info_hash_alloc.exit589

fib_info_hash_alloc.exit589:                      ; preds = %get_order.exit.i587, %if.end8.i.i.i574
  %retval.0.i654 = phi ptr [ %59, %get_order.exit.i587 ], [ %call9.i.i.i, %if.end8.i.i.i574 ]
  %retval.0.i588 = phi ptr [ %60, %get_order.exit.i587 ], [ %call9.i.i.i573, %if.end8.i.i.i574 ]
  %tobool64.not = icmp eq ptr %retval.0.i654, null
  %tobool65.not = icmp eq ptr %retval.0.i588, null
  %or.cond = select i1 %tobool64.not, i1 true, i1 %tobool65.not
  br i1 %or.cond, label %if.then66, label %if.else

if.then66:                                        ; preds = %fib_info_hash_alloc.exit589
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fib_info_hash_free(ptr noundef %retval.0.i654, i32 noundef %mul)
  tail call fastcc void @fib_info_hash_free(ptr noundef %retval.0.i588, i32 noundef %mul)
  br label %if.end67

if.else:                                          ; preds = %fib_info_hash_alloc.exit589
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fib_info_hash_move(ptr noundef nonnull %retval.0.i654, ptr noundef nonnull %retval.0.i588, i32 noundef %spec.store.select)
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  %61 = load i32, ptr @fib_info_hash_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool68.not = icmp eq i32 %61, 0
  br i1 %tobool68.not, label %if.end67.if.end366_crit_edge, label %if.end67.if.end8.i.i_crit_edge

if.end67.if.end8.i.i_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end67.if.end366_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.end8.i.i:                                      ; preds = %if.end67.if.end8.i.i_crit_edge, %if.end52.if.end8.i.i_crit_edge
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nhs.1, i32 80) #12
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %spec.select.i590 = tail call i32 @llvm.uadd.sat.i32(i32 %64, i32 80) #12
  %retval.0.i591 = select i1 %63, i32 -1, i32 %spec.select.i590
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i591, i32 noundef 3520) #17
  %tobool77.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool77.not, label %if.end8.i.i.if.end366_crit_edge, label %if.end79

if.end8.i.i.if.end366_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

if.end79:                                         ; preds = %if.end8.i.i
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fib_net, align 8
  %fc_mx80 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 14
  %67 = ptrtoint ptr %fc_mx80 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fc_mx80, align 4
  %fc_mx_len = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 16
  %69 = ptrtoint ptr %fc_mx_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fc_mx_len, align 4
  %call81 = tail call ptr @ip_fib_metrics_init(ptr noundef %66, ptr noundef %68, i32 noundef %70, ptr noundef %extack) #12
  %fib_metrics = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 14
  %71 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call81, ptr %fib_metrics, align 8
  %cmp.i594 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i594, label %if.then84, label %if.end88

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup368

if.end88:                                         ; preds = %if.end79
  %72 = ptrtoint ptr %fib_net to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %1, ptr %fib_net, align 8
  %fc_protocol = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 2
  %73 = ptrtoint ptr %fc_protocol to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %fc_protocol, align 2
  %fib_protocol = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %fib_protocol, align 1
  %76 = ptrtoint ptr %fc_scope to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %fc_scope, align 1
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 9
  %78 = ptrtoint ptr %fib_scope to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %fib_scope, align 2
  %79 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fc_flags, align 4
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %fib_flags to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %fib_flags, align 4
  %fc_priority = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 11
  %82 = ptrtoint ptr %fc_priority to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fc_priority, align 4
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 13
  %84 = ptrtoint ptr %fib_priority to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %fib_priority, align 4
  %fc_prefsrc = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 12
  %85 = ptrtoint ptr %fc_prefsrc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fc_prefsrc, align 4
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 11
  %87 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %fib_prefsrc, align 4
  %88 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %fc_type, align 4
  %fib_type = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 10
  %90 = ptrtoint ptr %fib_type to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %fib_type, align 1
  %fc_table = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 6
  %91 = ptrtoint ptr %fc_table to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fc_table, align 4
  %fib_tb_id = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 12
  %93 = ptrtoint ptr %fib_tb_id to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %fib_tb_id, align 16
  %fib_nhs = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 15
  %94 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %nhs.1, ptr %fib_nhs, align 4
  %tobool93.not = icmp eq ptr %nh.0, null
  br i1 %tobool93.not, label %if.else108, label %if.then94

if.then94:                                        ; preds = %if.end88
  %call95 = tail call fastcc zeroext i1 @nexthop_get(ptr noundef nonnull %nh.0)
  br i1 %call95, label %if.end123.thread666, label %do.body97

do.body97:                                        ; preds = %if.then94
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.6) #12
  %tobool99.not = icmp eq ptr %extack, null
  br i1 %tobool99.not, label %do.body97.free_fib_info.exit_crit_edge, label %do.body97.free_fib_info.exit.sink.split_crit_edge

do.body97.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body97.free_fib_info.exit_crit_edge:           ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end123.thread666:                              ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %nh106 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 18
  %95 = ptrtoint ptr %nh106 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %nh.0, ptr %nh106, align 4
  br label %if.end127

if.else108:                                       ; preds = %if.end88
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 20
  %nh.i595 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else108
  %nhsel.0 = phi i32 [ 0, %if.else108 ], [ %inc, %for.body ]
  %nexthop_nh.0 = phi ptr [ %fib_nh, %if.else108 ], [ %incdec.ptr, %for.body ]
  %96 = ptrtoint ptr %nh.i595 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nh.i595, align 4
  %tobool.not.i = icmp eq ptr %97, null
  br i1 %tobool.not.i, label %if.end.i597, label %if.then.i596, !prof !188

if.then.i596:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %97) #12
  br label %fib_info_num_path.exit

if.end.i597:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i597, %if.then.i596
  %retval.0.i598 = phi i32 [ %call.i, %if.then.i596 ], [ %99, %if.end.i597 ]
  %cmp110 = icmp ult i32 %nhsel.0, %retval.0.i598
  br i1 %cmp110, label %for.body, label %for.end

for.body:                                         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nh_parent = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh.0, i32 0, i32 2
  %100 = ptrtoint ptr %nh_parent to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call9.i.i, ptr %nh_parent, align 4
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  br label %for.cond

for.end:                                          ; preds = %fib_info_num_path.exit
  %101 = ptrtoint ptr %fc_mp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fc_mp, align 4
  %tobool113.not = icmp eq ptr %102, null
  br i1 %tobool113.not, label %if.else118, label %if.then114

if.then114:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %fc_mp_len116 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 17
  %103 = ptrtoint ptr %fc_mp_len116 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fc_mp_len116, align 4
  %call117 = tail call fastcc i32 @fib_get_nhs(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %102, i32 noundef %104, ptr noundef %cfg, ptr noundef %extack)
  br label %if.end123

if.else118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call121 = tail call i32 @fib_nh_init(ptr noundef %1, ptr noundef %fib_nh, ptr noundef %cfg, i32 noundef 1, ptr noundef %extack)
  br label %if.end123

if.end123:                                        ; preds = %if.else118, %if.then114
  %err.0 = phi i32 [ %call117, %if.then114 ], [ %call121, %if.else118 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp124.not = icmp eq i32 %err.0, 0
  br i1 %cmp124.not, label %if.end123.if.end127_crit_edge, label %if.end123.free_fib_info.exit_crit_edge

if.end123.free_fib_info.exit_crit_edge:           ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end123.if.end127_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.end127:                                        ; preds = %if.end123.if.end127_crit_edge, %if.end123.thread666
  %105 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fc_type, align 4
  %idxprom129 = zext i8 %106 to i32
  %arrayidx130 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %idxprom129
  %107 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool131.not = icmp eq i32 %108, 0
  br i1 %tobool131.not, label %if.else150, label %if.then132

if.then132:                                       ; preds = %if.end127
  %fc_gw_family = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 5
  %109 = ptrtoint ptr %fc_gw_family to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fc_gw_family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool134.not = icmp eq i8 %110, 0
  br i1 %tobool134.not, label %lor.lhs.false135, label %if.then132.do.body141_crit_edge

if.then132.do.body141_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

lor.lhs.false135:                                 ; preds = %if.then132
  %fc_oif = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 9
  %111 = ptrtoint ptr %fc_oif to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %fc_oif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool136.not = icmp eq i32 %112, 0
  br i1 %tobool136.not, label %lor.lhs.false137, label %lor.lhs.false135.do.body141_crit_edge

lor.lhs.false135.do.body141_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

lor.lhs.false137:                                 ; preds = %lor.lhs.false135
  %113 = ptrtoint ptr %fc_mp to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fc_mp, align 4
  %tobool139.not = icmp eq ptr %114, null
  br i1 %tobool139.not, label %lor.lhs.false137.link_it_crit_edge, label %lor.lhs.false137.do.body141_crit_edge

lor.lhs.false137.do.body141_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

lor.lhs.false137.link_it_crit_edge:               ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

do.body141:                                       ; preds = %lor.lhs.false137.do.body141_crit_edge, %lor.lhs.false135.do.body141_crit_edge, %if.then132.do.body141_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.7) #12
  %tobool143.not = icmp eq ptr %extack, null
  br i1 %tobool143.not, label %do.body141.free_fib_info.exit_crit_edge, label %do.body141.free_fib_info.exit.sink.split_crit_edge

do.body141.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body141.free_fib_info.exit_crit_edge:          ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.else150:                                       ; preds = %if.end127
  %.off = add i8 %106, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.off)
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %if.end161, label %do.body153

do.body153:                                       ; preds = %if.else150
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.8) #12
  %tobool155.not = icmp eq ptr %extack, null
  br i1 %tobool155.not, label %do.body153.free_fib_info.exit_crit_edge, label %do.body153.free_fib_info.exit.sink.split_crit_edge

do.body153.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body153.free_fib_info.exit_crit_edge:          ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end161:                                        ; preds = %if.else150
  %115 = ptrtoint ptr %fc_scope to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %fc_scope, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %116)
  %cmp164 = icmp eq i8 %116, -1
  br i1 %cmp164, label %do.body167, label %if.end175

do.body167:                                       ; preds = %if.end161
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.9) #12
  %tobool169.not = icmp eq ptr %extack, null
  br i1 %tobool169.not, label %do.body167.free_fib_info.exit_crit_edge, label %do.body167.free_fib_info.exit.sink.split_crit_edge

do.body167.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body167.free_fib_info.exit_crit_edge:          ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end175:                                        ; preds = %if.end161
  %nh176 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 18
  %117 = ptrtoint ptr %nh176 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %nh176, align 4
  %tobool177.not = icmp eq ptr %118, null
  br i1 %tobool177.not, label %if.else185, label %if.then178

if.then178:                                       ; preds = %if.end175
  %call181 = tail call i32 @fib_check_nexthop(ptr noundef nonnull %118, i8 noundef zeroext %116, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then178.if.end276_crit_edge, label %if.then178.free_fib_info.exit_crit_edge

if.then178.free_fib_info.exit_crit_edge:          ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.then178.if.end276_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.else185:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %116)
  %cmp188 = icmp eq i8 %116, -2
  %fib_nh192 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 20
  br i1 %cmp188, label %if.then190, label %if.else185.for.cond237_crit_edge

if.else185.for.cond237_crit_edge:                 ; preds = %if.else185
  br label %for.cond237

if.then190:                                       ; preds = %if.else185
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nhs.1)
  %cmp194.not = icmp eq i32 %nhs.1, 1
  br i1 %cmp194.not, label %if.end205, label %do.body197

do.body197:                                       ; preds = %if.then190
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.10) #12
  %tobool199.not = icmp eq ptr %extack, null
  br i1 %tobool199.not, label %do.body197.free_fib_info.exit_crit_edge, label %do.body197.free_fib_info.exit.sink.split_crit_edge

do.body197.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body197.free_fib_info.exit_crit_edge:          ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end205:                                        ; preds = %if.then190
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %fib_nh192, i32 0, i32 5
  %119 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nhc_gw_family, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool206.not = icmp eq i8 %120, 0
  br i1 %tobool206.not, label %if.end216, label %do.body208

do.body208:                                       ; preds = %if.end205
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.11) #12
  %tobool210.not = icmp eq ptr %extack, null
  br i1 %tobool210.not, label %do.body208.free_fib_info.exit_crit_edge, label %do.body208.free_fib_info.exit.sink.split_crit_edge

do.body208.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body208.free_fib_info.exit_crit_edge:          ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end216:                                        ; preds = %if.end205
  %nhc_scope = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 1, i32 1, i32 1
  %121 = ptrtoint ptr %nhc_scope to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -1, ptr %nhc_scope, align 4
  %nhc_oif = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 1, i32 1
  %122 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nhc_oif, align 8
  %call219 = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %123) #12
  %124 = ptrtoint ptr %fib_nh192 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call219, ptr %fib_nh192, align 16
  %tobool223.not = icmp eq ptr %call219, null
  br i1 %tobool223.not, label %if.end216.free_fib_info.exit_crit_edge, label %cleanup229.thread671

if.end216.free_fib_info.exit_crit_edge:           ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

cleanup229.thread671:                             ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_dev_tracker = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 1, i32 0, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %call219, i32 0, i32 119
  %call.i599 = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %nhc_dev_tracker, i32 noundef 3264) #12
  br label %if.end276

for.cond237:                                      ; preds = %if.end250, %if.else185.for.cond237_crit_edge
  %linkdown.0 = phi i32 [ %spec.select, %if.end250 ], [ 0, %if.else185.for.cond237_crit_edge ]
  %nhsel233.0 = phi i32 [ %inc260, %if.end250 ], [ 0, %if.else185.for.cond237_crit_edge ]
  %nexthop_nh234.0 = phi ptr [ %incdec.ptr259, %if.end250 ], [ %fib_nh192, %if.else185.for.cond237_crit_edge ]
  %125 = ptrtoint ptr %nh176 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nh176, align 4
  %tobool.not.i601 = icmp eq ptr %126, null
  br i1 %tobool.not.i601, label %if.end.i605, label %if.then.i603, !prof !188

if.then.i603:                                     ; preds = %for.cond237
  call void @__sanitizer_cov_trace_pc() #14
  %call.i602 = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %126) #12
  br label %fib_info_num_path.exit607

if.end.i605:                                      ; preds = %for.cond237
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit607

fib_info_num_path.exit607:                        ; preds = %if.end.i605, %if.then.i603
  %retval.0.i606 = phi i32 [ %call.i602, %if.then.i603 ], [ %128, %if.end.i605 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel233.0, i32 %retval.0.i606)
  %cmp239 = icmp ult i32 %nhsel233.0, %retval.0.i606
  br i1 %cmp239, label %for.body241, label %cleanup.cont265

for.body241:                                      ; preds = %fib_info_num_path.exit607
  %129 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nl_net, align 4
  %131 = ptrtoint ptr %fc_table to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %fc_table, align 4
  %133 = ptrtoint ptr %fc_scope to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %fc_scope, align 1
  %call246 = tail call i32 @fib_check_nh(ptr noundef %130, ptr noundef %nexthop_nh234.0, i32 noundef %132, i8 noundef zeroext %134, ptr noundef %extack)
  %cmp247.not = icmp eq i32 %call246, 0
  br i1 %cmp247.not, label %if.end250, label %for.body241.free_fib_info.exit_crit_edge

for.body241.free_fib_info.exit_crit_edge:         ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end250:                                        ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh234.0, i32 0, i32 6
  %135 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %nhc_flags, align 1
  %137 = lshr i8 %136, 4
  %.lobit = and i8 %137, 1
  %138 = zext i8 %.lobit to i32
  %spec.select = add i32 %linkdown.0, %138
  %incdec.ptr259 = getelementptr %struct.fib_nh, ptr %nexthop_nh234.0, i32 1
  %inc260 = add nuw i32 %nhsel233.0, 1
  br label %for.cond237

cleanup.cont265:                                  ; preds = %fib_info_num_path.exit607
  %139 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %linkdown.0, i32 %140)
  %cmp267 = icmp eq i32 %linkdown.0, %140
  br i1 %cmp267, label %if.then269, label %cleanup.cont265.if.end276_crit_edge

cleanup.cont265.if.end276_crit_edge:              ; preds = %cleanup.cont265
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then269:                                       ; preds = %cleanup.cont265
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %fib_flags, align 4
  %or = or i32 %142, 16
  store i32 %or, ptr %fib_flags, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then269, %cleanup.cont265.if.end276_crit_edge, %cleanup229.thread671, %if.then178.if.end276_crit_edge
  %143 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool278.not = icmp eq i32 %144, 0
  br i1 %tobool278.not, label %if.end276.if.end290_crit_edge, label %land.lhs.true

if.end276.if.end290_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end290

land.lhs.true:                                    ; preds = %if.end276
  %call280 = tail call fastcc zeroext i1 @fib_valid_prefsrc(ptr noundef %cfg, i32 noundef %144)
  br i1 %call280, label %land.lhs.true.if.end290_crit_edge, label %do.body282

land.lhs.true.if.end290_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end290

do.body282:                                       ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.12) #12
  %tobool284.not = icmp eq ptr %extack, null
  br i1 %tobool284.not, label %do.body282.free_fib_info.exit_crit_edge, label %do.body282.free_fib_info.exit.sink.split_crit_edge

do.body282.free_fib_info.exit.sink.split_crit_edge: ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit.sink.split

do.body282.free_fib_info.exit_crit_edge:          ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_fib_info.exit

if.end290:                                        ; preds = %land.lhs.true.if.end290_crit_edge, %if.end276.if.end290_crit_edge
  %145 = ptrtoint ptr %nh176 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %nh176, align 4
  %tobool292.not = icmp eq ptr %146, null
  br i1 %tobool292.not, label %if.then293, label %if.end290.link_it_crit_edge

if.end290.link_it_crit_edge:                      ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

if.then293:                                       ; preds = %if.end290
  %fib_nh296 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 20
  %fib_nh_is_v6 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 16
  br label %for.cond298

for.cond298:                                      ; preds = %for.inc313, %if.then293
  %147 = phi ptr [ %.pr, %for.inc313 ], [ null, %if.then293 ]
  %nhsel294.0 = phi i32 [ %inc315, %for.inc313 ], [ 0, %if.then293 ]
  %nexthop_nh295.0 = phi ptr [ %incdec.ptr314, %for.inc313 ], [ %fib_nh296, %if.then293 ]
  %tobool.not.i609 = icmp eq ptr %147, null
  br i1 %tobool.not.i609, label %if.end.i613, label %if.then.i611, !prof !188

if.then.i611:                                     ; preds = %for.cond298
  call void @__sanitizer_cov_trace_pc() #14
  %call.i610 = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %147) #12
  br label %fib_info_num_path.exit615

if.end.i613:                                      ; preds = %for.cond298
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit615

fib_info_num_path.exit615:                        ; preds = %if.end.i613, %if.then.i611
  %retval.0.i614 = phi i32 [ %call.i610, %if.then.i611 ], [ %149, %if.end.i613 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel294.0, i32 %retval.0.i614)
  %cmp300 = icmp ult i32 %nhsel294.0, %retval.0.i614
  br i1 %cmp300, label %for.body302, label %for.end316

for.body302:                                      ; preds = %fib_info_num_path.exit615
  %150 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %fib_scope, align 2
  %call305 = tail call i32 @fib_info_update_nhc_saddr(ptr noundef %1, ptr noundef %nexthop_nh295.0, i8 noundef zeroext %151)
  %nhc_gw_family307 = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh295.0, i32 0, i32 5
  %152 = ptrtoint ptr %nhc_gw_family307 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nhc_gw_family307, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %153)
  %cmp309 = icmp eq i8 %153, 10
  br i1 %cmp309, label %if.then311, label %for.body302.for.inc313_crit_edge

for.body302.for.inc313_crit_edge:                 ; preds = %for.body302
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc313

if.then311:                                       ; preds = %for.body302
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %fib_nh_is_v6 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %fib_nh_is_v6, align 64
  br label %for.inc313

for.inc313:                                       ; preds = %if.then311, %for.body302.for.inc313_crit_edge
  %incdec.ptr314 = getelementptr %struct.fib_nh, ptr %nexthop_nh295.0, i32 1
  %inc315 = add nuw i32 %nhsel294.0, 1
  %155 = ptrtoint ptr %nh176 to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr = load ptr, ptr %nh176, align 4
  br label %for.cond298

for.end316:                                       ; preds = %fib_info_num_path.exit615
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fib_rebalance(ptr noundef nonnull %call9.i.i)
  br label %link_it

link_it:                                          ; preds = %for.end316, %if.end290.link_it_crit_edge, %lor.lhs.false137.link_it_crit_edge
  %call318 = tail call fastcc ptr @fib_find_info(ptr noundef nonnull %call9.i.i)
  %tobool319.not = icmp eq ptr %call318, null
  br i1 %tobool319.not, label %if.end322, label %if.then320

if.then320:                                       ; preds = %link_it
  call void @__sanitizer_cov_trace_pc() #14
  %fib_dead = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 7
  %156 = ptrtoint ptr %fib_dead to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %fib_dead, align 8
  tail call void @free_fib_info(ptr noundef nonnull %call9.i.i)
  %fib_treeref321 = getelementptr inbounds %struct.fib_info, ptr %call318, i32 0, i32 4
  tail call fastcc void @refcount_inc(ptr noundef %fib_treeref321)
  br label %cleanup368

if.end322:                                        ; preds = %link_it
  %fib_treeref323 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_treeref323, i32 noundef 4) #12
  %157 = ptrtoint ptr %fib_treeref323 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile i32 1, ptr %fib_treeref323, align 4
  %fib_clntref = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 5
  %call.i.i.i616 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #12
  %158 = ptrtoint ptr %fib_clntref to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 1, ptr %fib_clntref, align 32
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #12
  %159 = load i32, ptr @fib_info_cnt, align 4
  %inc324 = add i32 %159, 1
  store i32 %inc324, ptr @fib_info_cnt, align 4
  %160 = load ptr, ptr @fib_info_hash, align 4
  %call325 = tail call fastcc i32 @fib_info_hashfn(ptr noundef nonnull %call9.i.i)
  %arrayidx326 = getelementptr %struct.hlist_head, ptr %160, i32 %call325
  %161 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx326, align 4
  %163 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %162, ptr %call9.i.i, align 128
  %tobool.not.i617 = icmp eq ptr %162, null
  br i1 %tobool.not.i617, label %if.end322.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end322.hlist_add_head.exit_crit_edge:          ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %162, i32 0, i32 1
  %164 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %call9.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end322.hlist_add_head.exit_crit_edge
  %165 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %call9.i.i, ptr %arrayidx326, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call9.i.i, i32 0, i32 1
  %166 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %arrayidx326, ptr %pprev34.i, align 4
  %167 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool328.not = icmp eq i32 %168, 0
  br i1 %tobool328.not, label %hlist_add_head.exit.if.end332_crit_edge, label %if.then329

hlist_add_head.exit.if.end332_crit_edge:          ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end332

if.then329:                                       ; preds = %hlist_add_head.exit
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 26
  %169 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i618 = xor i32 %170, %168
  %171 = load i32, ptr @fib_info_hash_bits, align 4
  %mul.i.i.i = mul i32 %xor.i618, 1640531527
  %sub.i.i619 = sub i32 32, %171
  %shr.i.i620 = lshr i32 %mul.i.i.i, %sub.i.i619
  %172 = load ptr, ptr @fib_info_laddrhash, align 4
  %arrayidx.i621 = getelementptr %struct.hlist_head, ptr %172, i32 %shr.i.i620
  %fib_lhash = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %arrayidx.i621 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i621, align 4
  %175 = ptrtoint ptr %fib_lhash to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %174, ptr %fib_lhash, align 8
  %tobool.not.i622 = icmp eq ptr %174, null
  br i1 %tobool.not.i622, label %if.then329.hlist_add_head.exit626_crit_edge, label %do.body12.i624

if.then329.hlist_add_head.exit626_crit_edge:      ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit626

do.body12.i624:                                   ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i623 = getelementptr inbounds %struct.hlist_node, ptr %174, i32 0, i32 1
  %176 = ptrtoint ptr %pprev.i623 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %fib_lhash, ptr %pprev.i623, align 4
  br label %hlist_add_head.exit626

hlist_add_head.exit626:                           ; preds = %do.body12.i624, %if.then329.hlist_add_head.exit626_crit_edge
  %177 = ptrtoint ptr %arrayidx.i621 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %fib_lhash, ptr %arrayidx.i621, align 4
  %pprev34.i625 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %pprev34.i625 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %arrayidx.i621, ptr %pprev34.i625, align 4
  br label %if.end332

if.end332:                                        ; preds = %hlist_add_head.exit626, %hlist_add_head.exit.if.end332_crit_edge
  %nh333 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 18
  %179 = ptrtoint ptr %nh333 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %nh333, align 4
  %tobool334.not = icmp eq ptr %180, null
  br i1 %tobool334.not, label %if.else336, label %if.then335

if.then335:                                       ; preds = %if.end332
  %nh_list = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 2
  %fi_list = getelementptr inbounds %struct.nexthop, ptr %nh.0, i32 0, i32 1
  %181 = ptrtoint ptr %fi_list to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %fi_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nh_list, ptr noundef %fi_list, ptr noundef %182) #12
  br i1 %call.i.i, label %if.end.i.i627, label %if.then335.if.end362_crit_edge

if.then335.if.end362_crit_edge:                   ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end362

if.end.i.i627:                                    ; preds = %if.then335
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %nh_list, ptr %prev1.i.i, align 4
  %184 = ptrtoint ptr %nh_list to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %182, ptr %nh_list, align 16
  %prev3.i.i = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 2, i32 1
  %185 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %fi_list, ptr %prev3.i.i, align 4
  %186 = ptrtoint ptr %fi_list to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %nh_list, ptr %fi_list, align 4
  br label %if.end362

if.else336:                                       ; preds = %if.end332
  %fib_nh339 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 20
  br label %for.cond341

for.cond341:                                      ; preds = %cleanup355, %if.else336
  %187 = phi ptr [ %.pr679, %cleanup355 ], [ null, %if.else336 ]
  %nhsel337.0 = phi i32 [ %inc360, %cleanup355 ], [ 0, %if.else336 ]
  %nexthop_nh338.0 = phi ptr [ %incdec.ptr359, %cleanup355 ], [ %fib_nh339, %if.else336 ]
  %tobool.not.i629 = icmp eq ptr %187, null
  br i1 %tobool.not.i629, label %if.end.i633, label %if.then.i631, !prof !188

if.then.i631:                                     ; preds = %for.cond341
  call void @__sanitizer_cov_trace_pc() #14
  %call.i630 = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %187) #12
  br label %fib_info_num_path.exit635

if.end.i633:                                      ; preds = %for.cond341
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit635

fib_info_num_path.exit635:                        ; preds = %if.end.i633, %if.then.i631
  %retval.0.i634 = phi i32 [ %call.i630, %if.then.i631 ], [ %189, %if.end.i633 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel337.0, i32 %retval.0.i634)
  %cmp343 = icmp ult i32 %nhsel337.0, %retval.0.i634
  br i1 %cmp343, label %for.body345, label %fib_info_num_path.exit635.if.end362_crit_edge

fib_info_num_path.exit635.if.end362_crit_edge:    ; preds = %fib_info_num_path.exit635
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end362

for.body345:                                      ; preds = %fib_info_num_path.exit635
  %190 = ptrtoint ptr %nexthop_nh338.0 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %nexthop_nh338.0, align 4
  %tobool349.not = icmp eq ptr %191, null
  br i1 %tobool349.not, label %for.body345.cleanup355_crit_edge, label %if.end351

for.body345.cleanup355_crit_edge:                 ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup355

if.end351:                                        ; preds = %for.body345
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %191, i32 0, i32 127
  %192 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i636 = getelementptr inbounds %struct.net, ptr %193, i32 0, i32 26
  %194 = ptrtoint ptr %hash_mix.i.i636 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %hash_mix.i.i636, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %191, i32 0, i32 17
  %196 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ifindex.i, align 4
  %xor.i637 = xor i32 %197, %195
  %mul.i.i.i.i638 = mul i32 %xor.i637, 1640531527
  %shr.i.i.i639 = lshr i32 %mul.i.i.i.i638, 24
  %arrayidx.i640 = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %shr.i.i.i639
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh338.0, i32 0, i32 1
  %198 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i640, align 4
  %200 = ptrtoint ptr %nh_hash to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %199, ptr %nh_hash, align 4
  %tobool.not.i641 = icmp eq ptr %199, null
  br i1 %tobool.not.i641, label %if.end351.hlist_add_head.exit645_crit_edge, label %do.body12.i643

if.end351.hlist_add_head.exit645_crit_edge:       ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit645

do.body12.i643:                                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i642 = getelementptr inbounds %struct.hlist_node, ptr %199, i32 0, i32 1
  %201 = ptrtoint ptr %pprev.i642 to i32
  call void @__asan_store4_noabort(i32 %201)
  store volatile ptr %nh_hash, ptr %pprev.i642, align 4
  br label %hlist_add_head.exit645

hlist_add_head.exit645:                           ; preds = %do.body12.i643, %if.end351.hlist_add_head.exit645_crit_edge
  %202 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %nh_hash, ptr %arrayidx.i640, align 4
  %pprev34.i644 = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh338.0, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %pprev34.i644 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %arrayidx.i640, ptr %pprev34.i644, align 4
  br label %cleanup355

cleanup355:                                       ; preds = %hlist_add_head.exit645, %for.body345.cleanup355_crit_edge
  %incdec.ptr359 = getelementptr %struct.fib_nh, ptr %nexthop_nh338.0, i32 1
  %inc360 = add nuw i32 %nhsel337.0, 1
  %204 = ptrtoint ptr %nh333 to i32
  call void @__asan_load4_noabort(i32 %204)
  %.pr679 = load ptr, ptr %nh333, align 4
  br label %for.cond341

if.end362:                                        ; preds = %fib_info_num_path.exit635.if.end362_crit_edge, %if.end.i.i627, %if.then335.if.end362_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #12
  br label %cleanup368

free_fib_info.exit.sink.split:                    ; preds = %do.body282.free_fib_info.exit.sink.split_crit_edge, %do.body208.free_fib_info.exit.sink.split_crit_edge, %do.body197.free_fib_info.exit.sink.split_crit_edge, %do.body167.free_fib_info.exit.sink.split_crit_edge, %do.body153.free_fib_info.exit.sink.split_crit_edge, %do.body141.free_fib_info.exit.sink.split_crit_edge, %do.body97.free_fib_info.exit.sink.split_crit_edge
  %fib_create_info.__msg.12.sink = phi ptr [ @fib_create_info.__msg.6, %do.body97.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.7, %do.body141.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.8, %do.body153.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.9, %do.body167.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.10, %do.body197.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.11, %do.body208.free_fib_info.exit.sink.split_crit_edge ], [ @fib_create_info.__msg.12, %do.body282.free_fib_info.exit.sink.split_crit_edge ]
  %205 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %fib_create_info.__msg.12.sink, ptr %extack, align 4
  br label %free_fib_info.exit

free_fib_info.exit:                               ; preds = %free_fib_info.exit.sink.split, %do.body282.free_fib_info.exit_crit_edge, %for.body241.free_fib_info.exit_crit_edge, %if.end216.free_fib_info.exit_crit_edge, %do.body208.free_fib_info.exit_crit_edge, %do.body197.free_fib_info.exit_crit_edge, %if.then178.free_fib_info.exit_crit_edge, %do.body167.free_fib_info.exit_crit_edge, %do.body153.free_fib_info.exit_crit_edge, %do.body141.free_fib_info.exit_crit_edge, %if.end123.free_fib_info.exit_crit_edge, %do.body97.free_fib_info.exit_crit_edge
  %err.4689 = phi i32 [ -22, %do.body97.free_fib_info.exit_crit_edge ], [ %err.0, %if.end123.free_fib_info.exit_crit_edge ], [ %call181, %if.then178.free_fib_info.exit_crit_edge ], [ -19, %if.end216.free_fib_info.exit_crit_edge ], [ -22, %do.body282.free_fib_info.exit_crit_edge ], [ -22, %do.body167.free_fib_info.exit_crit_edge ], [ -22, %do.body153.free_fib_info.exit_crit_edge ], [ -22, %do.body141.free_fib_info.exit_crit_edge ], [ -22, %do.body197.free_fib_info.exit_crit_edge ], [ -22, %do.body208.free_fib_info.exit_crit_edge ], [ -22, %free_fib_info.exit.sink.split ], [ %call246, %for.body241.free_fib_info.exit_crit_edge ]
  %fib_dead365 = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 7
  %206 = ptrtoint ptr %fib_dead365 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %fib_dead365, align 8
  %rcu.i = getelementptr inbounds %struct.fib_info, ptr %call9.i.i, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @free_fib_info_rcu) #12
  br label %if.end366

if.end366:                                        ; preds = %free_fib_info.exit, %if.end8.i.i.if.end366_crit_edge, %if.end67.if.end366_crit_edge, %fib_count_nexthops.exit.if.end366_crit_edge, %if.then3.i, %do.body.i.if.end366_crit_edge, %while.end.i.thread.if.end366_crit_edge, %if.then37, %do.body34.if.end366_crit_edge, %if.then16, %do.body13.if.end366_crit_edge, %if.then8, %do.body.if.end366_crit_edge, %entry.if.end366_crit_edge
  %err.4683 = phi i32 [ %err.4689, %free_fib_info.exit ], [ -22, %entry.if.end366_crit_edge ], [ -22, %fib_count_nexthops.exit.if.end366_crit_edge ], [ -22, %if.then8 ], [ -22, %do.body.if.end366_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body13.if.end366_crit_edge ], [ -22, %if.then37 ], [ -22, %do.body34.if.end366_crit_edge ], [ -105, %if.end8.i.i.if.end366_crit_edge ], [ -105, %if.end67.if.end366_crit_edge ], [ -22, %if.then3.i ], [ -22, %do.body.i.if.end366_crit_edge ], [ -22, %while.end.i.thread.if.end366_crit_edge ]
  %207 = inttoptr i32 %err.4683 to ptr
  br label %cleanup368

cleanup368:                                       ; preds = %if.end366, %if.end362, %if.then320, %if.then84, %if.then27
  %retval.0 = phi ptr [ %207, %if.end366 ], [ %call81, %if.then84 ], [ %call318, %if.then320 ], [ %call9.i.i, %if.end362 ], [ %fi.088.i, %if.then27 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !196
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !180

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !188

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #12
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nexthop_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_info_hash_free(ptr noundef %hash, i32 noundef %bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %bytes)
  %cmp = icmp ult i32 %bytes, 4097
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %hash) #12
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %hash to i32
  %sub.i = add i32 %bytes, -1
  %shr.i = lshr i32 %sub.i, 12
  %1 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #12, !range !195
  %sub.i.i = sub nuw nsw i32 32, %1
  tail call void @free_pages(i32 noundef %0, i32 noundef %sub.i.i) #12
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_info_hash_move(ptr noundef %new_info_hash, ptr noundef %new_laddrhash, i32 noundef %new_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fib_info_hash_size, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fib_info_lock) #12
  %1 = load ptr, ptr @fib_info_hash, align 4
  %2 = load ptr, ptr @fib_info_laddrhash, align 4
  store i32 %new_size, ptr @fib_info_hash_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_size)
  %tobool.not.i.i = icmp eq i32 %new_size, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %new_size, i1 true) #12, !range !195
  %sub.i.op.i = xor i32 %3, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  store i32 %sub.i, ptr @fib_info_hash_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5134.not = icmp eq i32 %0, 0
  br i1 %cmp5134.not, label %for.end31.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end31.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %new_info_hash, ptr @fib_info_hash, align 4
  store ptr %new_laddrhash, ptr @fib_info_laddrhash, align 4
  br label %for.end74

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = load ptr, ptr @fib_info_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %i.0135
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool13.not132 = icmp eq ptr %6, null
  br i1 %tobool13.not132, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %hlist_add_head.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %fi.0133 = phi ptr [ %8, %hlist_add_head.exit.land.rhs_crit_edge ], [ %6, %for.body.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %fi.0133 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fi.0133, align 4
  %call17 = tail call fastcc i32 @fib_info_hashfn(ptr noundef nonnull %fi.0133)
  %arrayidx18 = getelementptr %struct.hlist_head, ptr %new_info_hash, i32 %call17
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18, align 4
  %11 = ptrtoint ptr %fi.0133 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %fi.0133, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.rhs.hlist_add_head.exit_crit_edge, label %do.body12.i

land.rhs.hlist_add_head.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %fi.0133, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %land.rhs.hlist_add_head.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %fi.0133, ptr %arrayidx18, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %fi.0133, i32 0, i32 1
  %14 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx18, ptr %pprev34.i, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %hlist_add_head.exit.for.end_crit_edge, label %hlist_add_head.exit.land.rhs_crit_edge

hlist_add_head.exit.land.rhs_crit_edge:           ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

hlist_add_head.exit.for.end_crit_edge:            ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %hlist_add_head.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end31, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end31:                                        ; preds = %for.end
  store ptr %new_info_hash, ptr @fib_info_hash, align 4
  store ptr %new_laddrhash, ptr @fib_info_laddrhash, align 4
  br i1 %cmp5134.not, label %for.end31.for.end74_crit_edge, label %for.end31.for.body35_crit_edge

for.end31.for.body35_crit_edge:                   ; preds = %for.end31
  br label %for.body35

for.end31.for.end74_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74

for.body35:                                       ; preds = %for.end71.for.body35_crit_edge, %for.end31.for.body35_crit_edge
  %i.1139 = phi i32 [ %inc73, %for.end71.for.body35_crit_edge ], [ 0, %for.end31.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.hlist_head, ptr %2, i32 %i.1139
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx36, align 4
  %tobool42.not = icmp eq ptr %16, null
  %add.ptr46 = getelementptr i8, ptr %16, i32 -8
  %tobool51.not136140 = icmp eq ptr %add.ptr46, null
  %tobool51.not136 = or i1 %tobool42.not, %tobool51.not136140
  br i1 %tobool51.not136, label %for.body35.for.end71_crit_edge, label %land.rhs52.lr.ph

for.body35.for.end71_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

land.rhs52.lr.ph:                                 ; preds = %for.body35
  %17 = load i32, ptr @fib_info_hash_bits, align 4
  %sub.i.i = sub i32 32, %17
  br label %land.rhs52

land.rhs52:                                       ; preds = %hlist_add_head.exit109.land.rhs52_crit_edge, %land.rhs52.lr.ph
  %fi38.0137 = phi ptr [ %add.ptr46, %land.rhs52.lr.ph ], [ %add.ptr67, %hlist_add_head.exit109.land.rhs52_crit_edge ]
  %fib_lhash = getelementptr inbounds %struct.fib_info, ptr %fi38.0137, i32 0, i32 1
  %18 = ptrtoint ptr %fib_lhash to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fib_lhash, align 4
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %fi38.0137, i32 0, i32 3
  %20 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fib_net, align 4
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %fi38.0137, i32 0, i32 11
  %22 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fib_prefsrc, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 26
  %24 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i = xor i32 %25, %23
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %new_laddrhash, i32 %shr.i.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  store volatile ptr %27, ptr %fib_lhash, align 4
  %tobool.not.i105 = icmp eq ptr %27, null
  br i1 %tobool.not.i105, label %land.rhs52.hlist_add_head.exit109_crit_edge, label %do.body12.i107

land.rhs52.hlist_add_head.exit109_crit_edge:      ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit109

do.body12.i107:                                   ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i106 = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i106 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %fib_lhash, ptr %pprev.i106, align 4
  br label %hlist_add_head.exit109

hlist_add_head.exit109:                           ; preds = %do.body12.i107, %land.rhs52.hlist_add_head.exit109_crit_edge
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %fib_lhash, ptr %arrayidx.i, align 4
  %pprev34.i108 = getelementptr inbounds %struct.fib_info, ptr %fi38.0137, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %pprev34.i108 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx.i, ptr %pprev34.i108, align 4
  %tobool63.not = icmp eq ptr %19, null
  %add.ptr67 = getelementptr i8, ptr %19, i32 -8
  %tobool51.not145 = icmp eq ptr %add.ptr67, null
  %tobool51.not = or i1 %tobool63.not, %tobool51.not145
  br i1 %tobool51.not, label %hlist_add_head.exit109.for.end71_crit_edge, label %hlist_add_head.exit109.land.rhs52_crit_edge

hlist_add_head.exit109.land.rhs52_crit_edge:      ; preds = %hlist_add_head.exit109
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs52

hlist_add_head.exit109.for.end71_crit_edge:       ; preds = %hlist_add_head.exit109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end71

for.end71:                                        ; preds = %hlist_add_head.exit109.for.end71_crit_edge, %for.body35.for.end71_crit_edge
  %inc73 = add nuw i32 %i.1139, 1
  %exitcond141.not = icmp eq i32 %inc73, %0
  br i1 %exitcond141.not, label %for.end71.for.end74_crit_edge, label %for.end71.for.body35_crit_edge

for.end71.for.body35_crit_edge:                   ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body35

for.end71.for.end74_crit_edge:                    ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74

for.end74:                                        ; preds = %for.end71.for.end74_crit_edge, %for.end31.for.end74_crit_edge, %for.end31.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fib_info_lock) #12
  %mul = shl i32 %0, 2
  %tobool.not.i110 = icmp eq ptr %1, null
  br i1 %tobool.not.i110, label %for.end74.fib_info_hash_free.exit_crit_edge, label %if.end.i

for.end74.fib_info_hash_free.exit_crit_edge:      ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_hash_free.exit

if.end.i:                                         ; preds = %for.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul)
  %cmp.i = icmp ult i32 %mul, 4097
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %fib_info_hash_free.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %1 to i32
  %sub.i.i111 = add i32 %mul, -1
  %shr.i.i112 = lshr i32 %sub.i.i111, 12
  %32 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i112, i1 true) #12, !range !195
  %sub.i.i.i = sub nuw nsw i32 32, %32
  tail call void @free_pages(i32 noundef %31, i32 noundef %sub.i.i.i) #12
  br label %fib_info_hash_free.exit

fib_info_hash_free.exit:                          ; preds = %if.else.i, %if.then1.i, %for.end74.fib_info_hash_free.exit_crit_edge
  %tobool.not.i113 = icmp eq ptr %2, null
  br i1 %tobool.not.i113, label %fib_info_hash_free.exit.fib_info_hash_free.exit129_crit_edge, label %if.end.i115

fib_info_hash_free.exit.fib_info_hash_free.exit129_crit_edge: ; preds = %fib_info_hash_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_hash_free.exit129

if.end.i115:                                      ; preds = %fib_info_hash_free.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul)
  %cmp.i114 = icmp ult i32 %mul, 4097
  br i1 %cmp.i114, label %if.then1.i116, label %if.else.i118

if.then1.i116:                                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %2) #12
  br label %fib_info_hash_free.exit129

if.else.i118:                                     ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %2 to i32
  %sub.i.i117 = add i32 %mul, -1
  %shr.i.i124 = lshr i32 %sub.i.i117, 12
  %34 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i124, i1 true) #12, !range !195
  %sub.i.i.i125 = sub nuw nsw i32 32, %34
  tail call void @free_pages(i32 noundef %33, i32 noundef %sub.i.i.i125) #12
  br label %fib_info_hash_free.exit129

fib_info_hash_free.exit129:                       ; preds = %if.else.i118, %if.then1.i116, %fib_info_hash_free.exit.fib_info_hash_free.exit129_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_fib_metrics_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nexthop_get(ptr noundef %nh) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %refcnt = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #12, !srcloc !197
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !188

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !188

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  ret i1 %tobool12.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_get_nhs(ptr nocapture noundef %fi, ptr noundef %rtnh, i32 noundef %remaining, ptr nocapture noundef readonly %cfg, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %fib_cfg = alloca %struct.fib_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 3
  %0 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib_net, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %fib_cfg) #12
  %2 = call ptr @memset(ptr %fib_cfg, i32 255, i32 100)
  %fib_nh = getelementptr %struct.fib_info, ptr %fi, i32 0, i32 20
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  %fc_flags = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 10
  %fc_flags19 = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 10
  %fc_oif = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 9
  %3 = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 8
  %fc_gw_family = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 5
  %fc_flow = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 18
  %fc_encap = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 21
  %fc_encap_type = getelementptr inbounds %struct.fib_config, ptr %fib_cfg, i32 0, i32 22
  %fib_num_tclassid_users.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %remaining.addr.0 = phi i32 [ %remaining, %entry ], [ %sub1.i, %for.inc ]
  %rtnh.addr.0 = phi ptr [ %rtnh, %entry ], [ %add.ptr.i251, %for.inc ]
  %nhsel.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %nexthop_nh.0 = phi ptr [ %fib_nh, %entry ], [ %incdec.ptr, %for.inc ]
  %4 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call fastcc i32 @nexthop_num_path(ptr noundef nonnull %5) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp, label %for.body, label %cleanup.cont95

for.body:                                         ; preds = %fib_info_num_path.exit
  %8 = call ptr @memset(ptr %fib_cfg, i32 0, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %remaining.addr.0)
  %cmp.i = icmp sgt i32 %remaining.addr.0, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.lhs.true.i:                                  ; preds = %for.body
  %9 = ptrtoint ptr %rtnh.addr.0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rtnh.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %10)
  %cmp1.i = icmp ult i16 %10, 8
  %conv.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.addr.0, i32 %conv.i)
  %cmp5.i.not = icmp ult i32 %remaining.addr.0, %conv.i
  %or.cond281 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond281, label %land.lhs.true.i.do.body_crit_edge, label %if.end4

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.i.do.body_crit_edge, %for.body.do.body_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup167_crit_edge, label %do.body.cleanup167.sink.split_crit_edge

do.body.cleanup167.sink.split_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body.cleanup167_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end4:                                          ; preds = %land.lhs.true.i
  %rtnh_flags = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.addr.0, i32 0, i32 1
  %11 = ptrtoint ptr %rtnh_flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtnh_flags, align 2
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end15, label %do.body7

do.body7:                                         ; preds = %if.end4
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.30) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup167_crit_edge, label %do.body7.cleanup167.sink.split_crit_edge

do.body7.cleanup167.sink.split_crit_edge:         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body7.cleanup167_crit_edge:                    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end15:                                         ; preds = %if.end4
  %13 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fc_flags, align 4
  %and16 = and i32 %14, -256
  %or = or i32 %and16, %conv
  %15 = ptrtoint ptr %fc_flags19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %fc_flags19, align 4
  %rtnh_ifindex = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.addr.0, i32 0, i32 3
  %16 = ptrtoint ptr %rtnh_ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rtnh_ifindex, align 4
  %18 = ptrtoint ptr %fc_oif to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fc_oif, align 4
  %19 = ptrtoint ptr %rtnh.addr.0 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rtnh.addr.0, align 4
  %conv.i239 = zext i16 %20 to i32
  %sub.i = add nsw i32 %conv.i239, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %20)
  %cmp21 = icmp ugt i16 %20, 8
  br i1 %cmp21, label %if.then23, label %if.end15.if.end82_crit_edge

if.end15.if.end82_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then23:                                        ; preds = %if.end15
  %add.ptr.i = getelementptr i8, ptr %rtnh.addr.0, i32 8
  %call25 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 5) #12
  %call26 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 18) #12
  %tobool27.not = icmp eq ptr %call25, null
  %tobool28.not = icmp eq ptr %call26, null
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end38, label %do.body30

do.body30:                                        ; preds = %if.then23
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.31) #12
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.cleanup167_crit_edge, label %do.body30.cleanup167.sink.split_crit_edge

do.body30.cleanup167.sink.split_crit_edge:        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body30.cleanup167_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end38:                                         ; preds = %if.then23
  br i1 %tobool27.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  %21 = ptrtoint ptr %call25 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %call25, align 2
  %23 = and i16 %22, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %23)
  %cmp.i240 = icmp eq i16 %23, 4
  br i1 %cmp.i240, label %do.body.i, label %if.end44

do.body.i:                                        ; preds = %if.then40
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_gw_from_attr.__msg) #12
  %tobool.not.i241 = icmp eq ptr %extack, null
  br i1 %tobool.not.i241, label %do.body.i.cleanup167_crit_edge, label %do.body.i.cleanup167.sink.split_crit_edge

do.body.i.cleanup167.sink.split_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body.i.cleanup167_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end44:                                         ; preds = %if.then40
  %add.ptr.i.i.i = getelementptr i8, ptr %call25, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool45.not = icmp eq i32 %25, 0
  br i1 %tobool45.not, label %if.end44.if.end55_crit_edge, label %if.then46

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %fc_gw_family to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %fc_gw_family, align 1
  br label %if.end55

if.else:                                          ; preds = %if.end38
  br i1 %tobool28.not, label %if.else.if.end55_crit_edge, label %if.then49

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then49:                                        ; preds = %if.else
  %call50 = call i32 @fib_gw_from_via(ptr noundef nonnull %fib_cfg, ptr noundef nonnull %call26, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end55_crit_edge, label %if.then49.cleanup167_crit_edge

if.then49.cleanup167_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.then46, %if.end44.if.end55_crit_edge
  %call56 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 11) #12
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.if.end73_crit_edge, label %if.then58

if.end55.if.end73_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then58:                                        ; preds = %if.end55
  %28 = ptrtoint ptr %call56 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call56, align 2
  %30 = and i16 %29, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %30)
  %cmp60 = icmp eq i16 %30, 4
  br i1 %cmp60, label %do.body63, label %if.end71

do.body63:                                        ; preds = %if.then58
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.32) #12
  %tobool65.not = icmp eq ptr %extack, null
  br i1 %tobool65.not, label %do.body63.cleanup167_crit_edge, label %do.body63.cleanup167.sink.split_crit_edge

do.body63.cleanup167.sink.split_crit_edge:        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body63.cleanup167_crit_edge:                   ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end71:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %call56, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i, align 4
  %33 = ptrtoint ptr %fc_flow to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %fc_flow, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %if.end55.if.end73_crit_edge
  %call74 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 22) #12
  %34 = ptrtoint ptr %fc_encap to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call74, ptr %fc_encap, align 4
  %call75 = call ptr @nla_find(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 21) #12
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end73.if.end82_crit_edge, label %if.then77

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i245 = getelementptr i8, ptr %call75, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i245 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i245, align 2
  %37 = ptrtoint ptr %fc_encap_type to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %fc_encap_type, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end73.if.end82_crit_edge, %if.end15.if.end82_crit_edge
  %rtnh_hops = getelementptr inbounds %struct.rtnexthop, ptr %rtnh.addr.0, i32 0, i32 2
  %38 = ptrtoint ptr %rtnh_hops to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rtnh_hops, align 1
  %conv83 = zext i8 %39 to i32
  %add = add nuw nsw i32 %conv83, 1
  %nhc_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 4
  %40 = ptrtoint ptr %nhc_family.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %nhc_family.i, align 1
  %41 = ptrtoint ptr %fc_encap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fc_encap, align 4
  %43 = ptrtoint ptr %fc_encap_type to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %fc_encap_type, align 4
  %call.i246 = call i32 @fib_nh_common_init(ptr noundef %1, ptr noundef %nexthop_nh.0, ptr noundef %42, i16 noundef zeroext %44, ptr noundef nonnull %fib_cfg, i32 noundef 3264, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i247, label %if.end.i248, label %if.end82.cleanup167_crit_edge

if.end82.cleanup167_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end.i248:                                      ; preds = %if.end82
  %45 = ptrtoint ptr %fc_oif to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fc_oif, align 4
  %nhc_oif.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 2
  %47 = ptrtoint ptr %nhc_oif.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %nhc_oif.i, align 4
  %48 = ptrtoint ptr %fc_gw_family to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fc_gw_family, align 1
  %nhc_gw_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 5
  %50 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %nhc_gw_family.i, align 2
  %51 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %49, label %if.end.i248.if.end16.i_crit_edge [
    i8 2, label %if.then6.i
    i8 10, label %if.then12.i
  ]

if.end.i248.if.end16.i_crit_edge:                 ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %3, align 4
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 8
  %54 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %nhc_gw.i, align 4
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw14.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 8
  %55 = call ptr @memcpy(ptr %nhc_gw14.i, ptr %3, i32 16)
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.then6.i, %if.end.i248.if.end16.i_crit_edge
  %56 = ptrtoint ptr %fc_flags19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fc_flags19, align 4
  %conv17.i = trunc i32 %57 to i8
  %nhc_flags.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 6
  %58 = ptrtoint ptr %nhc_flags.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv17.i, ptr %nhc_flags.i, align 1
  %59 = ptrtoint ptr %fc_flow to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fc_flow, align 4
  %nh_tclassid.i = getelementptr inbounds %struct.fib_nh, ptr %nexthop_nh.0, i32 0, i32 3
  %61 = ptrtoint ptr %nh_tclassid.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %nh_tclassid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool20.not.i = icmp eq i32 %60, 0
  br i1 %tobool20.not.i, label %if.end16.i.for.inc_crit_edge, label %if.then21.i

if.end16.i.for.inc_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users.i, i32 1, i32 3, i32 1) #12
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users.i, ptr %fib_num_tclassid_users.i, i32 1, ptr elementtype(i32) %fib_num_tclassid_users.i) #12, !srcloc !192
  br label %for.inc

for.inc:                                          ; preds = %if.then21.i, %if.end16.i.for.inc_crit_edge
  %nhc_weight.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 9
  %63 = ptrtoint ptr %nhc_weight.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %nhc_weight.i, align 4
  %64 = ptrtoint ptr %rtnh.addr.0 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rtnh.addr.0, align 4
  %conv.i249 = zext i16 %65 to i32
  %sub.i250 = add nuw nsw i32 %conv.i249, 3
  %and.i = and i32 %sub.i250, 131068
  %sub1.i = sub nsw i32 %remaining.addr.0, %and.i
  %add.ptr.i251 = getelementptr i8, ptr %rtnh.addr.0, i32 %and.i
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  br label %for.cond

cleanup.cont95:                                   ; preds = %fib_info_num_path.exit
  %66 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nh.i, align 4
  %tobool.not.i253 = icmp eq ptr %67, null
  br i1 %tobool.not.i253, label %cleanup.cont95.fib_info_nh.exit_crit_edge, label %do.end.i, !prof !188

cleanup.cont95.fib_info_nh.exit_crit_edge:        ; preds = %cleanup.cont95
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_nh.exit

do.end.i:                                         ; preds = %cleanup.cont95
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 468, i32 noundef 9, ptr noundef null) #12
  br label %fib_info_nh.exit

fib_info_nh.exit:                                 ; preds = %do.end.i, %cleanup.cont95.fib_info_nh.exit_crit_edge
  %fc_oif97 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 9
  %68 = ptrtoint ptr %fc_oif97 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fc_oif97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool98.not = icmp eq i32 %69, 0
  br i1 %tobool98.not, label %fib_info_nh.exit.if.end112_crit_edge, label %land.lhs.true99

fib_info_nh.exit.if.end112_crit_edge:             ; preds = %fib_info_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

land.lhs.true99:                                  ; preds = %fib_info_nh.exit
  %nhc_oif = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 1
  %70 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nhc_oif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %69)
  %cmp101.not = icmp eq i32 %71, %69
  br i1 %cmp101.not, label %land.lhs.true99.if.end112_crit_edge, label %do.body104

land.lhs.true99.if.end112_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

do.body104:                                       ; preds = %land.lhs.true99
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.33) #12
  %tobool106.not = icmp eq ptr %extack, null
  br i1 %tobool106.not, label %do.body104.cleanup167_crit_edge, label %do.body104.cleanup167.sink.split_crit_edge

do.body104.cleanup167.sink.split_crit_edge:       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body104.cleanup167_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end112:                                        ; preds = %land.lhs.true99.if.end112_crit_edge, %fib_info_nh.exit.if.end112_crit_edge
  %fc_gw_family113 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 5
  %72 = ptrtoint ptr %fc_gw_family113 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fc_gw_family113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool114.not = icmp eq i8 %73, 0
  br i1 %tobool114.not, label %if.end112.if.end150_crit_edge, label %if.then115

if.end112.if.end150_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then115:                                       ; preds = %if.end112
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %fib_nh, i32 0, i32 5
  %74 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nhc_gw_family, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp120.not = icmp eq i8 %73, %75
  br i1 %cmp120.not, label %lor.lhs.false, label %if.then115.do.body141_crit_edge

if.then115.do.body141_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

lor.lhs.false:                                    ; preds = %if.then115
  %76 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %73, label %lor.lhs.false.if.end150_crit_edge [
    i8 2, label %land.lhs.true126
    i8 10, label %land.lhs.true135
  ]

lor.lhs.false.if.end150_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

land.lhs.true126:                                 ; preds = %lor.lhs.false
  %nhc_gw = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 2, i32 1
  %77 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nhc_gw, align 4
  %79 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %81)
  %cmp128.not = icmp eq i32 %78, %81
  br i1 %cmp128.not, label %land.lhs.true126.if.end150_crit_edge, label %land.lhs.true126.do.body141_crit_edge

land.lhs.true126.do.body141_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

land.lhs.true126.if.end150_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

land.lhs.true135:                                 ; preds = %lor.lhs.false
  %nhc_gw137 = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 2, i32 1
  %82 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 8
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %nhc_gw137, ptr noundef dereferenceable(16) %82, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool139.not = icmp eq i32 %bcmp, 0
  br i1 %tobool139.not, label %land.lhs.true135.if.end150_crit_edge, label %land.lhs.true135.do.body141_crit_edge

land.lhs.true135.do.body141_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

land.lhs.true135.if.end150_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

do.body141:                                       ; preds = %land.lhs.true135.do.body141_crit_edge, %land.lhs.true126.do.body141_crit_edge, %if.then115.do.body141_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.34) #12
  %tobool143.not = icmp eq ptr %extack, null
  br i1 %tobool143.not, label %do.body141.cleanup167_crit_edge, label %do.body141.cleanup167.sink.split_crit_edge

do.body141.cleanup167.sink.split_crit_edge:       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body141.cleanup167_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

if.end150:                                        ; preds = %land.lhs.true135.if.end150_crit_edge, %land.lhs.true126.if.end150_crit_edge, %lor.lhs.false.if.end150_crit_edge, %if.end112.if.end150_crit_edge
  %fc_flow151 = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 18
  %83 = ptrtoint ptr %fc_flow151 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fc_flow151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool152.not = icmp eq i32 %84, 0
  br i1 %tobool152.not, label %if.end150.cleanup167_crit_edge, label %land.lhs.true153

if.end150.cleanup167_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

land.lhs.true153:                                 ; preds = %if.end150
  %nh_tclassid = getelementptr %struct.fib_info, ptr %fi, i32 1, i32 18
  %85 = ptrtoint ptr %nh_tclassid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nh_tclassid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %84)
  %cmp155.not = icmp eq i32 %86, %84
  br i1 %cmp155.not, label %land.lhs.true153.cleanup167_crit_edge, label %do.body158

land.lhs.true153.cleanup167_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

do.body158:                                       ; preds = %land.lhs.true153
  call void @do_trace_netlink_extack(ptr noundef nonnull @fib_get_nhs.__msg.35) #12
  %tobool160.not = icmp eq ptr %extack, null
  br i1 %tobool160.not, label %do.body158.cleanup167_crit_edge, label %do.body158.cleanup167.sink.split_crit_edge

do.body158.cleanup167.sink.split_crit_edge:       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167.sink.split

do.body158.cleanup167_crit_edge:                  ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup167

cleanup167.sink.split:                            ; preds = %do.body158.cleanup167.sink.split_crit_edge, %do.body141.cleanup167.sink.split_crit_edge, %do.body104.cleanup167.sink.split_crit_edge, %do.body63.cleanup167.sink.split_crit_edge, %do.body.i.cleanup167.sink.split_crit_edge, %do.body30.cleanup167.sink.split_crit_edge, %do.body7.cleanup167.sink.split_crit_edge, %do.body.cleanup167.sink.split_crit_edge
  %fib_get_nhs.__msg.31.sink = phi ptr [ @fib_get_nhs.__msg, %do.body.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.30, %do.body7.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.31, %do.body30.cleanup167.sink.split_crit_edge ], [ @fib_gw_from_attr.__msg, %do.body.i.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.32, %do.body63.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.33, %do.body104.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.34, %do.body141.cleanup167.sink.split_crit_edge ], [ @fib_get_nhs.__msg.35, %do.body158.cleanup167.sink.split_crit_edge ]
  %87 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %fib_get_nhs.__msg.31.sink, ptr %extack, align 4
  br label %cleanup167

cleanup167:                                       ; preds = %cleanup167.sink.split, %do.body158.cleanup167_crit_edge, %land.lhs.true153.cleanup167_crit_edge, %if.end150.cleanup167_crit_edge, %do.body141.cleanup167_crit_edge, %do.body104.cleanup167_crit_edge, %if.end82.cleanup167_crit_edge, %do.body63.cleanup167_crit_edge, %if.then49.cleanup167_crit_edge, %do.body.i.cleanup167_crit_edge, %do.body30.cleanup167_crit_edge, %do.body7.cleanup167_crit_edge, %do.body.cleanup167_crit_edge
  %retval.5 = phi i32 [ -22, %do.body104.cleanup167_crit_edge ], [ -22, %do.body141.cleanup167_crit_edge ], [ -22, %do.body158.cleanup167_crit_edge ], [ 0, %land.lhs.true153.cleanup167_crit_edge ], [ 0, %if.end150.cleanup167_crit_edge ], [ -22, %do.body.i.cleanup167_crit_edge ], [ -22, %do.body7.cleanup167_crit_edge ], [ -22, %do.body.cleanup167_crit_edge ], [ -22, %do.body63.cleanup167_crit_edge ], [ -22, %do.body30.cleanup167_crit_edge ], [ -22, %cleanup167.sink.split ], [ %call.i246, %if.end82.cleanup167_crit_edge ], [ %call50, %if.then49.cleanup167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %fib_cfg) #12
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_check_nexthop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fib_valid_prefsrc(ptr nocapture noundef readonly %cfg, i32 noundef %fib_prefsrc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fc_type = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %fc_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fc_dst = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 7
  %2 = ptrtoint ptr %fc_dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fc_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fib_prefsrc)
  %cmp4.not = icmp eq i32 %3, %fib_prefsrc
  %or.cond = and i1 %tobool.not, %cmp4.not
  br i1 %or.cond, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %fc_table = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 6
  %4 = ptrtoint ptr %fc_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fc_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %5)
  %cmp6 = icmp eq i32 %5, 254
  %spec.store.select = select i1 %cmp6, i32 255, i32 %5
  %nl_net = getelementptr inbounds %struct.fib_config, ptr %cfg, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nl_net, align 4
  %call = tail call i32 @inet_addr_type_table(ptr noundef %7, i32 noundef %fib_prefsrc, i32 noundef %spec.store.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp9.not = icmp eq i32 %call, 2
  br i1 %cmp9.not, label %if.then.if.end23_crit_edge, label %land.lhs.true

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %spec.store.select)
  %cmp11.not = icmp eq i32 %spec.store.select, 255
  br i1 %cmp11.not, label %land.lhs.true.return_crit_edge, label %if.end17

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end17:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %nl_net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nl_net, align 4
  %call16 = tail call i32 @inet_addr_type_table(ptr noundef %9, i32 noundef %fib_prefsrc, i32 noundef 255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16)
  %cmp18.not = icmp eq i32 %call16, 2
  br i1 %cmp18.not, label %if.end17.if.end23_crit_edge, label %if.end17.return_crit_edge

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.then.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge
  br label %return

return:                                           ; preds = %if.end23, %if.end17.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.1 = phi i1 [ false, %if.end17.return_crit_edge ], [ true, %if.end23 ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fib_rebalance(ptr noundef %fi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %0 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %1) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  %2 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %3, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp = icmp ult i32 %retval.0.i, 2
  br i1 %cmp, label %fib_info_num_path.exit.cleanup_crit_edge, label %if.end

fib_info_num_path.exit.cleanup_crit_edge:         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %fib_info_num_path.exit
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  %fib_nhs.i353 = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %nh.0 = phi ptr [ %fib_nh, %if.end ], [ %incdec.ptr, %for.inc ]
  %nhsel.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  %total.0 = phi i32 [ 0, %if.end ], [ %total.1, %for.inc ]
  %4 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nh.i, align 4
  %tobool.not.i350 = icmp eq ptr %5, null
  br i1 %tobool.not.i350, label %if.end.i354, label %if.then.i352, !prof !188

if.then.i352:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i351 = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %5) #12
  br label %fib_info_num_path.exit356

if.end.i354:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fib_nhs.i353 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_nhs.i353, align 4
  br label %fib_info_num_path.exit356

fib_info_num_path.exit356:                        ; preds = %if.end.i354, %if.then.i352
  %retval.0.i355 = phi i32 [ %call.i351, %if.then.i352 ], [ %7, %if.end.i354 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i355)
  %cmp2 = icmp ult i32 %nhsel.0, %retval.0.i355
  br i1 %cmp2, label %for.body, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %fib_info_num_path.exit356
  %div = sdiv i32 %total.0, 2
  %conv46 = sext i32 %div to i64
  br label %for.cond19

for.body:                                         ; preds = %fib_info_num_path.exit356
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nh.0, i32 0, i32 6
  %8 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nhc_flags, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %11 = ptrtoint ptr %nh.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nh.0, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 78
  %13 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i357 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i357, label %if.end4.do.end8.i_crit_edge, label %lor.lhs.false.i

if.end4.do.end8.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.end4
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i358 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i358, label %land.lhs.true.i, label %lor.lhs.false.i.do.end8.i_crit_edge

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
  br i1 %.b23.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i359

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i359:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_ignore_linkdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 258, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i359, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.end4.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %14, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end14_crit_edge, label %land.lhs.true11.i

do.end8.i.if.end14_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true11.i:                                ; preds = %do.end8.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 35, i32 6
  %19 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %20, i32 0, i32 1, i32 28
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not.i = icmp eq i32 %22, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %land.lhs.true11.i.land.lhs.true_crit_edge

land.lhs.true11.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false15.i:                                ; preds = %land.lhs.true11.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %14, i32 0, i32 21, i32 1, i32 28
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp eq i32 %24, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.if.end14_crit_edge, label %lor.lhs.false15.i.land.lhs.true_crit_edge

lor.lhs.false15.i.land.lhs.true_crit_edge:        ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false15.i.if.end14_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false15.i.land.lhs.true_crit_edge, %land.lhs.true11.i.land.lhs.true_crit_edge
  %25 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nhc_flags, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not = icmp eq i8 %27, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %lor.lhs.false15.i.if.end14_crit_edge, %do.end8.i.if.end14_crit_edge
  %nhc_weight = getelementptr inbounds %struct.fib_nh_common, ptr %nh.0, i32 0, i32 9
  %28 = ptrtoint ptr %nhc_weight to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nhc_weight, align 4
  %add = add i32 %29, %total.0
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %total.1 = phi i32 [ %total.0, %for.body.for.inc_crit_edge ], [ %total.0, %land.lhs.true.for.inc_crit_edge ], [ %add, %if.end14 ]
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nh.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  br label %for.cond

for.cond19:                                       ; preds = %if.end244, %for.cond19.preheader
  %nhsel16.0 = phi i32 [ %inc248, %if.end244 ], [ 0, %for.cond19.preheader ]
  %nexthop_nh.0 = phi ptr [ %incdec.ptr247, %if.end244 ], [ %fib_nh, %for.cond19.preheader ]
  %w.0 = phi i32 [ %w.1, %if.end244 ], [ 0, %for.cond19.preheader ]
  %30 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nh.i, align 4
  %tobool.not.i361 = icmp eq ptr %31, null
  br i1 %tobool.not.i361, label %if.end.i365, label %if.then.i363, !prof !188

if.then.i363:                                     ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #14
  %call.i362 = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %31) #12
  br label %fib_info_num_path.exit367

if.end.i365:                                      ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %fib_nhs.i353 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fib_nhs.i353, align 4
  br label %fib_info_num_path.exit367

fib_info_num_path.exit367:                        ; preds = %if.end.i365, %if.then.i363
  %retval.0.i366 = phi i32 [ %call.i362, %if.then.i363 ], [ %33, %if.end.i365 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel16.0, i32 %retval.0.i366)
  %cmp21 = icmp ult i32 %nhsel16.0, %retval.0.i366
  br i1 %cmp21, label %for.body23, label %fib_info_num_path.exit367.cleanup_crit_edge

fib_info_num_path.exit367.cleanup_crit_edge:      ; preds = %fib_info_num_path.exit367
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body23:                                       ; preds = %fib_info_num_path.exit367
  %nhc_flags25 = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 6
  %34 = ptrtoint ptr %nhc_flags25 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nhc_flags25, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not = icmp eq i8 %36, 0
  br i1 %tobool28.not, label %if.else, label %for.body23.if.end244_crit_edge

for.body23.if.end244_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

if.else:                                          ; preds = %for.body23
  %37 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nexthop_nh.0, align 4
  %ip_ptr.i368 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 78
  %39 = ptrtoint ptr %ip_ptr.i368 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %ip_ptr.i368, align 32
  %call.i369 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i369, label %if.else.do.end8.i380_crit_edge, label %lor.lhs.false.i372

if.else.do.end8.i380_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i380

lor.lhs.false.i372:                               ; preds = %if.else
  %call2.i370 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i370)
  %tobool.not.i371 = icmp eq i32 %call2.i370, 0
  br i1 %tobool.not.i371, label %land.lhs.true.i375, label %lor.lhs.false.i372.do.end8.i380_crit_edge

lor.lhs.false.i372.do.end8.i380_crit_edge:        ; preds = %lor.lhs.false.i372
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i380

land.lhs.true.i375:                               ; preds = %lor.lhs.false.i372
  %call3.i373 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i373)
  %tobool4.not.i374 = icmp eq i32 %call3.i373, 0
  br i1 %tobool4.not.i374, label %land.lhs.true.i375.do.end8.i380_crit_edge, label %land.lhs.true5.i377

land.lhs.true.i375.do.end8.i380_crit_edge:        ; preds = %land.lhs.true.i375
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i380

land.lhs.true5.i377:                              ; preds = %land.lhs.true.i375
  %.b23.i376 = load i1, ptr @ip_ignore_linkdown.__warned, align 1
  br i1 %.b23.i376, label %land.lhs.true5.i377.do.end8.i380_crit_edge, label %if.then.i378

land.lhs.true5.i377.do.end8.i380_crit_edge:       ; preds = %land.lhs.true5.i377
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i380

if.then.i378:                                     ; preds = %land.lhs.true5.i377
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_ignore_linkdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 258, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i380

do.end8.i380:                                     ; preds = %if.then.i378, %land.lhs.true5.i377.do.end8.i380_crit_edge, %land.lhs.true.i375.do.end8.i380_crit_edge, %lor.lhs.false.i372.do.end8.i380_crit_edge, %if.else.do.end8.i380_crit_edge
  %tobool10.not.i379 = icmp eq ptr %40, null
  br i1 %tobool10.not.i379, label %do.end8.i380.if.else41_crit_edge, label %land.lhs.true11.i385

do.end8.i380.if.else41_crit_edge:                 ; preds = %do.end8.i380
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

land.lhs.true11.i385:                             ; preds = %do.end8.i380
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %nd_net.i.i381 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 127
  %43 = ptrtoint ptr %nd_net.i.i381 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nd_net.i.i381, align 4
  %devconf_all.i382 = getelementptr inbounds %struct.net, ptr %44, i32 0, i32 35, i32 6
  %45 = ptrtoint ptr %devconf_all.i382 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devconf_all.i382, align 4
  %arrayidx.i383 = getelementptr %struct.ipv4_devconf, ptr %46, i32 0, i32 1, i32 28
  %47 = ptrtoint ptr %arrayidx.i383 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i383, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not.i384 = icmp eq i32 %48, 0
  br i1 %tobool14.not.i384, label %lor.lhs.false15.i388, label %land.lhs.true11.i385.land.lhs.true34_crit_edge

land.lhs.true11.i385.land.lhs.true34_crit_edge:   ; preds = %land.lhs.true11.i385
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true34

lor.lhs.false15.i388:                             ; preds = %land.lhs.true11.i385
  %arrayidx.i.i386 = getelementptr %struct.in_device, ptr %40, i32 0, i32 21, i32 1, i32 28
  %49 = ptrtoint ptr %arrayidx.i.i386 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool17.not.i387 = icmp eq i32 %50, 0
  br i1 %tobool17.not.i387, label %lor.lhs.false15.i388.if.else41_crit_edge, label %lor.lhs.false15.i388.land.lhs.true34_crit_edge

lor.lhs.false15.i388.land.lhs.true34_crit_edge:   ; preds = %lor.lhs.false15.i388
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true34

lor.lhs.false15.i388.if.else41_crit_edge:         ; preds = %lor.lhs.false15.i388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

land.lhs.true34:                                  ; preds = %lor.lhs.false15.i388.land.lhs.true34_crit_edge, %land.lhs.true11.i385.land.lhs.true34_crit_edge
  %51 = ptrtoint ptr %nhc_flags25 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nhc_flags25, align 1
  %53 = and i8 %52, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool39.not = icmp eq i8 %53, 0
  br i1 %tobool39.not, label %land.lhs.true34.if.else41_crit_edge, label %land.lhs.true34.if.end244_crit_edge

land.lhs.true34.if.end244_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244

land.lhs.true34.if.else41_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else41

if.else41:                                        ; preds = %land.lhs.true34.if.else41_crit_edge, %lor.lhs.false15.i388.if.else41_crit_edge, %do.end8.i380.if.else41_crit_edge
  %nhc_weight43 = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 9
  %54 = ptrtoint ptr %nhc_weight43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nhc_weight43, align 4
  %add44 = add i32 %55, %w.0
  %conv45 = sext i32 %add44 to i64
  %shl = shl nsw i64 %conv45, 31
  %add47 = add nsw i64 %shl, %conv46
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add47)
  %cmp224 = icmp ult i64 %add47, 4294967296
  br i1 %cmp224, label %if.then228, label %if.else234, !prof !188

if.then228:                                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  %conv229 = trunc i64 %add47 to i32
  %div232 = udiv i32 %conv229, %total.0
  br label %if.end238

if.else234:                                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %total.0, i64 %add47) #19, !srcloc !198
  %asmresult1.i = extractvalue { i64, i64 } %56, 1
  %extract.t420 = trunc i64 %asmresult1.i to i32
  br label %if.end238

if.end238:                                        ; preds = %if.else234, %if.then228
  %_tmp.0.off0 = phi i32 [ %div232, %if.then228 ], [ %extract.t420, %if.else234 ]
  %conv242 = add i32 %_tmp.0.off0, -1
  br label %if.end244

if.end244:                                        ; preds = %if.end238, %land.lhs.true34.if.end244_crit_edge, %for.body23.if.end244_crit_edge
  %upper_bound.0 = phi i32 [ %conv242, %if.end238 ], [ -1, %for.body23.if.end244_crit_edge ], [ -1, %land.lhs.true34.if.end244_crit_edge ]
  %w.1 = phi i32 [ %add44, %if.end238 ], [ %w.0, %for.body23.if.end244_crit_edge ], [ %w.0, %land.lhs.true34.if.end244_crit_edge ]
  %nhc_upper_bound = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nhc_upper_bound, i32 noundef 4) #12
  %57 = ptrtoint ptr %nhc_upper_bound to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %upper_bound.0, ptr %nhc_upper_bound, align 4
  %incdec.ptr247 = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc248 = add nuw i32 %nhsel16.0, 1
  br label %for.cond19

cleanup:                                          ; preds = %fib_info_num_path.exit367.cleanup_crit_edge, %fib_info_num_path.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib_find_info(ptr nocapture noundef readonly %nfi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fib_info_hashfn(ptr noundef %nfi)
  %0 = load ptr, ptr @fib_info_hash, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %0, i32 %call
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %fi.087 = load ptr, ptr %arrayidx, align 4
  %tobool2.not88 = icmp eq ptr %fi.087, null
  br i1 %tobool2.not88, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fib_net3 = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 3
  %fib_nhs6 = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 15
  %fib_protocol = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 8
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 9
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 11
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 13
  %fib_type = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 10
  %fib_metrics = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 14
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 6
  %nh1.i = getelementptr inbounds %struct.fib_info, ptr %nfi, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fi.089 = phi ptr [ %fi.087, %for.body.lr.ph ], [ %fi.0, %for.inc.for.body_crit_edge ]
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 3
  %2 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fib_net, align 4
  %4 = ptrtoint ptr %fib_net3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_net3, align 4
  %cmp.i.not = icmp eq ptr %3, %5
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %fib_nhs = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 15
  %6 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_nhs, align 4
  %8 = ptrtoint ptr %fib_nhs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fib_nhs6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fib_protocol, align 1
  %fib_protocol9 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 8
  %12 = ptrtoint ptr %fib_protocol9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fib_protocol9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp11 = icmp eq i8 %11, %13
  br i1 %cmp11, label %land.lhs.true, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end8
  %14 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fib_scope, align 2
  %fib_scope14 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 9
  %16 = ptrtoint ptr %fib_scope14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fib_scope14, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp16 = icmp eq i8 %15, %17
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true18:                                  ; preds = %land.lhs.true
  %18 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fib_prefsrc, align 4
  %fib_prefsrc19 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 11
  %20 = ptrtoint ptr %fib_prefsrc19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fib_prefsrc19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp20 = icmp eq i32 %19, %21
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %22 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fib_priority, align 4
  %fib_priority23 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 13
  %24 = ptrtoint ptr %fib_priority23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fib_priority23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp24 = icmp eq i32 %23, %25
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true22
  %26 = ptrtoint ptr %fib_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fib_type, align 1
  %fib_type28 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 10
  %28 = ptrtoint ptr %fib_type28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fib_type28, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp30 = icmp eq i8 %27, %29
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %30 = ptrtoint ptr %fib_metrics to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fib_metrics, align 4
  %fib_metrics33 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 14
  %32 = ptrtoint ptr %fib_metrics33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fib_metrics33, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(68) %31, ptr noundef dereferenceable(68) %33, i32 68) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp35 = icmp eq i32 %bcmp, 0
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true37:                                  ; preds = %land.lhs.true32
  %34 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fib_flags, align 4
  %fib_flags38 = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 6
  %36 = ptrtoint ptr %fib_flags38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fib_flags38, align 4
  %xor = xor i32 %37, %35
  %and = and i32 %xor, -90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %land.lhs.true37.for.inc_crit_edge

land.lhs.true37.for.inc_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 18
  %38 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.lhs.true40.nh_comp.exit_crit_edge

land.lhs.true40.nh_comp.exit_crit_edge:           ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %nh_comp.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true40
  %40 = ptrtoint ptr %nh1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nh1.i, align 4
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.nh_comp.exit_crit_edge

lor.lhs.false.i.nh_comp.exit_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nh_comp.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i84 = icmp eq i32 %7, 0
  br i1 %cmp.i84, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %fi.089, i32 0, i32 20
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end6.i
  %nhsel.0.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %for.inc.i ]
  %nh7.0.i = phi ptr [ %fib_nh.i, %if.end6.i ], [ %incdec.ptr.i, %for.inc.i ]
  %42 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nh.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !188

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %43) #12
  br label %fib_info_num_path.exit.i

if.end.i.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit.i

fib_info_num_path.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %45, %if.end.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0.i, i32 %retval.0.i.i)
  %cmp9.i = icmp ult i32 %nhsel.0.i, %retval.0.i.i
  br i1 %cmp9.i, label %for.body.i, label %fib_info_num_path.exit.i.cleanup_crit_edge

fib_info_num_path.exit.i.cleanup_crit_edge:       ; preds = %fib_info_num_path.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %fib_info_num_path.exit.i
  %46 = ptrtoint ptr %nh1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nh1.i, align 4
  %tobool.not.i112.i = icmp eq ptr %47, null
  br i1 %tobool.not.i112.i, label %for.body.i.fib_info_nh.exit.i_crit_edge, label %do.end.i.i, !prof !188

for.body.i.fib_info_nh.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_nh.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 468, i32 noundef 9, ptr noundef null) #12
  br label %fib_info_nh.exit.i

fib_info_nh.exit.i:                               ; preds = %do.end.i.i, %for.body.i.fib_info_nh.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.fib_info, ptr %nfi, i32 0, i32 20, i32 %nhsel.0.i
  %nhc_oif.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 2
  %48 = ptrtoint ptr %nhc_oif.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nhc_oif.i, align 4
  %nhc_oif12.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %nhc_oif12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nhc_oif12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp13.not.i = icmp eq i32 %49, %51
  br i1 %cmp13.not.i, label %lor.lhs.false14.i, label %fib_info_nh.exit.i.for.inc_crit_edge

fib_info_nh.exit.i.for.inc_crit_edge:             ; preds = %fib_info_nh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false14.i:                                ; preds = %fib_info_nh.exit.i
  %nhc_gw_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nhc_gw_family.i, align 2
  %nhc_gw_family17.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %nhc_gw_family17.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nhc_gw_family17.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp19.not.i = icmp eq i8 %53, %55
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false14.i.for.inc_crit_edge

lor.lhs.false14.i.for.inc_crit_edge:              ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false21.i:                                ; preds = %lor.lhs.false14.i
  %nhc_scope.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 3
  %56 = ptrtoint ptr %nhc_scope.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nhc_scope.i, align 4
  %nhc_scope25.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %nhc_scope25.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nhc_scope25.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp27.not.i = icmp eq i8 %57, %59
  br i1 %cmp27.not.i, label %lor.lhs.false29.i, label %lor.lhs.false21.i.for.inc_crit_edge

lor.lhs.false21.i.for.inc_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false29.i:                                ; preds = %lor.lhs.false21.i
  %nhc_weight.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 9
  %60 = ptrtoint ptr %nhc_weight.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nhc_weight.i, align 4
  %nhc_weight32.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 9
  %62 = ptrtoint ptr %nhc_weight32.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nhc_weight32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp33.not.i = icmp eq i32 %61, %63
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %lor.lhs.false29.i.for.inc_crit_edge

lor.lhs.false29.i.for.inc_crit_edge:              ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false35.i:                                ; preds = %lor.lhs.false29.i
  %nh_tclassid.i = getelementptr inbounds %struct.fib_nh, ptr %nh7.0.i, i32 0, i32 3
  %64 = ptrtoint ptr %nh_tclassid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nh_tclassid.i, align 4
  %nh_tclassid36.i = getelementptr %struct.fib_info, ptr %nfi, i32 0, i32 20, i32 %nhsel.0.i, i32 3
  %66 = ptrtoint ptr %nh_tclassid36.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nh_tclassid36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp37.not.i = icmp eq i32 %65, %67
  br i1 %cmp37.not.i, label %lor.lhs.false39.i, label %lor.lhs.false35.i.for.inc_crit_edge

lor.lhs.false35.i.for.inc_crit_edge:              ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false39.i:                                ; preds = %lor.lhs.false35.i
  %nhc_lwtstate.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 7
  %68 = ptrtoint ptr %nhc_lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nhc_lwtstate.i, align 4
  %nhc_lwtstate42.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %nhc_lwtstate42.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nhc_lwtstate42.i, align 4
  %call43.i = tail call i32 @lwtunnel_cmp_encap(ptr noundef %69, ptr noundef %71) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %lor.lhs.false45.i, label %lor.lhs.false39.i.for.inc_crit_edge

lor.lhs.false39.i.for.inc_crit_edge:              ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false45.i:                                ; preds = %lor.lhs.false39.i
  %nhc_flags.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 6
  %72 = ptrtoint ptr %nhc_flags.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nhc_flags.i, align 1
  %nhc_flags49.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %nhc_flags49.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %nhc_flags49.i, align 1
  %xor110.i = xor i8 %75, %73
  %76 = and i8 %xor110.i, -90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool51.not.i = icmp eq i8 %76, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %lor.lhs.false45.i.for.inc_crit_edge

lor.lhs.false45.i.for.inc_crit_edge:              ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end53.i:                                       ; preds = %lor.lhs.false45.i
  %77 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %nhc_gw_family.i, align 2
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %78, label %if.end53.i.for.inc.i_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 10, label %land.lhs.true71.i
  ]

if.end53.i.for.inc.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end53.i
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 8
  %80 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nhc_gw.i, align 4
  %nhc_gw61.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 8
  %82 = ptrtoint ptr %nhc_gw61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nhc_gw61.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp62.not.i = icmp eq i32 %81, %83
  br i1 %cmp62.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true71.i:                                ; preds = %if.end53.i
  %nhc_gw73.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh7.0.i, i32 0, i32 8
  %nhc_gw75.i = getelementptr inbounds %struct.fib_nh_common, ptr %arrayidx.i.i, i32 0, i32 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %nhc_gw73.i, ptr noundef dereferenceable(16) %nhc_gw75.i, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool77.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool77.not.i, label %land.lhs.true71.i.for.inc.i_crit_edge, label %land.lhs.true71.i.for.inc_crit_edge

land.lhs.true71.i.for.inc_crit_edge:              ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true71.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true71.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end53.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.fib_nh, ptr %nh7.0.i, i32 1
  %inc.i = add nuw i32 %nhsel.0.i, 1
  br label %for.cond.i

nh_comp.exit:                                     ; preds = %lor.lhs.false.i.nh_comp.exit_crit_edge, %land.lhs.true40.nh_comp.exit_crit_edge
  %84 = ptrtoint ptr %nh1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nh1.i, align 4
  %cmp.i.i.not = icmp eq ptr %39, %85
  br i1 %cmp.i.i.not, label %nh_comp.exit.cleanup_crit_edge, label %nh_comp.exit.for.inc_crit_edge

nh_comp.exit.for.inc_crit_edge:                   ; preds = %nh_comp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

nh_comp.exit.cleanup_crit_edge:                   ; preds = %nh_comp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %nh_comp.exit.for.inc_crit_edge, %land.lhs.true71.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %lor.lhs.false45.i.for.inc_crit_edge, %lor.lhs.false39.i.for.inc_crit_edge, %lor.lhs.false35.i.for.inc_crit_edge, %lor.lhs.false29.i.for.inc_crit_edge, %lor.lhs.false21.i.for.inc_crit_edge, %lor.lhs.false14.i.for.inc_crit_edge, %fib_info_nh.exit.i.for.inc_crit_edge, %land.lhs.true37.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %86 = ptrtoint ptr %fi.089 to i32
  call void @__asan_load4_noabort(i32 %86)
  %fi.0 = load ptr, ptr %fi.089, align 4
  %tobool2.not = icmp eq ptr %fi.0, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %nh_comp.exit.cleanup_crit_edge, %fib_info_num_path.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %fi.0.lcssa = phi ptr [ null, %entry.cleanup_crit_edge ], [ %fi.089, %fib_info_num_path.exit.i.cleanup_crit_edge ], [ %fi.089, %if.end.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %fi.089, %nh_comp.exit.cleanup_crit_edge ]
  ret ptr %fi.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_info_hashfn(ptr nocapture noundef readonly %fi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fib_nhs = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  %0 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fib_nhs, align 4
  %fib_protocol = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 8
  %2 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fib_protocol, align 1
  %fib_scope = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 9
  %4 = ptrtoint ptr %fib_scope to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fib_scope, align 2
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 11
  %6 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_prefsrc, align 4
  %fib_priority = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 13
  %8 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fib_priority, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %conv1.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %xor.i = xor i32 %7, %1
  %xor2.i = xor i32 %xor.i, %or.i
  %xor3.i = xor i32 %xor2.i, %9
  %nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %10 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nh, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.nexthop, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %mul.i.i.i = mul i32 %13, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %xor = xor i32 %shr.i.i, %xor3.i
  br label %if.end

if.else:                                          ; preds = %entry
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %14 = phi ptr [ %.pr, %for.body ], [ null, %if.else ]
  %val.0 = phi i32 [ %xor6, %for.body ], [ %xor3.i, %if.else ]
  %nhsel.0 = phi i32 [ %inc, %for.body ], [ 0, %if.else ]
  %nh3.0 = phi ptr [ %incdec.ptr, %for.body ], [ %fib_nh, %if.else ]
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_group.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i24 = icmp eq i8 %16, 0
  br i1 %tobool.not.i24, label %if.then.i.fib_info_num_path.exit_crit_edge, label %if.then.i26

if.then.i.fib_info_num_path.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then.i26:                                      ; preds = %if.then.i
  %17 = getelementptr inbounds %struct.nexthop, ptr %14, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %call.i25 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i25, label %if.then.i26.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i26.do.end10.i_crit_edge:                 ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i26
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i26.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_multipath.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not.i = icmp eq i8 %21, 0
  br i1 %tobool12.not.i, label %do.end10.i.fib_info_num_path.exit_crit_edge, label %if.then13.i

do.end10.i.fib_info_num_path.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_nh.i, align 4
  %conv.i27 = zext i16 %23 to i32
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then13.i, %do.end10.i.fib_info_num_path.exit_crit_edge, %if.then.i.fib_info_num_path.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %if.end.i ], [ 1, %if.then.i.fib_info_num_path.exit_crit_edge ], [ %conv.i27, %if.then13.i ], [ 1, %do.end10.i.fib_info_num_path.exit_crit_edge ]
  %cmp = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp, label %for.body, label %fib_info_num_path.exit.if.end_crit_edge

fib_info_num_path.exit.if.end_crit_edge:          ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_oif = getelementptr inbounds %struct.fib_nh_common, ptr %nh3.0, i32 0, i32 2
  %26 = ptrtoint ptr %nhc_oif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nhc_oif, align 4
  %mul.i.i.i20 = mul i32 %27, 1640531527
  %shr.i.i21 = lshr i32 %mul.i.i.i20, 24
  %xor6 = xor i32 %shr.i.i21, %val.0
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nh3.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  %28 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %nh, align 4
  br label %for.cond

if.end:                                           ; preds = %fib_info_num_path.exit.if.end_crit_edge, %if.then
  %val.1 = phi i32 [ %xor, %if.then ], [ %val.0, %fib_info_num_path.exit.if.end_crit_edge ]
  %29 = load i32, ptr @fib_info_hash_size, align 4
  %sub.i = add i32 %29, -1
  %shr.i = lshr i32 %val.1, 7
  %xor.i22 = xor i32 %shr.i, %val.1
  %shr1.i = lshr i32 %val.1, 12
  %xor2.i23 = xor i32 %xor.i22, %shr1.i
  %and.i = and i32 %xor2.i23, %sub.i
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_nexthop_info(ptr noundef %skb, ptr noundef %nhc, i8 noundef zeroext %rt_family, ptr nocapture noundef %flags, i1 noundef zeroext %skip_oif) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 6
  %0 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nhc_flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nhc_flags, align 1
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end.if.end25_crit_edge, label %if.then7

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then7:                                         ; preds = %if.end
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = or i8 %10, 16
  store i8 %11, ptr %flags, align 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then7.rcu_read_lock.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then7.rcu_read_lock.exit_crit_edge
  %nhc_family = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 4
  %16 = ptrtoint ptr %nhc_family to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nhc_family, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %17, label %rcu_read_lock.exit.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb17
  ]

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %19 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nhc, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 78
  %21 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i104 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i104, label %sw.bb.do.end8.i_crit_edge, label %lor.lhs.false.i

sw.bb.do.end8.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i105 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i106:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i106.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i106.do.end8.i_crit_edge:           ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i106
  %.b23.i = load i1, ptr @ip_ignore_linkdown.__warned, align 1
  br i1 %.b23.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i107

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i107:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ip_ignore_linkdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 258, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i107, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i106.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %sw.bb.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i, label %do.end8.i.sw.epilog_crit_edge, label %land.lhs.true11.i

do.end8.i.sw.epilog_crit_edge:                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true11.i:                                ; preds = %do.end8.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 35, i32 6
  %27 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %28, i32 0, i32 1, i32 28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not.i = icmp eq i32 %30, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %land.lhs.true11.i.sw.epilog.sink.split_crit_edge

land.lhs.true11.i.sw.epilog.sink.split_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

lor.lhs.false15.i:                                ; preds = %land.lhs.true11.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %22, i32 0, i32 21, i32 1, i32 28
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool17.not.i = icmp eq i32 %32, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.sw.epilog_crit_edge, label %lor.lhs.false15.i.sw.epilog.sink.split_crit_edge

lor.lhs.false15.i.sw.epilog.sink.split_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

lor.lhs.false15.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb17:                                          ; preds = %rcu_read_lock.exit
  %33 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nhc, align 4
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 80
  %35 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i.i, label %sw.bb17.ip6_ignore_linkdown.exit_crit_edge, label %lor.lhs.false.i.i

sw.bb17.ip6_ignore_linkdown.exit_crit_edge:       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip6_ignore_linkdown.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb17
  %call2.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.ip6_ignore_linkdown.exit_crit_edge

lor.lhs.false.i.i.ip6_ignore_linkdown.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip6_ignore_linkdown.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.ip6_ignore_linkdown.exit_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.ip6_ignore_linkdown.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip6_ignore_linkdown.exit

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.ip6_ignore_linkdown.exit_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.ip6_ignore_linkdown.exit_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip6_ignore_linkdown.exit

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 313, ptr noundef nonnull @.str.19) #12
  br label %ip6_ignore_linkdown.exit

ip6_ignore_linkdown.exit:                         ; preds = %if.then.i.i, %land.lhs.true5.i.i.ip6_ignore_linkdown.exit_crit_edge, %land.lhs.true.i.i.ip6_ignore_linkdown.exit_crit_edge, %lor.lhs.false.i.i.ip6_ignore_linkdown.exit_crit_edge, %sw.bb17.ip6_ignore_linkdown.exit_crit_edge
  %ignore_routes_with_linkdown.i = getelementptr inbounds %struct.inet6_dev, ptr %36, i32 0, i32 32, i32 24
  %37 = ptrtoint ptr %ignore_routes_with_linkdown.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ignore_routes_with_linkdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %ip6_ignore_linkdown.exit.sw.epilog_crit_edge, label %ip6_ignore_linkdown.exit.sw.epilog.sink.split_crit_edge

ip6_ignore_linkdown.exit.sw.epilog.sink.split_crit_edge: ; preds = %ip6_ignore_linkdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

ip6_ignore_linkdown.exit.sw.epilog_crit_edge:     ; preds = %ip6_ignore_linkdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %ip6_ignore_linkdown.exit.sw.epilog.sink.split_crit_edge, %lor.lhs.false15.i.sw.epilog.sink.split_crit_edge, %land.lhs.true11.i.sw.epilog.sink.split_crit_edge
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags, align 1
  %41 = or i8 %40, 1
  store i8 %41, ptr %flags, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %ip6_ignore_linkdown.exit.sw.epilog_crit_edge, %lor.lhs.false15.i.sw.epilog_crit_edge, %do.end8.i.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i108, label %sw.epilog.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i111

sw.epilog.rcu_read_unlock.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i111:                               ; preds = %sw.epilog
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, %sw.epilog.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %42 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i115 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end25

if.end25:                                         ; preds = %rcu_read_unlock.exit, %if.end.if.end25_crit_edge
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 5
  %46 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nhc_gw_family, align 2
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %47, label %if.end25.sw.epilog53_crit_edge [
    i8 2, label %sw.bb27
    i8 10, label %sw.bb32
  ]

if.end25.sw.epilog53_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog53

sw.bb27:                                          ; preds = %if.end25
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 8
  %49 = ptrtoint ptr %nhc_gw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nhc_gw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %51 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i.i, align 4
  %call.i.i117 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool29.not = icmp eq i32 %call.i.i117, 0
  br i1 %tobool29.not, label %sw.bb27.sw.epilog53_crit_edge, label %sw.bb27.nla_put_failure_crit_edge

sw.bb27.nla_put_failure_crit_edge:                ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

sw.bb27.sw.epilog53_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog53

sw.bb32:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %rt_family)
  %cmp.not = icmp eq i8 %rt_family, 10
  br i1 %cmp.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %sw.bb32
  %call38 = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef 18) #12
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then37.nla_put_failure_crit_edge, label %cleanup.thread

if.then37.nla_put_failure_crit_edge:              ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

cleanup.thread:                                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %call38, i32 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 10, ptr %add.ptr.i, align 2
  %rtvia_addr = getelementptr i8, ptr %call38, i32 6
  %nhc_gw43 = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 8
  %53 = call ptr @memcpy(ptr %rtvia_addr, ptr %nhc_gw43, i32 16)
  br label %sw.epilog53

if.else:                                          ; preds = %sw.bb32
  %nhc_gw46 = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 8
  %call.i118 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 16, ptr noundef %nhc_gw46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp48 = icmp slt i32 %call.i118, 0
  br i1 %cmp48, label %if.else.nla_put_failure_crit_edge, label %if.else.sw.epilog53_crit_edge

if.else.sw.epilog53_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog53

if.else.nla_put_failure_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

sw.epilog53:                                      ; preds = %if.else.sw.epilog53_crit_edge, %cleanup.thread, %sw.bb27.sw.epilog53_crit_edge, %if.end25.sw.epilog53_crit_edge
  %54 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nhc_flags, align 1
  %56 = and i8 %55, 76
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags, align 1
  %or58103 = or i8 %58, %56
  store i8 %or58103, ptr %flags, align 1
  br i1 %skip_oif, label %sw.epilog53.if.end68_crit_edge, label %land.lhs.true

sw.epilog53.if.end68_crit_edge:                   ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true:                                    ; preds = %sw.epilog53
  %59 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nhc, align 4
  %tobool62.not = icmp eq ptr %60, null
  br i1 %tobool62.not, label %land.lhs.true.if.end68_crit_edge, label %land.lhs.true63

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %ifindex = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %63 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tmp.i, align 4
  %call.i119 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool66.not = icmp eq i32 %call.i119, 0
  br i1 %tobool66.not, label %land.lhs.true63.if.end68_crit_edge, label %land.lhs.true63.nla_put_failure_crit_edge

land.lhs.true63.nla_put_failure_crit_edge:        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true63.if.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true63.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %sw.epilog53.if.end68_crit_edge
  %nhc_lwtstate = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 7
  %64 = ptrtoint ptr %nhc_lwtstate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nhc_lwtstate, align 4
  %tobool69.not = icmp eq ptr %65, null
  br i1 %tobool69.not, label %if.end68.return_crit_edge, label %land.lhs.true70

if.end68.return_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true70:                                  ; preds = %if.end68
  %call72 = call i32 @lwtunnel_fill_encap(ptr noundef %skb, ptr noundef nonnull %65, i32 noundef 22, i32 noundef 21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %land.lhs.true70.nla_put_failure_crit_edge, label %land.lhs.true70.return_crit_edge

land.lhs.true70.return_crit_edge:                 ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true70.nla_put_failure_crit_edge:        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %land.lhs.true70.nla_put_failure_crit_edge, %land.lhs.true63.nla_put_failure_crit_edge, %if.else.nla_put_failure_crit_edge, %if.then37.nla_put_failure_crit_edge, %sw.bb27.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %land.lhs.true70.return_crit_edge, %if.end68.return_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %land.lhs.true70.return_crit_edge ], [ 0, %if.end68.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_fill_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_add_nexthop(ptr noundef %skb, ptr noundef %nhc, i32 noundef %nh_weight, i8 noundef zeroext %rt_family, i32 noundef %nh_tclassid) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %flags = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nhc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhc, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags) #12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %flags, align 1
  %call = tail call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = trunc i32 %nh_weight to i8
  %conv = add i8 %3, -1
  %rtnh_hops = getelementptr inbounds %struct.rtnexthop, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %rtnh_hops to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %rtnh_hops, align 1
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %rtnh_ifindex = getelementptr inbounds %struct.rtnexthop, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %rtnh_ifindex to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %rtnh_ifindex, align 4
  %call2 = call i32 @fib_nexthop_info(ptr noundef %skb, ptr noundef %nhc, i8 noundef zeroext %rt_family, ptr noundef nonnull %flags, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end5

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %cond.end
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %rtnh_flags = getelementptr inbounds %struct.rtnexthop, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %rtnh_flags to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rtnh_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nh_tclassid)
  %tobool6.not = icmp eq i32 %nh_tclassid, 0
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nh_tclassid, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv12 = trunc i32 %sub.ptr.sub to i16
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %cond.end.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnetlink_put_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nexthop_is_blackhole(ptr noundef %nh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !190
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 343, ptr noundef nonnull @.str.19) #12
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
  %.b4243 = load i1, ptr @nexthop_is_blackhole.__warned.41, align 1
  br i1 %.b4243, label %land.lhs.true30.do.end35_crit_edge, label %if.then32

land.lhs.true30.do.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_is_blackhole.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 350, ptr noundef nonnull @.str.19) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %land.lhs.true30.do.end35_crit_edge, %land.lhs.true27.do.end35_crit_edge, %lor.lhs.false24.do.end35_crit_edge, %if.end16.do.end35_crit_edge
  %reject_nh = getelementptr inbounds %struct.nh_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %reject_nh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reject_nh, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37 = icmp ne i8 %13, 0
  br label %cleanup38

cleanup38:                                        ; preds = %do.end35, %do.end10.cleanup38_crit_edge
  %retval.1 = phi i1 [ %tobool37, %do.end35 ], [ false, %do.end10.cleanup38_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_add_multipath(ptr noundef %skb, ptr noundef %fi) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  %flags.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not53 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not53
  br i1 %tobool.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end:                                           ; preds = %entry
  %nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %2 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nh, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end9, label %if.then4, !prof !188

if.then4:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @nexthop_mpath_fill_node(ptr noundef %skb, ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then4.cleanup24_crit_edge, label %if.then4.mp_end_crit_edge

if.then4.mp_end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_end

if.then4.cleanup24_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end9:                                          ; preds = %if.end
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 20
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %4 = phi ptr [ %.pr, %for.inc ], [ null, %if.end9 ]
  %nhsel.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end9 ]
  %nh10.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %fib_nh, %if.end9 ]
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call fastcc i32 @nexthop_num_path(ptr noundef nonnull %4) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %6, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp12 = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp12, label %for.body, label %fib_info_num_path.exit.mp_end_crit_edge

fib_info_num_path.exit.mp_end_crit_edge:          ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %mp_end

for.body:                                         ; preds = %fib_info_num_path.exit
  %nh_tclassid13 = getelementptr inbounds %struct.fib_nh, ptr %nh10.0, i32 0, i32 3
  %7 = ptrtoint ptr %nh_tclassid13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nh_tclassid13, align 4
  %nhc_weight = getelementptr inbounds %struct.fib_nh_common, ptr %nh10.0, i32 0, i32 9
  %9 = ptrtoint ptr %nhc_weight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nhc_weight, align 4
  %11 = ptrtoint ptr %nh10.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nh10.0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags.i) #12
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %flags.i, align 1
  %call.i38 = call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 8) #12
  %tobool.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool.not.i39, label %for.body.cleanup19_crit_edge, label %if.end.i40

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.end.i40:                                       ; preds = %for.body
  %14 = trunc i32 %10 to i8
  %conv.i = add i8 %14, -1
  %rtnh_hops.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i38, i32 0, i32 2
  %15 = ptrtoint ptr %rtnh_hops.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %rtnh_hops.i, align 1
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i40.cond.end.i_crit_edge, label %cond.true.i

if.end.i40.cond.end.i_crit_edge:                  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i40.cond.end.i_crit_edge
  %cond.i = phi i32 [ %17, %cond.true.i ], [ 0, %if.end.i40.cond.end.i_crit_edge ]
  %rtnh_ifindex.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i38, i32 0, i32 3
  %18 = ptrtoint ptr %rtnh_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %rtnh_ifindex.i, align 4
  %call2.i = call i32 @fib_nexthop_info(ptr noundef %skb, ptr noundef %nh10.0, i8 noundef zeroext 2, ptr noundef nonnull %flags.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i41 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i41, label %cond.end.i.cleanup19_crit_edge, label %if.end5.i

cond.end.i.cleanup19_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

if.end5.i:                                        ; preds = %cond.end.i
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  %rtnh_flags.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i38, i32 0, i32 1
  %21 = ptrtoint ptr %rtnh_flags.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rtnh_flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not.i = icmp eq i32 %8, 0
  br i1 %tobool6.not.i, label %if.end5.i.for.inc_crit_edge, label %land.lhs.true.i

if.end5.i.for.inc_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %8, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.cleanup19_crit_edge

land.lhs.true.i.cleanup19_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.i.for.inc_crit_edge, %if.end5.i.for.inc_crit_edge
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i38 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv12.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %call.i38 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv12.i, ptr %call.i38, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #12
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nh10.0, i32 1
  %inc = add nuw i32 %nhsel.0, 1
  %26 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %nh, align 4
  br label %for.cond

cleanup19:                                        ; preds = %land.lhs.true.i.cleanup19_crit_edge, %cond.end.i.cleanup19_crit_edge, %for.body.cleanup19_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #12
  br label %cleanup24

mp_end:                                           ; preds = %fib_info_num_path.exit.mp_end_crit_edge, %if.then4.mp_end_crit_edge
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i44 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i45 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i46 = sub i32 %sub.ptr.lhs.cast.i44, %sub.ptr.rhs.cast.i45
  %conv.i47 = trunc i32 %sub.ptr.sub.i46 to i16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i47, ptr %1, align 2
  br label %cleanup24

cleanup24:                                        ; preds = %mp_end, %cleanup19, %if.then4.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ 0, %mp_end ], [ -90, %cleanup19 ], [ -90, %if.then4.cleanup24_crit_edge ], [ -90, %entry.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_sync_down_addr(ptr noundef %dev, i32 noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !193
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @l3mdev_fib_table_rcu(ptr noundef %dev) #12
  %call.i1.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1.i, label %rcu_read_lock.exit.i.l3mdev_fib_table.exit_crit_edge, label %land.lhs.true.i4.i

rcu_read_lock.exit.i.l3mdev_fib_table.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_fib_table.exit

land.lhs.true.i4.i:                               ; preds = %rcu_read_lock.exit.i
  %call1.i2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call1.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i.l3mdev_fib_table.exit_crit_edge, label %land.lhs.true2.i6.i

land.lhs.true.i4.i.l3mdev_fib_table.exit_crit_edge: ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_fib_table.exit

land.lhs.true2.i6.i:                              ; preds = %land.lhs.true.i4.i
  %.b4.i5.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5.i, label %land.lhs.true2.i6.i.l3mdev_fib_table.exit_crit_edge, label %if.then.i7.i

land.lhs.true2.i6.i.l3mdev_fib_table.exit_crit_edge: ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_fib_table.exit

if.then.i7.i:                                     ; preds = %land.lhs.true2.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.40) #12
  br label %l3mdev_fib_table.exit

l3mdev_fib_table.exit:                            ; preds = %if.then.i7.i, %land.lhs.true2.i6.i.l3mdev_fib_table.exit_crit_edge, %land.lhs.true.i4.i.l3mdev_fib_table.exit_crit_edge, %rcu_read_lock.exit.i.l3mdev_fib_table.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %4 = tail call i32 @llvm.read_register.i32(metadata !168) #12
  %and.i.i.i.i.i8.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8.i to ptr
  %preempt_count.i.i.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9.i, align 4
  %sub.i.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i9.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %call. = select i1 %tobool.not, i32 254, i32 %call.i
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %10 = load ptr, ptr @fib_info_laddrhash, align 4
  %tobool2.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local)
  %cmp = icmp eq i32 %local, 0
  %or.cond = or i1 %cmp, %tobool2.not
  br i1 %or.cond, label %l3mdev_fib_table.exit.cleanup_crit_edge, label %if.end

l3mdev_fib_table.exit.cleanup_crit_edge:          ; preds = %l3mdev_fib_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %l3mdev_fib_table.exit
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 26
  %11 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_mix.i.i, align 8
  %xor.i = xor i32 %12, %local
  %13 = load i32, ptr @fib_info_hash_bits, align 4
  %mul.i.i.i = mul i32 %xor.i, 1640531527
  %sub.i.i = sub i32 32, %13
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %10, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not = icmp eq ptr %15, null
  %add.ptr = getelementptr i8, ptr %15, i32 -8
  %tobool10.not5054 = icmp eq ptr %add.ptr, null
  %tobool10.not50 = or i1 %tobool4.not, %tobool10.not5054
  br i1 %tobool10.not50, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %fi.052 = phi ptr [ %add.ptr26, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %ret.051 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %fi.052, i32 0, i32 3
  %16 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fib_net, align 4
  %cmp.i.not = icmp eq ptr %17, %9
  br i1 %cmp.i.not, label %lor.lhs.false13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false13:                                  ; preds = %for.body
  %fib_tb_id = getelementptr inbounds %struct.fib_info, ptr %fi.052, i32 0, i32 12
  %18 = ptrtoint ptr %fib_tb_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fib_tb_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call.)
  %cmp14.not = icmp eq i32 %19, %call.
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false13.for.inc_crit_edge

lor.lhs.false13.for.inc_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %lor.lhs.false13
  %fib_prefsrc = getelementptr inbounds %struct.fib_info, ptr %fi.052, i32 0, i32 11
  %20 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fib_prefsrc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %local)
  %cmp17 = icmp eq i32 %21, %local
  br i1 %cmp17, label %if.then18, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %fi.052, i32 0, i32 6
  %22 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fib_flags, align 4
  %or = or i32 %23, 1
  store i32 %or, ptr %fib_flags, align 4
  %inc = add i32 %ret.051, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %if.end16.for.inc_crit_edge, %lor.lhs.false13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.051, %lor.lhs.false13.for.inc_crit_edge ], [ %inc, %if.then18 ], [ %ret.051, %if.end16.for.inc_crit_edge ], [ %ret.051, %for.body.for.inc_crit_edge ]
  %fib_lhash = getelementptr inbounds %struct.fib_info, ptr %fi.052, i32 0, i32 1
  %24 = ptrtoint ptr %fib_lhash to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fib_lhash, align 4
  %tobool22.not = icmp eq ptr %25, null
  %add.ptr26 = getelementptr i8, ptr %25, i32 -8
  %tobool10.not55 = icmp eq ptr %add.ptr26, null
  %tobool10.not = or i1 %tobool22.not, %tobool10.not55
  br i1 %tobool10.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %l3mdev_fib_table.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %l3mdev_fib_table.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %ret.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_nhc_update_mtu(ptr nocapture noundef readonly %nhc, i32 noundef %new, i32 noundef %orig) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nhc_exceptions = getelementptr inbounds %struct.fib_nh_common, ptr %nhc, i32 0, i32 13
  %0 = ptrtoint ptr %nhc_exceptions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhc_exceptions, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fnhe_hash_bucket, ptr %1, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %fnhe.045 = load ptr, ptr %arrayidx, align 4
  %tobool6.not46 = icmp eq ptr %fnhe.045, null
  br i1 %tobool6.not46, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body7:                                        ; preds = %do.end25.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %fnhe.047 = phi ptr [ %fnhe.0, %do.end25.for.body7_crit_edge ], [ %fnhe.045, %for.body.for.body7_crit_edge ]
  %fnhe_mtu_locked = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.047, i32 0, i32 4
  %3 = ptrtoint ptr %fnhe_mtu_locked to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fnhe_mtu_locked, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  %fnhe_pmtu15 = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.047, i32 0, i32 3
  %5 = ptrtoint ptr %fnhe_pmtu15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fnhe_pmtu15, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %new)
  %cmp10.not = icmp ult i32 %6, %new
  br i1 %cmp10.not, label %if.then9.do.end25_crit_edge, label %if.then11

if.then9.do.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %fnhe_pmtu15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %new, ptr %fnhe_pmtu15, align 4
  %8 = ptrtoint ptr %fnhe_mtu_locked to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %fnhe_mtu_locked, align 4
  br label %do.end25

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %new)
  %cmp16 = icmp ugt i32 %6, %new
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %orig)
  %cmp18 = icmp eq i32 %6, %orig
  %or.cond = or i1 %cmp16, %cmp18
  br i1 %or.cond, label %if.then19, label %if.else.do.end25_crit_edge

if.else.do.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %fnhe_pmtu15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new, ptr %fnhe_pmtu15, align 4
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %if.else.do.end25_crit_edge, %if.then11, %if.then9.do.end25_crit_edge
  %10 = ptrtoint ptr %fnhe.047 to i32
  call void @__asan_load4_noabort(i32 %10)
  %fnhe.0 = load ptr, ptr %fnhe.047, align 4
  %tobool6.not = icmp eq ptr %fnhe.0, null
  br i1 %tobool6.not, label %do.end25.for.end_crit_edge, label %do.end25.for.body7_crit_edge

do.end25.for.body7_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

do.end25.for.end_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %do.end25.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_sync_mtu(ptr noundef readonly %dev, i32 noundef %orig_mtu) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_mix.i.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex.i, align 4
  %xor.i = xor i32 %5, %3
  %mul.i.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %shr.i.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -56
  %tobool2.not2629 = icmp eq ptr %add.ptr, null
  %tobool2.not26 = or i1 %tobool.not, %tobool2.not2629
  br i1 %tobool2.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nh.027 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr10, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %nh.027 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nh.027, align 4
  %cmp = icmp eq ptr %9, %dev
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  %nhc_exceptions.i = getelementptr inbounds %struct.fib_nh_common, ptr %nh.027, i32 0, i32 13
  %12 = ptrtoint ptr %nhc_exceptions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nhc_exceptions.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i23 = getelementptr %struct.fnhe_hash_bucket, ptr %13, i32 %i.048.i
  %14 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %fnhe.045.i = load ptr, ptr %arrayidx.i23, align 4
  %tobool6.not46.i = icmp eq ptr %fnhe.045.i, null
  br i1 %tobool6.not46.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body7.i_crit_edge

for.body.i.for.body7.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body7.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body7.i:                                      ; preds = %do.end25.i.for.body7.i_crit_edge, %for.body.i.for.body7.i_crit_edge
  %fnhe.047.i = phi ptr [ %fnhe.0.i, %do.end25.i.for.body7.i_crit_edge ], [ %fnhe.045.i, %for.body.i.for.body7.i_crit_edge ]
  %fnhe_mtu_locked.i = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.047.i, i32 0, i32 4
  %15 = ptrtoint ptr %fnhe_mtu_locked.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fnhe_mtu_locked.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not.i = icmp eq i8 %16, 0
  %fnhe_pmtu15.i = getelementptr inbounds %struct.fib_nh_exception, ptr %fnhe.047.i, i32 0, i32 3
  %17 = ptrtoint ptr %fnhe_pmtu15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fnhe_pmtu15.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %11)
  %cmp10.not.i = icmp ult i32 %18, %11
  br i1 %cmp10.not.i, label %if.then9.i.do.end25.i_crit_edge, label %if.then11.i

if.then9.i.do.end25.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %fnhe_pmtu15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %fnhe_pmtu15.i, align 4
  %20 = ptrtoint ptr %fnhe_mtu_locked.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fnhe_mtu_locked.i, align 4
  br label %do.end25.i

if.else.i:                                        ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %11)
  %cmp16.i = icmp ugt i32 %18, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %orig_mtu)
  %cmp18.i = icmp eq i32 %18, %orig_mtu
  %or.cond.i = or i1 %cmp16.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %if.else.i.do.end25.i_crit_edge

if.else.i.do.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %fnhe_pmtu15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %11, ptr %fnhe_pmtu15.i, align 4
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then19.i, %if.else.i.do.end25.i_crit_edge, %if.then11.i, %if.then9.i.do.end25.i_crit_edge
  %22 = ptrtoint ptr %fnhe.047.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %fnhe.0.i = load ptr, ptr %fnhe.047.i, align 4
  %tobool6.not.i = icmp eq ptr %fnhe.0.i, null
  br i1 %tobool6.not.i, label %do.end25.i.for.end.i_crit_edge, label %do.end25.i.for.body7.i_crit_edge

do.end25.i.for.body7.i_crit_edge:                 ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7.i

do.end25.i.for.end.i_crit_edge:                   ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %do.end25.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.end.i.for.inc_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %for.end.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nh.027, i32 0, i32 1
  %23 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nh_hash, align 4
  %tobool6.not = icmp eq ptr %24, null
  %add.ptr10 = getelementptr i8, ptr %24, i32 -56
  %tobool2.not30 = icmp eq ptr %add.ptr10, null
  %tobool2.not = or i1 %tobool6.not, %tobool2.not30
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_sync_down_dev(ptr noundef readonly %dev, i32 noundef %event, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash_mix.i.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex.i, align 4
  %xor.i = xor i32 %5, %3
  %mul.i.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %shr.i.i.i
  %spec.select = select i1 %force, i32 -1, i32 255
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -56
  %tobool3.not131135 = icmp eq ptr %add.ptr, null
  %tobool3.not131 = or i1 %tobool1.not, %tobool3.not131135
  br i1 %tobool3.not131, label %entry.for.end84_crit_edge, label %for.body.lr.ph

entry.for.end84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp49 = icmp eq i32 %event, 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %prev_fi.0134 = phi ptr [ null, %for.body.lr.ph ], [ %prev_fi.1, %cleanup.for.body_crit_edge ]
  %nh.0133 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr80, %cleanup.for.body_crit_edge ]
  %ret.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %cleanup.for.body_crit_edge ]
  %nh_parent = getelementptr inbounds %struct.fib_nh, ptr %nh.0133, i32 0, i32 2
  %8 = ptrtoint ptr %nh_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nh_parent, align 4
  %fib_nhs = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %do.body9, label %do.end15, !prof !180

do.body9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_semantics.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2004, 0\0A.popsection", ""() #12, !srcloc !199
  unreachable

do.end15:                                         ; preds = %for.body
  %12 = ptrtoint ptr %nh.0133 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nh.0133, align 4
  %cmp.not = icmp ne ptr %13, %dev
  %cmp16 = icmp eq ptr %9, %prev_fi.0134
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %do.end15.cleanup_crit_edge, label %if.end18

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %do.end15
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 20
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 18
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %dead.0 = phi i32 [ 0, %if.end18 ], [ %dead.1, %for.inc ]
  %nhsel.0 = phi i32 [ 0, %if.end18 ], [ %inc59, %for.inc ]
  %nexthop_nh.0 = phi ptr [ %fib_nh, %if.end18 ], [ %incdec.ptr, %for.inc ]
  %14 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond19
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_group.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i123 = icmp eq i8 %17, 0
  br i1 %tobool.not.i123, label %if.then.i.fib_info_num_path.exit_crit_edge, label %if.then.i125

if.then.i.fib_info_num_path.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then.i125:                                     ; preds = %if.then.i
  %18 = getelementptr inbounds %struct.nexthop, ptr %15, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %18, align 4
  %call.i124 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i124, label %if.then.i125.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i125.do.end10.i_crit_edge:                ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i125
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i125.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_multipath.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not.i = icmp eq i8 %22, 0
  br i1 %tobool12.not.i, label %do.end10.i.fib_info_num_path.exit_crit_edge, label %if.then13.i

do.end10.i.fib_info_num_path.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %24 to i32
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then13.i, %do.end10.i.fib_info_num_path.exit_crit_edge, %if.then.i.fib_info_num_path.exit_crit_edge
  %retval.0.i = phi i32 [ %26, %if.end.i ], [ 1, %if.then.i.fib_info_num_path.exit_crit_edge ], [ %conv.i, %if.then13.i ], [ 1, %do.end10.i.fib_info_num_path.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp21 = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp21, label %for.body22, label %fib_info_num_path.exit.for.end_crit_edge

fib_info_num_path.exit.for.end_crit_edge:         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body22:                                       ; preds = %fib_info_num_path.exit
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 6
  %27 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nhc_flags, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.not = icmp eq i8 %29, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %dead.0, 1
  br label %if.end48

if.else:                                          ; preds = %for.body22
  %30 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nexthop_nh.0, align 4
  %cmp28 = icmp eq ptr %31, %dev
  br i1 %cmp28, label %land.lhs.true, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true:                                    ; preds = %if.else
  %nhc_scope = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 3
  %32 = ptrtoint ptr %nhc_scope to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nhc_scope, align 4
  %conv31 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv31)
  %cmp32.not = icmp eq i32 %spec.select, %conv31
  br i1 %cmp32.not, label %land.lhs.true.if.end48_crit_edge, label %if.then34

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then34:                                        ; preds = %land.lhs.true
  %34 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %event, label %if.then34.sw.epilog_crit_edge [
    i32 2, label %if.then34.sw.bb_crit_edge
    i32 6, label %if.then34.sw.bb_crit_edge142
    i32 4, label %if.then34.sw.bb39_crit_edge
  ]

if.then34.sw.bb39_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb39

if.then34.sw.bb_crit_edge142:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then34.sw.bb_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.then34.sw.epilog_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then34.sw.bb_crit_edge, %if.then34.sw.bb_crit_edge142
  %35 = or i8 %28, 1
  %36 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %nhc_flags, align 1
  br label %sw.bb39

sw.bb39:                                          ; preds = %sw.bb, %if.then34.sw.bb39_crit_edge
  %37 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nhc_flags, align 1
  %39 = or i8 %38, 16
  store i8 %39, ptr %nhc_flags, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.then34.sw.epilog_crit_edge
  tail call fastcc void @call_fib_nh_notifiers(ptr noundef %nexthop_nh.0, i32 noundef 7)
  %inc46 = add i32 %dead.0, 1
  br label %if.end48

if.end48:                                         ; preds = %sw.epilog, %land.lhs.true.if.end48_crit_edge, %if.else.if.end48_crit_edge, %if.then25
  %dead.1 = phi i32 [ %inc, %if.then25 ], [ %inc46, %sw.epilog ], [ %dead.0, %land.lhs.true.if.end48_crit_edge ], [ %dead.0, %if.else.if.end48_crit_edge ]
  br i1 %cmp49, label %land.lhs.true51, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true51:                                  ; preds = %if.end48
  %40 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nexthop_nh.0, align 4
  %cmp54 = icmp eq ptr %41, %dev
  br i1 %cmp54, label %if.then56, label %land.lhs.true51.for.inc_crit_edge

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fib_nhs, align 4
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true51.for.inc_crit_edge, %if.end48.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc59 = add nuw i32 %nhsel.0, 1
  br label %for.cond19

for.end:                                          ; preds = %if.then56, %fib_info_num_path.exit.for.end_crit_edge
  %dead.2 = phi i32 [ %43, %if.then56 ], [ %dead.0, %fib_info_num_path.exit.for.end_crit_edge ]
  %44 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dead.2, i32 %45)
  %cmp61 = icmp eq i32 %dead.2, %45
  br i1 %cmp61, label %if.then63, label %for.end.if.end71_crit_edge

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then63:                                        ; preds = %for.end
  %46 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %event, label %if.then63.sw.epilog69_crit_edge [
    i32 2, label %if.then63.sw.bb64_crit_edge
    i32 6, label %if.then63.sw.bb64_crit_edge143
    i32 4, label %if.then63.sw.bb66_crit_edge
  ]

if.then63.sw.bb66_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb66

if.then63.sw.bb64_crit_edge143:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb64

if.then63.sw.bb64_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb64

if.then63.sw.epilog69_crit_edge:                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog69

sw.bb64:                                          ; preds = %if.then63.sw.bb64_crit_edge, %if.then63.sw.bb64_crit_edge143
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 6
  %47 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fib_flags, align 4
  %or65 = or i32 %48, 1
  store i32 %or65, ptr %fib_flags, align 4
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb64, %if.then63.sw.bb66_crit_edge
  %fib_flags67 = getelementptr inbounds %struct.fib_info, ptr %9, i32 0, i32 6
  %49 = ptrtoint ptr %fib_flags67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fib_flags67, align 4
  %or68 = or i32 %50, 16
  store i32 %or68, ptr %fib_flags67, align 4
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %sw.bb66, %if.then63.sw.epilog69_crit_edge
  %inc70 = add i32 %ret.0132, 1
  br label %if.end71

if.end71:                                         ; preds = %sw.epilog69, %for.end.if.end71_crit_edge
  %ret.1 = phi i32 [ %inc70, %sw.epilog69 ], [ %ret.0132, %for.end.if.end71_crit_edge ]
  tail call fastcc void @fib_rebalance(ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end15.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end71 ], [ %ret.0132, %do.end15.cleanup_crit_edge ]
  %prev_fi.1 = phi ptr [ %9, %if.end71 ], [ %prev_fi.0134, %do.end15.cleanup_crit_edge ]
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nh.0133, i32 0, i32 1
  %51 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nh_hash, align 4
  %tobool76.not = icmp eq ptr %52, null
  %add.ptr80 = getelementptr i8, ptr %52, i32 -56
  %tobool3.not138 = icmp eq ptr %add.ptr80, null
  %tobool3.not = or i1 %tobool76.not, %tobool3.not138
  br i1 %tobool3.not, label %cleanup.for.end84_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end84_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.end84:                                        ; preds = %cleanup.for.end84_crit_edge, %entry.for.end84_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end84_crit_edge ], [ %ret.2, %cleanup.for.end84_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @call_fib_nh_notifiers(ptr noundef %nh, i32 noundef %event_type) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.fib_nh_notifier_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i, label %entry.do.end8.i_crit_edge, label %lor.lhs.false.i

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 258, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %3, null
  br i1 %tobool10.not.i, label %do.end8.i.ip_ignore_linkdown.exit_crit_edge, label %land.lhs.true11.i

do.end8.i.ip_ignore_linkdown.exit_crit_edge:      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_ignore_linkdown.exit

land.lhs.true11.i:                                ; preds = %do.end8.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 6
  %8 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx.i = getelementptr %struct.ipv4_devconf, ptr %9, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not.i = icmp eq i32 %11, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %land.lhs.true11.i.if.then18.i_crit_edge

land.lhs.true11.i.if.then18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

lor.lhs.false15.i:                                ; preds = %land.lhs.true11.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %3, i32 0, i32 21, i32 1, i32 28
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not.i = icmp eq i32 %13, 0
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.ip_ignore_linkdown.exit_crit_edge, label %lor.lhs.false15.i.if.then18.i_crit_edge

lor.lhs.false15.i.if.then18.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

lor.lhs.false15.i.ip_ignore_linkdown.exit_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_ignore_linkdown.exit

if.then18.i:                                      ; preds = %lor.lhs.false15.i.if.then18.i_crit_edge, %land.lhs.true11.i.if.then18.i_crit_edge
  br label %ip_ignore_linkdown.exit

ip_ignore_linkdown.exit:                          ; preds = %if.then18.i, %lor.lhs.false15.i.ip_ignore_linkdown.exit_crit_edge, %do.end8.i.ip_ignore_linkdown.exit_crit_edge
  %rc.0.off0.i = phi i1 [ true, %if.then18.i ], [ false, %lor.lhs.false15.i.ip_ignore_linkdown.exit_crit_edge ], [ false, %do.end8.i.ip_ignore_linkdown.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #12
  %14 = getelementptr inbounds %struct.fib_nh_notifier_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %info, align 8
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %nh, ptr %14, align 8
  %17 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %event_type, label %ip_ignore_linkdown.exit.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 7, label %sw.bb17
  ]

ip_ignore_linkdown.exit.cleanup_crit_edge:        ; preds = %ip_ignore_linkdown.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %ip_ignore_linkdown.exit
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %18 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nhc_flags, align 1
  %conv = zext i8 %19 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call.not = xor i1 %rc.0.off0.i, true
  %and8 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %call.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %ip_ignore_linkdown.exit
  br i1 %rc.0.off0.i, label %land.lhs.true20, label %sw.bb17.lor.lhs.false_crit_edge

sw.bb17.lor.lhs.false_crit_edge:                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true20:                                  ; preds = %sw.bb17
  %nhc_flags22 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %20 = ptrtoint ptr %nhc_flags22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nhc_flags22, align 1
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool25.not = icmp eq i8 %22, 0
  br i1 %tobool25.not, label %land.lhs.true20.lor.lhs.false_crit_edge, label %land.lhs.true20.cleanup.sink.split_crit_edge

land.lhs.true20.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true20.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20.lor.lhs.false_crit_edge, %sw.bb17.lor.lhs.false_crit_edge
  %nhc_flags27 = getelementptr inbounds %struct.fib_nh_common, ptr %nh, i32 0, i32 6
  %23 = ptrtoint ptr %nhc_flags27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nhc_flags27, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool30.not = icmp eq i8 %25, 0
  br i1 %tobool30.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %land.lhs.true20.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %26 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nh, align 4
  %nd_net.i1 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 127
  %28 = ptrtoint ptr %nd_net.i1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nd_net.i1, align 4
  %call36 = call i32 @call_fib4_notifiers(ptr noundef %29, i32 noundef %event_type, ptr noundef nonnull %info) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %ip_ignore_linkdown.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib_sync_up(ptr noundef %dev, i8 noundef zeroext %nh_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %if.end

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.end:                                           ; preds = %entry
  %2 = and i8 %nh_flags, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @dev_get_flags(ptr noundef %dev) #12
  %and5 = and i32 %call, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or = or i8 %nh_flags, 16
  %spec.select = select i1 %tobool6.not, i8 %nh_flags, i8 %or
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  %nh_flags.addr.1 = phi i8 [ %spec.select, %if.then3 ], [ %nh_flags, %if.end.if.end11_crit_edge ]
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i, align 4
  %hash_mix.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %hash_mix.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_mix.i.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex.i, align 4
  %xor.i = xor i32 %8, %6
  %mul.i.i.i.i = mul i32 %xor.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @fib_info_devhash, i32 0, i32 %shr.i.i.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 -56
  %tobool15.not147151 = icmp eq ptr %add.ptr, null
  %tobool15.not147 = or i1 %tobool13.not, %tobool15.not147151
  br i1 %tobool15.not147, label %if.end11.cleanup95_crit_edge, label %for.body.lr.ph

if.end11.cleanup95_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

for.body.lr.ph:                                   ; preds = %if.end11
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %neg = xor i8 %nh_flags.addr.1, -1
  %conv77 = zext i8 %nh_flags.addr.1 to i32
  %neg78 = xor i32 %conv77, -1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %prev_fi.0150 = phi ptr [ null, %for.body.lr.ph ], [ %prev_fi.1, %cleanup.for.body_crit_edge ]
  %nh.0149 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr90, %cleanup.for.body_crit_edge ]
  %ret.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %cleanup.for.body_crit_edge ]
  %nh_parent = getelementptr inbounds %struct.fib_nh, ptr %nh.0149, i32 0, i32 2
  %11 = ptrtoint ptr %nh_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nh_parent, align 4
  %fib_nhs = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %do.body21, label %do.end27, !prof !180

do.body21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/fib_semantics.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2162, 0\0A.popsection", ""() #12, !srcloc !200
  unreachable

do.end27:                                         ; preds = %for.body
  %15 = ptrtoint ptr %nh.0149 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nh.0149, align 4
  %cmp.not = icmp ne ptr %16, %dev
  %cmp29 = icmp eq ptr %12, %prev_fi.0150
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp29
  br i1 %or.cond, label %do.end27.cleanup_crit_edge, label %if.end32

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %do.end27
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 20
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 18
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %if.end32
  %alive.0 = phi i32 [ 0, %if.end32 ], [ %alive.1, %for.inc ]
  %nhsel.0 = phi i32 [ 0, %if.end32 ], [ %inc73, %for.inc ]
  %nexthop_nh.0 = phi ptr [ %fib_nh, %if.end32 ], [ %incdec.ptr, %for.inc ]
  %17 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond33
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_group.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i139 = icmp eq i8 %20, 0
  br i1 %tobool.not.i139, label %if.then.i.fib_info_num_path.exit_crit_edge, label %if.then.i141

if.then.i.fib_info_num_path.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then.i141:                                     ; preds = %if.then.i
  %21 = getelementptr inbounds %struct.nexthop, ptr %18, i32 0, i32 12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %21, align 4
  %call.i140 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i140, label %if.then.i141.do.end10.i_crit_edge, label %lor.lhs.false.i

if.then.i141.do.end10.i_crit_edge:                ; preds = %if.then.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %if.then.i141
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i142, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i142:                               ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i142.do.end10.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i142.do.end10.i_crit_edge:          ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i142
  %.b18.i = load i1, ptr @nexthop_num_path.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_num_path.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.do.end10.i_crit_edge, %land.lhs.true.i142.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %if.then.i141.do.end10.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_multipath.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.i = icmp eq i8 %25, 0
  br i1 %tobool12.not.i, label %do.end10.i.fib_info_num_path.exit_crit_edge, label %if.then13.i

do.end10.i.fib_info_num_path.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_info_num_path.exit

if.then13.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %num_nh.i = getelementptr inbounds %struct.nh_group, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %num_nh.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_nh.i, align 4
  %conv.i = zext i16 %27 to i32
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fib_nhs, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then13.i, %do.end10.i.fib_info_num_path.exit_crit_edge, %if.then.i.fib_info_num_path.exit_crit_edge
  %retval.0.i = phi i32 [ %29, %if.end.i ], [ 1, %if.then.i.fib_info_num_path.exit_crit_edge ], [ %conv.i, %if.then13.i ], [ 1, %do.end10.i.fib_info_num_path.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp35 = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp35, label %for.body37, label %for.end

for.body37:                                       ; preds = %fib_info_num_path.exit
  %nhc_flags = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 6
  %30 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nhc_flags, align 1
  %and41132 = and i8 %31, %nh_flags.addr.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41132)
  %tobool42.not = icmp eq i8 %and41132, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %alive.0, 1
  br label %for.inc

if.end44:                                         ; preds = %for.body37
  %32 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nexthop_nh.0, align 4
  %tobool47.not = icmp eq ptr %33, null
  br i1 %tobool47.not, label %if.end44.for.inc_crit_edge, label %lor.lhs.false48

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false48:                                  ; preds = %if.end44
  %flags51 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags51, align 8
  %and52 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp ne i32 %and52, 0
  %cmp58.not = icmp eq ptr %33, %dev
  %or.cond134 = select i1 %tobool53.not, i1 %cmp58.not, i1 false
  br i1 %or.cond134, label %lor.lhs.false60, label %lor.lhs.false48.for.inc_crit_edge

lor.lhs.false48.for.inc_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false60:                                  ; preds = %lor.lhs.false48
  %call.i136 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i136, label %lor.lhs.false60.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false60.__in_dev_get_rtnl.exit_crit_edge: ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false60
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i137 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i138

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rtnl.exit

if.then.i138:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 249, ptr noundef nonnull @.str.42) #12
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i138, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %lor.lhs.false60.__in_dev_get_rtnl.exit_crit_edge
  %36 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ip_ptr.i, align 32
  %tobool62.not = icmp eq ptr %37, null
  br i1 %tobool62.not, label %__in_dev_get_rtnl.exit.for.inc_crit_edge, label %if.end64

__in_dev_get_rtnl.exit.for.inc_crit_edge:         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end64:                                         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc65 = add i32 %alive.0, 1
  %38 = ptrtoint ptr %nhc_flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nhc_flags, align 1
  %and70 = and i8 %39, %neg
  store i8 %and70, ptr %nhc_flags, align 1
  tail call fastcc void @call_fib_nh_notifiers(ptr noundef %nexthop_nh.0, i32 noundef 6)
  br label %for.inc

for.inc:                                          ; preds = %if.end64, %__in_dev_get_rtnl.exit.for.inc_crit_edge, %lor.lhs.false48.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %if.then43
  %alive.1 = phi i32 [ %inc65, %if.end64 ], [ %alive.0, %__in_dev_get_rtnl.exit.for.inc_crit_edge ], [ %alive.0, %lor.lhs.false48.for.inc_crit_edge ], [ %alive.0, %if.end44.for.inc_crit_edge ], [ %inc, %if.then43 ]
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc73 = add nuw i32 %nhsel.0, 1
  br label %for.cond33

for.end:                                          ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alive.0)
  %cmp74 = icmp sgt i32 %alive.0, 0
  br i1 %cmp74, label %if.then76, label %for.end.if.end81_crit_edge

for.end.if.end81_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then76:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %fib_flags = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 6
  %40 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fib_flags, align 4
  %and79 = and i32 %41, %neg78
  store i32 %and79, ptr %fib_flags, align 4
  %inc80 = add i32 %ret.0148, 1
  br label %if.end81

if.end81:                                         ; preds = %if.then76, %for.end.if.end81_crit_edge
  %ret.1 = phi i32 [ %inc80, %if.then76 ], [ %ret.0148, %for.end.if.end81_crit_edge ]
  tail call fastcc void @fib_rebalance(ptr noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.end27.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end81 ], [ %ret.0148, %do.end27.cleanup_crit_edge ]
  %prev_fi.1 = phi ptr [ %12, %if.end81 ], [ %prev_fi.0150, %do.end27.cleanup_crit_edge ]
  %nh_hash = getelementptr inbounds %struct.fib_nh, ptr %nh.0149, i32 0, i32 1
  %42 = ptrtoint ptr %nh_hash to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nh_hash, align 4
  %tobool86.not = icmp eq ptr %43, null
  %add.ptr90 = getelementptr i8, ptr %43, i32 -56
  %tobool15.not152 = icmp eq ptr %add.ptr90, null
  %tobool15.not = or i1 %tobool86.not, %tobool15.not152
  br i1 %tobool15.not, label %cleanup.cleanup95_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.cleanup95_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

cleanup95:                                        ; preds = %cleanup.cleanup95_crit_edge, %if.end11.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup95_crit_edge ], [ 0, %if.end11.cleanup95_crit_edge ], [ %ret.2, %cleanup.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_select_multipath(ptr nocapture noundef %res, i32 noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fi1 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %0 = ptrtoint ptr %fi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi1, align 4
  %nh = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !188

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nexthop_path_fib_result(ptr noundef %res, i32 noundef %hash)
  br label %cleanup25

if.end:                                           ; preds = %entry
  %fib_net = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fib_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fib_net, align 4
  %fib_nh = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 20
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 15
  %sysctl_fib_multipath_use_neigh = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 130
  %nh_sel = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 2
  %nhc = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = phi ptr [ %.pr, %for.inc ], [ null, %if.end ]
  %first.0.off0 = phi i1 [ %first.2.off0, %for.inc ], [ false, %if.end ]
  %nhsel.0 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %nexthop_nh.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %fib_nh, %if.end ]
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %6) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %8, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nhsel.0, i32 %retval.0.i)
  %cmp = icmp ult i32 %nhsel.0, %retval.0.i
  br i1 %cmp, label %for.body, label %fib_info_num_path.exit.cleanup25_crit_edge

fib_info_num_path.exit.cleanup25_crit_edge:       ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

for.body:                                         ; preds = %fib_info_num_path.exit
  %9 = ptrtoint ptr %sysctl_fib_multipath_use_neigh to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysctl_fib_multipath_use_neigh, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %for.body.if.end13_crit_edge, label %if.then6

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then6:                                         ; preds = %for.body
  %nhc_scope.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 3
  %11 = ptrtoint ptr %nhc_scope.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nhc_scope.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %12)
  %cmp.i = icmp eq i8 %12, -3
  br i1 %cmp.i, label %if.then.i51, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then.i51:                                      ; preds = %if.then6
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i.i50 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i50, label %if.then.i51.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i51.rcu_read_lock_bh.exit.i_crit_edge:    ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i51
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 750, ptr noundef nonnull @.str.45) #12
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %if.then.i51.rcu_read_lock_bh.exit.i_crit_edge
  %nhc_gw_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 5
  %13 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nhc_gw_family.i, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %14, label %rcu_read_lock_bh.exit.i.if.end26.i_crit_edge [
    i8 2, label %if.then7.i
    i8 10, label %if.end22.i
  ], !prof !201

rcu_read_lock_bh.exit.i.if.end26.i_crit_edge:     ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then7.i:                                       ; preds = %rcu_read_lock_bh.exit.i
  %16 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nexthop_nh.0, align 4
  %nhc_gw.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 8
  %18 = ptrtoint ptr %nhc_gw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nhc_gw.i, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 14
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %21, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i40.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i40.i, i32 %19, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31) to i32))
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then7.i.do.end8.i.i.i_crit_edge

if.then7.i.do.end8.i.i.i_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then7.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b65.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 305, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %if.then7.i.do.end8.i.i.i_crit_edge
  %hash_rnd.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %17 to i32
  %xor.i.i.i = xor i32 %spec.store.select.i.i, %23
  %24 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hash_rnd.i.i.i, align 4
  %mul.i.i.i = mul i32 %25, %xor.i.i.i
  %hash_shift.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %hash_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash_shift.i.i.i, align 4
  %sub.i.i.i = sub i32 32, %27
  %shr.i.i.i = lshr i32 %mul.i.i.i, %sub.i.i.i
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %22, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %29, i32 %shr.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %call16.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %land.lhs.true18.i.i.i, label %do.end8.i.i.i.do.end26.i.i.i_crit_edge

do.end8.i.i.i.do.end26.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i.i

land.lhs.true18.i.i.i:                            ; preds = %do.end8.i.i.i
  %call19.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge, label %land.lhs.true21.i.i.i

land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge:   ; preds = %land.lhs.true18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i.i

land.lhs.true21.i.i.i:                            ; preds = %land.lhs.true18.i.i.i
  %.b6164.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.47, align 1
  br i1 %.b6164.i.i.i, label %land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge, label %if.then23.i.i.i

land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge:   ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 310, ptr noundef nonnull @.str.19) #12
  br label %do.end26.i.i.i

do.end26.i.i.i:                                   ; preds = %if.then23.i.i.i, %land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge, %land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge, %do.end8.i.i.i.do.end26.i.i.i_crit_edge
  %cmp.not66.i.i.i = icmp eq ptr %31, null
  br i1 %cmp.not66.i.i.i, label %do.end26.i.i.i.if.end26.i_crit_edge, label %do.end26.i.i.i.for.body.i.i.i_crit_edge

do.end26.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end26.i.i.i
  br label %for.body.i.i.i

do.end26.i.i.i.if.end26.i_crit_edge:              ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

for.body.i.i.i:                                   ; preds = %do.end49.i.i.i.for.body.i.i.i_crit_edge, %do.end26.i.i.i.for.body.i.i.i_crit_edge
  %n.067.i.i.i = phi ptr [ %37, %do.end49.i.i.i.for.body.i.i.i_crit_edge ], [ %31, %do.end26.i.i.i.for.body.i.i.i_crit_edge ]
  %dev28.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i.i, i32 0, i32 25
  %32 = ptrtoint ptr %dev28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev28.i.i.i, align 4
  %cmp29.i.i.i = icmp eq ptr %33, %17
  br i1 %cmp29.i.i.i, label %land.lhs.true30.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true30.i.i.i:                            ; preds = %for.body.i.i.i
  %primary_key.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i.i, i32 0, i32 27
  %34 = ptrtoint ptr %primary_key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %primary_key.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %spec.store.select.i.i)
  %cmp.i.i.i = icmp eq i32 %35, %spec.store.select.i.i
  br i1 %cmp.i.i.i, label %land.lhs.true30.i.i.i.if.then24.i_crit_edge, label %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true30.i.i.i.if.then24.i_crit_edge:      ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %36 = ptrtoint ptr %n.067.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %n.067.i.i.i, align 8
  %call39.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %call39.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %land.lhs.true41.i.i.i, label %for.inc.i.i.i.do.end49.i.i.i_crit_edge

for.inc.i.i.i.do.end49.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i.i

land.lhs.true41.i.i.i:                            ; preds = %for.inc.i.i.i
  %call42.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge, label %land.lhs.true44.i.i.i

land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge:   ; preds = %land.lhs.true41.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i.i

land.lhs.true44.i.i.i:                            ; preds = %land.lhs.true41.i.i.i
  %.b6263.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.48, align 1
  br i1 %.b6263.i.i.i, label %land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge, label %if.then46.i.i.i

land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge:   ; preds = %land.lhs.true44.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i.i

if.then46.i.i.i:                                  ; preds = %land.lhs.true44.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 312, ptr noundef nonnull @.str.19) #12
  br label %do.end49.i.i.i

do.end49.i.i.i:                                   ; preds = %if.then46.i.i.i, %land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge, %land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge, %for.inc.i.i.i.do.end49.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %37, null
  br i1 %cmp.not.i.i.i, label %do.end49.i.i.i.if.end26.i_crit_edge, label %do.end49.i.i.i.for.body.i.i.i_crit_edge

do.end49.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.end49.i.i.i.if.end26.i_crit_edge:              ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.end22.i:                                       ; preds = %rcu_read_lock_bh.exit.i
  %38 = ptrtoint ptr %nexthop_nh.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nexthop_nh.0, align 4
  %nhc_gw19.i = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 8
  %call20.i = tail call fastcc ptr @__ipv6_neigh_lookup_noref_stub(ptr noundef %39, ptr noundef %nhc_gw19.i) #12
  %tobool23.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool23.not.i, label %if.end22.i.if.end26.i_crit_edge, label %if.end22.i.if.then24.i_crit_edge

if.end22.i.if.then24.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

if.end22.i.if.end26.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end22.i.if.then24.i_crit_edge, %land.lhs.true30.i.i.i.if.then24.i_crit_edge
  %n.053.i = phi ptr [ %call20.i, %if.end22.i.if.then24.i_crit_edge ], [ %n.067.i.i.i, %land.lhs.true30.i.i.i.if.then24.i_crit_edge ]
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %n.053.i, i32 0, i32 12
  %40 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nud_state.i, align 8
  %conv25.i = zext i8 %41 to i32
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end26.i_crit_edge, %do.end49.i.i.i.if.end26.i_crit_edge, %do.end26.i.i.i.if.end26.i_crit_edge, %rcu_read_lock_bh.exit.i.if.end26.i_crit_edge
  %state.0.i = phi i32 [ %conv25.i, %if.then24.i ], [ 2, %if.end22.i.if.end26.i_crit_edge ], [ 2, %rcu_read_lock_bh.exit.i.if.end26.i_crit_edge ], [ 2, %do.end26.i.i.i.if.end26.i_crit_edge ], [ 2, %do.end49.i.i.i.if.end26.i_crit_edge ]
  %call.i41.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i41.i, label %if.end26.i.fib_good_nh.exit_crit_edge, label %land.lhs.true.i44.i

if.end26.i.fib_good_nh.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_good_nh.exit

land.lhs.true.i44.i:                              ; preds = %if.end26.i
  %call1.i42.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call1.i42.i, 0
  br i1 %tobool.not.i43.i, label %land.lhs.true.i44.i.fib_good_nh.exit_crit_edge, label %land.lhs.true2.i46.i

land.lhs.true.i44.i.fib_good_nh.exit_crit_edge:   ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_good_nh.exit

land.lhs.true2.i46.i:                             ; preds = %land.lhs.true.i44.i
  %.b4.i45.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i45.i, label %land.lhs.true2.i46.i.fib_good_nh.exit_crit_edge, label %if.then.i47.i

land.lhs.true2.i46.i.fib_good_nh.exit_crit_edge:  ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_good_nh.exit

if.then.i47.i:                                    ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 761, ptr noundef nonnull @.str.49) #12
  br label %fib_good_nh.exit

fib_good_nh.exit:                                 ; preds = %if.then.i47.i, %land.lhs.true2.i46.i.fib_good_nh.exit_crit_edge, %land.lhs.true.i44.i.fib_good_nh.exit_crit_edge, %if.end26.i.fib_good_nh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %and.i = and i32 %state.0.i, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool28.i.not, label %fib_good_nh.exit.for.inc_crit_edge, label %fib_good_nh.exit.if.end9_crit_edge

fib_good_nh.exit.if.end9_crit_edge:               ; preds = %fib_good_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

fib_good_nh.exit.for.inc_crit_edge:               ; preds = %fib_good_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end9:                                          ; preds = %fib_good_nh.exit.if.end9_crit_edge, %if.then6.if.end9_crit_edge
  br i1 %first.0.off0, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %nhsel.0 to i8
  %42 = ptrtoint ptr %nh_sel to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %nh_sel, align 1
  %43 = ptrtoint ptr %nhc to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %nexthop_nh.0, ptr %nhc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %first.1.off0 = phi i1 [ true, %if.end9.if.end13_crit_edge ], [ true, %if.then11 ], [ %first.0.off0, %for.body.if.end13_crit_edge ]
  %nhc_upper_bound = getelementptr inbounds %struct.fib_nh_common, ptr %nexthop_nh.0, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nhc_upper_bound, i32 noundef 4) #12
  %44 = ptrtoint ptr %nhc_upper_bound to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %nhc_upper_bound, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %hash)
  %cmp16 = icmp slt i32 %45, %hash
  br i1 %cmp16, label %if.end13.for.inc_crit_edge, label %if.end19

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = trunc i32 %nhsel.0 to i8
  %46 = ptrtoint ptr %nh_sel to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv20, ptr %nh_sel, align 1
  %47 = ptrtoint ptr %nhc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %nexthop_nh.0, ptr %nhc, align 4
  br label %cleanup25

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %fib_good_nh.exit.for.inc_crit_edge
  %first.2.off0 = phi i1 [ %first.1.off0, %if.end13.for.inc_crit_edge ], [ %first.0.off0, %fib_good_nh.exit.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.fib_nh, ptr %nexthop_nh.0, i32 1
  %inc = add i32 %nhsel.0, 1
  %48 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load ptr, ptr %nh, align 4
  br label %for.cond

cleanup25:                                        ; preds = %if.end19, %fib_info_num_path.exit.cleanup25_crit_edge, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nexthop_path_fib_result(ptr nocapture noundef %res, i32 noundef %hash) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fi = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %nh1 = getelementptr inbounds %struct.fib_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %nh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nh1, align 4
  %call = tail call ptr @nexthop_select_path(ptr noundef %3, i32 noundef %hash) #12
  %4 = getelementptr inbounds %struct.nexthop, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b12 = load i1, ptr @nexthop_path_fib_result.__warned, align 1
  br i1 %.b12, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_path_fib_result.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 360, ptr noundef nonnull @.str.19) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %7 = getelementptr inbounds %struct.nh_info, ptr %6, i32 0, i32 5
  %nhc = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %8 = ptrtoint ptr %nhc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %nhc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib_select_path(ptr noundef %net, ptr nocapture noundef %res, ptr noundef %fl4, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %last_resort.i = alloca ptr, align 4
  %last_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fl4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flowic_flags = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %2 = ptrtoint ptr %flowic_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flowic_flags, align 1
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.check_saddr_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.check_saddr_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_saddr

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fi = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %5 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fi, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc i32 @nexthop_num_path(ptr noundef nonnull %8) #12
  br label %fib_info_num_path.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fib_nhs.i = getelementptr inbounds %struct.fib_info, ptr %6, i32 0, i32 15
  %9 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib_nhs.i, align 4
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %fib_info_num_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @fib_multipath_hash(ptr noundef %net, ptr noundef %fl4, ptr noundef %skb, ptr noundef null) #12
  tail call void @fib_select_multipath(ptr noundef %res, i32 noundef %call5)
  br label %check_saddr

if.else:                                          ; preds = %fib_info_num_path.exit
  %prefixlen = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 1
  %11 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %prefixlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.else.check_saddr_crit_edge

if.else.check_saddr_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_saddr

land.lhs.true7:                                   ; preds = %if.else
  %table = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 8
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %tb_num_default = getelementptr inbounds %struct.fib_table, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %tb_num_default to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tb_num_default, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp8 = icmp sgt i32 %16, 1
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true7.check_saddr_crit_edge

land.lhs.true7.check_saddr_crit_edge:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_saddr

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %type = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 3
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp12 = icmp eq i8 %18, 1
  br i1 %cmp12, label %if.then14, label %land.lhs.true10.check_saddr_crit_edge

land.lhs.true10.check_saddr_crit_edge:            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_saddr

if.then14:                                        ; preds = %land.lhs.true10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_resort.i) #12
  %19 = ptrtoint ptr %last_resort.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %last_resort.i, align 4
  %fa_head1.i = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 9
  %20 = ptrtoint ptr %fa_head1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fa_head1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_idx.i) #12
  %22 = ptrtoint ptr %last_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %last_idx.i, align 4
  %23 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fi, align 4
  %fib_priority.i = getelementptr inbounds %struct.fib_info, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %fib_priority.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fib_priority.i, align 4
  %call.i34 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i, label %if.then14.do.end.i_crit_edge

if.then14.do.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then14
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b184.i = load i1, ptr @fib_select_default.__warned, align 1
  br i1 %.b184.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i36

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i36:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fib_select_default.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 2066, ptr noundef nonnull @.str.50) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i36, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then14.do.end.i_crit_edge
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %fa.0244.i = load volatile ptr, ptr %21, align 4
  %tobool15.not245.i = icmp eq ptr %fa.0244.i, null
  br i1 %tobool15.not245.i, label %do.end.i.fib_select_default.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.fib_select_default.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_select_default.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %tb_id31.i = getelementptr inbounds %struct.fib_table, ptr %14, i32 0, i32 1
  %scope.i = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fa.0253.i = phi ptr [ %fa.0244.i, %for.body.lr.ph.i ], [ %fa.0.i, %for.inc.i.for.body.i_crit_edge ]
  %fi.0252.i = phi ptr [ null, %for.body.lr.ph.i ], [ %fi.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %order.0250.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %order.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %fa1.0249.i = phi ptr [ null, %for.body.lr.ph.i ], [ %fa1.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %last_prio.0247.i = phi i32 [ %26, %for.body.lr.ph.i ], [ %last_prio.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %last_tos.0246.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %last_tos.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %fa_info.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 1
  %28 = ptrtoint ptr %fa_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fa_info.i, align 4
  %fa_slen.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 5
  %30 = ptrtoint ptr %fa_slen.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fa_slen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %31)
  %cmp.not.i = icmp eq i8 %31, 32
  br i1 %cmp.not.i, label %if.end20.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end20.i:                                       ; preds = %for.body.i
  %fa_tos.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 2
  %32 = ptrtoint ptr %fa_tos.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fa_tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not.i = icmp eq i8 %33, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end30.i_crit_edge, label %land.lhs.true23.i

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

land.lhs.true23.i:                                ; preds = %if.end20.i
  %34 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flowic_tos.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp27.not.i = icmp eq i8 %33, %35
  br i1 %cmp27.not.i, label %land.lhs.true23.i.if.end30.i_crit_edge, label %land.lhs.true23.i.for.inc.i_crit_edge

land.lhs.true23.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true23.i.if.end30.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.end30.i:                                       ; preds = %land.lhs.true23.i.if.end30.i_crit_edge, %if.end20.i.if.end30.i_crit_edge
  %tb_id.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 6
  %36 = ptrtoint ptr %tb_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tb_id.i, align 4
  %38 = ptrtoint ptr %tb_id31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tb_id31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp32.not.i = icmp eq i32 %37, %39
  br i1 %cmp32.not.i, label %if.end35.i, label %if.end30.i.for.inc.i_crit_edge

if.end30.i.for.inc.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end35.i:                                       ; preds = %if.end30.i
  %fib_priority36.i = getelementptr inbounds %struct.fib_info, ptr %29, i32 0, i32 13
  %40 = ptrtoint ptr %fib_priority36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fib_priority36.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %last_prio.0247.i)
  %cmp37.i = icmp ugt i32 %41, %last_prio.0247.i
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %last_tos.0246.i)
  %cmp43.i = icmp eq i8 %33, %last_tos.0246.i
  %or.cond235.i = select i1 %cmp37.i, i1 %cmp43.i, i1 false
  br i1 %or.cond235.i, label %if.then45.i, label %if.end49.i

if.then45.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %last_tos.0246.i)
  %tobool46.not.i = icmp eq i8 %last_tos.0246.i, 0
  br i1 %tobool46.not.i, label %if.then45.i.for.end.i_crit_edge, label %if.then45.i.for.inc.i_crit_edge

if.then45.i.for.inc.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then45.i.for.end.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end49.i:                                       ; preds = %if.end35.i
  %fib_flags.i = getelementptr inbounds %struct.fib_info, ptr %29, i32 0, i32 6
  %42 = ptrtoint ptr %fib_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fib_flags.i, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end49.i.for.inc.i_crit_edge

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end52.i:                                       ; preds = %if.end49.i
  %fib_scope.i = getelementptr inbounds %struct.fib_info, ptr %29, i32 0, i32 9
  %44 = ptrtoint ptr %fib_scope.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fib_scope.i, align 2
  %46 = ptrtoint ptr %scope.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %scope.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp57.not.i = icmp eq i8 %45, %47
  br i1 %cmp57.not.i, label %lor.lhs.false.i, label %if.end52.i.for.inc.i_crit_edge

if.end52.i.for.inc.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end52.i
  %fa_type.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 3
  %48 = ptrtoint ptr %fa_type.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fa_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp60.not.i = icmp eq i8 %49, 1
  br i1 %cmp60.not.i, label %if.end63.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end63.i:                                       ; preds = %lor.lhs.false.i
  %nh.i.i = getelementptr inbounds %struct.fib_info, ptr %29, i32 0, i32 18
  %50 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !188

if.then.i.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %51, i32 noundef 0) #12
  br label %fib_info_nhc.exit.i

if.end.i.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.fib_info, ptr %29, i32 0, i32 20, i32 0
  br label %fib_info_nhc.exit.i

fib_info_nhc.exit.i:                              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %arrayidx.i.i, %if.end.i.i ]
  %nhc_gw_family.i = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %nhc_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nhc_gw_family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool65.not.i = icmp eq i8 %53, 0
  br i1 %tobool65.not.i, label %fib_info_nhc.exit.i.for.inc.i_crit_edge, label %lor.lhs.false66.i

fib_info_nhc.exit.i.for.inc.i_crit_edge:          ; preds = %fib_info_nhc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false66.i:                                ; preds = %fib_info_nhc.exit.i
  %nhc_scope.i = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %nhc_scope.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nhc_scope.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %55)
  %cmp68.not.i = icmp eq i8 %55, -3
  br i1 %cmp68.not.i, label %if.end71.i, label %lor.lhs.false66.i.for.inc.i_crit_edge

lor.lhs.false66.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end71.i:                                       ; preds = %lor.lhs.false66.i
  %fa_state.i.i = getelementptr inbounds %struct.fib_alias, ptr %fa.0253.i, i32 0, i32 4
  %56 = ptrtoint ptr %fa_state.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fa_state.i.i, align 2
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i186.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i186.i, label %if.then.i187.i, label %if.end71.i.fib_alias_accessed.exit.i_crit_edge

if.end71.i.fib_alias_accessed.exit.i_crit_edge:   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_alias_accessed.exit.i

if.then.i187.i:                                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i8 %57, 1
  %59 = ptrtoint ptr %fa_state.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %or.i.i, ptr %fa_state.i.i, align 2
  br label %fib_alias_accessed.exit.i

fib_alias_accessed.exit.i:                        ; preds = %if.then.i187.i, %if.end71.i.fib_alias_accessed.exit.i_crit_edge
  %tobool72.not.i = icmp eq ptr %fi.0252.i, null
  br i1 %tobool72.not.i, label %if.then73.i, label %if.else.i

if.then73.i:                                      ; preds = %fib_alias_accessed.exit.i
  %60 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fi, align 4
  %cmp75.not.i = icmp eq ptr %29, %61
  br i1 %cmp75.not.i, label %if.then73.i.if.end86.i_crit_edge, label %if.then73.i.if.then107.i_crit_edge

if.then73.i.if.then107.i_crit_edge:               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then107.i

if.then73.i.if.end86.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i

if.else.i:                                        ; preds = %fib_alias_accessed.exit.i
  %fa_default.i = getelementptr inbounds %struct.fib_alias, ptr %fa1.0249.i, i32 0, i32 7
  %62 = ptrtoint ptr %fa_default.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fa_default.i, align 4
  %conv79.i = sext i16 %63 to i32
  %call80.i = call fastcc i32 @fib_detect_death(ptr noundef nonnull %fi.0252.i, i32 noundef %order.0250.i, ptr noundef nonnull %last_resort.i, ptr noundef nonnull %last_idx.i, i32 noundef %conv79.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %if.else.i.if.end86.i_crit_edge

if.else.i.if.end86.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i

if.then82.i:                                      ; preds = %if.else.i
  %fa_default.i.le = getelementptr inbounds %struct.fib_alias, ptr %fa1.0249.i, i32 0, i32 7
  %64 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %fi.0252.i, ptr %fi, align 4
  %nh.i.i.i = getelementptr inbounds %struct.fib_info, ptr %fi.0252.i, i32 0, i32 18
  %65 = ptrtoint ptr %nh.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nh.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !188

if.then.i.i.i:                                    ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %66, i32 noundef 0) #12
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.fib_info, ptr %fi.0252.i, i32 0, i32 20, i32 0
  br label %cleanup.i

if.end86.i:                                       ; preds = %if.else.i.if.end86.i_crit_edge, %if.then73.i.if.end86.i_crit_edge
  %fa1.1.i = phi ptr [ %fa1.0249.i, %if.else.i.if.end86.i_crit_edge ], [ %fa.0253.i, %if.then73.i.if.end86.i_crit_edge ]
  %inc.i = add i32 %order.0250.i, 1
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %arrayidx.i.i.i, %if.end.i.i.i ]
  %nhc.i.i = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %67 = ptrtoint ptr %nhc.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i.i.i, ptr %nhc.i.i, align 4
  %conv83.i = trunc i32 %order.0250.i to i16
  %68 = ptrtoint ptr %fa_default.i.le to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv83.i, ptr %fa_default.i.le, align 4
  br label %fib_select_default.exit

for.inc.i:                                        ; preds = %if.end86.i, %lor.lhs.false66.i.for.inc.i_crit_edge, %fib_info_nhc.exit.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end52.i.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge, %if.then45.i.for.inc.i_crit_edge, %if.end30.i.for.inc.i_crit_edge, %land.lhs.true23.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %last_tos.1.ph.i = phi i8 [ %33, %fib_info_nhc.exit.i.for.inc.i_crit_edge ], [ %33, %lor.lhs.false66.i.for.inc.i_crit_edge ], [ %33, %if.end52.i.for.inc.i_crit_edge ], [ %33, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %last_tos.0246.i, %if.end49.i.for.inc.i_crit_edge ], [ %last_tos.0246.i, %if.then45.i.for.inc.i_crit_edge ], [ %last_tos.0246.i, %if.end30.i.for.inc.i_crit_edge ], [ %last_tos.0246.i, %land.lhs.true23.i.for.inc.i_crit_edge ], [ %last_tos.0246.i, %for.body.i.for.inc.i_crit_edge ], [ %33, %if.end86.i ]
  %last_prio.1.ph.i = phi i32 [ %41, %fib_info_nhc.exit.i.for.inc.i_crit_edge ], [ %41, %lor.lhs.false66.i.for.inc.i_crit_edge ], [ %41, %if.end52.i.for.inc.i_crit_edge ], [ %41, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %last_prio.0247.i, %if.end49.i.for.inc.i_crit_edge ], [ %last_prio.0247.i, %if.then45.i.for.inc.i_crit_edge ], [ %last_prio.0247.i, %if.end30.i.for.inc.i_crit_edge ], [ %last_prio.0247.i, %land.lhs.true23.i.for.inc.i_crit_edge ], [ %last_prio.0247.i, %for.body.i.for.inc.i_crit_edge ], [ %41, %if.end86.i ]
  %fa1.2.ph.i = phi ptr [ %fa1.0249.i, %fib_info_nhc.exit.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %lor.lhs.false66.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %if.end52.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %if.end49.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %if.then45.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %if.end30.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %land.lhs.true23.i.for.inc.i_crit_edge ], [ %fa1.0249.i, %for.body.i.for.inc.i_crit_edge ], [ %fa1.1.i, %if.end86.i ]
  %order.1.ph.i = phi i32 [ %order.0250.i, %fib_info_nhc.exit.i.for.inc.i_crit_edge ], [ %order.0250.i, %lor.lhs.false66.i.for.inc.i_crit_edge ], [ %order.0250.i, %if.end52.i.for.inc.i_crit_edge ], [ %order.0250.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %order.0250.i, %if.end49.i.for.inc.i_crit_edge ], [ %order.0250.i, %if.then45.i.for.inc.i_crit_edge ], [ %order.0250.i, %if.end30.i.for.inc.i_crit_edge ], [ %order.0250.i, %land.lhs.true23.i.for.inc.i_crit_edge ], [ %order.0250.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end86.i ]
  %fi.1.ph.i = phi ptr [ %fi.0252.i, %fib_info_nhc.exit.i.for.inc.i_crit_edge ], [ %fi.0252.i, %lor.lhs.false66.i.for.inc.i_crit_edge ], [ %fi.0252.i, %if.end52.i.for.inc.i_crit_edge ], [ %fi.0252.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %fi.0252.i, %if.end49.i.for.inc.i_crit_edge ], [ %fi.0252.i, %if.then45.i.for.inc.i_crit_edge ], [ %fi.0252.i, %if.end30.i.for.inc.i_crit_edge ], [ %fi.0252.i, %land.lhs.true23.i.for.inc.i_crit_edge ], [ %fi.0252.i, %for.body.i.for.inc.i_crit_edge ], [ %29, %if.end86.i ]
  %69 = ptrtoint ptr %fa.0253.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %fa.0.i = load volatile ptr, ptr %fa.0253.i, align 4
  %tobool15.not.i = icmp eq ptr %fa.0.i, null
  br i1 %tobool15.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then45.i.for.end.i_crit_edge
  %fa1.0.lcssa.i = phi ptr [ %fa1.2.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %fa1.0249.i, %if.then45.i.for.end.i_crit_edge ]
  %order.0.lcssa.i = phi i32 [ %order.1.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %order.0250.i, %if.then45.i.for.end.i_crit_edge ]
  %fi.0.lcssa.i = phi ptr [ %fi.1.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %fi.0252.i, %if.then45.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %order.0.lcssa.i)
  %cmp103.i = icmp slt i32 %order.0.lcssa.i, 1
  %tobool106.not.i = icmp eq ptr %fi.0.lcssa.i, null
  %or.cond.i = select i1 %cmp103.i, i1 true, i1 %tobool106.not.i
  br i1 %or.cond.i, label %for.end.i.if.then107.i_crit_edge, label %if.end112.i

for.end.i.if.then107.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then107.i

if.then107.i:                                     ; preds = %for.end.i.if.then107.i_crit_edge, %if.then73.i.if.then107.i_crit_edge
  %fa1.0242.i = phi ptr [ %fa1.0.lcssa.i, %for.end.i.if.then107.i_crit_edge ], [ %fa1.0249.i, %if.then73.i.if.then107.i_crit_edge ]
  %tobool108.not.i = icmp eq ptr %fa1.0242.i, null
  br i1 %tobool108.not.i, label %if.then107.i.fib_select_default.exit_crit_edge, label %if.then109.i

if.then107.i.fib_select_default.exit_crit_edge:   ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_select_default.exit

if.then109.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #14
  %fa_default110.i = getelementptr inbounds %struct.fib_alias, ptr %fa1.0242.i, i32 0, i32 7
  %70 = ptrtoint ptr %fa_default110.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %fa_default110.i, align 4
  br label %fib_select_default.exit

if.end112.i:                                      ; preds = %for.end.i
  %fa_default113.i = getelementptr inbounds %struct.fib_alias, ptr %fa1.0.lcssa.i, i32 0, i32 7
  %71 = ptrtoint ptr %fa_default113.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fa_default113.i, align 4
  %conv114.i = sext i16 %72 to i32
  %call115.i = call fastcc i32 @fib_detect_death(ptr noundef nonnull %fi.0.lcssa.i, i32 noundef %order.0.lcssa.i, ptr noundef nonnull %last_resort.i, ptr noundef nonnull %last_idx.i, i32 noundef %conv114.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.then117.i, label %if.end120.i

if.then117.i:                                     ; preds = %if.end112.i
  %73 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %fi.0.lcssa.i, ptr %fi, align 4
  %nh.i.i190.i = getelementptr inbounds %struct.fib_info, ptr %fi.0.lcssa.i, i32 0, i32 18
  %74 = ptrtoint ptr %nh.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nh.i.i190.i, align 4
  %tobool.not.i.i191.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i191.i, label %if.end.i.i195.i, label %if.then.i.i193.i, !prof !188

if.then.i.i193.i:                                 ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i192.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %75, i32 noundef 0) #12
  br label %fib_result_assign.exit198.i

if.end.i.i195.i:                                  ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i194.i = getelementptr %struct.fib_info, ptr %fi.0.lcssa.i, i32 0, i32 20, i32 0
  br label %fib_result_assign.exit198.i

fib_result_assign.exit198.i:                      ; preds = %if.end.i.i195.i, %if.then.i.i193.i
  %retval.0.i.i196.i = phi ptr [ %call.i.i192.i, %if.then.i.i193.i ], [ %arrayidx.i.i194.i, %if.end.i.i195.i ]
  %nhc.i197.i = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %76 = ptrtoint ptr %nhc.i197.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i.i196.i, ptr %nhc.i197.i, align 4
  %conv118.i = trunc i32 %order.0.lcssa.i to i16
  %77 = ptrtoint ptr %fa_default113.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv118.i, ptr %fa_default113.i, align 4
  br label %fib_select_default.exit

if.end120.i:                                      ; preds = %if.end112.i
  %78 = ptrtoint ptr %last_idx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %last_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp121.i = icmp sgt i32 %79, -1
  br i1 %cmp121.i, label %if.then123.i, label %if.end120.i.if.end124.i_crit_edge

if.end120.i.if.end124.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124.i

if.then123.i:                                     ; preds = %if.end120.i
  %80 = ptrtoint ptr %last_resort.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %last_resort.i, align 4
  %82 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %fi, align 4
  %nh.i.i200.i = getelementptr inbounds %struct.fib_info, ptr %81, i32 0, i32 18
  %83 = ptrtoint ptr %nh.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nh.i.i200.i, align 4
  %tobool.not.i.i201.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i201.i, label %if.end.i.i205.i, label %if.then.i.i203.i, !prof !188

if.then.i.i203.i:                                 ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i202.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %84, i32 noundef 0) #12
  br label %fib_result_assign.exit208.i

if.end.i.i205.i:                                  ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i204.i = getelementptr %struct.fib_info, ptr %81, i32 0, i32 20, i32 0
  br label %fib_result_assign.exit208.i

fib_result_assign.exit208.i:                      ; preds = %if.end.i.i205.i, %if.then.i.i203.i
  %retval.0.i.i206.i = phi ptr [ %call.i.i202.i, %if.then.i.i203.i ], [ %arrayidx.i.i204.i, %if.end.i.i205.i ]
  %nhc.i207.i = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %85 = ptrtoint ptr %nhc.i207.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %retval.0.i.i206.i, ptr %nhc.i207.i, align 4
  br label %if.end124.i

if.end124.i:                                      ; preds = %fib_result_assign.exit208.i, %if.end120.i.if.end124.i_crit_edge
  %conv125.i = trunc i32 %79 to i16
  %86 = ptrtoint ptr %fa_default113.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv125.i, ptr %fa_default113.i, align 4
  br label %fib_select_default.exit

fib_select_default.exit:                          ; preds = %if.end124.i, %fib_result_assign.exit198.i, %if.then109.i, %if.then107.i.fib_select_default.exit_crit_edge, %cleanup.i, %do.end.i.fib_select_default.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_idx.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_resort.i) #12
  br label %check_saddr

check_saddr:                                      ; preds = %fib_select_default.exit, %land.lhs.true10.check_saddr_crit_edge, %land.lhs.true7.check_saddr_crit_edge, %if.else.check_saddr_crit_edge, %if.then4, %land.lhs.true.check_saddr_crit_edge
  %saddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %87 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %saddr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool17.not = icmp eq i32 %88, 0
  br i1 %tobool17.not, label %if.then18, label %check_saddr.if.end21_crit_edge

check_saddr.if.end21_crit_edge:                   ; preds = %check_saddr
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %check_saddr
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 @fib_result_prefsrc(ptr noundef %net, ptr noundef %res)
  %89 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call19, ptr %saddr, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %check_saddr.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_multipath_hash(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lwtstate_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release_immediate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nexthop_free_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nexthop_num_path(ptr noundef %nh) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !190
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 295, ptr noundef nonnull @.str.19) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %if.then.do.end10_crit_edge
  %is_multipath = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_multipath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_multipath, align 2, !range !190
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nexthop_fib_nhc(ptr noundef %nh, i32 noundef %nhsel) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %is_group = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 9
  %0 = ptrtoint ptr %is_group to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_group, align 2, !range !190
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 376, ptr noundef nonnull @.str.19) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then14, %land.lhs.true12.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %lor.lhs.false.do.end16_crit_edge, %if.then.do.end16_crit_edge
  %is_multipath = getelementptr inbounds %struct.nh_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %is_multipath to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_multipath, align 2, !range !190
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
  %.b5051 = load i1, ptr @nexthop_fib_nhc.__warned.20, align 1
  br i1 %.b5051, label %land.lhs.true38.do.end43_crit_edge, label %if.then40

land.lhs.true38.do.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_fib_nhc.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 384, ptr noundef nonnull @.str.19) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %land.lhs.true38.do.end43_crit_edge, %land.lhs.true35.do.end43_crit_edge, %lor.lhs.false32.do.end43_crit_edge, %if.end25.do.end43_crit_edge
  %14 = getelementptr inbounds %struct.nh_info, ptr %13, i32 0, i32 5
  br label %cleanup45

cleanup45:                                        ; preds = %do.end43, %nexthop_mpath_select.exit.cleanup45_crit_edge, %if.then19.cleanup45_crit_edge
  %retval.1 = phi ptr [ %14, %do.end43 ], [ null, %nexthop_mpath_select.exit.cleanup45_crit_edge ], [ null, %if.then19.cleanup45_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_cmp_encap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_get_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fib_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inetdev_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nexthop_mpath_fill_node(ptr noundef %skb, ptr nocapture noundef readonly %nh) unnamed_addr #5 align 64 {
entry:
  %flags.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
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
  %.b2 = load i1, ptr @nexthop_mpath_fill_node.__warned, align 1
  br i1 %.b2, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_mpath_fill_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 319, ptr noundef nonnull @.str.42) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = getelementptr inbounds %struct.nexthop, ptr %nh, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %num_nh = getelementptr inbounds %struct.nh_group, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_nh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp6.not = icmp eq i16 %4, 0
  br i1 %cmp6.not, label %do.end.cleanup37_crit_edge, label %for.body.lr.ph

do.end.cleanup37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nh_group, ptr %2, i32 0, i32 8, i32 %i.07
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %7 = getelementptr inbounds %struct.nexthop, ptr %6, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %call11 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call11, label %for.body.do.end23_crit_edge, label %lor.lhs.false

for.body.do.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

lor.lhs.false:                                    ; preds = %for.body
  %call13 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b441 = load i1, ptr @nexthop_mpath_fill_node.__warned.43, align 1
  br i1 %.b441, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nexthop_mpath_fill_node.__warned.43, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 324, ptr noundef nonnull @.str.19) #12
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %lor.lhs.false.do.end23_crit_edge, %for.body.do.end23_crit_edge
  %10 = getelementptr inbounds %struct.nh_info, ptr %9, i32 0, i32 5
  %weight27 = getelementptr %struct.nh_group, ptr %2, i32 0, i32 8, i32 %i.07, i32 1
  %11 = ptrtoint ptr %weight27 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %weight27, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flags.i) #12
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %flags.i, align 1
  %call.i = tail call ptr @nla_reserve_nohdr(ptr noundef %skb, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end23.fib_add_nexthop.exit.thread_crit_edge, label %if.end.i

do.end23.fib_add_nexthop.exit.thread_crit_edge:   ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_add_nexthop.exit.thread

if.end.i:                                         ; preds = %do.end23
  %conv.i = add i8 %12, -1
  %rtnh_hops.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %rtnh_hops.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %rtnh_hops.i, align 1
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %18, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %rtnh_ifindex.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %rtnh_ifindex.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %rtnh_ifindex.i, align 4
  %call2.i = call i32 @fib_nexthop_info(ptr noundef %skb, ptr noundef %10, i8 noundef zeroext 2, ptr noundef nonnull %flags.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %cond.end.i.fib_add_nexthop.exit.thread_crit_edge, label %for.inc

cond.end.i.fib_add_nexthop.exit.thread_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_add_nexthop.exit.thread

fib_add_nexthop.exit.thread:                      ; preds = %cond.end.i.fib_add_nexthop.exit.thread_crit_edge, %do.end23.fib_add_nexthop.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #12
  br label %cleanup37

for.inc:                                          ; preds = %cond.end.i
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 1
  %rtnh_flags.i = getelementptr inbounds %struct.rtnexthop, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %rtnh_flags.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rtnh_flags.i, align 2
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv12.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv12.i, ptr %call.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flags.i) #12
  %inc = add nuw nsw i32 %i.07, 1
  %26 = ptrtoint ptr %num_nh to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_nh, align 4
  %conv = zext i16 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup37_crit_edge

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup37:                                        ; preds = %for.inc.cleanup37_crit_edge, %fib_add_nexthop.exit.thread, %do.end.cleanup37_crit_edge
  %retval.2 = phi i32 [ -90, %fib_add_nexthop.exit.thread ], [ 0, %do.end.cleanup37_crit_edge ], [ 0, %for.inc.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_fib_table_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_fib4_notifiers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nexthop_select_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ipv6_neigh_lookup_noref_stub(ptr noundef %dev, ptr nocapture noundef readonly %pkey) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %0 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_tbl, align 4
  %nht1.i = getelementptr inbounds %struct.neigh_table, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %nht1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %nht1.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end8.i_crit_edge

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b65.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 305, ptr noundef nonnull @.str.19) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  %hash_rnd.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pkey, align 4
  %7 = ptrtoint ptr %dev to i32
  %xor.i1 = xor i32 %6, %7
  %8 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i, align 4
  %mul.i = mul i32 %xor.i1, %9
  %arrayidx2.i2 = getelementptr i32, ptr %pkey, i32 1
  %10 = ptrtoint ptr %arrayidx2.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i2, align 4
  %arrayidx3.i3 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx3.i3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i3, align 4
  %mul4.i = mul i32 %13, %11
  %add.i = add i32 %mul4.i, %mul.i
  %arrayidx5.i4 = getelementptr i32, ptr %pkey, i32 2
  %14 = ptrtoint ptr %arrayidx5.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i4, align 4
  %arrayidx6.i5 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx6.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i5, align 4
  %mul7.i = mul i32 %17, %15
  %add8.i = add i32 %add.i, %mul7.i
  %arrayidx9.i6 = getelementptr i32, ptr %pkey, i32 3
  %18 = ptrtoint ptr %arrayidx9.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i6, align 4
  %arrayidx10.i7 = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx10.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i7, align 4
  %mul11.i = mul i32 %21, %19
  %add12.i = add i32 %add8.i, %mul11.i
  %hash_shift.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %hash_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_shift.i, align 4
  %sub.i = sub i32 32, %23
  %shr.i = lshr i32 %add12.i, %sub.i
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %shr.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i, align 4
  %call16.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %do.end8.i.do.end26.i_crit_edge

do.end8.i.do.end26.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %do.end8.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b6164.i = load i1, ptr @___neigh_lookup_noref.__warned.47, align 1
  br i1 %.b6164.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 310, ptr noundef nonnull @.str.19) #12
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %do.end8.i.do.end26.i_crit_edge
  %cmp.not66.i = icmp eq ptr %27, null
  br i1 %cmp.not66.i, label %do.end26.i.___neigh_lookup_noref.exit_crit_edge, label %do.end26.i.for.body.i_crit_edge

do.end26.i.for.body.i_crit_edge:                  ; preds = %do.end26.i
  br label %for.body.i

do.end26.i.___neigh_lookup_noref.exit_crit_edge:  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %___neigh_lookup_noref.exit

for.body.i:                                       ; preds = %do.end49.i.for.body.i_crit_edge, %do.end26.i.for.body.i_crit_edge
  %n.067.i = phi ptr [ %47, %do.end49.i.for.body.i_crit_edge ], [ %27, %do.end26.i.for.body.i_crit_edge ]
  %dev28.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i, i32 0, i32 25
  %28 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28.i, align 4
  %cmp29.i = icmp eq ptr %29, %dev
  br i1 %cmp29.i, label %land.lhs.true30.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true30.i:                                ; preds = %for.body.i
  %primary_key.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i, i32 0, i32 27
  %30 = ptrtoint ptr %primary_key.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %primary_key.i, align 4
  %32 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pkey, align 4
  %xor.i = xor i32 %33, %31
  %arrayidx2.i = getelementptr %struct.neighbour, ptr %n.067.i, i32 1
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i, align 4
  %36 = ptrtoint ptr %arrayidx2.i2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i2, align 4
  %xor4.i = xor i32 %37, %35
  %or.i = or i32 %xor4.i, %xor.i
  %arrayidx5.i = getelementptr %struct.neighbour, ptr %n.067.i, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i, align 4
  %40 = ptrtoint ptr %arrayidx5.i4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i4, align 4
  %xor7.i = xor i32 %41, %39
  %or8.i = or i32 %or.i, %xor7.i
  %arrayidx9.i = getelementptr %struct.neighbour, ptr %n.067.i, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i, align 4
  %44 = ptrtoint ptr %arrayidx9.i6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i6, align 4
  %xor11.i = xor i32 %45, %43
  %or12.i = or i32 %or8.i, %xor11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i)
  %cmp.i = icmp eq i32 %or12.i, 0
  br i1 %cmp.i, label %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge, label %land.lhs.true30.i.for.inc.i_crit_edge

land.lhs.true30.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %___neigh_lookup_noref.exit

for.inc.i:                                        ; preds = %land.lhs.true30.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %n.067.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %n.067.i, align 8
  %call39.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true41.i, label %for.inc.i.do.end49.i_crit_edge

for.inc.i.do.end49.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i

land.lhs.true41.i:                                ; preds = %for.inc.i
  %call42.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true41.i.do.end49.i_crit_edge, label %land.lhs.true44.i

land.lhs.true41.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i

land.lhs.true44.i:                                ; preds = %land.lhs.true41.i
  %.b6263.i = load i1, ptr @___neigh_lookup_noref.__warned.48, align 1
  br i1 %.b6263.i, label %land.lhs.true44.i.do.end49.i_crit_edge, label %if.then46.i

land.lhs.true44.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i

if.then46.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.46, i32 noundef 312, ptr noundef nonnull @.str.19) #12
  br label %do.end49.i

do.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true44.i.do.end49.i_crit_edge, %land.lhs.true41.i.do.end49.i_crit_edge, %for.inc.i.do.end49.i_crit_edge
  %cmp.not.i = icmp eq ptr %47, null
  br i1 %cmp.not.i, label %do.end49.i.___neigh_lookup_noref.exit_crit_edge, label %do.end49.i.for.body.i_crit_edge

do.end49.i.for.body.i_crit_edge:                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end49.i.___neigh_lookup_noref.exit_crit_edge:  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %___neigh_lookup_noref.exit

___neigh_lookup_noref.exit:                       ; preds = %do.end49.i.___neigh_lookup_noref.exit_crit_edge, %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge, %do.end26.i.___neigh_lookup_noref.exit_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %do.end26.i.___neigh_lookup_noref.exit_crit_edge ], [ %n.067.i, %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge ], [ null, %do.end49.i.___neigh_lookup_noref.exit_crit_edge ]
  ret ptr %n.0.lcssa.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fib_detect_death(ptr noundef %fi, i32 noundef %order, ptr nocapture noundef writeonly %last_resort, ptr nocapture noundef %last_idx, i32 noundef %dflt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %fi, i32 0, i32 18
  %0 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !188

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call fastcc ptr @nexthop_fib_nhc(ptr noundef nonnull %1, i32 noundef 0) #12
  br label %fib_info_nhc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.fib_info, ptr %fi, i32 0, i32 20, i32 0
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %arrayidx.i, %if.end.i ]
  %nhc_gw_family = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i, i32 0, i32 5
  %2 = ptrtoint ptr %nhc_gw_family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nhc_gw_family, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %3, label %fib_info_nhc.exit.cleanup_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then8
  ], !prof !201

fib_info_nhc.exit.cleanup_crit_edge:              ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nhc_gw = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i, i32 0, i32 8
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %retval.0.i, align 4
  %call3 = tail call ptr @neigh_lookup(ptr noundef nonnull @arp_tbl, ptr noundef %nhc_gw, ptr noundef %6) #12
  br label %if.end13

if.then8:                                         ; preds = %fib_info_nhc.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %7 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_tbl, align 4
  %nhc_gw9 = getelementptr inbounds %struct.fib_nh_common, ptr %retval.0.i, i32 0, i32 8
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retval.0.i, align 4
  %call11 = tail call ptr @neigh_lookup(ptr noundef %9, ptr noundef %nhc_gw9, ptr noundef %11) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then
  %n.0 = phi ptr [ %call3, %if.then ], [ %call11, %if.then8 ]
  %tobool14.not = icmp eq ptr %n.0, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 12
  %12 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nud_state, align 8
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %n.0, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !187
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i59, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %neigh_release.exit

if.then.i59:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @neigh_destroy(ptr noundef nonnull %n.0) #12
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i59, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp19 = icmp eq i8 %13, 2
  br i1 %cmp19, label %neigh_release.exit.cleanup_crit_edge, label %if.end22

neigh_release.exit.cleanup_crit_edge:             ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %neigh_release.exit
  %15 = and i8 %13, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %order, i32 %dflt)
  %cmp24.not = icmp eq i32 %order, %dflt
  %or.cond = or i1 %cmp24.not, %tobool23.not
  br i1 %or.cond, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end27.if.then38_crit_edge

if.end27.if.then38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end27
  %16 = ptrtoint ptr %last_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp30 = icmp sgt i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %order, i32 %dflt)
  %cmp33 = icmp sle i32 %order, %dflt
  %or.cond57.not = or i1 %cmp33, %cmp30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp36.not = icmp eq i8 %13, 1
  %or.cond58 = select i1 %or.cond57.not, i1 true, i1 %cmp36.not
  br i1 %or.cond58, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end27.if.then38_crit_edge
  %18 = ptrtoint ptr %last_resort to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fi, ptr %last_resort, align 4
  %19 = ptrtoint ptr %last_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %order, ptr %last_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %neigh_release.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %fib_info_nhc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ 0, %neigh_release.exit.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 1, %if.then38 ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 0, %fib_info_nhc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !143, !144, !146, !148, !150, !152, !154, !155, !157, !158, !160, !162, !164, !165, !167}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @fib_props, !1, !"fib_props", i1 false, i1 false}
!1 = !{!"../net/ipv4/fib_semantics.c", i32 97, i32 23}
!2 = !{ptr @__ksymtab_fib_nh_common_release, !3, !"__ksymtab_fib_nh_common_release", i1 false, i1 false}
!3 = !{!"../net/ipv4/fib_semantics.c", i32 219, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/fib_semantics.c", i32 251, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @free_fib_info._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @free_fib_info._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_free_fib_info, !11, !"__ksymtab_free_fib_info", i1 false, i1 false}
!11 = !{!"../net/ipv4/fib_semantics.c", i32 257, i32 1}
!12 = !{ptr @fib_nh_common_init.__msg, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../net/ipv4/fib_semantics.c", i32 596, i32 4}
!14 = !{ptr @__ksymtab_fib_nh_common_init, !15, !"__ksymtab_fib_nh_common_init", i1 false, i1 false}
!15 = !{!"../net/ipv4/fib_semantics.c", i32 616, i32 1}
!16 = !{ptr @fib_nh_match.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/ipv4/fib_semantics.c", i32 943, i32 5}
!18 = !{ptr @fib_nh_match.__msg.3, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/ipv4/fib_semantics.c", i32 984, i32 6}
!20 = !{ptr @fib_create_info.__msg, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../net/ipv4/fib_semantics.c", i32 1405, i32 3}
!22 = !{ptr @fib_create_info.__msg.4, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../net/ipv4/fib_semantics.c", i32 1410, i32 3}
!24 = !{ptr @fib_create_info.__msg.5, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../net/ipv4/fib_semantics.c", i32 1426, i32 4}
!26 = !{ptr @fib_create_info.__msg.6, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../net/ipv4/fib_semantics.c", i32 1487, i32 4}
!28 = !{ptr @fib_create_info.__msg.7, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../net/ipv4/fib_semantics.c", i32 1510, i32 4}
!30 = !{ptr @fib_create_info.__msg.8, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../net/ipv4/fib_semantics.c", i32 1524, i32 4}
!32 = !{ptr @fib_create_info.__msg.9, !33, !"__msg", i1 false, i1 false}
!33 = !{!"../net/ipv4/fib_semantics.c", i32 1530, i32 3}
!34 = !{ptr @fib_create_info.__msg.10, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../net/ipv4/fib_semantics.c", i32 1543, i32 4}
!36 = !{ptr @fib_create_info.__msg.11, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/ipv4/fib_semantics.c", i32 1548, i32 4}
!38 = !{ptr @fib_create_info.__msg.12, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../net/ipv4/fib_semantics.c", i32 1576, i32 3}
!40 = !{ptr @__ksymtab_fib_nexthop_info, !41, !"__ksymtab_fib_nexthop_info", i1 false, i1 false}
!41 = !{!"../net/ipv4/fib_semantics.c", i32 1707, i32 1}
!42 = !{ptr @__ksymtab_fib_add_nexthop, !43, !"__ksymtab_fib_add_nexthop", i1 false, i1 false}
!43 = !{!"../net/ipv4/fib_semantics.c", i32 1740, i32 1}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../net/ipv4/fib_semantics.c", i32 1947, i32 11}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../net/ipv4/fib_semantics.c", i32 1954, i32 15}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/ipv4/fib_semantics.c", i32 1956, i32 15}
!50 = !{ptr @fib_info_hash, !51, !"fib_info_hash", i1 false, i1 false}
!51 = !{!"../net/ipv4/fib_semantics.c", i32 52, i32 27}
!52 = !{ptr @fib_info_laddrhash, !53, !"fib_info_laddrhash", i1 false, i1 false}
!53 = !{!"../net/ipv4/fib_semantics.c", i32 53, i32 27}
!54 = !{ptr @fib_info_hash_size, !55, !"fib_info_hash_size", i1 false, i1 false}
!55 = !{!"../net/ipv4/fib_semantics.c", i32 54, i32 21}
!56 = !{ptr @fib_info_cnt, !57, !"fib_info_cnt", i1 false, i1 false}
!57 = !{!"../net/ipv4/fib_semantics.c", i32 56, i32 21}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/ipv4/fib_semantics.c", i32 202, i32 8}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv4/fib_semantics.c", i32 150, i32 22}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/ipv4/fib_semantics.c", i32 169, i32 9}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/ipv4/fib_semantics.c", i32 175, i32 10}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/ipv4/fib_semantics.c", i32 179, i32 11}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv4/fib_semantics.c", i32 51, i32 8}
!70 = !{ptr @fib_info_lock, !69, !"fib_info_lock", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/net/nexthop.h", i32 295, i32 12}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @fib_info_devhash, !76, !"fib_info_devhash", i1 false, i1 false}
!76 = !{!"../net/ipv4/fib_semantics.c", i32 60, i32 26}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/net/nexthop.h", i32 376, i32 12}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/net/nexthop.h", i32 384, i32 8}
!81 = !{ptr @fib_gw_from_attr.__msg, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../net/ipv4/fib_semantics.c", i32 677, i32 3}
!83 = !{ptr @fib_check_nh_v4_gw.__msg, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../net/ipv4/fib_semantics.c", i32 1118, i32 4}
!85 = !{ptr @fib_check_nh_v4_gw.__msg.21, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../net/ipv4/fib_semantics.c", i32 1123, i32 4}
!87 = !{ptr @fib_check_nh_v4_gw.__msg.22, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../net/ipv4/fib_semantics.c", i32 1127, i32 4}
!89 = !{ptr @fib_check_nh_v4_gw.__msg.23, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../net/ipv4/fib_semantics.c", i32 1132, i32 4}
!91 = !{ptr @fib_check_nh_v4_gw.__msg.24, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../net/ipv4/fib_semantics.c", i32 1174, i32 4}
!93 = !{ptr @fib_check_nh_v4_gw.__msg.25, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../net/ipv4/fib_semantics.c", i32 1181, i32 3}
!95 = !{ptr @fib_check_nh_v4_gw.__msg.26, !96, !"__msg", i1 false, i1 false}
!96 = !{!"../net/ipv4/fib_semantics.c", i32 1188, i32 3}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/net/ip_fib.h", i32 380, i32 7}
!99 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../include/net/ip_fib.h", i32 387, i32 7}
!102 = !{ptr @fib_check_nh_nongw.__msg, !103, !"__msg", i1 false, i1 false}
!103 = !{!"../net/ipv4/fib_semantics.c", i32 1208, i32 3}
!104 = !{ptr @fib_check_nh_nongw.__msg.29, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/ipv4/fib_semantics.c", i32 1221, i32 3}
!106 = !{ptr @fib_count_nexthops.__msg, !107, !"__msg", i1 false, i1 false}
!107 = !{!"../net/ipv4/fib_semantics.c", i32 665, i32 3}
!108 = !{ptr @fib_info_hash_bits, !109, !"fib_info_hash_bits", i1 false, i1 false}
!109 = !{!"../net/ipv4/fib_semantics.c", i32 55, i32 21}
!110 = !{ptr @fib_get_nhs.__msg, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../net/ipv4/fib_semantics.c", i32 702, i32 4}
!112 = !{ptr @fib_get_nhs.__msg.30, !113, !"__msg", i1 false, i1 false}
!113 = !{!"../net/ipv4/fib_semantics.c", i32 708, i32 4}
!114 = !{ptr @fib_get_nhs.__msg.31, !115, !"__msg", i1 false, i1 false}
!115 = !{!"../net/ipv4/fib_semantics.c", i32 723, i32 5}
!116 = !{ptr @fib_get_nhs.__msg.32, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../net/ipv4/fib_semantics.c", i32 744, i32 6}
!118 = !{ptr @fib_get_nhs.__msg.33, !119, !"__msg", i1 false, i1 false}
!119 = !{!"../net/ipv4/fib_semantics.c", i32 770, i32 3}
!120 = !{ptr @fib_get_nhs.__msg.34, !121, !"__msg", i1 false, i1 false}
!121 = !{!"../net/ipv4/fib_semantics.c", i32 780, i32 4}
!122 = !{ptr @fib_get_nhs.__msg.35, !123, !"__msg", i1 false, i1 false}
!123 = !{!"../net/ipv4/fib_semantics.c", i32 787, i32 3}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!126 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/inetdevice.h", i32 258, i32 11}
!130 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!133 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!136 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../include/net/nexthop.h", i32 343, i32 12}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/net/nexthop.h", i32 350, i32 8}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/net/nexthop.h", i32 319, i32 25}
!143 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../include/net/nexthop.h", i32 324, i32 25}
!146 = !{ptr @.str.44, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/net/netlink.h", i32 991, i32 3}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../include/net/nexthop.h", i32 360, i32 8}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!154 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!157 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!162 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!163 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!164 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../net/ipv4/fib_semantics.c", i32 2066, i32 2}
!167 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i64 890326, i64 890387}
!179 = !{i64 893058}
!180 = !{!"branch_weights", i32 1, i32 2000}
!181 = !{i64 893343}
!182 = !{i64 2148584520}
!183 = !{i64 2148499253, i64 2148499285, i64 2148499314, i64 2148499348, i64 2148499379, i64 2148499402}
!184 = !{i64 2148584749}
!185 = !{i64 2148498533, i64 2148498559, i64 2148498588, i64 2148498622, i64 2148498653, i64 2148498676}
!186 = !{i64 2148585599}
!187 = !{i64 2148500063, i64 2148500095, i64 2148500124, i64 2148500158, i64 2148500189, i64 2148500212}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2149621322}
!190 = !{i8 0, i8 2}
!191 = !{!"auto-init"}
!192 = !{i64 2148496068, i64 2148496094, i64 2148496123, i64 2148496157, i64 2148496188, i64 2148496211}
!193 = !{i64 2149313335}
!194 = !{i64 2149313601}
!195 = !{i32 0, i32 33}
!196 = !{i64 2148497598, i64 2148497630, i64 2148497659, i64 2148497693, i64 2148497724, i64 2148497747}
!197 = !{i64 981581, i64 981605, i64 981626, i64 981643, i64 981660}
!198 = !{i64 2148334648, i64 2148334928, i64 2148335262, i64 2148335596}
!199 = !{i64 2158962418, i64 2158962908, i64 2158962455, i64 2158962511, i64 2158962545, i64 2158962569, i64 2158962610, i64 2158962631, i64 2158962659, i64 2158962693}
!200 = !{i64 2158987355, i64 2158987845, i64 2158987392, i64 2158987448, i64 2158987482, i64 2158987506, i64 2158987547, i64 2158987568, i64 2158987596, i64 2158987630}
!201 = !{!"branch_weights", i32 1, i32 4000, i32 1}
