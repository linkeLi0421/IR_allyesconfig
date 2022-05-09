; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_input.c_pt.bc'
source_filename = "../net/ipv6/ip6_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip6_input\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_input\09\09\09\09"
module asm "\09.long\09__crc_ip6_input\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_input:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_input\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.161 = type { ptr }
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
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, i32, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.193, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.193 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.142 }
%union.anon.142 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@inet6_protos = external dso_local global [256 x ptr], align 4
@ip6_protocol_deliver_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv6/ip6_input.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ip6_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_input = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_input to i32), ptr @__kstrtab_ip6_input, ptr @__kstrtabns_ip6_input }, section "___ksymtab_gpl+ip6_input", align 4
@ip6_rcv_finish_core.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@nf_hooks_needed = external dso_local global [13 x [7 x %struct.static_key]], align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@NF_HOOK_LIST.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__in6_dev_get_safely.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.21 = private constant [24 x i8] c"../net/ipv6/ip6_input.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 373, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 313, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1810, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 229, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 231, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 271, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_ip6_input, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_rcv_finish(ptr nocapture noundef readonly %net, ptr nocapture readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %2) #7
  br label %if.end5.i.i

if.else.i.i:                                      ; preds = %entry
  %5 = and i64 %4, 537133056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %if.else.i.i.l3mdev_ip6_rcv.exit_crit_edge, label %if.else.i.i.if.end5.i.i_crit_edge

if.else.i.i.if.end5.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.else.i.i.l3mdev_ip6_rcv.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit

if.end5.i.i:                                      ; preds = %if.else.i.i.if.end5.i.i_crit_edge, %if.then.i.i
  %master.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i ], [ %2, %if.else.i.i.if.end5.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %master.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.i.l3mdev_ip6_rcv.exit_crit_edge, label %land.lhs.true.i.i

if.end5.i.i.l3mdev_ip6_rcv.exit_crit_edge:        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit

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
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.l3mdev_ip6_rcv.exit_crit_edge, label %if.then7.i.i

land.lhs.true.i.i.l3mdev_ip6_rcv.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = tail call ptr %9(ptr noundef nonnull %master.0.i.i, ptr noundef %skb, i16 noundef zeroext 10) #7
  br label %l3mdev_ip6_rcv.exit

l3mdev_ip6_rcv.exit:                              ; preds = %if.then7.i.i, %land.lhs.true.i.i.l3mdev_ip6_rcv.exit_crit_edge, %if.end5.i.i.l3mdev_ip6_rcv.exit_crit_edge, %if.else.i.i.l3mdev_ip6_rcv.exit_crit_edge
  %skb.addr.0.i.i = phi ptr [ %call10.i.i, %if.then7.i.i ], [ %skb, %land.lhs.true.i.i.l3mdev_ip6_rcv.exit_crit_edge ], [ %skb, %if.end5.i.i.l3mdev_ip6_rcv.exit_crit_edge ], [ %skb, %if.else.i.i.l3mdev_ip6_rcv.exit_crit_edge ]
  %tobool.not = icmp eq ptr %skb.addr.0.i.i, null
  br i1 %tobool.not, label %l3mdev_ip6_rcv.exit.return_crit_edge, label %if.end

l3mdev_ip6_rcv.exit.return_crit_edge:             ; preds = %l3mdev_ip6_rcv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %l3mdev_ip6_rcv.exit
  tail call fastcc void @ip6_rcv_finish_core(ptr noundef %net, ptr noundef nonnull %skb.addr.0.i.i)
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i5, label %if.end.dst_input.exit_crit_edge, label %land.lhs.true.i.i6

if.end.dst_input.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

land.lhs.true.i.i6:                               ; preds = %if.end
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i6.dst_input.exit_crit_edge

land.lhs.true.i.i6.dst_input.exit_crit_edge:      ; preds = %land.lhs.true.i.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i6
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !60

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i6.dst_input.exit_crit_edge, %if.end.dst_input.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %17(ptr noundef nonnull %skb.addr.0.i.i) #7
  br label %return

return:                                           ; preds = %dst_input.exit, %l3mdev_ip6_rcv.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1.i, %dst_input.exit ], [ 0, %l3mdev_ip6_rcv.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_rcv_finish_core(ptr nocapture noundef readonly %net, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_ip_early_demux = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 44
  %0 = ptrtoint ptr %sysctl_ip_early_demux to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sysctl_ip_early_demux, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %land.lhs.true

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.skb_dst.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.skb_dst.exit_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !60

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %2, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %land.lhs.true.skb_dst.exit_crit_edge
  %6 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %4, %land.lhs.true.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %tobool1.not = icmp ult i32 %6, 2
  br i1 %tobool1.not, label %land.lhs.true2, label %skb_dst.exit.if.end26_crit_edge

skb_dst.exit.if.end26_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

land.lhs.true2:                                   ; preds = %skb_dst.exit
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %land.lhs.true2.if.end26_crit_edge

land.lhs.true2.if.end26_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then:                                          ; preds = %land.lhs.true2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nexthdr, align 2
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.then.do.end15_crit_edge

if.then.do.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true8:                                   ; preds = %if.then
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end15_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b1 = load i1, ptr @ip6_rcv_finish_core.__warned, align 1
  br i1 %.b1, label %land.lhs.true11.do.end15_crit_edge, label %if.then13

land.lhs.true11.do.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ip6_rcv_finish_core.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 57, ptr noundef nonnull @.str.1) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %land.lhs.true11.do.end15_crit_edge, %land.lhs.true8.do.end15_crit_edge, %if.then.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %do.end15.if.end26_crit_edge, label %do.end21

do.end15.if.end26_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end21:                                         ; preds = %do.end15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %do.end21.if.end26_crit_edge, label %if.then24

do.end21.if.end26_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %skb) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.end21.if.end26_crit_edge, %do.end15.if.end26_crit_edge, %land.lhs.true2.if.end26_crit_edge, %skb_dst.exit.if.end26_crit_edge, %entry.if.end26_crit_edge
  %20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end26.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end26.skb_dst.exit.i_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end26
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !60

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end26.skb_dst.exit.i_crit_edge
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %and25.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i2 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i2, label %skb_dst.exit.i.if.then28_crit_edge, label %skb_valid_dst.exit

skb_dst.exit.i.if.then28_crit_edge:               ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

skb_valid_dst.exit:                               ; preds = %skb_dst.exit.i
  %25 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags.i, align 4
  %28 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool1.not.i3 = icmp eq i16 %28, 0
  br i1 %tobool1.not.i3, label %skb_valid_dst.exit.if.end29_crit_edge, label %skb_valid_dst.exit.if.then28_crit_edge

skb_valid_dst.exit.if.then28_crit_edge:           ; preds = %skb_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

skb_valid_dst.exit.if.end29_crit_edge:            ; preds = %skb_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %skb_valid_dst.exit.if.then28_crit_edge, %skb_dst.exit.i.if.then28_crit_edge
  tail call void @ip6_route_input(ptr noundef %skb) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %skb_valid_dst.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call1 = tail call fastcc ptr @ip6_rcv_core(ptr noundef %skb, ptr noundef %dev, ptr noundef %4)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 0, ptr noundef %4, ptr noundef nonnull %call1, ptr noundef %dev, ptr noundef nonnull @ip6_rcv_finish) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @ip6_rcv_finish(ptr noundef %4, ptr noundef null, ptr noundef nonnull %call1) #7, !callees !61
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %call1.i, %if.then.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip6_rcv_core(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 80
  %8 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i756 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i756, label %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.__in6_dev_get.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i757 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i757, label %land.lhs.true.i758, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true.i758:                               ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i758.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i758.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i758
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i758
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i759

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get.exit

if.then.i759:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 313, ptr noundef nonnull @.str.1) #7
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i759, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i758.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge
  %cmp2.not = icmp eq ptr %9, null
  br i1 %cmp2.not, label %__in6_dev_get.exit.do.body48_crit_edge, label %do.body, !prof !60

__in6_dev_get.exit.do.body48_crit_edge:           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

do.body:                                          ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipv6, align 4
  %arrayidx = getelementptr i64, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %add16 = add i64 %21, 1
  store i64 %add16, ptr %19, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv27 = zext i32 %23 to i64
  %arrayidx34 = getelementptr i64, ptr %11, i32 2
  %24 = ptrtoint ptr %arrayidx34 to i32
  %25 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %27, %24
  %28 = inttoptr i32 %add39 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %add40 = add i64 %30, %conv27
  store i64 %add40, ptr %28, align 8
  br label %do.body48

do.body48:                                        ; preds = %do.body, %__in6_dev_get.exit.do.body48_crit_edge
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %31 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipv6_statistics, align 4
  %arrayidx64 = getelementptr i64, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx64 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i760 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i760 to ptr
  %cpu67 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu67, align 4
  %arrayidx68 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx68, align 4
  %add69 = add i32 %39, %33
  %40 = inttoptr i32 %add69 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %add70 = add i64 %42, 1
  store i64 %add70, ptr %40, align 8
  %len81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len81, align 4
  %conv82 = zext i32 %44 to i64
  %arrayidx89 = getelementptr i64, ptr %32, i32 2
  %45 = ptrtoint ptr %arrayidx89 to i32
  %46 = load i32, ptr %cpu67, align 4
  %arrayidx93 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %48, %45
  %49 = inttoptr i32 %add94 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  %add95 = add i64 %51, %conv82
  store i64 %add95, ptr %49, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #7
  %52 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i.not.i = icmp eq i32 %53, 1
  br i1 %cmp.i.not.i, label %do.body48.skb_share_check.exit_crit_edge, label %if.then6.i

do.body48.skb_share_check.exit_crit_edge:         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_share_check.exit

if.then6.i:                                       ; preds = %do.body48
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %if.then11.i, !prof !60

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %skb_share_check.exit

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %if.then114

skb_share_check.exit:                             ; preds = %if.then11.i, %do.body48.skb_share_check.exit_crit_edge
  %skb.addr.0.i = phi ptr [ %skb, %do.body48.skb_share_check.exit_crit_edge ], [ %call7.i, %if.then11.i ]
  %cmp103 = icmp eq ptr %skb.addr.0.i, null
  %brmerge = select i1 %cmp103, i1 true, i1 %cmp2.not
  br i1 %brmerge, label %skb_share_check.exit.if.then114_crit_edge, label %lor.lhs.false106

skb_share_check.exit.if.then114_crit_edge:        ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

lor.lhs.false106:                                 ; preds = %skb_share_check.exit
  %disable_ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 32, i32 35
  %54 = ptrtoint ptr %disable_ipv6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %disable_ipv6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool107.not = icmp eq i32 %55, 0
  br i1 %tobool107.not, label %if.end175, label %lor.lhs.false106.if.then114_crit_edge, !prof !63

lor.lhs.false106.if.then114_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then114

if.then114:                                       ; preds = %lor.lhs.false106.if.then114_crit_edge, %skb_share_check.exit.if.then114_crit_edge, %skb_share_check.exit.thread
  %skb.addr.0.i830 = phi ptr [ null, %skb_share_check.exit.thread ], [ %skb.addr.0.i, %skb_share_check.exit.if.then114_crit_edge ], [ %skb.addr.0.i, %lor.lhs.false106.if.then114_crit_edge ]
  br i1 %cmp2.not, label %if.then114.do.body150_crit_edge, label %do.body125, !prof !60

if.then114.do.body150_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body150

do.body125:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6135 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %56 = ptrtoint ptr %ipv6135 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ipv6135, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu67, align 4
  %arrayidx139 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx139, align 4
  %add140 = add i32 %62, %58
  %63 = inttoptr i32 %add140 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx142 = getelementptr [37 x i64], ptr %63, i32 0, i32 13
  %64 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx142, align 8
  %add143 = add i64 %65, 1
  store i64 %add143, ptr %arrayidx142, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %63, i32 0, i32 1, i32 0, i32 1
  %66 = tail call ptr @llvm.returnaddress(i32 0) #7
  %67 = ptrtoint ptr %66 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %68 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body150

do.body150:                                       ; preds = %do.body125, %if.then114.do.body150_crit_edge
  tail call fastcc void @local_bh_disable()
  %70 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ipv6_statistics, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu67, align 4
  %arrayidx164 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx164, align 4
  %add165 = add i32 %76, %72
  %77 = inttoptr i32 %add165 to ptr
  %syncp166 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp166)
  %arrayidx168 = getelementptr [37 x i64], ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx168, align 8
  %add169 = add i64 %79, 1
  store i64 %add169, ptr %arrayidx168, align 8
  %dep_map.i.i761 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1, i32 0, i32 1
  %80 = tail call ptr @llvm.returnaddress(i32 0) #7
  %81 = ptrtoint ptr %80 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i761, i32 noundef %81) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %drop

if.end175:                                        ; preds = %lor.lhs.false106
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3
  %82 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %83 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %and.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end175.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end175.skb_dst.exit.i_crit_edge:               ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end175
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !60

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end175.skb_dst.exit.i_crit_edge
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %83, align 8
  %and25.i.i = and i32 %87, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i763 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i763, label %skb_dst.exit.i.cond.end_crit_edge, label %skb_valid_dst.exit

skb_dst.exit.i.cond.end_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

skb_valid_dst.exit:                               ; preds = %skb_dst.exit.i
  %88 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags.i, align 4
  %91 = and i16 %90, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool1.not.i = icmp eq i16 %91, 0
  br i1 %tobool1.not.i, label %cond.true, label %skb_valid_dst.exit.cond.end_crit_edge

skb_valid_dst.exit.cond.end_crit_edge:            ; preds = %skb_valid_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %skb_valid_dst.exit
  %and.i764 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i764)
  %tobool.not.i765 = icmp eq i32 %and.i764, 0
  br i1 %tobool.not.i765, label %cond.true.skb_dst.exit_crit_edge, label %land.lhs.true.i768

cond.true.skb_dst.exit_crit_edge:                 ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i768:                               ; preds = %cond.true
  %call.i766 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i766)
  %tobool1.not.i767 = icmp eq i32 %call.i766, 0
  br i1 %tobool1.not.i767, label %land.rhs.i770, label %land.lhs.true.i768.skb_dst.exit_crit_edge

land.lhs.true.i768.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i768
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i770:                                    ; preds = %land.lhs.true.i768
  %call2.i769 = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i769)
  %tobool3.not.i = icmp eq i32 %call2.i769, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i770.skb_dst.exit_crit_edge, !prof !60

land.rhs.i770.skb_dst.exit_crit_edge:             ; preds = %land.rhs.i770
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i770
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i770.skb_dst.exit_crit_edge, %land.lhs.true.i768.skb_dst.exit_crit_edge, %cond.true.skb_dst.exit_crit_edge
  %92 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %83, align 8
  %and25.i = and i32 %93, -2
  %94 = inttoptr i32 %and25.i to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rt6i_idev.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  br label %cond.end

cond.end:                                         ; preds = %skb_dst.exit, %skb_valid_dst.exit.cond.end_crit_edge, %skb_dst.exit.i.cond.end_crit_edge
  %.pn = phi ptr [ %98, %skb_dst.exit ], [ %dev, %skb_valid_dst.exit.cond.end_crit_edge ], [ %dev, %skb_dst.exit.i.cond.end_crit_edge ]
  %cond.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 17
  %99 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %99)
  %cond = load i32, ptr %cond.in, align 4
  %100 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %cond, ptr %cb, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %101 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 7
  %103 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %102, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 40
  br i1 %cmp.not.i, label %if.end.i, label %cond.end.if.end195_crit_edge, !prof !60

cond.end.if.end195_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %102)
  %cmp3.i = icmp ult i32 %102, 40
  br i1 %cmp3.i, label %if.end.i.do.body610_crit_edge, label %pskb_may_pull.exit, !prof !60

if.end.i.do.body610_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 40, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body610_crit_edge, label %pskb_may_pull.exit.if.end195_crit_edge, !prof !60

pskb_may_pull.exit.if.end195_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

pskb_may_pull.exit.do.body610_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.end195:                                        ; preds = %pskb_may_pull.exit.if.end195_crit_edge, %cond.end.if.end195_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %105 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %107 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %108 to i32
  %add.ptr.i.i = getelementptr i8, ptr %106, i32 %conv.i.i
  %109 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load197 = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr198.mask = and i8 %bf.load197, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr198.mask)
  %cmp200.not = icmp eq i8 %bf.lshr198.mask, 96
  br i1 %cmp200.not, label %if.then213, label %if.end195.do.body610_crit_edge

if.end195.do.body610_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.then213:                                       ; preds = %if.end195
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 17
  %110 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %111, i32 0, i32 5
  %112 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp224 = icmp eq i16 %113, 0
  %narrow = select i1 %cmp224, i16 1, i16 %113
  %conv232 = zext i16 %narrow to i64
  %ipv6240 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %114 = ptrtoint ptr %ipv6240 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ipv6240, align 4
  %116 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.i.i, align 2
  %118 = lshr i16 %117, 4
  %119 = and i16 %118, 3
  %120 = or i16 %119, 32
  %121 = zext i16 %120 to i32
  %arrayidx245 = getelementptr [37 x i64], ptr %115, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx245 to i32
  %123 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cpu67, align 4
  %arrayidx249 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx249, align 4
  %add250 = add i32 %126, %122
  %127 = inttoptr i32 %add250 to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %127, align 8
  %add251 = add i64 %129, %conv232
  store i64 %add251, ptr %127, align 8
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %gso_segs266 = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %gso_segs266 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %gso_segs266, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp270 = icmp eq i16 %133, 0
  %narrow838 = select i1 %cmp270, i16 1, i16 %133
  %conv278 = zext i16 %narrow838 to i64
  %134 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ipv6_statistics, align 4
  %136 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.i.i, align 2
  %138 = lshr i16 %137, 4
  %139 = and i16 %138, 3
  %140 = or i16 %139, 32
  %141 = zext i16 %140 to i32
  %arrayidx292 = getelementptr [37 x i64], ptr %135, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx292 to i32
  %143 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cpu67, align 4
  %arrayidx296 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx296, align 4
  %add297 = add i32 %146, %142
  %147 = inttoptr i32 %add297 to ptr
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %147, align 8
  %add298 = add i64 %149, %conv278
  store i64 %add298, ptr %147, align 8
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %150 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %152 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %153, %151
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %154 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %155
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %156 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx7.i, align 4
  %xor.i = xor i32 %157, 1
  %or8.i = or i32 %or5.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then213.land.lhs.true_crit_edge, label %lor.lhs.false305

if.then213.land.lhs.true_crit_edge:               ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false305:                                 ; preds = %if.then213
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %158 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %daddr, align 4
  %arrayidx2.i773 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 1
  %160 = ptrtoint ptr %arrayidx2.i773 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx2.i773, align 4
  %or.i774 = or i32 %161, %159
  %arrayidx4.i775 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 2
  %162 = ptrtoint ptr %arrayidx4.i775 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx4.i775, align 4
  %or5.i776 = or i32 %or.i774, %163
  %arrayidx7.i777 = getelementptr [4 x i32], ptr %daddr, i32 0, i32 3
  %164 = ptrtoint ptr %arrayidx7.i777 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx7.i777, align 4
  %xor.i778 = xor i32 %165, 1
  %or8.i779 = or i32 %or5.i776, %xor.i778
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i779)
  %cmp.i780 = icmp eq i32 %or8.i779, 0
  br i1 %cmp.i780, label %lor.lhs.false305.land.lhs.true_crit_edge, label %lor.lhs.false305.if.end313_crit_edge

lor.lhs.false305.if.end313_crit_edge:             ; preds = %lor.lhs.false305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

lor.lhs.false305.land.lhs.true_crit_edge:         ; preds = %lor.lhs.false305
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false305.land.lhs.true_crit_edge, %if.then213.land.lhs.true_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %166 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags, align 8
  %and308 = and i32 %167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and308)
  %tobool309.not = icmp eq i32 %and308, 0
  br i1 %tobool309.not, label %land.lhs.true310, label %land.lhs.true.if.end313_crit_edge

land.lhs.true.if.end313_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

land.lhs.true310:                                 ; preds = %land.lhs.true
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %168 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %priv_flags.i, align 16
  %and.i781 = and i64 %169, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i781)
  %tobool.i.not = icmp eq i64 %and.i781, 0
  br i1 %tobool.i.not, label %land.lhs.true310.do.body610_crit_edge, label %land.lhs.true310.if.end313_crit_edge

land.lhs.true310.if.end313_crit_edge:             ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end313

land.lhs.true310.do.body610_crit_edge:            ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.end313:                                        ; preds = %land.lhs.true310.if.end313_crit_edge, %land.lhs.true.if.end313_crit_edge, %lor.lhs.false305.if.end313_crit_edge
  %pkt_type314 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15
  %170 = ptrtoint ptr %pkt_type314 to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load315 = load i16, ptr %pkt_type314, align 8
  %bf.lshr316.mask = and i16 %bf.load315, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr316.mask)
  %cmp319 = icmp eq i16 %bf.lshr316.mask, -24576
  br i1 %cmp319, label %if.end313.if.end337_crit_edge, label %lor.lhs.false321

if.end313.if.end337_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

lor.lhs.false321:                                 ; preds = %if.end313
  %flags322 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %171 = ptrtoint ptr %flags322 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flags322, align 8
  %and323 = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  br i1 %tobool324.not, label %land.lhs.true325, label %lor.lhs.false321.if.end337_crit_edge

lor.lhs.false321.if.end337_crit_edge:             ; preds = %lor.lhs.false321
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

land.lhs.true325:                                 ; preds = %lor.lhs.false321
  %daddr326 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %173 = ptrtoint ptr %daddr326 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %daddr326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %174)
  %cmp.i782 = icmp ugt i32 %174, -16777217
  br i1 %cmp.i782, label %land.lhs.true329, label %land.lhs.true325.if.end337_crit_edge

land.lhs.true325.if.end337_crit_edge:             ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

land.lhs.true329:                                 ; preds = %land.lhs.true325
  %arrayidx331 = getelementptr [16 x i8], ptr %daddr326, i32 0, i32 1
  %175 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx331, align 1
  %177 = and i8 %176, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %cmp334 = icmp eq i8 %177, 1
  br i1 %cmp334, label %land.lhs.true329.do.body610_crit_edge, label %land.lhs.true329.if.end337_crit_edge

land.lhs.true329.if.end337_crit_edge:             ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end337

land.lhs.true329.do.body610_crit_edge:            ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.end337:                                        ; preds = %land.lhs.true329.if.end337_crit_edge, %land.lhs.true325.if.end337_crit_edge, %lor.lhs.false321.if.end337_crit_edge, %if.end313.if.end337_crit_edge
  %daddr338 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %178 = ptrtoint ptr %daddr338 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %daddr338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %179)
  %cmp.i783 = icmp ugt i32 %179, -16777217
  br i1 %cmp.i783, label %land.lhs.true364, label %land.lhs.true340

land.lhs.true340:                                 ; preds = %if.end337
  %bf.lshr343 = lshr i16 %bf.load315, 13
  %bf.lshr343.off = add nsw i16 %bf.lshr343, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr343.off)
  %switch = icmp ult i16 %bf.lshr343.off, 2
  br i1 %switch, label %land.lhs.true356, label %if.end373

land.lhs.true356:                                 ; preds = %land.lhs.true340
  %drop_unicast_in_l2_multicast = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 32, i32 36
  %180 = ptrtoint ptr %drop_unicast_in_l2_multicast to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %drop_unicast_in_l2_multicast, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool358.not = icmp ne i32 %181, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %151)
  %cmp.i785 = icmp ugt i32 %151, -16777217
  %or.cond = select i1 %tobool358.not, i1 true, i1 %cmp.i785
  br i1 %or.cond, label %land.lhs.true356.do.body610_crit_edge, label %land.lhs.true356.if.end377_crit_edge

land.lhs.true356.if.end377_crit_edge:             ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end377

land.lhs.true356.do.body610_crit_edge:            ; preds = %land.lhs.true356
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

land.lhs.true364:                                 ; preds = %if.end337
  %arrayidx367 = getelementptr [16 x i8], ptr %daddr338, i32 0, i32 1
  %182 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx367, align 1
  %184 = and i8 %183, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp370 = icmp eq i8 %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %151)
  %cmp.i785.old = icmp ugt i32 %151, -16777217
  %or.cond837 = select i1 %cmp370, i1 true, i1 %cmp.i785.old
  br i1 %or.cond837, label %land.lhs.true364.do.body610_crit_edge, label %land.lhs.true364.if.end377_crit_edge

land.lhs.true364.if.end377_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end377

land.lhs.true364.do.body610_crit_edge:            ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.end373:                                        ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %151)
  %cmp.i785.old.old = icmp ugt i32 %151, -16777217
  br i1 %cmp.i785.old.old, label %if.end373.do.body610_crit_edge, label %if.end373.if.end377_crit_edge

if.end373.if.end377_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end377

if.end373.do.body610_crit_edge:                   ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body610

if.end377:                                        ; preds = %if.end373.if.end377_crit_edge, %land.lhs.true364.if.end377_crit_edge, %land.lhs.true356.if.end377_crit_edge
  %185 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %network_header.i.i, align 4
  %add379 = add i16 %186, 40
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 19
  %187 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %add379, ptr %transport_header, align 2
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 14
  %188 = ptrtoint ptr %nhoff to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 6, ptr %nhoff, align 2
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %189 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %payload_len, align 4
  %conv383 = zext i16 %190 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool384.not = icmp eq i16 %190, 0
  br i1 %tobool384.not, label %lor.lhs.false385, label %if.end377.if.then389_crit_edge

if.end377.if.then389_crit_edge:                   ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then389

lor.lhs.false385:                                 ; preds = %if.end377
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %191 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %cmp387.not = icmp eq i8 %192, 0
  br i1 %cmp387.not, label %lor.lhs.false385.if.end524_crit_edge, label %lor.lhs.false385.if.then389_crit_edge

lor.lhs.false385.if.then389_crit_edge:            ; preds = %lor.lhs.false385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then389

lor.lhs.false385.if.end524_crit_edge:             ; preds = %lor.lhs.false385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end524

if.then389:                                       ; preds = %lor.lhs.false385.if.then389_crit_edge, %if.end377.if.then389_crit_edge
  %add390 = add nuw nsw i32 %conv383, 40
  %193 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add390, i32 %194)
  %cmp392 = icmp ugt i32 %add390, %194
  br i1 %cmp392, label %do.body405, label %if.end456

do.body405:                                       ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %195 = ptrtoint ptr %ipv6240 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ipv6240, align 4
  %197 = ptrtoint ptr %196 to i32
  %198 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cpu67, align 4
  %arrayidx419 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx419, align 4
  %add420 = add i32 %201, %197
  %202 = inttoptr i32 %add420 to ptr
  %syncp421 = getelementptr inbounds %struct.ipstats_mib, ptr %202, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp421)
  %arrayidx423 = getelementptr [37 x i64], ptr %202, i32 0, i32 12
  %203 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %arrayidx423, align 8
  %add424 = add i64 %204, 1
  store i64 %add424, ptr %arrayidx423, align 8
  %dep_map.i.i786 = getelementptr inbounds %struct.ipstats_mib, ptr %202, i32 0, i32 1, i32 0, i32 1
  %205 = tail call ptr @llvm.returnaddress(i32 0) #7
  %206 = ptrtoint ptr %205 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i786, i32 noundef %206) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %207 = ptrtoint ptr %syncp421 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %syncp421, align 4
  %inc.i.i.i787 = add i32 %208, 1
  store i32 %inc.i.i.i787, ptr %syncp421, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %209 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ipv6_statistics, align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %cpu67, align 4
  %arrayidx445 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %213
  %214 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx445, align 4
  %add446 = add i32 %215, %211
  %216 = inttoptr i32 %add446 to ptr
  %syncp447 = getelementptr inbounds %struct.ipstats_mib, ptr %216, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp447)
  %arrayidx449 = getelementptr [37 x i64], ptr %216, i32 0, i32 12
  %217 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %arrayidx449, align 8
  %add450 = add i64 %218, 1
  store i64 %add450, ptr %arrayidx449, align 8
  %dep_map.i.i788 = getelementptr inbounds %struct.ipstats_mib, ptr %216, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i788, i32 noundef %206) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %drop

if.end456:                                        ; preds = %if.then389
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %add390)
  %cmp.not.i790 = icmp ugt i32 %194, %add390
  br i1 %cmp.not.i790, label %pskb_trim_rcsum.exit, label %if.end456.if.end522_crit_edge, !prof !60

if.end456.if.end522_crit_edge:                    ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end522

pskb_trim_rcsum.exit:                             ; preds = %if.end456
  %call.i791 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %skb.addr.0.i, i32 noundef %add390) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i791)
  %tobool459.not = icmp eq i32 %call.i791, 0
  br i1 %tobool459.not, label %pskb_trim_rcsum.exit.if.end522_crit_edge, label %do.body471

pskb_trim_rcsum.exit.if.end522_crit_edge:         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end522

do.body471:                                       ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %219 = ptrtoint ptr %ipv6240 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ipv6240, align 4
  %221 = ptrtoint ptr %220 to i32
  %222 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %cpu67, align 4
  %arrayidx485 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %223
  %224 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx485, align 4
  %add486 = add i32 %225, %221
  %226 = inttoptr i32 %add486 to ptr
  %syncp487 = getelementptr inbounds %struct.ipstats_mib, ptr %226, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp487)
  %arrayidx489 = getelementptr [37 x i64], ptr %226, i32 0, i32 7
  %227 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %arrayidx489, align 8
  %add490 = add i64 %228, 1
  store i64 %add490, ptr %arrayidx489, align 8
  %dep_map.i.i794 = getelementptr inbounds %struct.ipstats_mib, ptr %226, i32 0, i32 1, i32 0, i32 1
  %229 = tail call ptr @llvm.returnaddress(i32 0) #7
  %230 = ptrtoint ptr %229 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i794, i32 noundef %230) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %231 = ptrtoint ptr %syncp487 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %syncp487, align 4
  %inc.i.i.i795 = add i32 %232, 1
  store i32 %inc.i.i.i795, ptr %syncp487, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %233 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ipv6_statistics, align 4
  %235 = ptrtoint ptr %234 to i32
  %236 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %cpu67, align 4
  %arrayidx511 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %237
  %238 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx511, align 4
  %add512 = add i32 %239, %235
  %240 = inttoptr i32 %add512 to ptr
  %syncp513 = getelementptr inbounds %struct.ipstats_mib, ptr %240, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp513)
  %arrayidx515 = getelementptr [37 x i64], ptr %240, i32 0, i32 7
  %241 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %arrayidx515, align 8
  %add516 = add i64 %242, 1
  store i64 %add516, ptr %arrayidx515, align 8
  %dep_map.i.i796 = getelementptr inbounds %struct.ipstats_mib, ptr %240, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i796, i32 noundef %230) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %drop

if.end522:                                        ; preds = %pskb_trim_rcsum.exit.if.end522_crit_edge, %if.end456.if.end522_crit_edge
  %243 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %head.i.i, align 8
  %245 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i800 = zext i16 %246 to i32
  %add.ptr.i.i801 = getelementptr i8, ptr %244, i32 %conv.i.i800
  br label %if.end524

if.end524:                                        ; preds = %if.end522, %lor.lhs.false385.if.end524_crit_edge
  %hdr.0 = phi ptr [ %add.ptr.i.i801, %if.end522 ], [ %add.ptr.i.i, %lor.lhs.false385.if.end524_crit_edge ]
  %nexthdr525 = getelementptr inbounds %struct.ipv6hdr, ptr %hdr.0, i32 0, i32 3
  %247 = ptrtoint ptr %nexthdr525 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %nexthdr525, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp527 = icmp eq i8 %248, 0
  br i1 %cmp527, label %if.then529, label %if.end524.if.end596_crit_edge

if.end524.if.end596_crit_edge:                    ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end596

if.then529:                                       ; preds = %if.end524
  %call530 = tail call i32 @ipv6_parse_hopopts(ptr noundef nonnull %skb.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call530)
  %cmp531 = icmp slt i32 %call530, 0
  br i1 %cmp531, label %do.body544, label %if.then529.if.end596_crit_edge

if.then529.if.end596_crit_edge:                   ; preds = %if.then529
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end596

do.body544:                                       ; preds = %if.then529
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %249 = ptrtoint ptr %ipv6240 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ipv6240, align 4
  %251 = ptrtoint ptr %250 to i32
  %252 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cpu67, align 4
  %arrayidx558 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %253
  %254 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx558, align 4
  %add559 = add i32 %255, %251
  %256 = inttoptr i32 %add559 to ptr
  %syncp560 = getelementptr inbounds %struct.ipstats_mib, ptr %256, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp560)
  %arrayidx562 = getelementptr [37 x i64], ptr %256, i32 0, i32 7
  %257 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %arrayidx562, align 8
  %add563 = add i64 %258, 1
  store i64 %add563, ptr %arrayidx562, align 8
  %dep_map.i.i802 = getelementptr inbounds %struct.ipstats_mib, ptr %256, i32 0, i32 1, i32 0, i32 1
  %259 = tail call ptr @llvm.returnaddress(i32 0) #7
  %260 = ptrtoint ptr %259 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i802, i32 noundef %260) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %261 = ptrtoint ptr %syncp560 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %syncp560, align 4
  %inc.i.i.i803 = add i32 %262, 1
  store i32 %inc.i.i.i803, ptr %syncp560, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %263 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ipv6_statistics, align 4
  %265 = ptrtoint ptr %264 to i32
  %266 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %cpu67, align 4
  %arrayidx584 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %267
  %268 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx584, align 4
  %add585 = add i32 %269, %265
  %270 = inttoptr i32 %add585 to ptr
  %syncp586 = getelementptr inbounds %struct.ipstats_mib, ptr %270, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp586)
  %arrayidx588 = getelementptr [37 x i64], ptr %270, i32 0, i32 7
  %271 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %arrayidx588, align 8
  %add589 = add i64 %272, 1
  store i64 %add589, ptr %arrayidx588, align 8
  %dep_map.i.i804 = getelementptr inbounds %struct.ipstats_mib, ptr %270, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i804, i32 noundef %260) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %273 = ptrtoint ptr %syncp586 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %syncp586, align 4
  %inc.i.i.i805 = add i32 %274, 1
  store i32 %inc.i.i.i805, ptr %syncp586, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end596:                                        ; preds = %if.then529.if.end596_crit_edge, %if.end524.if.end596_crit_edge
  tail call fastcc void @rcu_read_unlock()
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 4, i32 0, i32 1
  %275 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %destructor.i, align 4
  %cmp.i806 = icmp eq ptr %276, @sock_pfree
  br i1 %cmp.i806, label %if.end596.cleanup_crit_edge, label %if.then598

if.end596.cleanup_crit_edge:                      ; preds = %if.end596
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then598:                                       ; preds = %if.end596
  %tobool.not.i808 = icmp eq ptr %276, null
  br i1 %tobool.not.i808, label %do.body.i, label %if.then.i809

if.then.i809:                                     ; preds = %if.then598
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %276(ptr noundef nonnull %skb.addr.0.i) #7
  %277 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %destructor.i, align 4
  %278 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 1
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr null, ptr %278, align 4
  br label %cleanup

do.body.i:                                        ; preds = %if.then598
  %280 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 1
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %tobool3.not.i810 = icmp eq ptr %282, null
  br i1 %tobool3.not.i810, label %do.body.i.cleanup_crit_edge, label %do.body7.i, !prof !63

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.body610:                                       ; preds = %if.end373.do.body610_crit_edge, %land.lhs.true364.do.body610_crit_edge, %land.lhs.true356.do.body610_crit_edge, %land.lhs.true329.do.body610_crit_edge, %land.lhs.true310.do.body610_crit_edge, %if.end195.do.body610_crit_edge, %pskb_may_pull.exit.do.body610_crit_edge, %if.end.i.do.body610_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6620 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %283 = ptrtoint ptr %ipv6620 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ipv6620, align 4
  %285 = ptrtoint ptr %284 to i32
  %286 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %cpu67, align 4
  %arrayidx624 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %287
  %288 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx624, align 4
  %add625 = add i32 %289, %285
  %290 = inttoptr i32 %add625 to ptr
  %syncp626 = getelementptr inbounds %struct.ipstats_mib, ptr %290, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp626)
  %arrayidx628 = getelementptr [37 x i64], ptr %290, i32 0, i32 7
  %291 = ptrtoint ptr %arrayidx628 to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %arrayidx628, align 8
  %add629 = add i64 %292, 1
  store i64 %add629, ptr %arrayidx628, align 8
  %dep_map.i.i812 = getelementptr inbounds %struct.ipstats_mib, ptr %290, i32 0, i32 1, i32 0, i32 1
  %293 = tail call ptr @llvm.returnaddress(i32 0) #7
  %294 = ptrtoint ptr %293 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i812, i32 noundef %294) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %295 = ptrtoint ptr %syncp626 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %syncp626, align 4
  %inc.i.i.i813 = add i32 %296, 1
  store i32 %inc.i.i.i813, ptr %syncp626, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %297 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ipv6_statistics, align 4
  %299 = ptrtoint ptr %298 to i32
  %300 = ptrtoint ptr %cpu67 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %cpu67, align 4
  %arrayidx650 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %301
  %302 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx650, align 4
  %add651 = add i32 %303, %299
  %304 = inttoptr i32 %add651 to ptr
  %syncp652 = getelementptr inbounds %struct.ipstats_mib, ptr %304, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp652)
  %arrayidx654 = getelementptr [37 x i64], ptr %304, i32 0, i32 7
  %305 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %arrayidx654, align 8
  %add655 = add i64 %306, 1
  store i64 %add655, ptr %arrayidx654, align 8
  %dep_map.i.i814 = getelementptr inbounds %struct.ipstats_mib, ptr %304, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i814, i32 noundef %294) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %drop

drop:                                             ; preds = %do.body610, %do.body471, %do.body405, %do.body150
  %syncp652.sink839 = phi ptr [ %syncp652, %do.body610 ], [ %syncp513, %do.body471 ], [ %syncp447, %do.body405 ], [ %syncp166, %do.body150 ]
  %skb.addr.0.i829 = phi ptr [ %skb.addr.0.i, %do.body610 ], [ %skb.addr.0.i, %do.body471 ], [ %skb.addr.0.i, %do.body405 ], [ %skb.addr.0.i830, %do.body150 ]
  %307 = ptrtoint ptr %syncp652.sink839 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %syncp652.sink839, align 4
  %inc.i.i.i815 = add i32 %308, 1
  store i32 %inc.i.i.i815, ptr %syncp652.sink839, align 4
  tail call fastcc void @local_bh_enable()
  %call.i816 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i816, label %drop.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i819

drop.rcu_read_unlock.exit_crit_edge:              ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i819:                               ; preds = %drop
  %call1.i817 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i817)
  %tobool.not.i818 = icmp eq i32 %call1.i817, 0
  br i1 %tobool.not.i818, label %land.lhs.true.i819.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i821

land.lhs.true.i819.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i819
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i821:                              ; preds = %land.lhs.true.i819
  %.b4.i820 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i820, label %land.lhs.true2.i821.rcu_read_unlock.exit_crit_edge, label %if.then.i822

land.lhs.true2.i821.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i821
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i822:                                     ; preds = %land.lhs.true2.i821
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i822, %land.lhs.true2.i821.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i819.rcu_read_unlock.exit_crit_edge, %drop.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %309 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i823 = and i32 %309, -16384
  %310 = inttoptr i32 %and.i.i.i.i.i823 to ptr
  %preempt_count.i.i.i.i824 = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %preempt_count.i.i.i.i824 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load volatile i32, ptr %preempt_count.i.i.i.i824, align 4
  %sub.i.i.i = add i32 %312, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i824, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i829, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.body.i.cleanup_crit_edge, %if.then.i809, %if.end596.cleanup_crit_edge, %do.body544, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %rcu_read_unlock.exit ], [ null, %do.body544 ], [ %skb.addr.0.i, %if.end596.cleanup_crit_edge ], [ %skb.addr.0.i, %if.then.i809 ], [ %skb.addr.0.i, %do.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_list_rcv(ptr noundef readonly %head, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  %sublist = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sublist) #7
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
  %cmp.not48 = icmp eq ptr %4, %head
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %curr_dev.052 = phi ptr [ %curr_dev.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %curr_net.051 = phi ptr [ %curr_net.2, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %skb.049 = phi ptr [ %next.053, %cleanup.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %skb.049 to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.053 = load ptr, ptr %skb.049, align 8
  %6 = getelementptr inbounds %struct.anon.83, ptr %skb.049, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.049) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.skb_list_del_init.exit_crit_edge

for.body.skb_list_del_init.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %skb.049, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %skb.049 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i, %for.body.skb_list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %skb.049 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %skb.049, align 8
  %call6 = call fastcc ptr @ip6_rcv_core(ptr noundef %skb.049, ptr noundef %8, ptr noundef %10)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %skb_list_del_init.exit.cleanup_crit_edge, label %if.end

skb_list_del_init.exit.cleanup_crit_edge:         ; preds = %skb_list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %skb_list_del_init.exit
  %cmp8.not = icmp eq ptr %curr_dev.052, %8
  %cmp9.not = icmp eq ptr %curr_net.051, %10
  %or.cond = select i1 %cmp8.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %if.end
  %18 = ptrtoint ptr %sublist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sublist, align 4
  %cmp.i.not = icmp eq ptr %19, %sublist
  br i1 %cmp.i.not, label %if.then10.if.end13_crit_edge, label %if.then12

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ip6_sublist_rcv(ptr noundef nonnull %sublist, ptr noundef %curr_dev.052, ptr noundef %curr_net.051)
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
  %curr_net.1 = phi ptr [ %10, %if.end13 ], [ %curr_net.051, %if.end.if.end14_crit_edge ]
  %curr_dev.1 = phi ptr [ %8, %if.end13 ], [ %curr_dev.052, %if.end.if.end14_crit_edge ]
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call.i.i43 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call6, ptr noundef %23, ptr noundef nonnull %sublist) #7
  br i1 %call.i.i43, label %if.end.i.i44, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i44:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
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

cleanup:                                          ; preds = %if.end.i.i44, %if.end14.cleanup_crit_edge, %skb_list_del_init.exit.cleanup_crit_edge
  %curr_net.2 = phi ptr [ %curr_net.051, %skb_list_del_init.exit.cleanup_crit_edge ], [ %curr_net.1, %if.end14.cleanup_crit_edge ], [ %curr_net.1, %if.end.i.i44 ]
  %curr_dev.2 = phi ptr [ %curr_dev.052, %skb_list_del_init.exit.cleanup_crit_edge ], [ %curr_dev.1, %if.end14.cleanup_crit_edge ], [ %curr_dev.1, %if.end.i.i44 ]
  %cmp.not = icmp eq ptr %next.053, %head
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %curr_net.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %curr_net.2, %cleanup.for.end_crit_edge ]
  %curr_dev.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %curr_dev.2, %cleanup.for.end_crit_edge ]
  %28 = ptrtoint ptr %sublist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sublist, align 4
  %cmp.i45.not = icmp eq ptr %29, %sublist
  br i1 %cmp.i45.not, label %for.end.if.end23_crit_edge, label %if.then22

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ip6_sublist_rcv(ptr noundef nonnull %sublist, ptr noundef %curr_dev.0.lcssa, ptr noundef %curr_net.0.lcssa)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sublist) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_sublist_rcv(ptr noundef %head, ptr noundef %dev, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  %sublist.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @NF_HOOK_LIST(ptr noundef %net, ptr noundef %head, ptr noundef %dev)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sublist.i) #7
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
  %cmp.not16.i = icmp eq ptr %4, %head
  br i1 %cmp.not16.i, label %entry.ip6_list_rcv_finish.exit_crit_edge, label %for.body.lr.ph.i

entry.ip6_list_rcv_finish.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip6_list_rcv_finish.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %fib6_routes_require_src.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 20
  %fib6_has_custom_rules.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.021.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %next.023.i, %cleanup.i.for.body.i_crit_edge ]
  %hint.018.i = phi ptr [ null, %for.body.lr.ph.i ], [ %hint.2.i, %cleanup.i.for.body.i_crit_edge ]
  %curr_dst.017.i = phi ptr [ null, %for.body.lr.ph.i ], [ %curr_dst.2.i, %cleanup.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %skb.021.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.023.i = load ptr, ptr %skb.021.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.021.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.skb_list_del_init.exit.i_crit_edge

for.body.i.skb_list_del_init.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.021.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %skb.021.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %skb_list_del_init.exit.i

skb_list_del_init.exit.i:                         ; preds = %if.end.i.i.i, %for.body.i.skb_list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %skb.021.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb.021.i, align 8
  %13 = getelementptr inbounds %struct.anon.83, ptr %skb.021.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i.i = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %15) #7
  br label %if.end5.i.i.i

if.else.i.i.i:                                    ; preds = %skb_list_del_init.exit.i
  %18 = and i64 %17, 537133056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %.not.i.i.i = icmp eq i64 %18, 0
  br i1 %.not.i.i.i, label %if.else.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge, label %if.else.i.i.i.if.end5.i.i.i_crit_edge

if.else.i.i.i.if.end5.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i.i

if.else.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge:    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit.i

if.end5.i.i.i:                                    ; preds = %if.else.i.i.i.if.end5.i.i.i_crit_edge, %if.then.i.i.i
  %master.0.i.i.i = phi ptr [ %call1.i.i.i, %if.then.i.i.i ], [ %15, %if.else.i.i.i.if.end5.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %master.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end5.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge:    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end5.i.i.i
  %l3mdev_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %master.0.i.i.i, i32 0, i32 45
  %19 = ptrtoint ptr %l3mdev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %l3mdev_ops.i.i.i, align 4
  %l3mdev_l3_rcv.i.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %l3mdev_l3_rcv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %l3mdev_l3_rcv.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge, label %if.then7.i.i.i

land.lhs.true.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %l3mdev_ip6_rcv.exit.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i.i = call ptr %22(ptr noundef nonnull %master.0.i.i.i, ptr noundef %skb.021.i, i16 noundef zeroext 10) #7
  br label %l3mdev_ip6_rcv.exit.i

l3mdev_ip6_rcv.exit.i:                            ; preds = %if.then7.i.i.i, %land.lhs.true.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge, %if.end5.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge, %if.else.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge
  %skb.addr.0.i.i.i = phi ptr [ %call10.i.i.i, %if.then7.i.i.i ], [ %skb.021.i, %land.lhs.true.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge ], [ %skb.021.i, %if.end5.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge ], [ %skb.021.i, %if.else.i.i.i.l3mdev_ip6_rcv.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %skb.addr.0.i.i.i, null
  br i1 %tobool.not.i, label %l3mdev_ip6_rcv.exit.i.cleanup.i_crit_edge, label %if.end.i

l3mdev_ip6_rcv.exit.i.cleanup.i_crit_edge:        ; preds = %l3mdev_ip6_rcv.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %l3mdev_ip6_rcv.exit.i
  %tobool.not.i.i = icmp eq ptr %hint.018.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i1.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i1.i, label %land.lhs.true.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i3.i

land.lhs.true.i.i.skb_dst.exit.i.i_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.lhs.true.i.i3.i:                             ; preds = %land.lhs.true.i.i
  %call.i.i2.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i2.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i3.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i3.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i3.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !60

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exitthread-pre-split.i.i

skb_dst.exitthread-pre-split.i.i:                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, %land.lhs.true.i.i3.i.skb_dst.exitthread-pre-split.i.i_crit_edge
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i.i = load i32, ptr %23, align 8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %skb_dst.exitthread-pre-split.i.i, %land.lhs.true.i.i.skb_dst.exit.i.i_crit_edge
  %27 = phi i32 [ %.pr.i.i, %skb_dst.exitthread-pre-split.i.i ], [ %25, %land.lhs.true.i.i.skb_dst.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %tobool1.not.i.i = icmp ult i32 %27, 2
  br i1 %tobool1.not.i.i, label %ip6_can_use_hint.exit.i, label %skb_dst.exit.i.i.if.else.i_crit_edge

skb_dst.exit.i.i.if.else.i_crit_edge:             ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

ip6_can_use_hint.exit.i:                          ; preds = %skb_dst.exit.i.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %hint.018.i, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %hint.018.i, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %31 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i.i
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %head.i.i8.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i8.i.i, align 8
  %network_header.i.i9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i9.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i9.i.i, align 4
  %conv.i.i10.i.i = zext i16 %35 to i32
  %add.ptr.i.i11.i.i = getelementptr i8, ptr %33, i32 %conv.i.i10.i.i
  %daddr4.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i11.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %daddr.i.i, align 4
  %38 = ptrtoint ptr %daddr4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daddr4.i.i, align 4
  %xor.i.i.i = xor i32 %39, %37
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %daddr4.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %43, %41
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr [4 x i32], ptr %daddr4.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %47, %45
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr [4 x i32], ptr %daddr.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr [4 x i32], ptr %daddr4.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %51, %49
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then7.i, label %ip6_can_use_hint.exit.i.if.else.i_crit_edge

ip6_can_use_hint.exit.i.if.else.i_crit_edge:      ; preds = %ip6_can_use_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then7.i:                                       ; preds = %ip6_can_use_hint.exit.i
  %52 = getelementptr inbounds %struct.sk_buff, ptr %hint.018.i, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i4.i = icmp eq i32 %54, 0
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.load.mask.i.i.i = and i32 %bf.load.i.i.i, 4096
  %bf.shl.i.i.i = select i1 %tobool.not.i.i4.i, i32 %bf.load.mask.i.i.i, i32 4096
  %bf.clear4.i.i.i = and i32 %bf.load.i.i.i, -4097
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear4.i.i.i
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %56 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %23, align 8
  %and.i.i5.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool6.not.i.i6.i = icmp eq i32 %and.i.i5.i, 0
  br i1 %tobool6.not.i.i6.i, label %skb_dst.exit.i.i.i, label %if.then7.i.if.end8.i_crit_edge

if.then7.i.if.end8.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

skb_dst.exit.i.i.i:                               ; preds = %if.then7.i
  %and25.i.i.i.i = and i32 %54, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i.i)
  %tobool.not.i13.i.i.i = icmp eq i32 %and25.i.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i, label %skb_dst.exit.i.i.i.if.end8.i_crit_edge, label %if.then.i.i.i.i

skb_dst.exit.i.i.i.if.end8.i_crit_edge:           ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then.i.i.i.i:                                  ; preds = %skb_dst.exit.i.i.i
  %57 = inttoptr i32 %and25.i.i.i.i to ptr
  %__refcnt.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %57, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i.i.i, ptr %__refcnt.i.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i.i.i) #7, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %do.end10.i.i.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i.i.i:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %if.end8.i

do.end10.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 231, i32 noundef 9, ptr noundef null) #7
  br label %if.end8.i

if.else.i:                                        ; preds = %ip6_can_use_hint.exit.i.if.else.i_crit_edge, %skb_dst.exit.i.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call fastcc void @ip6_rcv_finish_core(ptr noundef %net, ptr noundef nonnull %skb.addr.0.i.i.i) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %do.end10.i.i.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i.i.i, %skb_dst.exit.i.i.i.if.end8.i_crit_edge, %if.then7.i.if.end8.i_crit_edge
  %59 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %and.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i7.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i7.i, label %if.end8.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i9.i

if.end8.i.skb_dst.exit.i_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i9.i:                               ; preds = %if.end8.i
  %call.i.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i8.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i8.i, label %land.rhs.i10.i, label %land.lhs.true.i9.i.skb_dst.exit.i_crit_edge

land.lhs.true.i9.i.skb_dst.exit.i_crit_edge:      ; preds = %land.lhs.true.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i10.i:                                   ; preds = %land.lhs.true.i9.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i10.i.skb_dst.exit.i_crit_edge, !prof !60

land.rhs.i10.i.skb_dst.exit.i_crit_edge:          ; preds = %land.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i10.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i9.i.skb_dst.exit.i_crit_edge, %if.end8.i.skb_dst.exit.i_crit_edge
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 8
  %and25.i.i = and i32 %63, -2
  %64 = inttoptr i32 %and25.i.i to ptr
  %cmp10.not.i = icmp eq ptr %curr_dst.017.i, %64
  br i1 %cmp10.not.i, label %skb_dst.exit.i.if.end17.i_crit_edge, label %if.then11.i

skb_dst.exit.i.if.end17.i_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then11.i:                                      ; preds = %skb_dst.exit.i
  %65 = ptrtoint ptr %fib6_routes_require_src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fib6_routes_require_src.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i, label %if.then11.i.ip6_extract_route_hint.exit.i_crit_edge

if.then11.i.ip6_extract_route_hint.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip6_extract_route_hint.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %fib6_has_custom_rules.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fib6_has_custom_rules.i.i.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.i.not.i.i = icmp eq i8 %68, 0
  %spec.select.i.i = select i1 %tobool.i.not.i.i, ptr %skb.addr.0.i.i.i, ptr null
  br label %ip6_extract_route_hint.exit.i

ip6_extract_route_hint.exit.i:                    ; preds = %lor.lhs.false.i.i, %if.then11.i.ip6_extract_route_hint.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then11.i.ip6_extract_route_hint.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %69 = ptrtoint ptr %sublist.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %sublist.i, align 4
  %cmp.i.not.i = icmp eq ptr %70, %sublist.i
  br i1 %cmp.i.not.i, label %ip6_extract_route_hint.exit.i.if.end16.i_crit_edge, label %if.then15.i

ip6_extract_route_hint.exit.i.if.end16.i_crit_edge: ; preds = %ip6_extract_route_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then15.i:                                      ; preds = %ip6_extract_route_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @ip6_sublist_rcv_finish(ptr noundef nonnull %sublist.i) #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %ip6_extract_route_hint.exit.i.if.end16.i_crit_edge
  %71 = ptrtoint ptr %sublist.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %sublist.i, ptr %sublist.i, align 4
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %sublist.i, ptr %0, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %skb_dst.exit.i.if.end17.i_crit_edge
  %curr_dst.1.i = phi ptr [ %64, %if.end16.i ], [ %curr_dst.017.i, %skb_dst.exit.i.if.end17.i_crit_edge ]
  %hint.1.i = phi ptr [ %retval.0.i.i, %if.end16.i ], [ %hint.018.i, %skb_dst.exit.i.if.end17.i_crit_edge ]
  %73 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %0, align 4
  %call.i.i13.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %skb.addr.0.i.i.i, ptr noundef %74, ptr noundef nonnull %sublist.i) #7
  br i1 %call.i.i13.i, label %if.end.i.i14.i, label %if.end17.i.cleanup.i_crit_edge

if.end17.i.cleanup.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i.i14.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %skb.addr.0.i.i.i, ptr %0, align 4
  %76 = ptrtoint ptr %skb.addr.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %sublist.i, ptr %skb.addr.0.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb.addr.0.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %skb.addr.0.i.i.i, ptr %74, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i14.i, %if.end17.i.cleanup.i_crit_edge, %l3mdev_ip6_rcv.exit.i.cleanup.i_crit_edge
  %curr_dst.2.i = phi ptr [ %curr_dst.017.i, %l3mdev_ip6_rcv.exit.i.cleanup.i_crit_edge ], [ %curr_dst.1.i, %if.end17.i.cleanup.i_crit_edge ], [ %curr_dst.1.i, %if.end.i.i14.i ]
  %hint.2.i = phi ptr [ %hint.018.i, %l3mdev_ip6_rcv.exit.i.cleanup.i_crit_edge ], [ %hint.1.i, %if.end17.i.cleanup.i_crit_edge ], [ %hint.1.i, %if.end.i.i14.i ]
  %cmp.not.i = icmp eq ptr %next.023.i, %head
  br i1 %cmp.not.i, label %cleanup.i.ip6_list_rcv_finish.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.ip6_list_rcv_finish.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ip6_list_rcv_finish.exit

ip6_list_rcv_finish.exit:                         ; preds = %cleanup.i.ip6_list_rcv_finish.exit_crit_edge, %entry.ip6_list_rcv_finish.exit_crit_edge
  call fastcc void @ip6_sublist_rcv_finish(ptr noundef nonnull %sublist.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sublist.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6_protocol_deliver_rcu(ptr noundef %net, ptr noundef %skb, i32 noundef %nexthdr, i1 noundef zeroext %have_final) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %nhoff2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %tobool.not.i407 = icmp eq ptr %skb, null
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %2 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  br label %resubmit

resubmit:                                         ; preds = %if.then72.resubmit_crit_edge, %entry
  %have_final.addr.0.off0 = phi i1 [ %have_final, %entry ], [ %have_final.addr.2.off0, %if.then72.resubmit_crit_edge ]
  %nexthdr.addr.0 = phi i32 [ %nexthdr, %entry ], [ %nexthdr.addr.2, %if.then72.resubmit_crit_edge ]
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %resubmit.skb_dst.exit_crit_edge, label %land.lhs.true.i

resubmit.skb_dst.exit_crit_edge:                  ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %resubmit
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !60

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %resubmit.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt6i_idev.i, align 4
  %10 = ptrtoint ptr %nhoff2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nhoff2, align 2
  %conv = zext i16 %11 to i32
  br i1 %have_final.addr.0.off0, label %skb_dst.exit.resubmit_final.preheader_crit_edge, label %if.then

skb_dst.exit.resubmit_final.preheader_crit_edge:  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit_final.preheader

if.then:                                          ; preds = %skb_dst.exit
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %18 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %19, %sub.ptr.sub.i
  br i1 %cmp.i, label %if.then.discard_crit_edge, label %cond.false.i, !prof !60

if.then.discard_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

cond.false.i:                                     ; preds = %if.then
  %20 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i, %sub.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %sub.ptr.sub.i, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.discard_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_pull.exit

land.lhs.true.i.i.discard_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %22 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %23, %sub.ptr.sub.i
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i406 = getelementptr i8, ptr %25, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i.i406, ptr %data.i, align 4
  %tobool5.not = icmp eq ptr %add.ptr.i.i406, null
  br i1 %tobool5.not, label %pskb_pull.exit.discard_crit_edge, label %if.end

pskb_pull.exit.discard_crit_edge:                 ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.end:                                           ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %29 to i32
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv.i
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %conv
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %31 to i32
  br label %resubmit_final.preheader

resubmit_final.preheader:                         ; preds = %if.end, %skb_dst.exit.resubmit_final.preheader_crit_edge
  %nexthdr.addr.2.ph = phi i32 [ %nexthdr.addr.0, %skb_dst.exit.resubmit_final.preheader_crit_edge ], [ %conv8, %if.end ]
  br label %resubmit_final

resubmit_final:                                   ; preds = %if.then72.resubmit_final_crit_edge, %resubmit_final.preheader
  %have_final.addr.1.off0 = phi i1 [ %have_final.addr.2.off0, %if.then72.resubmit_final_crit_edge ], [ %have_final.addr.0.off0, %resubmit_final.preheader ]
  %nexthdr.addr.2 = phi i32 [ %call70, %if.then72.resubmit_final_crit_edge ], [ %nexthdr.addr.2.ph, %resubmit_final.preheader ]
  %call10 = tail call zeroext i1 @raw6_local_deliver(ptr noundef %skb, i32 noundef %nexthdr.addr.2) #7
  %arrayidx12 = getelementptr [256 x ptr], ptr @inet6_protos, i32 0, i32 %nexthdr.addr.2
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx12, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %resubmit_final.do.end23_crit_edge

resubmit_final.do.end23_crit_edge:                ; preds = %resubmit_final
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true:                                    ; preds = %resubmit_final
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b405 = load i1, ptr @ip6_protocol_deliver_rcu.__warned, align 1
  br i1 %.b405, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ip6_protocol_deliver_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %resubmit_final.do.end23_crit_edge
  %tobool25.not = icmp eq ptr %33, null
  br i1 %tobool25.not, label %if.else132, label %if.then26

if.then26:                                        ; preds = %do.end23
  %flags = getelementptr inbounds %struct.inet6_protocol, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %have_final.addr.1.off0, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then26
  br i1 %tobool29.not, label %if.then28.discard_crit_edge, label %if.then28.if.end61_crit_edge

if.then28.if.end61_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then28.discard_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.else:                                          ; preds = %if.then26
  br i1 %tobool29.not, label %if.else.if.end61_crit_edge, label %if.then35

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then35:                                        ; preds = %if.else
  br i1 %tobool.not.i407, label %if.then35.inet6_sdif.exit_crit_edge, label %land.lhs.true.i408

if.then35.inet6_sdif.exit_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sdif.exit

land.lhs.true.i408:                               ; preds = %if.then35
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i, align 8
  %38 = and i16 %37, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i.not.i = icmp eq i16 %38, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i408.inet6_sdif.exit_crit_edge, label %if.then.i

land.lhs.true.i408.inet6_sdif.exit_crit_edge:     ; preds = %land.lhs.true.i408
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sdif.exit

if.then.i:                                        ; preds = %land.lhs.true.i408
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i, %land.lhs.true.i408.inet6_sdif.exit_crit_edge, %if.then35.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %40, %if.then.i ], [ 0, %land.lhs.true.i408.inet6_sdif.exit_crit_edge ], [ 0, %if.then35.inet6_sdif.exit_crit_edge ]
  %41 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %42, -8
  %43 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i409 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i409, label %inet6_sdif.exit.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i410

inet6_sdif.exit.nf_reset_ct.exit_crit_edge:       ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_reset_ct.exit

land.lhs.true.i.i410:                             ; preds = %inet6_sdif.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #7, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i410
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef 3) #7
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i410
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %43) #7
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %inet6_sdif.exit.nf_reset_ct.exit_crit_edge
  %45 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %_nfct.i.i, align 8
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %48 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %49 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %nf_reset_ct.exit.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i419
    i2 -1, label %land.lhs.true.i421
  ]

nf_reset_ct.exit.skb_postpull_rcsum.exit_crit_edge: ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit

if.then.i419:                                     ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %transport_header.i.i, align 2
  %conv.i415 = zext i16 %51 to i32
  %52 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i, align 4
  %conv.i413 = zext i16 %53 to i32
  %sub.i = sub nsw i32 %conv.i415, %conv.i413
  %add.ptr.i414 = getelementptr i8, ptr %47, i32 %conv.i413
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 8
  %sub.i.i417 = sub i32 0, %55
  %call2.i418 = tail call i32 @csum_partial(ptr noundef %add.ptr.i414, i32 noundef %sub.i, i32 noundef %sub.i.i417) #7
  %sub.i25.i = sub i32 0, %call2.i418
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i25.i, ptr %1, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i421:                               ; preds = %nf_reset_ct.exit
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 8
  %conv.i.i420 = zext i16 %58 to i32
  %59 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i420, %sub.ptr.rhs.cast.i.i.i
  %sub.i26.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i)
  %cmp13.i = icmp slt i32 %sub.i26.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i421.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i421.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i421
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i421
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %61 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i421.skb_postpull_rcsum.exit_crit_edge, %if.then.i419, %nf_reset_ct.exit.skb_postpull_rcsum.exit_crit_edge
  %62 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i, align 8
  %64 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i, align 4
  %conv.i.i423 = zext i16 %65 to i32
  %add.ptr.i.i424 = getelementptr i8, ptr %63, i32 %conv.i.i423
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool40.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool40.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %skb_postpull_rcsum.exit
  %call42 = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %retval.0.i) #7
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then41.discard_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then41.discard_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.else46:                                        ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %2, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then41.if.end47_crit_edge
  %dev.0 = phi ptr [ %call42, %if.then41.if.end47_crit_edge ], [ %67, %if.else46 ]
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i424, i32 0, i32 6
  %68 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %69)
  %cmp.i425 = icmp ugt i32 %69, -16777217
  br i1 %cmp.i425, label %land.lhs.true50, label %if.end47.if.end61_crit_edge

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true50:                                  ; preds = %if.end47
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i424, i32 0, i32 5
  %call52 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %dev.0, ptr noundef %daddr, ptr noundef %saddr) #7
  br i1 %call52, label %land.lhs.true50.if.end61_crit_edge, label %land.lhs.true53

land.lhs.true50.if.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %70 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %transport_header.i.i, align 2
  %conv.i427 = zext i16 %71 to i32
  %72 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i, align 4
  %conv1.i429 = zext i16 %73 to i32
  %sub.i430 = sub nsw i32 %conv.i427, %conv1.i429
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %nexthdr.addr.2)
  %cmp.not.i = icmp eq i32 %nexthdr.addr.2, 58
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true53.discard_crit_edge

land.lhs.true53.discard_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

lor.lhs.false.i:                                  ; preds = %land.lhs.true53
  %add.i = add nsw i32 %sub.i430, 8
  %74 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %75, i32 %conv1.i429
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i.i432 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i433 = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i432, %sub.ptr.rhs.cast.i.i.i433
  %add.i.i = add i32 %add.i, %sub.ptr.sub.i.i.i
  %78 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len1.i, align 4
  %80 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.if.end.i_crit_edge, !prof !60

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %79, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.discard_crit_edge, label %pskb_network_may_pull.exit.i, !prof !60

if.end.i.i.i.discard_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

pskb_network_may_pull.exit.i:                     ; preds = %if.end.i.i.i
  %sub.i.i.i434 = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i434) #7
  %cmp14.i.i.not.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.not.i, label %pskb_network_may_pull.exit.i.discard_crit_edge, label %pskb_network_may_pull.exit.i.if.end.i_crit_edge

pskb_network_may_pull.exit.i.if.end.i_crit_edge:  ; preds = %pskb_network_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_network_may_pull.exit.i.discard_crit_edge:   ; preds = %pskb_network_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.end.i:                                         ; preds = %pskb_network_may_pull.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.if.end.i_crit_edge
  %82 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %head.i.i, align 8
  %84 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i, align 4
  %conv.i.i435 = zext i16 %85 to i32
  %add.ptr.i.i436 = getelementptr i8, ptr %83, i32 %conv.i.i435
  %add.ptr.i437 = getelementptr i8, ptr %add.ptr.i.i436, i32 %sub.i430
  %86 = ptrtoint ptr %add.ptr.i437 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr.i437, align 4
  %switch.tableidx = add i8 %87, 126
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %88 = icmp ult i8 %switch.tableidx, 14
  br i1 %88, label %switch.hole_check, label %if.end.i.discard_crit_edge

if.end.i.discard_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 8199, %switch.maskindex
  %89 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %switch.lobit.not = icmp eq i16 %89, 0
  br i1 %switch.lobit.not, label %switch.hole_check.discard_crit_edge, label %switch.hole_check.if.end61_crit_edge

switch.hole_check.if.end61_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

switch.hole_check.discard_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.end61:                                         ; preds = %switch.hole_check.if.end61_crit_edge, %land.lhs.true50.if.end61_crit_edge, %if.end47.if.end61_crit_edge, %if.else.if.end61_crit_edge, %if.then28.if.end61_crit_edge
  %have_final.addr.2.off0 = phi i1 [ true, %if.then28.if.end61_crit_edge ], [ false, %if.else.if.end61_crit_edge ], [ true, %land.lhs.true50.if.end61_crit_edge ], [ true, %if.end47.if.end61_crit_edge ], [ true, %switch.hole_check.if.end61_crit_edge ]
  %flags62 = getelementptr inbounds %struct.inet6_protocol, ptr %33, i32 0, i32 4
  %90 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags62, align 4
  %and63 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %if.end61.if.end69_crit_edge

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true65:                                  ; preds = %if.end61
  %call66 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true65.discard_crit_edge, label %land.lhs.true65.if.end69_crit_edge

land.lhs.true65.if.end69_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true65.discard_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

if.end69:                                         ; preds = %land.lhs.true65.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  %handler = getelementptr inbounds %struct.inet6_protocol, ptr %33, i32 0, i32 2
  %92 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %handler, align 4
  %call70 = tail call i32 %93(ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp = icmp sgt i32 %call70, 0
  br i1 %cmp, label %if.then72, label %if.else78

if.then72:                                        ; preds = %if.end69
  %94 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags62, align 4
  %and74 = and i32 %95, 2
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then72.resubmit_crit_edge, label %if.then72.resubmit_final_crit_edge

if.then72.resubmit_final_crit_edge:               ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit_final

if.then72.resubmit_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.else78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp79 = icmp eq i32 %call70, 0
  br i1 %cmp79, label %if.then81, label %if.else78.cleanup325_crit_edge

if.else78.cleanup325_crit_edge:                   ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup325

if.then81:                                        ; preds = %if.else78
  %cmp82.not = icmp eq ptr %9, null
  br i1 %cmp82.not, label %if.then81.do.body104_crit_edge, label %do.body87, !prof !60

if.then81.do.body104_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body104

do.body87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %96 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ipv6, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i439 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i439 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cpu, align 4
  %arrayidx95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx95, align 4
  %add = add i32 %104, %98
  %105 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %105, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx96 = getelementptr [37 x i64], ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx96, align 8
  %add97 = add i64 %107, 1
  store i64 %add97, ptr %arrayidx96, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %105, i32 0, i32 1, i32 0, i32 1
  %108 = tail call ptr @llvm.returnaddress(i32 0) #7
  %109 = ptrtoint ptr %108 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %109) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %110 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %111, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body104

do.body104:                                       ; preds = %do.body87, %if.then81.do.body104_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %112 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ipv6_statistics, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i440 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i440 to ptr
  %cpu115 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %cpu115 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cpu115, align 4
  %arrayidx116 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %118
  %119 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %120, %114
  %121 = inttoptr i32 %add117 to ptr
  %syncp118 = getelementptr inbounds %struct.ipstats_mib, ptr %121, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp118)
  %arrayidx120 = getelementptr [37 x i64], ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx120, align 8
  %add121 = add i64 %123, 1
  store i64 %add121, ptr %arrayidx120, align 8
  %dep_map.i.i441 = getelementptr inbounds %struct.ipstats_mib, ptr %121, i32 0, i32 1, i32 0, i32 1
  %124 = tail call ptr @llvm.returnaddress(i32 0) #7
  %125 = ptrtoint ptr %124 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i441, i32 noundef %125) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %126 = ptrtoint ptr %syncp118 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %syncp118, align 4
  %inc.i.i.i442 = add i32 %127, 1
  store i32 %inc.i.i.i442, ptr %syncp118, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup325

if.else132:                                       ; preds = %do.end23
  %conv.le = zext i16 %11 to i32
  br i1 %call10, label %if.else200, label %if.then134

if.then134:                                       ; preds = %if.else132
  %call135 = tail call fastcc i32 @xfrm6_policy_check(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then134.if.end199_crit_edge, label %if.then137

if.then134.if.end199_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199

if.then137:                                       ; preds = %if.then134
  %cmp139.not = icmp eq ptr %9, null
  br i1 %cmp139.not, label %if.then137.do.body174_crit_edge, label %do.body148, !prof !60

if.then137.do.body174_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body174

do.body148:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6158 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %128 = ptrtoint ptr %ipv6158 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ipv6158, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i443 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i443 to ptr
  %cpu161 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %cpu161 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cpu161, align 4
  %arrayidx162 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx162, align 4
  %add163 = add i32 %136, %130
  %137 = inttoptr i32 %add163 to ptr
  %syncp164 = getelementptr inbounds %struct.ipstats_mib, ptr %137, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp164)
  %arrayidx166 = getelementptr [37 x i64], ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx166, align 8
  %add167 = add i64 %139, 1
  store i64 %add167, ptr %arrayidx166, align 8
  %dep_map.i.i444 = getelementptr inbounds %struct.ipstats_mib, ptr %137, i32 0, i32 1, i32 0, i32 1
  %140 = tail call ptr @llvm.returnaddress(i32 0) #7
  %141 = ptrtoint ptr %140 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i444, i32 noundef %141) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %142 = ptrtoint ptr %syncp164 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %syncp164, align 4
  %inc.i.i.i445 = add i32 %143, 1
  store i32 %inc.i.i.i445, ptr %syncp164, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body174

do.body174:                                       ; preds = %do.body148, %if.then137.do.body174_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics184 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %144 = ptrtoint ptr %ipv6_statistics184 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ipv6_statistics184, align 4
  %146 = ptrtoint ptr %145 to i32
  %147 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i446 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i446 to ptr
  %cpu187 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %cpu187 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cpu187, align 4
  %arrayidx188 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx188, align 4
  %add189 = add i32 %152, %146
  %153 = inttoptr i32 %add189 to ptr
  %syncp190 = getelementptr inbounds %struct.ipstats_mib, ptr %153, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp190)
  %arrayidx192 = getelementptr [37 x i64], ptr %153, i32 0, i32 11
  %154 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx192, align 8
  %add193 = add i64 %155, 1
  store i64 %add193, ptr %arrayidx192, align 8
  %dep_map.i.i447 = getelementptr inbounds %struct.ipstats_mib, ptr %153, i32 0, i32 1, i32 0, i32 1
  %156 = tail call ptr @llvm.returnaddress(i32 0) #7
  %157 = ptrtoint ptr %156 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i447, i32 noundef %157) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %158 = ptrtoint ptr %syncp190 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %syncp190, align 4
  %inc.i.i.i448 = add i32 %159, 1
  store i32 %inc.i.i.i448, ptr %syncp190, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %conv.le, ptr noundef null, ptr noundef %cb.i) #7
  br label %if.end199

if.end199:                                        ; preds = %do.body174, %if.then134.if.end199_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup325

if.else200:                                       ; preds = %if.else132
  %cmp202.not = icmp eq ptr %9, null
  br i1 %cmp202.not, label %if.else200.do.body237_crit_edge, label %do.body211, !prof !60

if.else200.do.body237_crit_edge:                  ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

do.body211:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6221 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %160 = ptrtoint ptr %ipv6221 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ipv6221, align 4
  %162 = ptrtoint ptr %161 to i32
  %163 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i450 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i450 to ptr
  %cpu224 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %cpu224 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu224, align 4
  %arrayidx225 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx225, align 4
  %add226 = add i32 %168, %162
  %169 = inttoptr i32 %add226 to ptr
  %syncp227 = getelementptr inbounds %struct.ipstats_mib, ptr %169, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp227)
  %arrayidx229 = getelementptr [37 x i64], ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %arrayidx229, align 8
  %add230 = add i64 %171, 1
  store i64 %add230, ptr %arrayidx229, align 8
  %dep_map.i.i451 = getelementptr inbounds %struct.ipstats_mib, ptr %169, i32 0, i32 1, i32 0, i32 1
  %172 = tail call ptr @llvm.returnaddress(i32 0) #7
  %173 = ptrtoint ptr %172 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i451, i32 noundef %173) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %174 = ptrtoint ptr %syncp227 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %syncp227, align 4
  %inc.i.i.i452 = add i32 %175, 1
  store i32 %inc.i.i.i452, ptr %syncp227, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body237

do.body237:                                       ; preds = %do.body211, %if.else200.do.body237_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics247 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %176 = ptrtoint ptr %ipv6_statistics247 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ipv6_statistics247, align 4
  %178 = ptrtoint ptr %177 to i32
  %179 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i453 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i453 to ptr
  %cpu250 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %cpu250 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cpu250, align 4
  %arrayidx251 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %182
  %183 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx251, align 4
  %add252 = add i32 %184, %178
  %185 = inttoptr i32 %add252 to ptr
  %syncp253 = getelementptr inbounds %struct.ipstats_mib, ptr %185, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp253)
  %arrayidx255 = getelementptr [37 x i64], ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %arrayidx255, align 8
  %add256 = add i64 %187, 1
  store i64 %add256, ptr %arrayidx255, align 8
  %dep_map.i.i454 = getelementptr inbounds %struct.ipstats_mib, ptr %185, i32 0, i32 1, i32 0, i32 1
  %188 = tail call ptr @llvm.returnaddress(i32 0) #7
  %189 = ptrtoint ptr %188 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i454, i32 noundef %189) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %190 = ptrtoint ptr %syncp253 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %syncp253, align 4
  %inc.i.i.i455 = add i32 %191, 1
  store i32 %inc.i.i.i455, ptr %syncp253, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup325

discard:                                          ; preds = %land.lhs.true65.discard_crit_edge, %switch.hole_check.discard_crit_edge, %if.end.i.discard_crit_edge, %pskb_network_may_pull.exit.i.discard_crit_edge, %if.end.i.i.i.discard_crit_edge, %land.lhs.true53.discard_crit_edge, %if.then41.discard_crit_edge, %if.then28.discard_crit_edge, %pskb_pull.exit.discard_crit_edge, %land.lhs.true.i.i.discard_crit_edge, %if.then.discard_crit_edge
  %cmp265.not = icmp eq ptr %9, null
  br i1 %cmp265.not, label %discard.do.body300_crit_edge, label %do.body274, !prof !60

discard.do.body300_crit_edge:                     ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body300

do.body274:                                       ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @local_bh_disable()
  %ipv6284 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %192 = ptrtoint ptr %ipv6284 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ipv6284, align 4
  %194 = ptrtoint ptr %193 to i32
  %195 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i456 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i456 to ptr
  %cpu287 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %cpu287 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cpu287, align 4
  %arrayidx288 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %198
  %199 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx288, align 4
  %add289 = add i32 %200, %194
  %201 = inttoptr i32 %add289 to ptr
  %syncp290 = getelementptr inbounds %struct.ipstats_mib, ptr %201, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp290)
  %arrayidx292 = getelementptr [37 x i64], ptr %201, i32 0, i32 13
  %202 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %arrayidx292, align 8
  %add293 = add i64 %203, 1
  store i64 %add293, ptr %arrayidx292, align 8
  %dep_map.i.i457 = getelementptr inbounds %struct.ipstats_mib, ptr %201, i32 0, i32 1, i32 0, i32 1
  %204 = tail call ptr @llvm.returnaddress(i32 0) #7
  %205 = ptrtoint ptr %204 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i457, i32 noundef %205) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %206 = ptrtoint ptr %syncp290 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %syncp290, align 4
  %inc.i.i.i458 = add i32 %207, 1
  store i32 %inc.i.i.i458, ptr %syncp290, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body300

do.body300:                                       ; preds = %do.body274, %discard.do.body300_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics310 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %208 = ptrtoint ptr %ipv6_statistics310 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ipv6_statistics310, align 4
  %210 = ptrtoint ptr %209 to i32
  %211 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i459 = and i32 %211, -16384
  %212 = inttoptr i32 %and.i459 to ptr
  %cpu313 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %cpu313 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cpu313, align 4
  %arrayidx314 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %214
  %215 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx314, align 4
  %add315 = add i32 %216, %210
  %217 = inttoptr i32 %add315 to ptr
  %syncp316 = getelementptr inbounds %struct.ipstats_mib, ptr %217, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp316)
  %arrayidx318 = getelementptr [37 x i64], ptr %217, i32 0, i32 13
  %218 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx318, align 8
  %add319 = add i64 %219, 1
  store i64 %add319, ptr %arrayidx318, align 8
  %dep_map.i.i460 = getelementptr inbounds %struct.ipstats_mib, ptr %217, i32 0, i32 1, i32 0, i32 1
  %220 = tail call ptr @llvm.returnaddress(i32 0) #7
  %221 = ptrtoint ptr %220 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i460, i32 noundef %221) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %222 = ptrtoint ptr %syncp316 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %syncp316, align 4
  %inc.i.i.i461 = add i32 %223, 1
  store i32 %inc.i.i.i461, ptr %syncp316, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup325

cleanup325:                                       ; preds = %do.body300, %do.body237, %if.end199, %do.body104, %if.else78.cleanup325_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @raw6_local_deliver(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipv6_is_mld(ptr noundef %skb, i32 noundef %nexthdr, i32 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %nexthdr)
  %cmp.not = icmp eq i32 %nexthdr, 58
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add = add i32 %offset, 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %add, %sub.ptr.sub.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %lor.lhs.false.if.end_crit_edge, !prof !60

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %7, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_network_may_pull.exit, !prof !60

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.cleanup_crit_edge, label %pskb_network_may_pull.exit.if.end_crit_edge

pskb_network_may_pull.exit.if.end_crit_edge:      ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_network_may_pull.exit.cleanup_crit_edge:     ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pskb_network_may_pull.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 4
  %switch.tableidx = add i8 %15, 126
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 14
  br i1 %16, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i8 %switch.tableidx to i14
  %switch.downshift = lshr i14 -8185, %switch.cast
  %17 = and i14 %switch.downshift, 1
  %18 = sext i14 %17 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %switch.masked = icmp ne i14 %17, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %pskb_network_may_pull.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %pskb_network_may_pull.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

land.lhs.true8.i.i.xfrm_policy_check.exit_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge, !prof !60

land.rhs.i.i.i.skb_dst.exitthread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exitthread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true13.i.i:                              ; preds = %skb_dst.exit.i.i
  %and.i2.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

land.lhs.true13.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %land.lhs.true13.i.i
  %call.i4.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !60

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_policy_check.exit

skb_dst.exit12.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23.i.i

land.lhs.true.i17.i.i:                            ; preds = %if.else.i.i
  %call.i15.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i)
  %tobool1.not.i16.i.i = icmp eq i32 %call.i15.i.i, 0
  br i1 %tobool1.not.i16.i.i, label %land.rhs.i20.i.i, label %land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge

land.lhs.true.i17.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23thread-pre-split.i.i

land.rhs.i20.i.i:                                 ; preds = %land.lhs.true.i17.i.i
  %call2.i18.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i)
  %tobool3.not.i19.i.i = icmp eq i32 %call2.i18.i.i, 0
  br i1 %tobool3.not.i19.i.i, label %do.end.i21.i.i, label %land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge, !prof !60

land.rhs.i20.i.i.skb_dst.exit23thread-pre-split.i.i_crit_edge: ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit23thread-pre-split.i.i

do.end.i21.i.i:                                   ; preds = %land.rhs.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true22.i.i:                              ; preds = %skb_dst.exit23.i.i
  %and.i24.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge, label %land.lhs.true.i28.i.i

land.lhs.true22.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i

land.lhs.true.i28.i.i:                            ; preds = %land.lhs.true22.i.i
  %call.i26.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i)
  %tobool1.not.i27.i.i = icmp eq i32 %call.i26.i.i, 0
  br i1 %tobool1.not.i27.i.i, label %land.rhs.i31.i.i, label %land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge

land.lhs.true.i28.i.i.skb_dst.exit34.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i

land.rhs.i31.i.i:                                 ; preds = %land.lhs.true.i28.i.i
  %call2.i29.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %call2.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %do.end.i32.i.i, label %land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge, !prof !60

land.rhs.i31.i.i.skb_dst.exit34.i.i_crit_edge:    ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit34.i.i

do.end.i32.i.i:                                   ; preds = %land.rhs.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfrm_policy_check.exit

skb_dst.exit34.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %skb_dst.exit34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %skb_dst.exit34.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit23.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit12.i.i.cleanup.sink.split.i.i_crit_edge, %skb_dst.exit.i.i.cleanup.sink.split.i.i_crit_edge
  %call30.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 10) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %5 = tail call i32 @llvm.read_register.i32(metadata !50) #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %14 = tail call i32 @llvm.read_register.i32(metadata !50) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !50) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  %33 = tail call i32 @llvm.read_register.i32(metadata !50) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !63

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #7
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_input(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %4, ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @ip6_input_finish) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.NF_HOOK.exit_crit_edge

entry.NF_HOOK.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %NF_HOOK.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @ip6_input_finish(ptr noundef %4, ptr noundef null, ptr noundef %skb) #7, !callees !61
  br label %NF_HOOK.exit

NF_HOOK.exit:                                     ; preds = %if.then.i, %entry.NF_HOOK.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i, %entry.NF_HOOK.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_input_finish(ptr noundef %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @ip6_protocol_deliver_rcu(ptr noundef %net, ptr noundef %skb, i32 noundef 0, i1 noundef zeroext false)
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i1, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i8 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_mc_input(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i229 = icmp eq ptr %skb, null
  br i1 %tobool.not.i229, label %entry.inet6_sdif.exit_crit_edge, label %land.lhs.true.i230

entry.inet6_sdif.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sdif.exit

land.lhs.true.i230:                               ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags.i, align 8
  %2 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not.i = icmp eq i16 %2, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i230.inet6_sdif.exit_crit_edge, label %if.then.i231

land.lhs.true.i230.inet6_sdif.exit_crit_edge:     ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %inet6_sdif.exit

if.then.i231:                                     ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb.i, align 8
  br label %inet6_sdif.exit

inet6_sdif.exit:                                  ; preds = %if.then.i231, %land.lhs.true.i230.inet6_sdif.exit_crit_edge, %entry.inet6_sdif.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i231 ], [ 0, %land.lhs.true.i230.inet6_sdif.exit_crit_edge ], [ 0, %entry.inet6_sdif.exit_crit_edge ]
  %5 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not.i232 = icmp eq ptr %7, null
  br i1 %tobool.not.i232, label %inet6_sdif.exit.do.body43_crit_edge, label %if.then.i234, !prof !60

inet6_sdif.exit.do.body43_crit_edge:              ; preds = %inet6_sdif.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

if.then.i234:                                     ; preds = %inet6_sdif.exit
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 80
  %8 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i233 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call.i233, label %if.then.i234.__in6_dev_get_safely.exit_crit_edge, label %lor.lhs.false.i

if.then.i234.__in6_dev_get_safely.exit_crit_edge: ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get_safely.exit

lor.lhs.false.i:                                  ; preds = %if.then.i234
  %call4.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i235, label %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge

lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get_safely.exit

land.lhs.true.i235:                               ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i235.__in6_dev_get_safely.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i235.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get_safely.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i235
  %.b15.i = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__in6_dev_get_safely.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 341, ptr noundef nonnull @.str.1) #7
  br label %__in6_dev_get_safely.exit

__in6_dev_get_safely.exit:                        ; preds = %if.then10.i, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, %land.lhs.true.i235.__in6_dev_get_safely.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge, %if.then.i234.__in6_dev_get_safely.exit_crit_edge
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %__in6_dev_get_safely.exit.do.body43_crit_edge, label %do.body, !prof !60

__in6_dev_get_safely.exit.do.body43_crit_edge:    ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.body:                                          ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %10 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipv6, align 4
  %arrayidx = getelementptr i64, ptr %11, i32 23
  %12 = ptrtoint ptr %arrayidx to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %add13 = add i64 %21, 1
  store i64 %add13, ptr %19, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %conv = zext i32 %23 to i64
  %arrayidx30 = getelementptr i64, ptr %11, i32 27
  %24 = ptrtoint ptr %arrayidx30 to i32
  %25 = load i32, ptr %cpu, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %27, %24
  %28 = inttoptr i32 %add35 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %add36 = add i64 %30, %conv
  store i64 %add36, ptr %28, align 8
  br label %do.body43

do.body43:                                        ; preds = %do.body, %__in6_dev_get_safely.exit.do.body43_crit_edge, %inet6_sdif.exit.do.body43_crit_edge
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %and.i237 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i237)
  %tobool.not.i238 = icmp eq i32 %and.i237, 0
  br i1 %tobool.not.i238, label %do.body43.skb_dst.exit_crit_edge, label %land.lhs.true.i240

do.body43.skb_dst.exit_crit_edge:                 ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.lhs.true.i240:                               ; preds = %do.body43
  %call.i239 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool1.not.i = icmp eq i32 %call.i239, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i240.skb_dst.exit_crit_edge

land.lhs.true.i240.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i240
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !60

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i240.skb_dst.exit_crit_edge, %do.body43.skb_dst.exit_crit_edge
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 8
  %and25.i = and i32 %35, -2
  %36 = inttoptr i32 %and25.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 127
  %39 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nd_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 30, i32 1
  %41 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ipv6_statistics, align 4
  %arrayidx62 = getelementptr i64, ptr %42, i32 23
  %43 = ptrtoint ptr %arrayidx62 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i241 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i241 to ptr
  %cpu65 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu65, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %49, %43
  %50 = inttoptr i32 %add67 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  %add68 = add i64 %52, 1
  store i64 %add68, ptr %50, align 8
  %len79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len79, align 4
  %conv80 = zext i32 %54 to i64
  %arrayidx87 = getelementptr i64, ptr %42, i32 27
  %55 = ptrtoint ptr %arrayidx87 to i32
  %56 = load i32, ptr %cpu65, align 4
  %arrayidx91 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %58, %55
  %59 = inttoptr i32 %add92 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %59, align 8
  %add93 = add i64 %61, %conv80
  store i64 %add93, ptr %59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool100.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool100.not, label %if.else, label %if.then101

if.then101:                                       ; preds = %skb_dst.exit
  %62 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.then101.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then101.rcu_read_lock.exit_crit_edge:          ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then101
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then101.rcu_read_lock.exit_crit_edge
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 8
  %nd_net.i242 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 127
  %68 = ptrtoint ptr %nd_net.i242 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nd_net.i242, align 4
  %call103 = tail call ptr @dev_get_by_index_rcu(ptr noundef %69, i32 noundef %retval.0.i) #7
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.then105, label %rcu_read_lock.exit.if.end107_crit_edge

rcu_read_lock.exit.if.end107_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then105:                                       ; preds = %rcu_read_lock.exit
  %call.i243 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i243, label %if.then105.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i246

if.then105.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i246:                               ; preds = %if.then105
  %call1.i244 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i244)
  %tobool.not.i245 = icmp eq i32 %call1.i244, 0
  br i1 %tobool.not.i245, label %land.lhs.true.i246.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i248

land.lhs.true.i246.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i248:                              ; preds = %land.lhs.true.i246
  %.b4.i247 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i247, label %land.lhs.true2.i248.rcu_read_unlock.exit_crit_edge, label %if.then.i249

land.lhs.true2.i248.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i248
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i249:                                     ; preds = %land.lhs.true2.i248
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i249, %land.lhs.true2.i248.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i246.rcu_read_unlock.exit_crit_edge, %if.then105.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %70 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i250 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i250 to ptr
  %preempt_count.i.i.i.i251 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i251, align 4
  %sub.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i251, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup192

if.else:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else, %rcu_read_lock.exit.if.end107_crit_edge
  %dev.0 = phi ptr [ %call103, %rcu_read_lock.exit.if.end107_crit_edge ], [ %75, %if.else ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %76 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %78 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %79 to i32
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call109 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %dev.0, ptr noundef %daddr, ptr noundef null) #7
  %frombool = zext i1 %call109 to i8
  br i1 %tobool100.not, label %if.end107.if.end112_crit_edge, label %if.then111

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then111:                                       ; preds = %if.end107
  %call.i253 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i253, label %if.then111.rcu_read_unlock.exit264_crit_edge, label %land.lhs.true.i256

if.then111.rcu_read_unlock.exit264_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit264

land.lhs.true.i256:                               ; preds = %if.then111
  %call1.i254 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i254)
  %tobool.not.i255 = icmp eq i32 %call1.i254, 0
  br i1 %tobool.not.i255, label %land.lhs.true.i256.rcu_read_unlock.exit264_crit_edge, label %land.lhs.true2.i258

land.lhs.true.i256.rcu_read_unlock.exit264_crit_edge: ; preds = %land.lhs.true.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit264

land.lhs.true2.i258:                              ; preds = %land.lhs.true.i256
  %.b4.i257 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i257, label %land.lhs.true2.i258.rcu_read_unlock.exit264_crit_edge, label %if.then.i259

land.lhs.true2.i258.rcu_read_unlock.exit264_crit_edge: ; preds = %land.lhs.true2.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit264

if.then.i259:                                     ; preds = %land.lhs.true2.i258
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit264

rcu_read_unlock.exit264:                          ; preds = %if.then.i259, %land.lhs.true2.i258.rcu_read_unlock.exit264_crit_edge, %land.lhs.true.i256.rcu_read_unlock.exit264_crit_edge, %if.then111.rcu_read_unlock.exit264_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %80 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i260 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i260 to ptr
  %preempt_count.i.i.i.i261 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i261, align 4
  %sub.i.i.i262 = add i32 %83, -1
  store volatile i32 %sub.i.i.i262, ptr %preempt_count.i.i.i.i261, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end112

if.end112:                                        ; preds = %rcu_read_unlock.exit264, %if.end107.if.end112_crit_edge
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %5, align 8
  %nd_net.i265 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 127
  %86 = ptrtoint ptr %nd_net.i265 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nd_net.i265, align 4
  %devconf_all = getelementptr inbounds %struct.net, ptr %87, i32 0, i32 36, i32 2
  %88 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %devconf_all, align 32
  %mc_forwarding = getelementptr inbounds %struct.ipv6_devconf, ptr %89, i32 0, i32 34
  %90 = ptrtoint ptr %mc_forwarding to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mc_forwarding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool115.not = icmp eq i32 %91, 0
  br i1 %tobool115.not, label %if.end112.out_crit_edge, label %land.lhs.true

if.end112.out_crit_edge:                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.end112
  %call.i266 = tail call i32 @__ipv6_addr_type(ptr noundef %daddr) #7
  %and = and i32 %call.i266, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool118.not = icmp eq i32 %and, 0
  br i1 %tobool118.not, label %land.lhs.true119, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true119:                                 ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags, align 8
  %conv121 = zext i16 %93 to i32
  %and122 = and i32 %conv121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.then132, label %land.lhs.true119.out_crit_edge, !prof !63

land.lhs.true119.out_crit_edge:                   ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then132:                                       ; preds = %land.lhs.true119
  %and137 = and i32 %conv121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then132.if.end166_crit_edge, label %if.then145, !prof !63

if.then132.if.end166_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

if.then145:                                       ; preds = %if.then132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #7
  %nexthdr146 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %nexthdr146 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nexthdr146, align 2
  %96 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %nexthdr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #7
  %97 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %frag_off, align 2, !annotation !79
  %ra = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %ra to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ra, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp148 = icmp eq i16 %99, 0
  br i1 %cmp148, label %if.then150, label %cleanup

if.then150:                                       ; preds = %if.then145
  %call151 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %95) #7
  br i1 %call151, label %if.end153, label %if.then150.cleanup.thread_crit_edge

if.then150.cleanup.thread_crit_edge:              ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end153:                                        ; preds = %if.then150
  %call154 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.end153.cleanup.thread_crit_edge, label %if.end158

if.end153.cleanup.thread_crit_edge:               ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end158:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nexthdr, align 1
  %conv159 = zext i8 %101 to i32
  %call160 = call fastcc zeroext i1 @ipv6_is_mld(ptr noundef %skb, i32 noundef %conv159, i32 noundef %call154)
  %spec.select = zext i1 %call160 to i8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end158, %if.end153.cleanup.thread_crit_edge, %if.then150.cleanup.thread_crit_edge
  %deliver.1.ph = phi i8 [ 0, %if.end153.cleanup.thread_crit_edge ], [ 0, %if.then150.cleanup.thread_crit_edge ], [ %spec.select, %if.end158 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #7
  br label %cleanup176

cleanup:                                          ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #7
  br label %if.end166

if.end166:                                        ; preds = %cleanup, %if.then132.if.end166_crit_edge
  br i1 %call109, label %if.then168, label %if.end166.if.end171_crit_edge

if.end166.if.end171_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then168:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %call169 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end166.if.end171_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.then168 ], [ null, %if.end166.if.end171_crit_edge ]
  %skb2.0 = phi ptr [ %call169, %if.then168 ], [ %skb, %if.end166.if.end171_crit_edge ]
  %tobool172.not = icmp eq ptr %skb2.0, null
  br i1 %tobool172.not, label %if.end171.cleanup176_crit_edge, label %if.then173

if.end171.cleanup176_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup176

if.then173:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #9
  %call174 = tail call i32 @ip6_mr_input(ptr noundef nonnull %skb2.0) #7
  br label %cleanup176

cleanup176:                                       ; preds = %if.then173, %if.end171.cleanup176_crit_edge, %cleanup.thread
  %deliver.3 = phi i8 [ %frombool, %if.then173 ], [ %frombool, %if.end171.cleanup176_crit_edge ], [ %deliver.1.ph, %cleanup.thread ]
  %skb.addr.1 = phi ptr [ %skb.addr.0, %if.then173 ], [ %skb.addr.0, %if.end171.cleanup176_crit_edge ], [ %skb, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %deliver.3)
  %extract.t226.not = icmp eq i8 %deliver.3, 0
  br i1 %extract.t226.not, label %cleanup176.if.else190_crit_edge, label %cleanup176.if.then188_crit_edge, !prof !60

cleanup176.if.then188_crit_edge:                  ; preds = %cleanup176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then188

cleanup176.if.else190_crit_edge:                  ; preds = %cleanup176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190

out:                                              ; preds = %land.lhs.true119.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end112.out_crit_edge
  br i1 %call109, label %out.if.then188_crit_edge, label %out.if.else190_crit_edge, !prof !63

out.if.else190_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else190

out.if.then188_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then188

if.then188:                                       ; preds = %out.if.then188_crit_edge, %cleanup176.if.then188_crit_edge
  %skb.addr.2272 = phi ptr [ %skb.addr.1, %cleanup176.if.then188_crit_edge ], [ %skb, %out.if.then188_crit_edge ]
  %102 = getelementptr inbounds %struct.anon.83, ptr %skb.addr.2272, i32 0, i32 2
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 127
  %105 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %nd_net.i.i, align 4
  %call.i.i = call fastcc i32 @nf_hook(i32 noundef 1, ptr noundef %106, ptr noundef %skb.addr.2272, ptr noundef %104, ptr noundef nonnull @ip6_input_finish) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then188.cleanup192_crit_edge

if.then188.cleanup192_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup192

if.then.i.i:                                      ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call i32 @ip6_input_finish(ptr noundef %106, ptr noundef null, ptr noundef %skb.addr.2272) #7, !callees !61
  br label %cleanup192

if.else190:                                       ; preds = %out.if.else190_crit_edge, %cleanup176.if.else190_crit_edge
  %skb.addr.2273 = phi ptr [ %skb.addr.1, %cleanup176.if.else190_crit_edge ], [ %skb, %out.if.else190_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb.addr.2273, i32 noundef 0) #7
  br label %cleanup192

cleanup192:                                       ; preds = %if.else190, %if.then.i.i, %if.then188.cleanup192_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -19, %rcu_read_unlock.exit ], [ 0, %if.else190 ], [ 0, %if.then188.cleanup192_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_mr_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_parse_hopopts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %skb, ptr noundef %indev, ptr noundef %okfn) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.6, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_hook.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 232, ptr noundef nonnull @.str.1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
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
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #7
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %13 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NF_HOOK_LIST(ptr noundef %net, ptr noundef %head, ptr noundef %in) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([13 x [7 x %struct.static_key]], ptr @nf_hooks_needed, i32 0, i32 10), ptr blockaddress(@NF_HOOK_LIST, %if.end)) #7
          to label %cleanup [label %if.end], !srcloc !80

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %hooks_ipv6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 4
  %4 = ptrtoint ptr %hooks_ipv6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hooks_ipv6, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @NF_HOOK_LIST.__warned.11, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @NF_HOOK_LIST.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 331, ptr noundef nonnull @.str.1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool76.not = icmp eq ptr %5, null
  br i1 %tobool76.not, label %sw.epilog.if.end78_crit_edge, label %if.then77

sw.epilog.if.end78_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then77:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  store i8 0, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
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
  store ptr @ip6_rcv_finish, ptr %okfn5.i, align 4
  call void @nf_hook_slow_list(ptr noundef %head, ptr noundef nonnull %state, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %sw.epilog.if.end78_crit_edge
  %call.i2 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i2, label %if.end78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end78.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end78
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end78.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %13 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_hook_slow_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_sublist_rcv_finish(ptr noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not16 = icmp eq ptr %1, %head
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %dst_input.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %skb.017 = phi ptr [ %next.0, %dst_input.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %skb.017, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.017) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.skb_list_del_init.exit_crit_edge

for.body.skb_list_del_init.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %skb_list_del_init.exit
  %call.i.i15 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool1.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !60

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
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
  %call1.i = tail call i32 %17(ptr noundef %skb.017) #7
  %cmp.not = icmp eq ptr %next.0, %head
  br i1 %cmp.not, label %dst_input.exit.for.end_crit_edge, label %dst_input.exit.for.body_crit_edge

dst_input.exit.for.body_crit_edge:                ; preds = %dst_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

dst_input.exit.for.end_crit_edge:                 ; preds = %dst_input.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %dst_input.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

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
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_input.c", i32 373, i32 11}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_ip6_input, !5, !"__ksymtab_ip6_input", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_input.c", i32 476, i32 1}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv6/ip6_input.c", i32 485, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv6/ip6_input.c", i32 57, i32 12}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
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
!31 = !{!"../include/linux/netfilter.h", i32 328, i32 15}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/netfilter.h", i32 331, i32 15}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/netfilter.h", i32 334, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/dst.h", i32 231, i32 2}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/net/addrconf.h", i32 341, i32 10}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{ptr @ip6_input_finish, ptr @ip6_rcv_finish}
!62 = !{i64 2149335589}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149975557}
!65 = !{i64 2154967476, i64 2154967964, i64 2154967513, i64 2154967569, i64 2154967603, i64 2154967627, i64 2154967668, i64 2154967689, i64 2154967717, i64 2154967751}
!66 = !{i64 2149335855}
!67 = !{i64 2148258707}
!68 = !{i64 743530, i64 743555, i64 743577, i64 743593, i64 743605, i64 743625, i64 743649, i64 743665, i64 743677}
!69 = !{i64 2148258895}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148348819}
!72 = !{i64 2148263283, i64 2148263315, i64 2148263344, i64 2148263378, i64 2148263409, i64 2148263432}
!73 = !{i64 2149285099}
!74 = !{i64 2149867239}
!75 = !{i64 2149872171}
!76 = !{i64 2149893883}
!77 = !{i64 2149898775}
!78 = !{i64 2149975232}
!79 = !{!"auto-init"}
!80 = !{i64 2148741103, i64 2148741108, i64 2148741121, i64 2148741165, i64 2148741199, i64 2148741220}
