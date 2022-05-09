; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_input.c_pt.bc'
source_filename = "../net/ipv4/ip_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_local_deliver\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_local_deliver\09\09\09\09"
module asm "\09.long\09__crc_ip_local_deliver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_local_deliver:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_local_deliver\22\09\09\09\09\09"
module asm "__kstrtabns_ip_local_deliver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ip_ra_chain = type { ptr, ptr, %union.anon.21, %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.108, %union.anon.110, %union.anon.111, i16, i8, i8, i32, %union.anon.113, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.108 = type { i64 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.113 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.anon.112 = type { i16, i16 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.101, i32, %struct.list_head, ptr }
%union.anon.101 = type { %struct.in6_addr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ip_rt_acct = type { i32, i32, i32, i32 }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }

@ip_call_ra_chain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/ip_input.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ip_call_ra_chain.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inet_protos = external dso_local global [256 x ptr], align 4
@ip_protocol_deliver_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ip_local_deliver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_local_deliver = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_local_deliver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_local_deliver to i32), ptr @__kstrtab_ip_local_deliver, ptr @__kstrtabns_ip_local_deliver }, section "___ksymtab+ip_local_deliver", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip_rcv_finish_core.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_rt_acct = external dso_local local_unnamed_addr global ptr, align 4
@ip_rcv_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016IPv4: source route option %pI4 -> %pI4\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_rcv_options\00", [17 x i8] zeroinitializer }, align 32
@ip_rcv_options._entry_ptr = internal global ptr @ip_rcv_options._entry, section ".printk_index", align 4
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@NF_HOOK_LIST.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 5]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 156, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1011, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 229, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 723, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private constant [23 x i8] c"../net/ipv4/ip_input.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 290, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 232, i32 9 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_ip_local_deliver, ptr @ip_rcv_options._entry, ptr @ip_rcv_options._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_rcv_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ip_call_ra_chain(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %protocol1 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol1, align 1
  %6 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %ra_chain = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 35, i32 8
  %11 = ptrtoint ptr %ra_chain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ra_chain, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @ip_call_ra_chain.__warned, align 1
  br i1 %.b91, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_call_ra_chain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @.str.1) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %entry.do.end10_crit_edge
  %tobool12.not100 = icmp eq ptr %12, null
  br i1 %tobool12.not100, label %do.end10.cleanup66_crit_edge, label %for.body.lr.ph

do.end10.cleanup66_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

for.body.lr.ph:                                   ; preds = %do.end10
  %13 = zext i8 %5 to i16
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %do.end60.for.body_crit_edge, %for.body.lr.ph
  %ra.0103 = phi ptr [ %12, %for.body.lr.ph ], [ %31, %do.end60.for.body_crit_edge ]
  %last.0101 = phi ptr [ null, %for.body.lr.ph ], [ %last.2.ph, %do.end60.for.body_crit_edge ]
  %sk13 = getelementptr inbounds %struct.ip_ra_chain, ptr %ra.0103, i32 0, i32 1
  %14 = ptrtoint ptr %sk13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %land.lhs.true15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true15:                                  ; preds = %for.body
  %16 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.112, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %skc_num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %13)
  %cmp = icmp eq i16 %18, %13
  br i1 %cmp, label %land.lhs.true20, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 6
  %19 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %land.lhs.true20.if.then27_crit_edge, label %lor.lhs.false

land.lhs.true20.if.then27_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp25 = icmp eq i32 %20, %22
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %land.lhs.true20.if.then27_crit_edge
  %23 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i, align 8
  %25 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i94 = zext i16 %26 to i32
  %add.ptr.i.i95 = getelementptr i8, ptr %24, i32 %conv.i.i94
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i95, i32 0, i32 4
  %27 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_off.i, align 2
  %29 = and i16 %28, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i.not = icmp eq i16 %29, 0
  br i1 %cmp.i.not, label %if.then27.if.end35_crit_edge, label %if.then30

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.then27
  %call31 = tail call i32 @ip_defrag(ptr noundef %10, ptr noundef %skb, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end35_crit_edge, label %if.then30.cleanup66_crit_edge

if.then30.cleanup66_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.then27.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %last.0101, null
  br i1 %tobool36.not, label %if.end35.for.inc_crit_edge, label %if.then37

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %if.end35
  %call38 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then37.for.inc_crit_edge, label %if.then40

if.then37.for.inc_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 @raw_rcv(ptr noundef nonnull %last.0101, ptr noundef nonnull %call38) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.then37.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %last.2.ph = phi ptr [ %15, %if.end35.for.inc_crit_edge ], [ %15, %if.then40 ], [ %15, %if.then37.for.inc_crit_edge ], [ %last.0101, %for.body.for.inc_crit_edge ], [ %last.0101, %land.lhs.true15.for.inc_crit_edge ], [ %last.0101, %lor.lhs.false.for.inc_crit_edge ]
  %30 = ptrtoint ptr %ra.0103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %ra.0103, align 4
  %call50 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %for.inc.do.end60_crit_edge

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

land.lhs.true52:                                  ; preds = %for.inc
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b8990 = load i1, ptr @ip_call_ra_chain.__warned.2, align 1
  br i1 %.b8990, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_call_ra_chain.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @.str.1) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %for.inc.do.end60_crit_edge
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %for.end, label %do.end60.for.body_crit_edge

do.end60.for.body_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %do.end60
  %tobool62.not = icmp eq ptr %last.2.ph, null
  br i1 %tobool62.not, label %for.end.cleanup66_crit_edge, label %if.then63

for.end.cleanup66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

if.then63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 @raw_rcv(ptr noundef nonnull %last.2.ph, ptr noundef %skb) #9
  br label %cleanup66

cleanup66:                                        ; preds = %if.then63, %for.end.cleanup66_crit_edge, %if.then30.cleanup66_crit_edge, %do.end10.cleanup66_crit_edge
  %retval.2 = phi i1 [ true, %if.then63 ], [ false, %for.end.cleanup66_crit_edge ], [ false, %do.end10.cleanup66_crit_edge ], [ true, %if.then30.cleanup66_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_rcv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_protocol_deliver_rcu(ptr nocapture noundef readonly %net, ptr noundef %skb, i32 noundef %protocol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  br label %resubmit

resubmit:                                         ; preds = %if.end18.resubmit_crit_edge, %entry
  %protocol.addr.0 = phi i32 [ %protocol, %entry ], [ %sub, %if.end18.resubmit_crit_edge ]
  %call = tail call i32 @raw_local_deliver(ptr noundef %skb, i32 noundef %protocol.addr.0) #9
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %protocol.addr.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %resubmit.do.end8_crit_edge

resubmit.do.end8_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %resubmit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b119 = load i1, ptr @ip_protocol_deliver_rcu.__warned, align 1
  br i1 %.b119, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_protocol_deliver_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 195, ptr noundef nonnull @.str.1) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %resubmit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end8
  %no_policy = getelementptr inbounds %struct.net_protocol, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %no_policy to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %no_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool12.not, label %if.then13, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.then11
  %call14 = tail call fastcc i32 @xfrm4_policy_check(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %4, -8
  %5 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end17.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

if.end17.nf_reset_ct.exit_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %if.end17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #9, !srcloc !66
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !67

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #9
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %5) #9
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %if.end17.nf_reset_ct.exit_crit_edge
  %7 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %nf_reset_ct.exit, %if.then11.if.end18_crit_edge
  %handler = getelementptr inbounds %struct.net_protocol, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler, align 4
  %call19 = tail call i32 %9(ptr noundef %skb) #9
  %cmp = icmp slt i32 %call19, 0
  %sub = sub i32 0, %call19
  br i1 %cmp, label %if.end18.resubmit_crit_edge, label %do.body22

if.end18.resubmit_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

do.body22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %10 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mib, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx30 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %19, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx31 = getelementptr [37 x i64], ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx31, align 8
  %add32 = add i64 %21, 1
  store i64 %add32, ptr %arrayidx31, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %19, i32 0, i32 1, i32 0, i32 1
  %22 = tail call ptr @llvm.returnaddress(i32 0) #9
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %24 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then39, label %do.body70

if.then39:                                        ; preds = %if.else
  %call40 = tail call fastcc i32 @xfrm4_policy_check(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.if.end68_crit_edge, label %do.body43

if.then39.if.end68_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %mib52 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %26 = ptrtoint ptr %mib52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mib52, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i120 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i120 to ptr
  %cpu56 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu56, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx57, align 4
  %add58 = add i32 %34, %28
  %35 = inttoptr i32 %add58 to ptr
  %syncp59 = getelementptr inbounds %struct.ipstats_mib, ptr %35, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp59)
  %arrayidx61 = getelementptr [37 x i64], ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx61, align 8
  %add62 = add i64 %37, 1
  store i64 %add62, ptr %arrayidx61, align 8
  %dep_map.i.i121 = getelementptr inbounds %struct.ipstats_mib, ptr %35, i32 0, i32 1, i32 0, i32 1
  %38 = tail call ptr @llvm.returnaddress(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i121, i32 noundef %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %40 = ptrtoint ptr %syncp59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %syncp59, align 4
  %inc.i.i.i122 = add i32 %41, 1
  store i32 %inc.i.i.i122, ptr %syncp59, align 4
  tail call fastcc void @local_bh_enable()
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 2, i32 noundef 0, ptr noundef %opt.i) #9
  br label %if.end68

if.end68:                                         ; preds = %do.body43, %if.then39.if.end68_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

do.body70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %mib79 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %42 = ptrtoint ptr %mib79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mib79, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i123 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i123 to ptr
  %cpu83 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu83, align 4
  %arrayidx84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %50, %44
  %51 = inttoptr i32 %add85 to ptr
  %syncp86 = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp86)
  %arrayidx88 = getelementptr [37 x i64], ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx88, align 8
  %add89 = add i64 %53, 1
  store i64 %add89, ptr %arrayidx88, align 8
  %dep_map.i.i124 = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #9
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i124, i32 noundef %55) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %56 = ptrtoint ptr %syncp86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp86, align 4
  %inc.i.i.i125 = add i32 %57, 1
  store i32 %inc.i.i.i125, ptr %syncp86, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body70, %if.end68, %do.body22, %if.then16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_local_deliver(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm4_policy_check(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i, align 4
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %5 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %policy_default.i.i.i, align 16
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool1.i.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %entry
  %policy_count.i.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %8 = ptrtoint ptr %policy_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %policy_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true8.i.i, label %if.then5.i.i.lor.lhs.false.i.i_crit_edge

if.then5.i.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i:                               ; preds = %if.then5.i.i
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge, label %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge:   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_policy_check.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true8.i.i.lor.lhs.false.i.i_crit_edge, %if.then5.i.i.lor.lhs.false.i.i_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !70

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i.i = load i32, ptr %13, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge
  %17 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %15, %lor.lhs.false.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool12.not.i.i = icmp ult i32 %17, 2
  br i1 %tobool12.not.i.i, label %skb_dst.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true13.i.i

skb_dst.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !70

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %and25.i11.i.i = and i32 %19, -2
  %20 = inttoptr i32 %and25.i11.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i.i, align 4
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool16.not.i.i, label %skb_dst.exit12.i.i.cleanup.sink.split.i.i_crit_edge, label %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_policy_check.exit

skb_dst.exit12.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i13.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.not.i14.i.i, label %if.else.i.i.skb_dst.exit23.i.i_crit_edge, label %land.lhs.true.i17.i.i

if.else.i.i.skb_dst.exit23.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !70

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit23thread-pre-split.i.i

skb_dst.exit23thread-pre-split.i.i:               ; preds = %do.end.i21.i.i, %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr35.i.i = load i32, ptr %24, align 8
  br label %skb_dst.exit23.i.i

skb_dst.exit23.i.i:                               ; preds = %skb_dst.exit23thread-pre-split.i.i, %if.else.i.i.skb_dst.exit23.i.i_crit_edge
  %28 = phi i32 [ %.pr35.i.i, %skb_dst.exit23thread-pre-split.i.i ], [ %26, %if.else.i.i.skb_dst.exit23.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool21.not.i.i = icmp ult i32 %28, 2
  br i1 %tobool21.not.i.i, label %skb_dst.exit23.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true22.i.i

skb_dst.exit23.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !70

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit34.i.i

skb_dst.exit34.i.i:                               ; preds = %do.end.i32.i.i, %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge, %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %and25.i33.i.i = and i32 %30, -2
  %31 = inttoptr i32 %and25.i33.i.i to ptr
  %flags24.i.i = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags24.i.i, align 4
  %34 = and i16 %33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool27.not.i.i = icmp eq i16 %34, 0
  br i1 %tobool27.not.i.i, label %skb_dst.exit34.i.i.cleanup.sink.split.i.i_crit_edge, label %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge

skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm_policy_check.exit

skb_dst.exit34.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %skb_dst.exit34.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit23.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit12.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit.i.i.cleanup.sink.split.i.i_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.i.i = icmp ne i32 %call30.i.i, 0
  %phi.cast.i.i = zext i1 %tobool31.i.i to i32
  br label %xfrm_policy_check.exit

xfrm_policy_check.exit:                           ; preds = %cleanup.sink.split.i.i, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge
  %retval.0.shrunk.i.i = phi i32 [ 1, %skb_dst.exit12.i.i.xfrm_policy_check.exit_crit_edge ], [ 1, %land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge ], [ 1, %skb_dst.exit34.i.i.xfrm_policy_check.exit_crit_edge ], [ %phi.cast.i.i, %cleanup.sink.split.i.i ]
  ret i32 %retval.0.shrunk.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %5 = tail call i32 @llvm.read_register.i32(metadata !55) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %14 = tail call i32 @llvm.read_register.i32(metadata !55) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !55) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %33 = tail call i32 @llvm.read_register.i32(metadata !55) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !67

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #9
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_local_deliver(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %frag_off.i, align 2
  %11 = and i16 %10, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.not = icmp eq i16 %11, 0
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ip_defrag(ptr noundef %4, ptr noundef %skb, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %4, ptr noundef %skb, ptr noundef %13, ptr noundef nonnull @ip_local_deliver_finish) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i12 = icmp eq i32 %call.i, 1
  br i1 %cmp.i12, label %if.then.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @ip_local_deliver_finish(ptr noundef %4, ptr noundef null, ptr noundef %skb) #9, !callees !76
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call1.i, %if.then.i ], [ %call.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_local_deliver_finish(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %0 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %1 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %3 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  %sub.i6 = sub i32 %5, %sub.i
  store i32 %sub.i6, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i6, i32 %7)
  %cmp.i = icmp ult i32 %sub.i6, %7
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !70

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !77
  unreachable

__skb_pull.exit:                                  ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %sub.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %__skb_pull.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

__skb_pull.exit.rcu_read_lock.exit_crit_edge:     ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %__skb_pull.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %__skb_pull.exit.rcu_read_lock.exit_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol, align 1
  %conv = zext i8 %19 to i32
  tail call void @ip_protocol_deliver_rcu(ptr noundef %net, ptr noundef %skb, i32 noundef %conv)
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i7, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %rcu_read_lock.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %20 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i14 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call fastcc ptr @ip_rcv_core(ptr noundef %skb, ptr noundef %1)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %call1, ptr noundef %dev, ptr noundef nonnull @ip_rcv_finish) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @ip_rcv_finish(ptr noundef %1, ptr noundef null, ptr noundef nonnull %call1) #9, !callees !76
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %call1.i, %if.then.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_rcv_core(ptr noundef %skb, ptr nocapture noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %entry.drop_crit_edge, label %do.body

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

do.body:                                          ; preds = %entry
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %1 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mib, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !55) #9
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
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %10, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx4 = getelementptr [37 x i64], ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx4, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %arrayidx4, align 8
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len5, align 4
  %conv6 = zext i32 %14 to i64
  %arrayidx8 = getelementptr [37 x i64], ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %16, %conv6
  store i64 %add9, ptr %arrayidx8, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %10, i32 0, i32 1, i32 0, i32 1
  %17 = tail call ptr @llvm.returnaddress(i32 0) #9
  %18 = ptrtoint ptr %17 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %19 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %do.body
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread340, !prof !70

skb_share_check.exit.thread340:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end40

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %do.body15

skb_share_check.exit:                             ; preds = %do.body
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.do.body15_crit_edge, label %skb_share_check.exit.if.end40_crit_edge

skb_share_check.exit.if.end40_crit_edge:          ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

skb_share_check.exit.do.body15_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.body15:                                        ; preds = %skb_share_check.exit.do.body15_crit_edge, %skb_share_check.exit.thread
  tail call fastcc void @local_bh_disable()
  %23 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mib, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %29, %25
  %30 = inttoptr i32 %add30 to ptr
  %syncp31 = getelementptr inbounds %struct.ipstats_mib, ptr %30, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp31)
  %arrayidx33 = getelementptr [37 x i64], ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx33, align 8
  %add34 = add i64 %32, 1
  store i64 %add34, ptr %arrayidx33, align 8
  %dep_map.i.i299 = getelementptr inbounds %struct.ipstats_mib, ptr %30, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i299, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %33 = ptrtoint ptr %syncp31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncp31, align 4
  %inc.i.i.i300 = add i32 %34, 1
  store i32 %inc.i.i.i300, ptr %syncp31, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end40:                                         ; preds = %skb_share_check.exit.if.end40_crit_edge, %skb_share_check.exit.thread340
  %skb.addr.0.i343 = phi ptr [ %call7.i, %skb_share_check.exit.thread340 ], [ %skb, %skb_share_check.exit.if.end40_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 6
  %35 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %if.end40.if.end43_crit_edge, !prof !70

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %36)
  %cmp3.i = icmp ult i32 %36, 20
  br i1 %cmp3.i, label %if.end.i.do.body220_crit_edge, label %pskb_may_pull.exit, !prof !70

if.end.i.do.body220_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i343, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body220_crit_edge, label %pskb_may_pull.exit.if.end43_crit_edge

pskb_may_pull.exit.if.end43_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

pskb_may_pull.exit.do.body220_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end43:                                         ; preds = %pskb_may_pull.exit.if.end43_crit_edge, %if.end40.if.end43_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %42 to i32
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %conv.i.i
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load45 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load45, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp47 = icmp ugt i8 %bf.clear, 4
  %bf.lshr50.mask = and i8 %bf.load45, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr50.mask)
  %cmp52.not = icmp eq i8 %bf.lshr50.mask, 64
  %or.cond = and i1 %cmp47, %cmp52.not
  br i1 %or.cond, label %do.body65, label %if.end43.do.body220_crit_edge

if.end43.do.body220_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

do.body65:                                        ; preds = %if.end43
  %44 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mib, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %arrayidx78 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %50, %46
  %51 = inttoptr i32 %add79 to ptr
  %syncp80 = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp80)
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 17
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp85 = icmp eq i16 %55, 0
  %narrow = select i1 %cmp85, i16 1, i16 %55
  %conv89 = zext i16 %narrow to i64
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tos, align 1
  %58 = and i8 %57, 3
  %59 = or i8 %58, 32
  %add92 = zext i8 %59 to i32
  %arrayidx93 = getelementptr [37 x i64], ptr %51, i32 0, i32 %add92
  %60 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx93, align 8
  %add94 = add i64 %61, %conv89
  store i64 %add94, ptr %arrayidx93, align 8
  %dep_map.i.i301 = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i301, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %62 = ptrtoint ptr %syncp80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp80, align 4
  %inc.i.i.i302 = add i32 %63, 1
  store i32 %inc.i.i.i302, ptr %syncp80, align 4
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load98 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear99 = shl i8 %bf.load98, 2
  %65 = and i8 %bf.clear99, 60
  %mul = zext i8 %65 to i32
  %66 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i.i, align 4
  %68 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i305 = sub i32 %67, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i305, i32 %mul)
  %cmp.not.i306 = icmp ult i32 %sub.i.i305, %mul
  br i1 %cmp.not.i306, label %if.end.i308, label %do.body65.if.end103_crit_edge, !prof !70

do.body65.if.end103_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.end.i308:                                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %mul)
  %cmp3.i307 = icmp ult i32 %67, %mul
  br i1 %cmp3.i307, label %if.end.i308.do.body220_crit_edge, label %pskb_may_pull.exit314, !prof !70

if.end.i308.do.body220_crit_edge:                 ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

pskb_may_pull.exit314:                            ; preds = %if.end.i308
  %sub.i309 = sub i32 %mul, %sub.i.i305
  %call13.i310 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i343, i32 noundef %sub.i309) #9
  %cmp14.i311.not = icmp eq ptr %call13.i310, null
  br i1 %cmp14.i311.not, label %pskb_may_pull.exit314.do.body220_crit_edge, label %pskb_may_pull.exit314.if.end103_crit_edge

pskb_may_pull.exit314.if.end103_crit_edge:        ; preds = %pskb_may_pull.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

pskb_may_pull.exit314.do.body220_crit_edge:       ; preds = %pskb_may_pull.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end103:                                        ; preds = %pskb_may_pull.exit314.if.end103_crit_edge, %do.body65.if.end103_crit_edge
  %70 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i, align 8
  %72 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i317 = zext i16 %73 to i32
  %add.ptr.i.i318 = getelementptr i8, ptr %71, i32 %conv.i.i317
  %74 = ptrtoint ptr %add.ptr.i.i318 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load105 = load i8, ptr %add.ptr.i.i318, align 4
  %bf.clear106 = and i8 %bf.load105, 15
  %conv107 = zext i8 %bf.clear106 to i32
  %75 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i318, i32 %conv107) #9, !srcloc !80
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %75, 0
  %76 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #12, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %76)
  %tobool109.not = icmp ugt i32 %76, -65537
  br i1 %tobool109.not, label %if.end113, label %do.body195, !prof !67

if.end113:                                        ; preds = %if.end103
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i318, i32 0, i32 2
  %77 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %tot_len, align 2
  %conv114 = zext i16 %78 to i32
  %79 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv114)
  %cmp116 = icmp ult i32 %80, %conv114
  br i1 %cmp116, label %do.body119, label %if.else

do.body119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %81 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mib, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu, align 4
  %arrayidx133 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx133, align 4
  %add134 = add i32 %87, %83
  %88 = inttoptr i32 %add134 to ptr
  %syncp135 = getelementptr inbounds %struct.ipstats_mib, ptr %88, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp135)
  %arrayidx137 = getelementptr [37 x i64], ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx137, align 8
  %add138 = add i64 %90, 1
  store i64 %add138, ptr %arrayidx137, align 8
  %dep_map.i.i320 = getelementptr inbounds %struct.ipstats_mib, ptr %88, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i320, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  br label %drop.sink.split

if.else:                                          ; preds = %if.end113
  %91 = ptrtoint ptr %add.ptr.i.i318 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load144 = load i8, ptr %add.ptr.i.i318, align 4
  %bf.clear145 = shl i8 %bf.load144, 2
  %92 = and i8 %bf.clear145, 60
  %93 = zext i8 %92 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %93)
  %cmp148 = icmp ult i16 %78, %93
  br i1 %cmp148, label %if.else.do.body220_crit_edge, label %if.end152

if.else.do.body220_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body220

if.end152:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv114)
  %cmp.not.i322 = icmp ugt i32 %80, %conv114
  br i1 %cmp.not.i322, label %pskb_trim_rcsum.exit, label %if.end152.if.end181_crit_edge, !prof !70

if.end152.if.end181_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

pskb_trim_rcsum.exit:                             ; preds = %if.end152
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %skb.addr.0.i343, i32 noundef %conv114) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool154.not = icmp eq i32 %call.i, 0
  br i1 %tobool154.not, label %pskb_trim_rcsum.exit.if.end181_crit_edge, label %do.body156

pskb_trim_rcsum.exit.if.end181_crit_edge:         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

do.body156:                                       ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %94 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mib, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cpu, align 4
  %arrayidx170 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx170, align 4
  %add171 = add i32 %100, %96
  %101 = inttoptr i32 %add171 to ptr
  %syncp172 = getelementptr inbounds %struct.ipstats_mib, ptr %101, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp172)
  %arrayidx174 = getelementptr [37 x i64], ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx174, align 8
  %add175 = add i64 %103, 1
  store i64 %add175, ptr %arrayidx174, align 8
  %dep_map.i.i325 = getelementptr inbounds %struct.ipstats_mib, ptr %101, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i325, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  br label %drop.sink.split

if.end181:                                        ; preds = %pskb_trim_rcsum.exit.if.end181_crit_edge, %if.end152.if.end181_crit_edge
  %104 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i, align 8
  %106 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i329 = zext i16 %107 to i32
  %add.ptr.i.i330 = getelementptr i8, ptr %105, i32 %conv.i.i329
  %108 = ptrtoint ptr %add.ptr.i.i330 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load184 = load i8, ptr %add.ptr.i.i330, align 4
  %bf.clear185 = shl i8 %bf.load184, 2
  %109 = and i8 %bf.clear185, 60
  %mul187 = zext i8 %109 to i16
  %add188 = add i16 %107, %mul187
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 15, i32 0, i32 19
  %110 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %add188, ptr %transport_header, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 3
  %111 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 15, i32 0, i32 7
  %112 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %skb_iif, align 8
  %114 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %cb, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 4, i32 0, i32 1
  %115 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %destructor.i, align 4
  %cmp.i = icmp eq ptr %116, @sock_pfree
  br i1 %cmp.i, label %if.end181.cleanup_crit_edge, label %if.then193

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then193:                                       ; preds = %if.end181
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %116(ptr noundef nonnull %skb.addr.0.i343) #9
  %117 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %destructor.i, align 4
  %118 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %118, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.then193
  %120 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i343, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %tobool3.not.i = icmp eq ptr %122, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %do.body7.i, !prof !67

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

do.body195:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %123 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mib, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cpu, align 4
  %arrayidx209 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %127
  %128 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx209, align 4
  %add210 = add i32 %129, %125
  %130 = inttoptr i32 %add210 to ptr
  %syncp211 = getelementptr inbounds %struct.ipstats_mib, ptr %130, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp211)
  %arrayidx213 = getelementptr [37 x i64], ptr %130, i32 0, i32 31
  %131 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx213, align 8
  %add214 = add i64 %132, 1
  store i64 %add214, ptr %arrayidx213, align 8
  %dep_map.i.i333 = getelementptr inbounds %struct.ipstats_mib, ptr %130, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i333, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %133 = ptrtoint ptr %syncp211 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %syncp211, align 4
  %inc.i.i.i334 = add i32 %134, 1
  store i32 %inc.i.i.i334, ptr %syncp211, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body220

do.body220:                                       ; preds = %do.body195, %if.else.do.body220_crit_edge, %pskb_may_pull.exit314.do.body220_crit_edge, %if.end.i308.do.body220_crit_edge, %if.end43.do.body220_crit_edge, %pskb_may_pull.exit.do.body220_crit_edge, %if.end.i.do.body220_crit_edge
  tail call fastcc void @local_bh_disable()
  %135 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mib, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cpu, align 4
  %arrayidx234 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %141, %137
  %142 = inttoptr i32 %add235 to ptr
  %syncp236 = getelementptr inbounds %struct.ipstats_mib, ptr %142, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp236)
  %arrayidx238 = getelementptr [37 x i64], ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx238, align 8
  %add239 = add i64 %144, 1
  store i64 %add239, ptr %arrayidx238, align 8
  %dep_map.i.i335 = getelementptr inbounds %struct.ipstats_mib, ptr %142, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i335, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  br label %drop.sink.split

drop.sink.split:                                  ; preds = %do.body220, %do.body156, %do.body119
  %syncp236.sink352 = phi ptr [ %syncp236, %do.body220 ], [ %syncp172, %do.body156 ], [ %syncp135, %do.body119 ]
  %145 = ptrtoint ptr %syncp236.sink352 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %syncp236.sink352, align 4
  %inc.i.i.i336 = add i32 %146, 1
  store i32 %inc.i.i.i336, ptr %syncp236.sink352, align 4
  tail call fastcc void @local_bh_enable()
  br label %drop

drop:                                             ; preds = %drop.sink.split, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.drop_crit_edge ], [ %skb.addr.0.i343, %drop.sink.split ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %drop, %do.body.i.cleanup_crit_edge, %if.then.i, %if.end181.cleanup_crit_edge, %do.body15
  %retval.0 = phi ptr [ %skb.addr.0.i343, %if.end181.cleanup_crit_edge ], [ null, %drop ], [ null, %do.body15 ], [ %skb.addr.0.i343, %if.then.i ], [ %skb.addr.0.i343, %do.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_rcv_finish(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %2) #9
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %entry
  %5 = and i64 %4, 537133056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %if.else.i.i.l3mdev_ip_rcv.exit_crit_edge, label %if.else.i.i.if.end5.i.i_crit_edge

if.else.i.i.if.end5.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.else.i.i.l3mdev_ip_rcv.exit_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit

if.end5.i.i:                                      ; preds = %if.else.i.i.if.end5.i.i_crit_edge, %if.then.i.i
  %master.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i ], [ %2, %if.else.i.i.if.end5.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %master.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.l3mdev_ip_rcv.exit_crit_edge, label %land.lhs.true.i.i

if.end5.i.i.l3mdev_ip_rcv.exit_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit

land.lhs.true.i.i:                                ; preds = %if.end5.i.i
  %l3mdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %master.0.i.i, i32 0, i32 45
  %6 = ptrtoint ptr %l3mdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l3mdev_ops.i.i, align 4
  %l3mdev_l3_rcv.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %l3mdev_l3_rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l3mdev_l3_rcv.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.l3mdev_ip_rcv.exit_crit_edge, label %if.then7.i.i

land.lhs.true.i.i.l3mdev_ip_rcv.exit_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = tail call ptr %9(ptr noundef nonnull %master.0.i.i, ptr noundef %skb, i16 noundef zeroext 2) #9
  br label %l3mdev_ip_rcv.exit

l3mdev_ip_rcv.exit:                               ; preds = %if.then7.i.i, %land.lhs.true.i.i.l3mdev_ip_rcv.exit_crit_edge, %if.end5.i.i.l3mdev_ip_rcv.exit_crit_edge, %if.else.i.i.l3mdev_ip_rcv.exit_crit_edge
  %skb.addr.0.i.i = phi ptr [ %call10.i.i, %if.then7.i.i ], [ %skb, %land.lhs.true.i.i.l3mdev_ip_rcv.exit_crit_edge ], [ %skb, %if.end5.i.i.l3mdev_ip_rcv.exit_crit_edge ], [ %skb, %if.else.i.i.l3mdev_ip_rcv.exit_crit_edge ]
  %tobool.not = icmp eq ptr %skb.addr.0.i.i, null
  br i1 %tobool.not, label %l3mdev_ip_rcv.exit.cleanup_crit_edge, label %if.end

l3mdev_ip_rcv.exit.cleanup_crit_edge:             ; preds = %l3mdev_ip_rcv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %l3mdev_ip_rcv.exit
  %call1 = tail call fastcc i32 @ip_rcv_finish_core(ptr noundef %net, ptr noundef nonnull %skb.addr.0.i.i, ptr noundef %2, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i11, label %if.then2.dst_input.exit_crit_edge, label %land.lhs.true.i.i12

if.then2.dst_input.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

land.lhs.true.i.i12:                              ; preds = %if.then2
  %call.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i12.dst_input.exit_crit_edge

land.lhs.true.i.i12.dst_input.exit_crit_edge:     ; preds = %land.lhs.true.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i12
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !70

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i12.dst_input.exit_crit_edge, %if.then2.dst_input.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %17(ptr noundef nonnull %skb.addr.0.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %dst_input.exit, %if.end.cleanup_crit_edge, %l3mdev_ip_rcv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %l3mdev_ip_rcv.exit.cleanup_crit_edge ], [ %call1.i, %dst_input.exit ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_list_rcv(ptr noundef readonly %head, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  %sublist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sublist) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %sublist, i32 0, i32 1
  %1 = ptrtoint ptr %sublist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %sublist, ptr %sublist, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sublist, ptr %0, align 4
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  %cmp.not47 = icmp eq ptr %4, %head
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %curr_dev.051 = phi ptr [ %curr_dev.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %curr_net.050 = phi ptr [ %curr_net.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %skb.048 = phi ptr [ %next.052, %cleanup.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %skb.048 to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.052 = load ptr, ptr %skb.048, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %skb.048, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.048) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.skb_list_del_init.exit_crit_edge

for.body.skb_list_del_init.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %skb.048, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %skb.048 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb.048, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i, %for.body.skb_list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %skb.048 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb.048, align 8
  %call6 = call fastcc ptr @ip_rcv_core(ptr noundef %skb.048, ptr noundef %10)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %skb_list_del_init.exit.cleanup_crit_edge, label %if.end

skb_list_del_init.exit.cleanup_crit_edge:         ; preds = %skb_list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %skb_list_del_init.exit
  %cmp8.not = icmp eq ptr %curr_dev.051, %8
  %cmp9.not = icmp eq ptr %curr_net.050, %10
  %or.cond = select i1 %cmp8.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end
  %18 = ptrtoint ptr %sublist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sublist, align 4
  %cmp.i.not = icmp eq ptr %19, %sublist
  br i1 %cmp.i.not, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ip_sublist_rcv(ptr noundef nonnull %sublist, ptr noundef %curr_dev.051, ptr noundef %curr_net.050)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %20 = ptrtoint ptr %sublist to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sublist, ptr %sublist, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sublist, ptr %0, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end.if.end14_crit_edge
  %curr_net.1 = phi ptr [ %10, %if.end13 ], [ %curr_net.050, %if.end.if.end14_crit_edge ]
  %curr_dev.1 = phi ptr [ %8, %if.end13 ], [ %curr_dev.051, %if.end.if.end14_crit_edge ]
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call6, ptr noundef %23, ptr noundef nonnull %sublist) #9
  br i1 %call.i.i42, label %if.end.i.i43, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i43:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6, ptr %0, align 4
  %25 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sublist, ptr %call6, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call6, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call6, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i43, %if.end14.cleanup_crit_edge, %skb_list_del_init.exit.cleanup_crit_edge
  %curr_net.2 = phi ptr [ %curr_net.050, %skb_list_del_init.exit.cleanup_crit_edge ], [ %curr_net.1, %if.end14.cleanup_crit_edge ], [ %curr_net.1, %if.end.i.i43 ]
  %curr_dev.2 = phi ptr [ %curr_dev.051, %skb_list_del_init.exit.cleanup_crit_edge ], [ %curr_dev.1, %if.end14.cleanup_crit_edge ], [ %curr_dev.1, %if.end.i.i43 ]
  %cmp.not = icmp eq ptr %next.052, %head
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %curr_net.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %curr_net.2, %cleanup.for.end_crit_edge ]
  %curr_dev.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %curr_dev.2, %cleanup.for.end_crit_edge ]
  %28 = ptrtoint ptr %sublist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sublist, align 4
  %cmp.i44.not = icmp eq ptr %29, %sublist
  br i1 %cmp.i44.not, label %for.end.if.end23_crit_edge, label %if.then22

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ip_sublist_rcv(ptr noundef nonnull %sublist, ptr noundef %curr_dev.0.lcssa, ptr noundef %curr_net.0.lcssa)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sublist) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_sublist_rcv(ptr noundef %head, ptr noundef %dev, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  %sublist.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @NF_HOOK_LIST(ptr noundef %net, ptr noundef %head, ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sublist.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %sublist.i, i32 0, i32 1
  %1 = ptrtoint ptr %sublist.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %sublist.i, ptr %sublist.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sublist.i, ptr %0, align 4
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  %cmp.not7.i = icmp eq ptr %4, %head
  br i1 %cmp.not7.i, label %entry.ip_list_rcv_finish.exit_crit_edge, label %for.body.lr.ph.i

entry.ip_list_rcv_finish.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_list_rcv_finish.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %fib_has_custom_rules.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.010.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %next.012.i, %cleanup.i.for.body.i_crit_edge ]
  %hint.09.i = phi ptr [ null, %for.body.lr.ph.i ], [ %hint.2.i, %cleanup.i.for.body.i_crit_edge ]
  %curr_dst.08.i = phi ptr [ null, %for.body.lr.ph.i ], [ %curr_dst.2.i, %cleanup.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %skb.010.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.012.i = load ptr, ptr %skb.010.i, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %skb.010.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.010.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.skb_list_del_init.exit.i_crit_edge

for.body.i.skb_list_del_init.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.010.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %skb.010.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb.010.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %skb_list_del_init.exit.i

skb_list_del_init.exit.i:                         ; preds = %if.end.i.i.i, %for.body.i.skb_list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %skb.010.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %skb.010.i, align 8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 8
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i.i = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %17) #9
  br label %if.end5.i.i.i

if.else.i.i.i:                                    ; preds = %skb_list_del_init.exit.i
  %20 = and i64 %19, 537133056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %.not.i.i.i = icmp eq i64 %20, 0
  br i1 %.not.i.i.i, label %if.else.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge, label %if.else.i.i.i.if.end5.i.i.i_crit_edge

if.else.i.i.i.if.end5.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i.i

if.else.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit.i

if.end5.i.i.i:                                    ; preds = %if.else.i.i.i.if.end5.i.i.i_crit_edge, %if.then.i.i.i
  %master.0.i.i.i = phi ptr [ %call1.i.i.i, %if.then.i.i.i ], [ %17, %if.else.i.i.i.if.end5.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %master.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end5.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge:     ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end5.i.i.i
  %l3mdev_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %master.0.i.i.i, i32 0, i32 45
  %21 = ptrtoint ptr %l3mdev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %l3mdev_ops.i.i.i, align 4
  %l3mdev_l3_rcv.i.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %l3mdev_l3_rcv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %l3mdev_l3_rcv.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge, label %if.then7.i.i.i

land.lhs.true.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %l3mdev_ip_rcv.exit.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i.i = call ptr %24(ptr noundef nonnull %master.0.i.i.i, ptr noundef %skb.010.i, i16 noundef zeroext 2) #9
  br label %l3mdev_ip_rcv.exit.i

l3mdev_ip_rcv.exit.i:                             ; preds = %if.then7.i.i.i, %land.lhs.true.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge, %if.end5.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge, %if.else.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge
  %skb.addr.0.i.i.i = phi ptr [ %call10.i.i.i, %if.then7.i.i.i ], [ %skb.010.i, %land.lhs.true.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge ], [ %skb.010.i, %if.end5.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge ], [ %skb.010.i, %if.else.i.i.i.l3mdev_ip_rcv.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %skb.addr.0.i.i.i, null
  br i1 %tobool.not.i, label %l3mdev_ip_rcv.exit.i.cleanup.i_crit_edge, label %if.end.i

l3mdev_ip_rcv.exit.i.cleanup.i_crit_edge:         ; preds = %l3mdev_ip_rcv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %l3mdev_ip_rcv.exit.i
  %call6.i = call fastcc i32 @ip_rcv_finish_core(ptr noundef %net, ptr noundef nonnull %skb.addr.0.i.i.i, ptr noundef %8, ptr noundef %hint.09.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 1
  br i1 %cmp7.i, label %if.end.i.cleanup.i_crit_edge, label %if.end9.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end9.i:                                        ; preds = %if.end.i
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end9.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.skb_dst.exit.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end9.i
  %call.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !70

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end9.i.skb_dst.exit.i_crit_edge
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 8
  %and25.i.i = and i32 %29, -2
  %30 = inttoptr i32 %and25.i.i to ptr
  %cmp11.not.i = icmp eq ptr %curr_dst.08.i, %30
  br i1 %cmp11.not.i, label %skb_dst.exit.i.if.end18.i_crit_edge, label %if.then12.i

skb_dst.exit.i.if.end18.i_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then12.i:                                      ; preds = %skb_dst.exit.i
  %rt_type.i = getelementptr inbounds %struct.rtable, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %rt_type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rt_type.i, align 4
  %33 = ptrtoint ptr %fib_has_custom_rules.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %fib_has_custom_rules.i.i.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.i.i = icmp ne i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp.i.i = icmp eq i16 %32, 3
  %or.cond.i.i = or i1 %cmp.i.i, %tobool.i.i.i
  %retval.0.i.i = select i1 %or.cond.i.i, ptr null, ptr %skb.addr.0.i.i.i
  %35 = ptrtoint ptr %sublist.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %sublist.i, align 4
  %cmp.i1.not.i = icmp eq ptr %36, %sublist.i
  br i1 %cmp.i1.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then16.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @ip_sublist_rcv_finish(ptr noundef nonnull %sublist.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.then12.i.if.end17.i_crit_edge
  %37 = ptrtoint ptr %sublist.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %sublist.i, ptr %sublist.i, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sublist.i, ptr %0, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %skb_dst.exit.i.if.end18.i_crit_edge
  %curr_dst.1.i = phi ptr [ %30, %if.end17.i ], [ %curr_dst.08.i, %skb_dst.exit.i.if.end18.i_crit_edge ]
  %hint.1.i = phi ptr [ %retval.0.i.i, %if.end17.i ], [ %hint.09.i, %skb_dst.exit.i.if.end18.i_crit_edge ]
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %call.i.i4.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %skb.addr.0.i.i.i, ptr noundef %40, ptr noundef nonnull %sublist.i) #9
  br i1 %call.i.i4.i, label %if.end.i.i5.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i.i5.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %skb.addr.0.i.i.i, ptr %0, align 4
  %42 = ptrtoint ptr %skb.addr.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sublist.i, ptr %skb.addr.0.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.addr.0.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %skb.addr.0.i.i.i, ptr %40, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i5.i, %if.end18.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %l3mdev_ip_rcv.exit.i.cleanup.i_crit_edge
  %curr_dst.2.i = phi ptr [ %curr_dst.08.i, %l3mdev_ip_rcv.exit.i.cleanup.i_crit_edge ], [ %curr_dst.08.i, %if.end.i.cleanup.i_crit_edge ], [ %curr_dst.1.i, %if.end18.i.cleanup.i_crit_edge ], [ %curr_dst.1.i, %if.end.i.i5.i ]
  %hint.2.i = phi ptr [ %hint.09.i, %l3mdev_ip_rcv.exit.i.cleanup.i_crit_edge ], [ %hint.09.i, %if.end.i.cleanup.i_crit_edge ], [ %hint.1.i, %if.end18.i.cleanup.i_crit_edge ], [ %hint.1.i, %if.end.i.i5.i ]
  %cmp.not.i = icmp eq ptr %next.012.i, %head
  br i1 %cmp.not.i, label %cleanup.i.ip_list_rcv_finish.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i.ip_list_rcv_finish.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip_list_rcv_finish.exit

ip_list_rcv_finish.exit:                          ; preds = %cleanup.i.ip_list_rcv_finish.exit_crit_edge, %entry.ip_list_rcv_finish.exit_crit_edge
  call fastcc void @ip_sublist_rcv_finish(ptr noundef nonnull %sublist.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sublist.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_dst(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !70

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
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
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %okfn) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b1 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b1, label %land.lhs.true9.sw.epilog_crit_edge, label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nf_hook.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 229, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
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
  store ptr null, ptr %out.i, align 4
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
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %13 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_rcv_finish_core(ptr nocapture noundef readonly %net, ptr noundef %skb, ptr noundef %dev, ptr noundef %hint) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool.not.i = icmp eq ptr %hint, null
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %land.lhs.true.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.i:                                  ; preds = %entry
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.skb_dst.exit.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !70

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %4, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %land.lhs.true.i.skb_dst.exit.i_crit_edge
  %8 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %6, %land.lhs.true.i.skb_dst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %tobool1.not.i = icmp ult i32 %8, 2
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %skb_dst.exit.i.if.end6_crit_edge

skb_dst.exit.i.if.end6_crit_edge:                 ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true2.i:                                 ; preds = %skb_dst.exit.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %hint, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %hint, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr.i, align 4
  %daddr4.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %daddr4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i = icmp eq i32 %14, %16
  br i1 %cmp.i, label %ip_can_use_hint.exit, label %land.lhs.true2.i.if.end6_crit_edge

land.lhs.true2.i.if.end6_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

ip_can_use_hint.exit:                             ; preds = %land.lhs.true2.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tos.i, align 1
  %tos6.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %tos6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp8.i = icmp eq i8 %18, %20
  br i1 %cmp8.i, label %if.then, label %ip_can_use_hint.exit.if.end6_crit_edge

ip_can_use_hint.exit.if.end6_crit_edge:           ; preds = %ip_can_use_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %ip_can_use_hint.exit
  %21 = ptrtoint ptr %daddr4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %daddr4.i, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %saddr, align 4
  %25 = ptrtoint ptr %tos6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tos6.i, align 1
  %call2 = tail call i32 @ip_route_use_hint(ptr noundef %skb, i32 noundef %22, i32 noundef %24, i8 noundef zeroext %26, ptr noundef %dev, ptr noundef nonnull %hint) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then.drop_error_crit_edge, !prof !67

if.then.drop_error_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_error

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %ip_can_use_hint.exit.if.end6_crit_edge, %land.lhs.true2.i.if.end6_crit_edge, %skb_dst.exit.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %sysctl_ip_early_demux = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 44
  %27 = ptrtoint ptr %sysctl_ip_early_demux to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sysctl_ip_early_demux, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not = icmp eq i8 %28, 0
  br i1 %tobool7.not, label %if.end6.if.end51_crit_edge, label %land.lhs.true

if.end6.if.end51_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end6
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i4 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i4, label %land.lhs.true.skb_dst.exit_crit_edge, label %land.lhs.true.i6

land.lhs.true.skb_dst.exit_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit

land.lhs.true.i6:                                 ; preds = %land.lhs.true
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i5 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i5, label %land.rhs.i7, label %land.lhs.true.i6.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i6.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split

land.rhs.i7:                                      ; preds = %land.lhs.true.i6
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i7.skb_dst.exitthread-pre-split_crit_edge, !prof !70

land.rhs.i7.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i7.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i6.skb_dst.exitthread-pre-split_crit_edge
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %29, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %land.lhs.true.skb_dst.exit_crit_edge
  %33 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %31, %land.lhs.true.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %tobool9.not = icmp ult i32 %33, 2
  br i1 %tobool9.not, label %land.lhs.true10, label %skb_dst.exit.if.end51_crit_edge

skb_dst.exit.if.end51_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true10:                                  ; preds = %skb_dst.exit
  %34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true10.if.end51_crit_edge

land.lhs.true10.if.end51_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %frag_off.i, align 2
  %39 = and i16 %38, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp.i8.not = icmp eq i16 %39, 0
  br i1 %cmp.i8.not, label %if.then14, label %land.lhs.true12.if.end51_crit_edge

land.lhs.true12.if.end51_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then14:                                        ; preds = %land.lhs.true12
  %protocol15 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %protocol15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %protocol15, align 1
  %conv16 = zext i8 %41 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %conv16
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.then14.do.end28_crit_edge

if.then14.do.end28_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.then14
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b1 = load i1, ptr @ip_rcv_finish_core.__warned, align 1
  br i1 %.b1, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ip_rcv_finish_core.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.1) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.then14.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %43, null
  br i1 %tobool30.not, label %do.end28.if.end51_crit_edge, label %do.end34

do.end28.if.end51_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end34:                                         ; preds = %do.end28
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %43, align 4
  %tobool36.not = icmp eq ptr %45, null
  br i1 %tobool36.not, label %do.end34.if.end51_crit_edge, label %if.then37

do.end34.if.end51_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then37:                                        ; preds = %do.end34
  %call38 = tail call i32 %45(ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %if.then37.drop_error_crit_edge, !prof !67

if.then37.drop_error_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_error

if.end47:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %48 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i11 = zext i16 %49 to i32
  %add.ptr.i.i12 = getelementptr i8, ptr %47, i32 %conv.i.i11
  br label %if.end51

if.end51:                                         ; preds = %if.end47, %do.end34.if.end51_crit_edge, %do.end28.if.end51_crit_edge, %land.lhs.true12.if.end51_crit_edge, %land.lhs.true10.if.end51_crit_edge, %skb_dst.exit.if.end51_crit_edge, %if.end6.if.end51_crit_edge
  %iph.2 = phi ptr [ %add.ptr.i.i, %skb_dst.exit.if.end51_crit_edge ], [ %add.ptr.i.i, %land.lhs.true10.if.end51_crit_edge ], [ %add.ptr.i.i, %land.lhs.true12.if.end51_crit_edge ], [ %add.ptr.i.i, %if.end6.if.end51_crit_edge ], [ %add.ptr.i.i, %do.end28.if.end51_crit_edge ], [ %add.ptr.i.i, %do.end34.if.end51_crit_edge ], [ %add.ptr.i.i12, %if.end47 ]
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %and.i.i13 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end51.skb_dst.exit.i23_crit_edge, label %land.lhs.true.i.i17

if.end51.skb_dst.exit.i23_crit_edge:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i23

land.lhs.true.i.i17:                              ; preds = %if.end51
  %call.i.i15 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool1.not.i.i16 = icmp eq i32 %call.i.i15, 0
  br i1 %tobool1.not.i.i16, label %land.rhs.i.i20, label %land.lhs.true.i.i17.skb_dst.exit.i23_crit_edge

land.lhs.true.i.i17.skb_dst.exit.i23_crit_edge:   ; preds = %land.lhs.true.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i23

land.rhs.i.i20:                                   ; preds = %land.lhs.true.i.i17
  %call2.i.i18 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i18)
  %tobool3.not.i.i19 = icmp eq i32 %call2.i.i18, 0
  br i1 %tobool3.not.i.i19, label %do.end.i.i21, label %land.rhs.i.i20.skb_dst.exit.i23_crit_edge, !prof !70

land.rhs.i.i20.skb_dst.exit.i23_crit_edge:        ; preds = %land.rhs.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i23

do.end.i.i21:                                     ; preds = %land.rhs.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit.i23

skb_dst.exit.i23:                                 ; preds = %do.end.i.i21, %land.rhs.i.i20.skb_dst.exit.i23_crit_edge, %land.lhs.true.i.i17.skb_dst.exit.i23_crit_edge, %if.end51.skb_dst.exit.i23_crit_edge
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 8
  %and25.i.i = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i22 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i22, label %skb_dst.exit.i23.if.then53_crit_edge, label %skb_valid_dst.exit

skb_dst.exit.i23.if.then53_crit_edge:             ; preds = %skb_dst.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

skb_valid_dst.exit:                               ; preds = %skb_dst.exit.i23
  %55 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags.i, align 4
  %58 = and i16 %57, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool1.not.i24 = icmp eq i16 %58, 0
  br i1 %tobool1.not.i24, label %skb_valid_dst.exit.if.end67_crit_edge, label %skb_valid_dst.exit.if.then53_crit_edge

skb_valid_dst.exit.if.then53_crit_edge:           ; preds = %skb_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

skb_valid_dst.exit.if.end67_crit_edge:            ; preds = %skb_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then53:                                        ; preds = %skb_valid_dst.exit.if.then53_crit_edge, %skb_dst.exit.i23.if.then53_crit_edge
  %daddr54 = getelementptr inbounds %struct.iphdr, ptr %iph.2, i32 0, i32 9
  %59 = ptrtoint ptr %daddr54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %daddr54, align 4
  %saddr55 = getelementptr inbounds %struct.iphdr, ptr %iph.2, i32 0, i32 8
  %61 = ptrtoint ptr %saddr55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %saddr55, align 4
  %tos56 = getelementptr inbounds %struct.iphdr, ptr %iph.2, i32 0, i32 1
  %63 = ptrtoint ptr %tos56 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tos56, align 1
  %call57 = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %60, i32 noundef %62, i8 noundef zeroext %64, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then53.if.end67_crit_edge, label %if.then53.drop_error_crit_edge, !prof !67

if.then53.drop_error_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_error

if.then53.if.end67_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.then53.if.end67_crit_edge, %skb_valid_dst.exit.if.end67_crit_edge
  %65 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %50, align 8
  %and.i26 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %if.end67.skb_dst.exit36_crit_edge, label %land.lhs.true.i30

if.end67.skb_dst.exit36_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit36

land.lhs.true.i30:                                ; preds = %if.end67
  %call.i28 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool1.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool1.not.i29, label %land.rhs.i33, label %land.lhs.true.i30.skb_dst.exit36_crit_edge

land.lhs.true.i30.skb_dst.exit36_crit_edge:       ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit36

land.rhs.i33:                                     ; preds = %land.lhs.true.i30
  %call2.i31 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31)
  %tobool3.not.i32 = icmp eq i32 %call2.i31, 0
  br i1 %tobool3.not.i32, label %do.end.i34, label %land.rhs.i33.skb_dst.exit36_crit_edge, !prof !70

land.rhs.i33.skb_dst.exit36_crit_edge:            ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit36

do.end.i34:                                       ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit36

skb_dst.exit36:                                   ; preds = %do.end.i34, %land.rhs.i33.skb_dst.exit36_crit_edge, %land.lhs.true.i30.skb_dst.exit36_crit_edge, %if.end67.skb_dst.exit36_crit_edge
  %67 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %50, align 8
  %and25.i35 = and i32 %68, -2
  %69 = inttoptr i32 %and25.i35 to ptr
  %tclassid = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool69.not = icmp eq i32 %71, 0
  br i1 %tobool69.not, label %skb_dst.exit36.if.end98_crit_edge, label %if.then76, !prof !67

skb_dst.exit36.if.end98_crit_edge:                ; preds = %skb_dst.exit36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then76:                                        ; preds = %skb_dst.exit36
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ip_rt_acct to i32))
  %72 = load ptr, ptr @ip_rt_acct, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i37 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i37 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu, align 4
  %arrayidx83 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx83, align 4
  %add = add i32 %79, %73
  %80 = inttoptr i32 %add to ptr
  %call84 = tail call fastcc ptr @skb_dst(ptr noundef %skb)
  %tclassid85 = getelementptr inbounds %struct.dst_entry, ptr %call84, i32 0, i32 17
  %81 = ptrtoint ptr %tclassid85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tclassid85, align 4
  %and = and i32 %82, 255
  %arrayidx86 = getelementptr %struct.ip_rt_acct, ptr %80, i32 %and
  %o_packets = getelementptr %struct.ip_rt_acct, ptr %80, i32 %and, i32 1
  %83 = ptrtoint ptr %o_packets to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %o_packets, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %o_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  %87 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx86, align 4
  %add89 = add i32 %88, %86
  store i32 %add89, ptr %arrayidx86, align 4
  %shr = lshr i32 %82, 16
  %and90 = and i32 %shr, 255
  %i_packets = getelementptr %struct.ip_rt_acct, ptr %80, i32 %and90, i32 3
  %89 = ptrtoint ptr %i_packets to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i_packets, align 4
  %inc92 = add i32 %90, 1
  store i32 %inc92, ptr %i_packets, align 4
  %91 = load i32, ptr %len, align 4
  %i_bytes = getelementptr %struct.ip_rt_acct, ptr %80, i32 %and90, i32 2
  %92 = ptrtoint ptr %i_bytes to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_bytes, align 4
  %add97 = add i32 %93, %91
  store i32 %add97, ptr %i_bytes, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then76, %skb_dst.exit36.if.end98_crit_edge
  %94 = ptrtoint ptr %iph.2 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load = load i8, ptr %iph.2, align 4
  %bf.clear = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp = icmp ugt i8 %bf.clear, 5
  br i1 %cmp, label %land.lhs.true101, label %if.end98.if.end105_crit_edge

if.end98.if.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

land.lhs.true101:                                 ; preds = %if.end98
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %95 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i, align 4
  %97 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %96 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %99 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true101.skb_cloned.exit.i.i_crit_edge, label %land.rhs.i.i.i

land.lhs.true101.skb_cloned.exit.i.i_crit_edge:   ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_cloned.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %100 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %101, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #9
  %102 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %103, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br label %skb_cloned.exit.i.i

skb_cloned.exit.i.i:                              ; preds = %land.rhs.i.i.i, %land.lhs.true101.skb_cloned.exit.i.i_crit_edge
  %104 = phi i1 [ true, %land.lhs.true101.skb_cloned.exit.i.i_crit_edge ], [ %cmp.i.not.i.i, %land.rhs.i.i.i ]
  %105 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i.i, align 4
  %107 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %108 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %sub.ptr.sub.i.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %sub.ptr.sub.i.i
  %or.cond.i.i.i = and i1 %104, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow.exit.i

skb_cloned.exit.i.i.if.end.i_crit_edge:           ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

skb_cow.exit.i:                                   ; preds = %skb_cloned.exit.i.i
  %109 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub.i.i, i32 %sub.ptr.sub.i.i.i.i) #9
  %add.i.i.i = add i32 %109, 127
  %and.i4.i.i = and i32 %add.i.i.i, -128
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i39 = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i39, label %skb_cow.exit.i.if.end.i_crit_edge, label %do.body.i

skb_cow.exit.i.if.end.i_crit_edge:                ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body.i:                                        ; preds = %skb_cow.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable() #9
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %110 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nd_net.i.i, align 4
  %mib.i = getelementptr inbounds %struct.net, ptr %111, i32 0, i32 30
  %112 = ptrtoint ptr %mib.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mib.i, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i40 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i40 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %120, %114
  %121 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %121, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #9
  %arrayidx7.i = getelementptr [37 x i64], ptr %121, i32 0, i32 13
  %122 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx7.i, align 8
  %add8.i = add i64 %123, 1
  store i64 %add8.i, ptr %arrayidx7.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %121, i32 0, i32 1, i32 0, i32 1
  %124 = tail call ptr @llvm.returnaddress(i32 0) #9
  %125 = ptrtoint ptr %124 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %125) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %126 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %127, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call fastcc void @local_bh_enable() #9
  br label %drop

if.end.i:                                         ; preds = %skb_cow.exit.i.if.end.i_crit_edge, %skb_cloned.exit.i.i.if.end.i_crit_edge
  %128 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i, align 8
  %130 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i42 = zext i16 %131 to i32
  %add.ptr.i.i.i43 = getelementptr i8, ptr %129, i32 %conv.i.i.i42
  %opt15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %132 = ptrtoint ptr %add.ptr.i.i.i43 to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i43, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %133 = and i8 %bf.clear.i, 60
  %sub.i = add nsw i8 %133, -20
  %optlen.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %134 = ptrtoint ptr %optlen.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %sub.i, ptr %optlen.i, align 4
  %nd_net.i116.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %135 = ptrtoint ptr %nd_net.i116.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %nd_net.i116.i, align 4
  %call18.i = tail call i32 @ip_options_compile(ptr noundef %136, ptr noundef %opt15.i, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end47.i, label %do.body21.i

do.body21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable() #9
  %137 = ptrtoint ptr %nd_net.i116.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nd_net.i116.i, align 4
  %mib31.i = getelementptr inbounds %struct.net, ptr %138, i32 0, i32 30
  %139 = ptrtoint ptr %mib31.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mib31.i, align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i118.i = and i32 %142, -16384
  %143 = inttoptr i32 %and.i118.i to ptr
  %cpu35.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %cpu35.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cpu35.i, align 4
  %arrayidx36.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx36.i, align 4
  %add37.i = add i32 %147, %141
  %148 = inttoptr i32 %add37.i to ptr
  %syncp38.i = getelementptr inbounds %struct.ipstats_mib, ptr %148, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp38.i) #9
  %arrayidx40.i = getelementptr [37 x i64], ptr %148, i32 0, i32 7
  %149 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx40.i, align 8
  %add41.i = add i64 %150, 1
  store i64 %add41.i, ptr %arrayidx40.i, align 8
  %dep_map.i.i119.i = getelementptr inbounds %struct.ipstats_mib, ptr %148, i32 0, i32 1, i32 0, i32 1
  %151 = tail call ptr @llvm.returnaddress(i32 0) #9
  %152 = ptrtoint ptr %151 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i119.i, i32 noundef %152) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %153 = ptrtoint ptr %syncp38.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %syncp38.i, align 4
  %inc.i.i.i120.i = add i32 %154, 1
  store i32 %inc.i.i.i120.i, ptr %syncp38.i, align 4
  tail call fastcc void @local_bh_enable() #9
  br label %drop

if.end47.i:                                       ; preds = %if.end.i
  %srr.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %155 = ptrtoint ptr %srr.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %srr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool48.not.i = icmp eq i8 %156, 0
  br i1 %tobool48.not.i, label %if.end47.i.if.end105_crit_edge, label %if.then51.i, !prof !67

if.end47.i.if.end105_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then51.i:                                      ; preds = %if.end47.i
  %call52.i = tail call fastcc ptr @__in_dev_get_rcu(ptr noundef %dev) #9
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.then51.i.if.end86.i_crit_edge, label %if.then54.i

if.then51.i.if.end86.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.then54.i:                                      ; preds = %if.then51.i
  %157 = ptrtoint ptr %call52.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call52.i, align 4
  %nd_net.i121.i = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 127
  %159 = ptrtoint ptr %nd_net.i121.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %nd_net.i121.i, align 4
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %160, i32 0, i32 35, i32 6
  %161 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %devconf_all.i, align 4
  %arrayidx57.i = getelementptr %struct.ipv4_devconf, ptr %162, i32 0, i32 1, i32 8
  %163 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool58.not.i = icmp eq i32 %164, 0
  br i1 %tobool58.not.i, label %if.then54.i.if.then61.i_crit_edge, label %land.lhs.true.i44

if.then54.i.if.then61.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61.i

land.lhs.true.i44:                                ; preds = %if.then54.i
  %arrayidx.i.i = getelementptr %struct.in_device, ptr %call52.i, i32 0, i32 21, i32 1, i32 8
  %165 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool60.not.i = icmp eq i32 %166, 0
  br i1 %tobool60.not.i, label %land.lhs.true.i44.if.then61.i_crit_edge, label %land.lhs.true.i44.if.end86.i_crit_edge

land.lhs.true.i44.if.end86.i_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

land.lhs.true.i44.if.then61.i_crit_edge:          ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then61.i

if.then61.i:                                      ; preds = %land.lhs.true.i44.if.then61.i_crit_edge, %if.then54.i.if.then61.i_crit_edge
  %arrayidx67.i = getelementptr %struct.ipv4_devconf, ptr %162, i32 0, i32 1, i32 10
  %167 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool68.not.i = icmp eq i32 %168, 0
  br i1 %tobool68.not.i, label %lor.lhs.false.i, label %if.then61.i.do.body72.i_crit_edge

if.then61.i.do.body72.i_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72.i

lor.lhs.false.i:                                  ; preds = %if.then61.i
  %arrayidx.i123.i = getelementptr %struct.in_device, ptr %call52.i, i32 0, i32 21, i32 1, i32 10
  %169 = ptrtoint ptr %arrayidx.i123.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool70.not.i = icmp eq i32 %170, 0
  br i1 %tobool70.not.i, label %lor.lhs.false.i.drop_crit_edge, label %lor.lhs.false.i.do.body72.i_crit_edge

lor.lhs.false.i.do.body72.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72.i

lor.lhs.false.i.drop_crit_edge:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

do.body72.i:                                      ; preds = %lor.lhs.false.i.do.body72.i_crit_edge, %if.then61.i.do.body72.i_crit_edge
  %call73.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %do.body72.i.drop_crit_edge, label %do.end78.i

do.body72.i.drop_crit_edge:                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

do.end78.i:                                       ; preds = %do.body72.i
  call void @__sanitizer_cov_trace_pc() #11
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i43, i32 0, i32 8
  %daddr.i45 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i43, i32 0, i32 9
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %saddr.i, ptr noundef %daddr.i45) #13
  br label %drop

if.end86.i:                                       ; preds = %land.lhs.true.i44.if.end86.i_crit_edge, %if.then51.i.if.end86.i_crit_edge
  %call87.i = tail call i32 @ip_options_rcv_srr(ptr noundef %skb, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end86.i.if.end105_crit_edge, label %if.end86.i.drop_crit_edge

if.end86.i.drop_crit_edge:                        ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end86.i.if.end105_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end105:                                        ; preds = %if.end86.i.if.end105_crit_edge, %if.end47.i.if.end105_crit_edge, %if.end98.if.end105_crit_edge
  %171 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %50, align 8
  %and.i.i46 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %tobool.not.i.i47, label %if.end105.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i50

if.end105.skb_rtable.exit_crit_edge:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_rtable.exit

land.lhs.true.i.i50:                              ; preds = %if.end105
  %call.i.i48 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool1.not.i.i49 = icmp eq i32 %call.i.i48, 0
  br i1 %tobool1.not.i.i49, label %land.rhs.i.i53, label %land.lhs.true.i.i50.skb_rtable.exit_crit_edge

land.lhs.true.i.i50.skb_rtable.exit_crit_edge:    ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_rtable.exit

land.rhs.i.i53:                                   ; preds = %land.lhs.true.i.i50
  %call2.i.i51 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i51)
  %tobool3.not.i.i52 = icmp eq i32 %call2.i.i51, 0
  br i1 %tobool3.not.i.i52, label %do.end.i.i54, label %land.rhs.i.i53.skb_rtable.exit_crit_edge, !prof !70

land.rhs.i.i53.skb_rtable.exit_crit_edge:         ; preds = %land.rhs.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_rtable.exit

do.end.i.i54:                                     ; preds = %land.rhs.i.i53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i54, %land.rhs.i.i53.skb_rtable.exit_crit_edge, %land.lhs.true.i.i50.skb_rtable.exit_crit_edge, %if.end105.skb_rtable.exit_crit_edge
  %173 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %50, align 8
  %and25.i.i55 = and i32 %174, -2
  %175 = inttoptr i32 %and25.i.i55 to ptr
  %rt_type = getelementptr inbounds %struct.rtable, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %rt_type, align 4
  %178 = zext i16 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values)
  switch i16 %177, label %if.else165 [
    i16 5, label %do.body111
    i16 3, label %do.body138
  ]

do.body111:                                       ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %179 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mib, align 4
  %181 = ptrtoint ptr %180 to i32
  %182 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i57 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i57 to ptr
  %cpu120 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %cpu120 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cpu120, align 4
  %arrayidx121 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %185
  %186 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %187, %181
  %188 = inttoptr i32 %add122 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %188, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx123 = getelementptr [37 x i64], ptr %188, i32 0, i32 23
  %189 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %arrayidx123, align 8
  %inc124 = add i64 %190, 1
  store i64 %inc124, ptr %arrayidx123, align 8
  %len125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %191 = ptrtoint ptr %len125 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len125, align 4
  %conv126 = zext i32 %192 to i64
  %arrayidx128 = getelementptr [37 x i64], ptr %188, i32 0, i32 27
  %193 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %arrayidx128, align 8
  %add129 = add i64 %194, %conv126
  store i64 %add129, ptr %arrayidx128, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %188, i32 0, i32 1, i32 0, i32 1
  %195 = tail call ptr @llvm.returnaddress(i32 0) #9
  %196 = ptrtoint ptr %195 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %196) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %197 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %198, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %cleanup226

do.body138:                                       ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mib146 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %199 = ptrtoint ptr %mib146 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mib146, align 4
  %201 = ptrtoint ptr %200 to i32
  %202 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i58 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i58 to ptr
  %cpu150 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %cpu150 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cpu150, align 4
  %arrayidx151 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx151, align 4
  %add152 = add i32 %207, %201
  %208 = inttoptr i32 %add152 to ptr
  %syncp153 = getelementptr inbounds %struct.ipstats_mib, ptr %208, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp153)
  %arrayidx155 = getelementptr [37 x i64], ptr %208, i32 0, i32 25
  %209 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %arrayidx155, align 8
  %inc156 = add i64 %210, 1
  store i64 %inc156, ptr %arrayidx155, align 8
  %len157 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %211 = ptrtoint ptr %len157 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %len157, align 4
  %conv158 = zext i32 %212 to i64
  %arrayidx160 = getelementptr [37 x i64], ptr %208, i32 0, i32 29
  %213 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %arrayidx160, align 8
  %add161 = add i64 %214, %conv158
  store i64 %add161, ptr %arrayidx160, align 8
  %dep_map.i.i59 = getelementptr inbounds %struct.ipstats_mib, ptr %208, i32 0, i32 1, i32 0, i32 1
  %215 = tail call ptr @llvm.returnaddress(i32 0) #9
  %216 = ptrtoint ptr %215 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i59, i32 noundef %216) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %217 = ptrtoint ptr %syncp153 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %syncp153, align 4
  %inc.i.i.i60 = add i32 %218, 1
  store i32 %inc.i.i.i60, ptr %syncp153, align 4
  br label %cleanup226

if.else165:                                       ; preds = %skb_rtable.exit
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %219 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %219)
  %bf.load166 = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load166, 13
  %bf.lshr.off = add nsw i16 %bf.lshr, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr.off)
  %switch3 = icmp ult i16 %bf.lshr.off, 2
  br i1 %switch3, label %if.then177, label %if.else165.cleanup226_crit_edge

if.else165.cleanup226_crit_edge:                  ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup226

if.then177:                                       ; preds = %if.else165
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %220 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i61 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i65, label %if.then177.__in_dev_get_rcu.exit_crit_edge

if.then177.__in_dev_get_rcu.exit_crit_edge:       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in_dev_get_rcu.exit

land.lhs.true.i65:                                ; preds = %if.then177
  %call2.i63 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %tobool3.not.i64 = icmp eq i32 %call2.i63, 0
  br i1 %tobool3.not.i64, label %land.lhs.true.i65.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i65.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i65
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 232, ptr noundef nonnull @.str.1) #9
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i65.__in_dev_get_rcu.exit_crit_edge, %if.then177.__in_dev_get_rcu.exit_crit_edge
  %tobool179.not = icmp eq ptr %221, null
  br i1 %tobool179.not, label %__in_dev_get_rcu.exit.cleanup226_crit_edge, label %land.lhs.true180

__in_dev_get_rcu.exit.cleanup226_crit_edge:       ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup226

land.lhs.true180:                                 ; preds = %__in_dev_get_rcu.exit
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %223, i32 0, i32 127
  %224 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %nd_net.i, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %225, i32 0, i32 35, i32 6
  %226 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %devconf_all, align 4
  %arrayidx184 = getelementptr %struct.ipv4_devconf, ptr %227, i32 0, i32 1, i32 29
  %228 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool185.not = icmp eq i32 %229, 0
  br i1 %tobool185.not, label %lor.lhs.false186, label %land.lhs.true180.drop_crit_edge

land.lhs.true180.drop_crit_edge:                  ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

lor.lhs.false186:                                 ; preds = %land.lhs.true180
  %arrayidx.i66 = getelementptr %struct.in_device, ptr %221, i32 0, i32 21, i32 1, i32 29
  %230 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool188.not = icmp eq i32 %231, 0
  br i1 %tobool188.not, label %lor.lhs.false186.cleanup226_crit_edge, label %lor.lhs.false186.drop_crit_edge

lor.lhs.false186.drop_crit_edge:                  ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

lor.lhs.false186.cleanup226_crit_edge:            ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup226

drop:                                             ; preds = %if.then199, %drop_error.drop_crit_edge, %lor.lhs.false186.drop_crit_edge, %land.lhs.true180.drop_crit_edge, %if.end86.i.drop_crit_edge, %do.end78.i, %do.body72.i.drop_crit_edge, %lor.lhs.false.i.drop_crit_edge, %do.body21.i, %do.body.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup226

drop_error:                                       ; preds = %if.then53.drop_error_crit_edge, %if.then37.drop_error_crit_edge, %if.then.drop_error_crit_edge
  %err.3 = phi i32 [ %call2, %if.then.drop_error_crit_edge ], [ %call57, %if.then53.drop_error_crit_edge ], [ %call38, %if.then37.drop_error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18, i32 %err.3)
  %cmp197 = icmp eq i32 %err.3, -18
  br i1 %cmp197, label %if.then199, label %drop_error.drop_crit_edge

drop_error.drop_crit_edge:                        ; preds = %drop_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.then199:                                       ; preds = %drop_error
  call void @__sanitizer_cov_trace_pc() #11
  %net_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 3
  %232 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %net_statistics, align 4
  %arrayidx214 = getelementptr [126 x i32], ptr %233, i32 0, i32 72
  %234 = ptrtoint ptr %arrayidx214 to i32
  %235 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i67 = and i32 %235, -16384
  %236 = inttoptr i32 %and.i67 to ptr
  %cpu217 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 3
  %237 = ptrtoint ptr %cpu217 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %cpu217, align 4
  %arrayidx218 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %238
  %239 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx218, align 4
  %add219 = add i32 %240, %234
  %241 = inttoptr i32 %add219 to ptr
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  %add220 = add i32 %243, 1
  store i32 %add220, ptr %241, align 4
  br label %drop

cleanup226:                                       ; preds = %drop, %lor.lhs.false186.cleanup226_crit_edge, %__in_dev_get_rcu.exit.cleanup226_crit_edge, %if.else165.cleanup226_crit_edge, %do.body138, %do.body111
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %if.else165.cleanup226_crit_edge ], [ 0, %do.body138 ], [ 0, %do.body111 ], [ 0, %__in_dev_get_rcu.exit.cleanup226_crit_edge ], [ 0, %lor.lhs.false186.cleanup226_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_use_hint(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__in_dev_get_rcu(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ip_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %0 = ptrtoint ptr %ip_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip_ptr, align 32
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 232, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_options_compile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_options_rcv_srr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NF_HOOK_LIST(ptr noundef %net, ptr noundef %head, ptr noundef %in) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 2), ptr blockaddress(@NF_HOOK_LIST, %if.end)) #9
          to label %cleanup [label %if.end], !srcloc !84

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hooks_ipv4 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 3
  %4 = ptrtoint ptr %hooks_ipv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hooks_ipv4, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b1 = load i1, ptr @NF_HOOK_LIST.__warned, align 1
  br i1 %.b1, label %land.lhs.true9.sw.epilog_crit_edge, label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @NF_HOOK_LIST.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 328, ptr noundef nonnull @.str.1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool76.not = icmp eq ptr %5, null
  br i1 %tobool76.not, label %sw.epilog.if.end78_crit_edge, label %if.then77

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then77:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 0, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %in, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %out.i, align 4
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
  store ptr @ip_rcv_finish, ptr %okfn5.i, align 4
  call void @nf_hook_slow_list(ptr noundef %head, ptr noundef nonnull %state, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %sw.epilog.if.end78_crit_edge
  %call.i2 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2, label %if.end78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end78.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end78
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end78.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %13 = call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_hook_slow_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_sublist_rcv_finish(ptr noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not16 = icmp eq ptr %1, %head
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %dst_input.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %skb.017 = phi ptr [ %next.0, %dst_input.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %skb.017, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.017) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.skb_list_del_init.exit_crit_edge

for.body.skb_list_del_init.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %skb.017, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %skb.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skb.017, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i, %for.body.skb_list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %skb.017 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %skb.017, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb.017, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %skb_list_del_init.exit.dst_input.exit_crit_edge, label %land.lhs.true.i.i

skb_list_del_init.exit.dst_input.exit_crit_edge:  ; preds = %skb_list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %skb_list_del_init.exit
  %call.i.i15 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool1.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !70

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %skb_list_del_init.exit.dst_input.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %17(ptr noundef %skb.017) #9
  %cmp.not = icmp eq ptr %next.0, %head
  br i1 %cmp.not, label %dst_input.exit.for.end_crit_edge, label %dst_input.exit.for.body_crit_edge

dst_input.exit.for.body_crit_edge:                ; preds = %dst_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

dst_input.exit.for.end_crit_edge:                 ; preds = %dst_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %dst_input.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_input.c", i32 156, i32 12}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_input.c", i32 156, i32 58}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv4/ip_input.c", i32 195, i32 11}
!8 = !{ptr @__ksymtab_ip_local_deliver, !9, !"__ksymtab_ip_local_deliver", i1 false, i1 false}
!9 = !{!"../net/ipv4/ip_input.c", i32 256, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv4/ip_input.c", i32 338, i32 12}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ipv4/ip_input.c", i32 411, i32 3}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv4/ip_input.c", i32 290, i32 6}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ip_rcv_options._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ip_rcv_options._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/netfilter.h", i32 328, i32 15}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/netfilter.h", i32 331, i32 15}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/netfilter.h", i32 334, i32 3}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148446396}
!66 = !{i64 2148360836, i64 2148360868, i64 2148360897, i64 2148360931, i64 2148360962, i64 2148360985}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2149322510}
!69 = !{i64 2149989317}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2149880999}
!72 = !{i64 2149885931}
!73 = !{i64 2149907643}
!74 = !{i64 2149912535}
!75 = !{i64 2149988992}
!76 = !{ptr @ip_local_deliver_finish, ptr @ip_rcv_finish}
!77 = !{i64 2154776812, i64 2154777300, i64 2154776849, i64 2154776905, i64 2154776939, i64 2154776963, i64 2154777004, i64 2154777025, i64 2154777053, i64 2154777087}
!78 = !{i64 2149373000}
!79 = !{i64 2149373266}
!80 = !{i64 6848403, i64 6848442, i64 6848468, i64 6848492, i64 6848517, i64 6848543, i64 6848568, i64 6848594, i64 6848621, i64 6848647, i64 6848686, i64 6848730, i64 6848761, i64 6848786}
!81 = !{i64 6848020}
!82 = !{i64 2154791862, i64 2154792350, i64 2154791899, i64 2154791955, i64 2154791989, i64 2154792013, i64 2154792054, i64 2154792075, i64 2154792103, i64 2154792137}
!83 = !{i8 0, i8 2}
!84 = !{i64 2148970218, i64 2148970223, i64 2148970236, i64 2148970280, i64 2148970314, i64 2148970335}
