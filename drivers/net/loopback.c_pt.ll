; ModuleID = '/llk/IR_all_yes/drivers/net/loopback.c_pt.bc'
source_filename = "../drivers/net/loopback.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blackhole_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_blackhole_netdev\09\09\09\09"
module asm "\09.long\09__crc_blackhole_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blackhole_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22blackhole_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_blackhole_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dev_lstats_read\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_lstats_read\09\09\09\09"
module asm "\09.long\09__crc_dev_lstats_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_lstats_read:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_lstats_read\22\09\09\09\09\09"
module asm "__kstrtabns_dev_lstats_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
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
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@blackhole_netdev = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_blackhole_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_blackhole_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_blackhole_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blackhole_netdev to i32), ptr @__kstrtab_blackhole_netdev, ptr @__kstrtabns_blackhole_netdev }, section "___ksymtab+blackhole_netdev", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_dev_lstats_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_lstats_read = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_lstats_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_lstats_read to i32), ptr @__kstrtab_dev_lstats_read, ptr @__kstrtabns_dev_lstats_read }, section "___ksymtab+dev_lstats_read", align 4
@loopback_net_ops = dso_local global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @loopback_net_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_loopback__494_278_blackhole_netdev_init6 = internal global ptr @blackhole_netdev_init, section ".initcall6.init", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"loopback: Failed to register netdevice: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@loopback_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @always_on, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@eth_header_ops = external dso_local constant %struct.header_ops, align 4
@loopback_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @loopback_dev_init, ptr null, ptr null, ptr null, ptr @loopback_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loopback_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@loopback_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"blackhole_dev\00", [18 x i8] zeroinitializer }, align 32
@blackhole_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @blackhole_netdev_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@blackhole_netdev_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s(): Dropping skb.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blackhole_netdev_xmit\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/loopback.c\00", [41 x i8] zeroinitializer }, align 32
@blackhole_netdev_xmit._entry_ptr = internal global ptr @blackhole_netdev_xmit._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"blackhole_netdev\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 63, i32 20 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"loopback_net_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 234, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 212, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 229, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"loopback_ethtool_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 137, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"loopback_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 156, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 144, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 316, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1011, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 271, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 262, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"blackhole_netdev_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 247, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [26 x i8] c"../drivers/net/loopback.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 243, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__initcall__kmod_loopback__494_278_blackhole_netdev_init6, ptr @__ksymtab_blackhole_netdev, ptr @__ksymtab_dev_lstats_read, ptr @blackhole_netdev_xmit._entry, ptr @blackhole_netdev_xmit._entry_ptr, ptr @blackhole_netdev, ptr @loopback_net_ops, ptr @.str, ptr @.str.1, ptr @loopback_ethtool_ops, ptr @loopback_ops, ptr @loopback_dev_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @blackhole_netdev_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackhole_netdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackhole_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blackhole_netdev_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_lstats_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef %packets, ptr nocapture noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %packets, align 8
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %bytes, align 8
  %call23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %2)
  %cmp24 = icmp ult i32 %call23, %2
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  br label %for.body

for.body:                                         ; preds = %do.end11.for.body_crit_edge, %for.body.lr.ph
  %call25 = phi i32 [ %call23, %for.body.lr.ph ], [ %call, %do.end11.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 64
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call25
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_lstats, ptr %9, i32 0, i32 2
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.pcpu_lstats, ptr %9, i32 0, i32 2, i32 0, i32 1
  %bytes6 = getelementptr inbounds %struct.pcpu_lstats, ptr %9, i32 0, i32 1
  br label %do.body2

do.body2:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body2_crit_edge, %for.body
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !48
  %and.i.i.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %11 = tail call ptr @llvm.returnaddress(i32 0) #13
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %12) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call ptr @llvm.returnaddress(i32 0) #13
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %14) #13
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !49
  %and.i.i.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !50

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #13, !srcloc !51
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !52
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !53
  %18 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %19, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %17, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %19, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !54
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %9, align 8
  %22 = ptrtoint ptr %bytes6 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bytes6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  %24 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %25, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end11, label %u64_stats_fetch_begin_irq.exit.do.body2_crit_edge

u64_stats_fetch_begin_irq.exit.do.body2_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.end11:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %26 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bytes, align 8
  %add12 = add i64 %27, %23
  store i64 %add12, ptr %bytes, align 8
  %28 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %packets, align 8
  %add13 = add i64 %29, %21
  store i64 %add13, ptr %packets, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call25, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %30
  br i1 %cmp, label %do.end11.for.body_crit_edge, label %do.end11.for.end_crit_edge

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %do.end11.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @loopback_setup, i32 noundef 1, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %net, ptr %nd_net.i, align 4
  %call1 = tail call i32 @register_netdev(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %out_free_netdev

do.body:                                          ; preds = %if.end
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %1 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %do.end14, label %do.body8, !prof !56

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/loopback.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !57
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %3 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %loopback_dev, align 4
  br label %cleanup

out_free_netdev:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_netdev(ptr noundef nonnull %call) #13
  br label %out

out:                                              ; preds = %out_free_netdev, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %out_free_netdev ], [ -12, %entry.out_crit_edge ]
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.then17, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, i32 noundef %err.0) #17
  unreachable

cleanup:                                          ; preds = %out.cleanup_crit_edge, %do.end14
  %retval.0 = phi i32 [ 0, %do.end14 ], [ %err.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blackhole_netdev_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.6, i8 noundef zeroext 0, ptr noundef nonnull @blackhole_netdev_setup, i32 noundef 1, i32 noundef 1) #13
  store ptr %call, ptr @blackhole_netdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rtnl_lock() #13
  %0 = load ptr, ptr @blackhole_netdev, align 4
  tail call void @dev_init_scheduler(ptr noundef %0) #13
  %1 = load ptr, ptr @blackhole_netdev, align 4
  tail call void @dev_activate(ptr noundef %1) #13
  tail call void @rtnl_unlock() #13
  %2 = load ptr, ptr @blackhole_netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or = or i32 %4, 65
  store i32 %or, ptr %flags, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @init_net, ptr %nd_net.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @loopback_setup(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %mtu1.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 14, ptr %hard_header_len.i, align 2
  %min_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 33
  %2 = ptrtoint ptr %min_header_len.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 14, ptr %min_header_len.i, align 2
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 772, ptr %type.i, align 16
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %flags.i, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %or.i = and i64 %7, -688161
  %and.i.i = or i64 %or.i, 557056
  store i64 %and.i.i, ptr %priv_flags.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %8 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 26845446144, ptr %hw_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 5593123075177, ptr %features.i, align 16
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @loopback_ethtool_ops, ptr %ethtool_ops.i, align 16
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @eth_header_ops, ptr %header_ops.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @loopback_ops, ptr %netdev_ops.i, align 8
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %13 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %14 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @loopback_dev_free, ptr %priv_destructor.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_dev_free(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %loopback_dev = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %loopback_dev, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 64
  tail call void @free_percpu(ptr noundef %5) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @always_on(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_dev_init(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 48, i32 noundef 16, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call115 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call115, i32 %0)
  %cmp16 = icmp ult i32 %call115, %0
  br i1 %cmp16, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call117 = phi i32 [ %call115, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call117
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_lstats, ptr %4, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.pcpu_lstats, ptr %4, i32 0, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @loopback_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %5 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %syncp, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call117, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %. = phi i32 [ -12, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %7, align 64
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_flags.i, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.skb_tx_timestamp.exit_crit_edge, label %if.then.i

entry.skb_tx_timestamp.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #13
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %entry.skb_tx_timestamp.exit_crit_edge
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %5, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i13 = icmp eq ptr %8, null
  br i1 %tobool.not.i13, label %do.body.i, label %if.then.i14

if.then.i14:                                      ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %8(ptr noundef %skb) #13
  %9 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %destructor.i, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %skb_tx_timestamp.exit
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !56

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #13, !srcloc !58
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i14
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %skb_orphan.exit.skb_dst_force.exit_crit_edge, label %land.lhs.true.i.i.i

skb_orphan.exit.skb_dst_force.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_force.exit

land.lhs.true.i.i.i:                              ; preds = %skb_orphan.exit
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge

land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_is_noref.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, !prof !50

land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_is_noref.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst_is_noref.exit.i

skb_dst_is_noref.exit.i:                          ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %tobool1.i.i = icmp ugt i32 %19, 1
  br i1 %tobool1.i.i, label %if.then.i15, label %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge

skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge: ; preds = %skb_dst_is_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_force.exit

if.then.i15:                                      ; preds = %skb_dst_is_noref.exit.i
  %and.i2.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i15.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i15.skb_dst.exit.i_crit_edge:             ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i15
  %call.i.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !50

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i15.skb_dst.exit.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i.i to ptr
  %call2.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i16 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i16, label %do.end.i, label %skb_dst.exit.i.if.end.i_crit_edge, !prof !50

skb_dst.exit.i.if.end.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 316, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %skb_dst.exit.i.if.end.i_crit_edge
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #13, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.dst_hold_safe.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.end.i.dst_hold_safe.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dst_hold_safe.exit.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !61
  br label %dst_hold_safe.exit.i

dst_hold_safe.exit.i:                             ; preds = %do.end11.i.i.i.i.i.i, %if.end.i.dst_hold_safe.exit.i_crit_edge
  %spec.select.i = phi ptr [ null, %if.end.i.dst_hold_safe.exit.i_crit_edge ], [ %22, %do.end11.i.i.i.i.i.i ]
  %24 = ptrtoint ptr %spec.select.i to i32
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %15, align 8
  %tobool27.not.i = icmp eq ptr %spec.select.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool27.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear34.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear34.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  br label %skb_dst_force.exit

skb_dst_force.exit:                               ; preds = %dst_hold_safe.exit.i, %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge, %skb_orphan.exit.skb_dst_force.exit_crit_edge
  %call1 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb, ptr noundef %dev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call1, ptr %protocol, align 8
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %28 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len2, align 4
  %call3 = tail call i32 @netif_rx(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %skb_dst_force.exit.if.end_crit_edge, !prof !56

skb_dst_force.exit.if.end_crit_edge:              ; preds = %skb_dst_force.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %skb_dst_force.exit
  %30 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 64
  %33 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i17 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i17 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i, label %if.then.dev_lstats_add.exit_crit_edge, label %land.lhs.true.i.i.i18

if.then.dev_lstats_add.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_lstats_add.exit

land.lhs.true.i.i.i18:                            ; preds = %if.then
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !62
  %42 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %47, ptrtoint (ptr @lockdep_recursion to i32)
  %48 = inttoptr i32 %add.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !63
  %51 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i.i7.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool20.not.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i19, label %land.lhs.true.i.i.i18.dev_lstats_add.exit_crit_edge

land.lhs.true.i.i.i18.dev_lstats_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_lstats_add.exit

land.rhs.i.i.i19:                                 ; preds = %land.lhs.true.i.i.i18
  %55 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i19.dev_lstats_add.exit_crit_edge

land.rhs.i.i.i19.dev_lstats_add.exit_crit_edge:   ; preds = %land.rhs.i.i.i19
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_lstats_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i19
  %59 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i.i9.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %62, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !64
  %63 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %66, ptrtoint (ptr @hardirqs_enabled to i32)
  %67 = inttoptr i32 %add47.i.i.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !65
  %70 = tail call i32 @llvm.read_register.i32(metadata !38) #13
  %and.i.i.i12.i.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool54.not.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_lstats_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge, label %if.then.i.i.i, !prof !56

land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_lstats_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %dev_lstats_add.exit

dev_lstats_add.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge, %land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge, %land.rhs.i.i.i19.dev_lstats_add.exit_crit_edge, %land.lhs.true.i.i.i18.dev_lstats_add.exit_crit_edge, %if.then.dev_lstats_add.exit_crit_edge
  %74 = ptrtoint ptr %32 to i32
  %add.i = add i32 %38, %74
  %75 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_lstats, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !66
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_lstats, ptr %75, i32 0, i32 2, i32 0, i32 1
  %78 = tail call ptr @llvm.returnaddress(i32 0) #13
  %79 = ptrtoint ptr %78 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #13
  %bytes.i = getelementptr inbounds %struct.pcpu_lstats, ptr %75, i32 0, i32 1
  %conv.i.i = zext i32 %29 to i64
  %80 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %bytes.i, align 8
  %add.i.i = add i64 %81, %conv.i.i
  store i64 %add.i.i, ptr %bytes.i, align 8
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %75, align 8
  %inc.i.i = add i64 %83, 1
  store i64 %inc.i.i, ptr %75, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %79) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !67
  %84 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %if.end

if.end:                                           ; preds = %dev_lstats_add.exit, %skb_dst_force.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  %packets = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets) #13
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %packets, align 8, !annotation !68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #13
  %1 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %bytes, align 8, !annotation !68
  call void @dev_lstats_read(ptr noundef %dev, ptr noundef nonnull %packets, ptr noundef nonnull %bytes)
  %2 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %packets, align 8
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %stats, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %5 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %3, ptr %tx_packets, align 8
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bytes, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_bytes, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %9 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %7, ptr %tx_bytes, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @blackhole_netdev_setup(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 68, ptr %mtu1.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 14, ptr %hard_header_len.i, align 2
  %min_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 33
  %2 = ptrtoint ptr %min_header_len.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 14, ptr %min_header_len.i, align 2
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %addr_len.i, align 1
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 772, ptr %type.i, align 16
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %flags.i, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %or.i = and i64 %7, -688161
  %and.i.i = or i64 %or.i, 557056
  store i64 %and.i.i, ptr %priv_flags.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %8 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 26845446144, ptr %hw_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 5593123075177, ptr %features.i, align 16
  %ethtool_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %ethtool_ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ethtool_ops.i, align 16
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %11 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %header_ops.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @blackhole_netdev_ops, ptr %netdev_ops.i, align 8
  %needs_free_netdev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %13 = ptrtoint ptr %needs_free_netdev.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %needs_free_netdev.i, align 8
  %priv_destructor.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %14 = ptrtoint ptr %priv_destructor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %priv_destructor.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_init_scheduler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_activate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blackhole_netdev_xmit(ptr noundef %skb, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  %call = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #19
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_blackhole_netdev, !1, !"__ksymtab_blackhole_netdev", i1 false, i1 false}
!1 = !{!"../drivers/net/loopback.c", i32 64, i32 1}
!2 = !{ptr @__ksymtab_dev_lstats_read, !3, !"__ksymtab_dev_lstats_read", i1 false, i1 false}
!3 = !{!"../drivers/net/loopback.c", i32 117, i32 1}
!4 = !{ptr @loopback_net_ops, !5, !"loopback_net_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/loopback.c", i32 234, i32 41}
!6 = !{ptr @__initcall__kmod_loopback__494_278_blackhole_netdev_init6, !7, !"__initcall__kmod_loopback__494_278_blackhole_netdev_init6", i1 false, i1 false}
!7 = !{!"../drivers/net/loopback.c", i32 278, i32 1}
!8 = !{ptr @blackhole_netdev, !9, !"blackhole_netdev", i1 false, i1 false}
!9 = !{!"../drivers/net/loopback.c", i32 63, i32 20}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/loopback.c", i32 212, i32 8}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/loopback.c", i32 229, i32 9}
!14 = !{ptr @loopback_ethtool_ops, !15, !"loopback_ethtool_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/loopback.c", i32 137, i32 33}
!16 = !{ptr @loopback_ops, !17, !"loopback_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/loopback.c", i32 156, i32 36}
!18 = !{ptr @loopback_dev_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/loopback.c", i32 144, i32 16}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/net/dst.h", i32 316, i32 3}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/loopback.c", i32 262, i32 21}
!30 = !{ptr @blackhole_netdev_ops, !31, !"blackhole_netdev_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/loopback.c", i32 247, i32 36}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/loopback.c", i32 243, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @blackhole_netdev_xmit._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @blackhole_netdev_xmit._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 607492, i64 607553}
!49 = !{i64 610224}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 610509}
!52 = !{i64 2153665090}
!53 = !{i64 2153664932}
!54 = !{i64 2153665260}
!55 = !{i64 2149977147}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2157406738, i64 2157407225, i64 2157406775, i64 2157406831, i64 2157406865, i64 2157406889, i64 2157406930, i64 2157406951, i64 2157406979, i64 2157407013}
!58 = !{i64 2154897820, i64 2154898308, i64 2154897857, i64 2154897913, i64 2154897947, i64 2154897971, i64 2154898012, i64 2154898033, i64 2154898061, i64 2154898095}
!59 = !{i64 2148214430}
!60 = !{i64 699253, i64 699278, i64 699300, i64 699316, i64 699328, i64 699348, i64 699372, i64 699388, i64 699400}
!61 = !{i64 2148214618}
!62 = !{i64 2149869479}
!63 = !{i64 2149874411}
!64 = !{i64 2149896123}
!65 = !{i64 2149901015}
!66 = !{i64 2149977472}
!67 = !{i64 2149977797}
!68 = !{!"auto-init"}
