; ModuleID = '/llk/IR_all_yes/net/mctp/device.c_pt.bc'
source_filename = "../net/mctp/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mctp_register_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_mctp_register_netdev\09\09\09\09"
module asm "\09.long\09__crc_mctp_register_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctp_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mctp_register_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_mctp_register_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mctp_unregister_netdev\22, \22a\22\09"
module asm "\09.weak\09__crc_mctp_unregister_netdev\09\09\09\09"
module asm "\09.long\09__crc_mctp_unregister_netdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mctp_unregister_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22mctp_unregister_netdev\22\09\09\09\09\09"
module asm "__kstrtabns_mctp_unregister_netdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.mctp_dev = type { ptr, %struct.refcount_struct, i32, ptr, ptr, i32, %struct.spinlock, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mctp_sk_key = type { i8, i8, i8, ptr, %struct.hlist_node, %struct.hlist_node, %struct.spinlock, %struct.refcount_struct, ptr, ptr, i8, i8, i8, i32, i32, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
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
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nlattr = type { i16, i16 }

@__mctp_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/mctp/device.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mctp_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_mctp_register_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctp_register_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mctp_register_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctp_register_netdev to i32), ptr @__kstrtab_mctp_register_netdev, ptr @__kstrtabns_mctp_register_netdev }, section "___ksymtab_gpl+mctp_register_netdev", align 4
@__kstrtab_mctp_unregister_netdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mctp_unregister_netdev = external dso_local constant [0 x i8], align 1
@__ksymtab_mctp_unregister_netdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mctp_unregister_netdev to i32), ptr @__kstrtab_mctp_unregister_netdev, ptr @__kstrtabns_mctp_unregister_netdev }, section "___ksymtab_gpl+mctp_unregister_netdev", align 4
@mctp_dev_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mctp_dev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mctp_af_ops = internal global { %struct.rtnl_af_ops, [60 x i8] } { %struct.rtnl_af_ops { %struct.list_head zeroinitializer, i32 45, ptr @mctp_fill_link_af, ptr @mctp_get_link_af_size, ptr null, ptr @mctp_set_link_af, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mctp_add_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mctp_add_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mdev->addrs_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mctp_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: mctp_dev set for unknown type %d\00", [59 x i8] zeroinitializer }, align 32
@__func__.mctp_register = private unnamed_addr constant [14 x i8] c"mctp_register\00", align 1
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: mdev pointer %d but type (%d) match is %d\00", [50 x i8] zeroinitializer }, align 32
@__func__.mctp_unregister = private unnamed_addr constant [16 x i8] c"mctp_unregister\00", align 1
@mctp_dump_addrinfo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ifa_mctp_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, [8 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.48 zeroinitializer }, [8 x %struct.nla_policy] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@mctp_addr_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ifla_af_mctp_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 290, i64 772, i64 65534]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 290, i64 772, i64 65534]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 16, i64 290, i64 772, i64 65534]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 16, i64 290, i64 772, i64 65534]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 30, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 35, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"mctp_dev_nb\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 518, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"mctp_af_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 511, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 328, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 334, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 442, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 417, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 119, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 991, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 723, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"ifa_mctp_policy\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 170, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"ifla_af_mctp_policy\00", align 1
@___asan_gen_.66 = private constant [21 x i8] c"../net/mctp/device.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 375, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1208, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_mctp_register_netdev, ptr @__ksymtab_mctp_unregister_netdev, ptr @mctp_device_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mctp_dev_nb, ptr @mctp_af_ops, ptr @.str.3, ptr @mctp_add_dev.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ifa_mctp_policy, ptr @ifla_af_mctp_policy, ptr @nla_parse_nested.__msg], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_dev_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_af_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_add_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifa_mctp_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifla_af_mctp_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__mctp_dev_get(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mctp_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %0 = ptrtoint ptr %mctp_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mctp_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @__mctp_dev_get.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__mctp_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @.str.1) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mctp_dev_get_rtnl(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mctp_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %0 = ptrtoint ptr %mctp_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mctp_ptr, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_dev_hold(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.mctp_dev, ptr %mdev, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !63
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !64

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !65

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_dev_put(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.mctp_dev, ptr %mdev, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !65

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #11
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.dev_put.exit_crit_edge, label %do.body1.i

if.then.dev_put.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.then
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !69
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i = add i32 %15, -1
  store i32 %add13.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !70
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !64

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #11, !srcloc !71
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.then.dev_put.exit_crit_edge
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %dev_put.exit.if.end5_crit_edge, label %do.end

dev_put.exit.if.end5_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr inbounds %struct.mctp_dev, ptr %mdev, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 68 to ptr)) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %dev_put.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_dev_release_key(ptr noundef %dev, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.mctp_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef nonnull %dev, ptr noundef %key) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 15
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dev8, align 4
  tail call void @mctp_dev_put(ptr noundef nonnull %dev)
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_dev_set_key(ptr noundef %dev, ptr nocapture noundef writeonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refs.i = getelementptr inbounds %struct.mctp_dev, ptr %dev, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #11, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !64

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mctp_dev_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mctp_dev_hold.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #11
  br label %mctp_dev_hold.exit

mctp_dev_hold.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mctp_dev_hold.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.mctp_sk_key, ptr %key, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mctp_register_netdev(ptr noundef %dev, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #11
  %call.i = tail call fastcc ptr @mctp_add_dev(ptr noundef %dev) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call.i to i32
  br label %mctp_register_netdevice.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ops3.i = getelementptr inbounds %struct.mctp_dev, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops3.i, align 4
  %call4.i = tail call i32 @register_netdevice(ptr noundef %dev) #11
  br label %mctp_register_netdevice.exit

mctp_register_netdevice.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %0, %if.then.i ], [ %call4.i, %if.end.i ]
  tail call void @rtnl_unlock() #11
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_unregister_netdev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_netdev(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_device_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mctp_dev_nb) #11
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 22, ptr noundef null, ptr noundef nonnull @mctp_dump_addrinfo, i32 noundef 0) #11
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 20, ptr noundef nonnull @mctp_rtm_newaddr, ptr noundef null, i32 noundef 0) #11
  %call3 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 45, i32 noundef 21, ptr noundef nonnull @mctp_rtm_deladdr, ptr noundef null, i32 noundef 0) #11
  tail call void @rtnl_af_register(ptr noundef nonnull @mctp_af_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_dump_addrinfo(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %ifa_index = getelementptr i8, ptr %7, i32 20
  %8 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifa_index, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %.pr)
  %cmp105 = icmp slt i32 %.pr, 256
  br i1 %cmp105, label %for.body.lr.ph, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %dev_index_head = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 24
  %idx18 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21 = icmp eq i32 %9, 0
  %a_idx.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %15 = phi i32 [ %.pr, %for.body.lr.ph ], [ %inc51, %for.inc49.for.body_crit_edge ]
  %16 = ptrtoint ptr %dev_index_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_index_head, align 16
  %arrayidx = getelementptr %struct.hlist_head, ptr %17, i32 %15
  %call3 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @mctp_dump_addrinfo.__warned, align 1
  br i1 %.b77, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dump_addrinfo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %19, null
  %add.ptr = getelementptr i8, ptr %19, i32 -664
  %tobool16.not100109 = icmp eq ptr %add.ptr, null
  %tobool16.not100 = or i1 %tobool13.not, %tobool16.not100109
  br i1 %tobool16.not100, label %do.end.for.inc49_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.inc49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49

for.body17:                                       ; preds = %if.end33.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %dev.0103 = phi ptr [ %add.ptr45, %if.end33.for.body17_crit_edge ], [ %add.ptr, %do.end.for.body17_crit_edge ]
  %idx.1101 = phi i32 [ %inc, %if.end33.for.body17_crit_edge ], [ 0, %do.end.for.body17_crit_edge ]
  %20 = ptrtoint ptr %idx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1101, i32 %21)
  %cmp19.not = icmp slt i32 %idx.1101, %21
  br i1 %cmp19.not, label %for.body17.if.end33_crit_edge, label %land.lhs.true20

for.body17.if.end33_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true20:                                  ; preds = %for.body17
  br i1 %cmp21, label %land.lhs.true20.if.then24_crit_edge, label %lor.lhs.false

land.lhs.true20.if.then24_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %ifindex22 = getelementptr inbounds %struct.net_device, ptr %dev.0103, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %23)
  %cmp23 = icmp eq i32 %9, %23
  br i1 %cmp23, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %land.lhs.true20.if.then24_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev.0103, i32 0, i32 85
  %24 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %mctp_ptr.i, align 4
  %call.i79 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %land.lhs.true.i81, label %if.then24.__mctp_dev_get.exit_crit_edge

if.then24.__mctp_dev_get.exit_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

land.lhs.true.i81:                                ; preds = %if.then24
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i81.__mctp_dev_get.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i81.__mctp_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i81
  %.b9.i = load i1, ptr @__mctp_dev_get.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__mctp_dev_get.exit_crit_edge, label %if.then.i82

land.lhs.true4.i.__mctp_dev_get.exit_crit_edge:   ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

if.then.i82:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__mctp_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @.str.1) #11
  br label %__mctp_dev_get.exit

__mctp_dev_get.exit:                              ; preds = %if.then.i82, %land.lhs.true4.i.__mctp_dev_get.exit_crit_edge, %land.lhs.true.i81.__mctp_dev_get.exit_crit_edge, %if.then24.__mctp_dev_get.exit_crit_edge
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %__mctp_dev_get.exit.if.end33_crit_edge, label %if.then27

__mctp_dev_get.exit.if.end33_crit_edge:           ; preds = %__mctp_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27:                                        ; preds = %__mctp_dev_get.exit
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb, align 4
  %portid3.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %portid3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid3.i, align 4
  %30 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlh, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlmsg_seq.i, align 4
  %addrs.i = getelementptr inbounds %struct.mctp_dev, ptr %25, i32 0, i32 4
  %num_addrs.i = getelementptr inbounds %struct.mctp_dev, ptr %25, i32 0, i32 5
  %34 = ptrtoint ptr %a_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %a_idx.i, align 4
  %36 = ptrtoint ptr %num_addrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_addrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp14.i = icmp ult i32 %35, %37
  br i1 %cmp14.i, label %if.then27.for.body.i_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27.for.body.i_crit_edge:                   ; preds = %if.then27
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then27.for.body.i_crit_edge
  %38 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %35, %if.then27.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %40, i32 %38
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %call.i83 = tail call fastcc i32 @mctp_fill_addrinfo(ptr noundef %skb, ptr noundef nonnull %25, i8 noundef zeroext %42, i32 noundef 20, i32 noundef %29, i32 noundef %33, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp5.i = icmp slt i32 %call.i83, 0
  br i1 %cmp5.i, label %for.body.i.out_crit_edge, label %for.inc.i

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.i:                                        ; preds = %for.body.i
  %43 = ptrtoint ptr %a_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %a_idx.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %a_idx.i, align 4
  %45 = ptrtoint ptr %num_addrs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_addrs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end33_crit_edge

for.inc.i.if.end33_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end33:                                         ; preds = %for.inc.i.if.end33_crit_edge, %if.then27.if.end33_crit_edge, %__mctp_dev_get.exit.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge, %for.body17.if.end33_crit_edge
  %inc = add i32 %idx.1101, 1
  %47 = ptrtoint ptr %a_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %a_idx.i, align 4
  %index_hlist = getelementptr inbounds %struct.net_device, ptr %dev.0103, i32 0, i32 101
  %48 = ptrtoint ptr %index_hlist to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %index_hlist, align 8
  %tobool41.not = icmp eq ptr %49, null
  %add.ptr45 = getelementptr i8, ptr %49, i32 -664
  %tobool16.not112 = icmp eq ptr %add.ptr45, null
  %tobool16.not = or i1 %tobool41.not, %tobool16.not112
  br i1 %tobool16.not, label %if.end33.for.inc49_crit_edge, label %if.end33.for.body17_crit_edge

if.end33.for.body17_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

if.end33.for.inc49_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc49

for.inc49:                                        ; preds = %if.end33.for.inc49_crit_edge, %do.end.for.inc49_crit_edge
  %idx.1.lcssa = phi i32 [ 0, %do.end.for.inc49_crit_edge ], [ %inc, %if.end33.for.inc49_crit_edge ]
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %0, align 4
  %inc51 = add i32 %51, 1
  store i32 %inc51, ptr %0, align 4
  %52 = ptrtoint ptr %idx18 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %idx18, align 4
  %cmp = icmp slt i32 %inc51, 256
  br i1 %cmp, label %for.inc49.for.body_crit_edge, label %for.inc49.out_crit_edge

for.inc49.out_crit_edge:                          ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %for.inc49.out_crit_edge, %for.body.i.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %idx.2 = phi i32 [ -1, %rcu_read_lock.exit.out_crit_edge ], [ %idx.1101, %for.body.i.out_crit_edge ], [ %idx.1.lcssa, %for.inc49.out_crit_edge ]
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i84, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %out
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %53 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i.i.i.i91 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %idx54 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %57 = ptrtoint ptr %idx54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %idx.2, ptr %idx54, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_rtm_newaddr(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #11
  %5 = call ptr @memset(ptr %tb, i32 255, i32 44)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i.i92 = icmp ult i32 %7, 24
  br i1 %cmp.i.i92, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %tobool.not.i.i93 = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i93, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %7, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @ifa_mctp_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse.exit.cleanup_crit_edge, label %if.end

nlmsg_parse.exit.cleanup_crit_edge:               ; preds = %nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %if.end
  %arrayidx6 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %.pn = phi ptr [ %10, %if.end.if.end13_crit_edge ], [ %12, %if.else.if.end13_crit_edge ]
  %addr.0 = getelementptr i8, ptr %.pn, i32 4
  %ifa_index = getelementptr i8, ptr %nlh, i32 20
  %13 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifa_index, align 4
  %call14 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %14) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %if.end17.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end17.mctp_dev_get_rtnl.exit_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, label %if.then.i96

land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

if.then.i96:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %mctp_dev_get_rtnl.exit

mctp_dev_get_rtnl.exit:                           ; preds = %if.then.i96, %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, %if.end17.mctp_dev_get_rtnl.exit_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 85
  %15 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mctp_ptr.i, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %mctp_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end21

mctp_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %mctp_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %mctp_dev_get_rtnl.exit
  %17 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr.0, align 1
  %19 = add i8 %18, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %19)
  %20 = icmp ult i8 %19, -9
  br i1 %20, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %addrs = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addrs, align 4
  %conv = zext i8 %18 to i32
  %num_addrs = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_addrs, align 4
  %call26 = call ptr @memchr(ptr noundef %22, i32 noundef %conv, i32 noundef %24) #14
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end8.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i:                                        ; preds = %if.end24
  %add = add i32 %24, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool32.not = icmp eq ptr %call9.i, null
  br i1 %tobool32.not, label %if.end8.i.cleanup_crit_edge, label %if.end34

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addrs, align 4
  %27 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_addrs, align 4
  %29 = call ptr @memcpy(ptr %call9.i, ptr %26, i32 %28)
  %30 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.0, align 1
  %32 = load i32, ptr %num_addrs, align 4
  %arrayidx39 = getelementptr i8, ptr %call9.i, i32 %32
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %arrayidx39, align 1
  %addrs_lock = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 6
  %call44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %addrs_lock) #11
  %34 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_addrs, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %num_addrs, align 4
  %36 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addrs, align 4
  store ptr %call9.i, ptr %addrs, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %addrs_lock, i32 noundef %call44) #11
  call void @kfree(ptr noundef %37) #11
  %38 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr.0, align 1
  call fastcc void @mctp_addr_notify(ptr noundef nonnull %16, i8 noundef zeroext %39, i32 noundef 20, ptr noundef %skb, ptr noundef %nlh)
  %40 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr.0, align 1
  %call56 = call i32 @mctp_route_add_local(ptr noundef nonnull %16, i8 noundef zeroext %41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end8.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %mctp_dev_get_rtnl.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %nlmsg_parse.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call5.i.i, %nlmsg_parse.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %mctp_dev_get_rtnl.exit.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -17, %if.end24.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_rtm_deladdr(ptr nocapture noundef readonly %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #11
  %5 = call ptr @memset(ptr %tb, i32 255, i32 44)
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse.exit

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #11
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse.exit:                                 ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %7, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @ifa_mctp_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse.exit.cleanup_crit_edge, label %if.end

nlmsg_parse.exit.cleanup_crit_edge:               ; preds = %nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_parse.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %if.end
  %arrayidx6 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %.pn = phi ptr [ %10, %if.end.if.end13_crit_edge ], [ %12, %if.else.if.end13_crit_edge ]
  %addr.0 = getelementptr i8, ptr %.pn, i32 4
  %ifa_index = getelementptr i8, ptr %nlh, i32 20
  %13 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifa_index, align 4
  %call14 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %14) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %if.end17.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end17.mctp_dev_get_rtnl.exit_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %mctp_dev_get_rtnl.exit

mctp_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, %if.end17.mctp_dev_get_rtnl.exit_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %call14, i32 0, i32 85
  %15 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mctp_ptr.i, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %mctp_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end21

mctp_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %mctp_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %mctp_dev_get_rtnl.exit
  %addrs = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addrs, align 4
  %19 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr.0, align 1
  %conv = zext i8 %20 to i32
  %num_addrs = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_addrs, align 4
  %call22 = call ptr @memchr(ptr noundef %18, i32 noundef %conv, i32 noundef %22) #14
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call27 = call i32 @mctp_route_remove_local(ptr noundef nonnull %16, i8 noundef zeroext %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp sgt i32 %call27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call27)
  %cmp30.not = icmp eq i32 %call27, -2
  %or.cond = or i1 %cmp28, %cmp30.not
  br i1 %or.cond, label %do.body34, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %addrs_lock = getelementptr inbounds %struct.mctp_dev, ptr %16, i32 0, i32 6
  %call38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %addrs_lock) #11
  %add.ptr = getelementptr i8, ptr %call22, i32 1
  %23 = ptrtoint ptr %num_addrs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_addrs, align 4
  %25 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addrs, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i32
  %sub.ptr.sub.neg = xor i32 %sub.ptr.lhs.cast, -1
  %sub = add i32 %24, %sub.ptr.sub.neg
  %sub43 = add i32 %sub, %sub.ptr.rhs.cast
  %27 = call ptr @memmove(ptr %call22, ptr %add.ptr, i32 %sub43)
  %28 = load i32, ptr %num_addrs, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %num_addrs, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %addrs_lock, i32 noundef %call38) #11
  %29 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr.0, align 1
  call fastcc void @mctp_addr_notify(ptr noundef nonnull %16, i8 noundef zeroext %30, i32 noundef 21, ptr noundef %skb, ptr noundef %nlh)
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %mctp_dev_get_rtnl.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.else.cleanup_crit_edge, %nlmsg_parse.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body34 ], [ %call5.i.i, %nlmsg_parse.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %mctp_dev_get_rtnl.exit.cleanup_crit_edge ], [ -2, %if.end21.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mctp_device_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_af_unregister(ptr noundef nonnull @mctp_af_ops) #11
  %call = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 21) #11
  %call1 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 20) #11
  %call2 = tail call i32 @rtnl_unregister(i32 noundef 45, i32 noundef 22) #11
  %call3 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mctp_dev_nb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mctp_add_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b96 = load i1, ptr @mctp_add_dev.__already_done, align 1
  br i1 %.b96, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !65

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_add_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef 328) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #16
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.end29.cleanup_crit_edge, label %do.body42

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body42:                                        ; preds = %if.end29
  %addrs_lock = getelementptr inbounds %struct.mctp_dev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %addrs_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mctp_add_dev.__key, i16 noundef signext 3) #11
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %1 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_net.i, align 4
  %call47 = tail call i32 @mctp_default_net(ptr noundef %2) #11
  %net = getelementptr inbounds %struct.mctp_dev, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call47, ptr %net, align 8
  %refs = getelementptr inbounds %struct.mctp_dev, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  %4 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  %mctp_ptr72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %5 = ptrtoint ptr %mctp_ptr72 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i, ptr %mctp_ptr72, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body42.dev_hold.exit_crit_edge, label %do.body1.i

do.body42.dev_hold.exit_crit_edge:                ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %do.body42
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !69
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !53) #11
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !70
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !64

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !71
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %do.body42.dev_hold.exit_crit_edge
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit, %if.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %dev_hold.exit ], [ inttoptr (i32 -12 to ptr), %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_default_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_dev_notify(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %sw.bb.do.end.i_crit_edge, label %land.lhs.true.i

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @mctp_register.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.2) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 85
  %3 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mctp_ptr.i, align 4
  %tobool4.not.i = icmp eq ptr %4, null
  %type.i26.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %type.i26.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i26.i, align 16
  br i1 %tobool4.not.i, label %if.end9.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %6, label %if.then7.i [
    i16 290, label %if.then5.i.cleanup_crit_edge
    i16 772, label %if.then5.i.cleanup_crit_edge12
    i16 -2, label %if.then5.i.cleanup_crit_edge13
  ]

if.then5.i.cleanup_crit_edge13:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i.cleanup_crit_edge12:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mctp_register, i32 noundef %conv.i) #17
  br label %cleanup

if.end9.i:                                        ; preds = %do.end.i
  %8 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %6, label %if.end9.i.cleanup_crit_edge [
    i16 290, label %if.end9.i.if.end12.i_crit_edge
    i16 772, label %if.end9.i.if.end12.i_crit_edge14
    i16 -2, label %if.end9.i.if.end12.i_crit_edge15
  ]

if.end9.i.if.end12.i_crit_edge15:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end9.i.if.end12.i_crit_edge14:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12.i:                                       ; preds = %if.end9.i.if.end12.i_crit_edge, %if.end9.i.if.end12.i_crit_edge14, %if.end9.i.if.end12.i_crit_edge15
  %call13.i = tail call fastcc ptr @mctp_add_dev(ptr noundef %1) #11
  %cmp.i.i.not = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call13.i to i32
  %sub.i = sub i32 1, %9
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i.i, label %sw.bb3.mctp_dev_get_rtnl.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb3.mctp_dev_get_rtnl.exit.i_crit_edge:        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb3
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.mctp_dev_get_rtnl.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.mctp_dev_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.mctp_dev_get_rtnl.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.mctp_dev_get_rtnl.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %mctp_dev_get_rtnl.exit.i

mctp_dev_get_rtnl.exit.i:                         ; preds = %if.then.i.i, %land.lhs.true2.i.i.mctp_dev_get_rtnl.exit.i_crit_edge, %land.lhs.true.i.i.mctp_dev_get_rtnl.exit.i_crit_edge, %sw.bb3.mctp_dev_get_rtnl.exit.i_crit_edge
  %mctp_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 85
  %10 = ptrtoint ptr %mctp_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mctp_ptr.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type.i.i, align 16
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %13, label %mctp_known.exit.i [
    i16 290, label %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge
    i16 772, label %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge16
    i16 -2, label %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge17
  ]

mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge17: ; preds = %mctp_dev_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit.thr_comm.i

mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge16: ; preds = %mctp_dev_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit.thr_comm.i

mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge: ; preds = %mctp_dev_get_rtnl.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit.thr_comm.i

mctp_known.exit.thr_comm.i:                       ; preds = %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge, %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge16, %mctp_dev_get_rtnl.exit.i.mctp_known.exit.thr_comm.i_crit_edge17
  %tobool36.not.i = icmp eq ptr %11, null
  br i1 %tobool36.not.i, label %mctp_known.exit.thr_comm.i.if.then.i8_crit_edge, label %do.body14.i

mctp_known.exit.thr_comm.i.if.then.i8_crit_edge:  ; preds = %mctp_known.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i8

mctp_known.exit.i:                                ; preds = %mctp_dev_get_rtnl.exit.i
  %tobool.not.i7 = icmp eq ptr %11, null
  br i1 %tobool.not.i7, label %mctp_known.exit.i.cleanup_crit_edge, label %mctp_known.exit.i.if.then.i8_crit_edge

mctp_known.exit.i.if.then.i8_crit_edge:           ; preds = %mctp_known.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i8

mctp_known.exit.i.cleanup_crit_edge:              ; preds = %mctp_known.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i8:                                       ; preds = %mctp_known.exit.i.if.then.i8_crit_edge, %mctp_known.exit.thr_comm.i.if.then.i8_crit_edge
  %tobool37.i = phi i32 [ 0, %mctp_known.exit.thr_comm.i.if.then.i8_crit_edge ], [ 1, %mctp_known.exit.i.if.then.i8_crit_edge ]
  %15 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %13, label %lor.rhs.i34.i [
    i16 290, label %if.then.i8.mctp_known.exit35.i_crit_edge
    i16 772, label %if.then.i8.mctp_known.exit35.i_crit_edge18
    i16 -2, label %if.then.i8.mctp_known.exit35.i_crit_edge19
  ]

if.then.i8.mctp_known.exit35.i_crit_edge19:       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit35.i

if.then.i8.mctp_known.exit35.i_crit_edge18:       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit35.i

if.then.i8.mctp_known.exit35.i_crit_edge:         ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit35.i

lor.rhs.i34.i:                                    ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_known.exit35.i

mctp_known.exit35.i:                              ; preds = %lor.rhs.i34.i, %if.then.i8.mctp_known.exit35.i_crit_edge, %if.then.i8.mctp_known.exit35.i_crit_edge18, %if.then.i8.mctp_known.exit35.i_crit_edge19
  %16 = phi i32 [ 1, %if.then.i8.mctp_known.exit35.i_crit_edge ], [ 0, %lor.rhs.i34.i ], [ 1, %if.then.i8.mctp_known.exit35.i_crit_edge18 ], [ 1, %if.then.i8.mctp_known.exit35.i_crit_edge19 ]
  %conv8.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mctp_unregister, i32 noundef %tobool37.i, i32 noundef %16, i32 noundef %conv8.i) #17
  br label %cleanup

do.body14.i:                                      ; preds = %mctp_known.exit.thr_comm.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %11, align 4
  %mctp_ptr.i9 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 85
  %19 = ptrtoint ptr %mctp_ptr.i9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %mctp_ptr.i9, align 4
  tail call void @mctp_route_remove_dev(ptr noundef nonnull %11) #11
  tail call void @mctp_neigh_remove_dev(ptr noundef nonnull %11) #11
  %addrs.i = getelementptr inbounds %struct.mctp_dev, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addrs.i, align 4
  tail call void @kfree(ptr noundef %21) #11
  tail call void @mctp_dev_put(ptr noundef nonnull %11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body14.i, %mctp_known.exit35.i, %mctp_known.exit.i.cleanup_crit_edge, %if.then, %if.end12.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.then7.i, %if.then5.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge12, %if.then5.i.cleanup_crit_edge13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %if.then ], [ 1, %entry.cleanup_crit_edge ], [ 1, %mctp_known.exit.i.cleanup_crit_edge ], [ 1, %mctp_known.exit35.i ], [ 1, %do.body14.i ], [ 1, %if.then7.i ], [ 1, %if.end9.i.cleanup_crit_edge ], [ 1, %if.then5.i.cleanup_crit_edge ], [ 1, %if.then5.i.cleanup_crit_edge12 ], [ 1, %if.then5.i.cleanup_crit_edge13 ], [ 1, %if.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_route_remove_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctp_neigh_remove_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mctp_fill_addrinfo(ptr noundef %skb, ptr nocapture noundef readonly %mdev, i8 noundef zeroext %eid, i32 noundef %msg_type, i32 noundef %portid, i32 noundef %seq, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  %tmp.i23 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !64

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %msg_type, i32 noundef 8, i32 noundef %flag) #11
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 45, ptr %add.ptr.i, align 4
  %ifa_prefixlen = getelementptr i8, ptr %call3.i, i32 17
  %7 = ptrtoint ptr %ifa_prefixlen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ifa_prefixlen, align 1
  %ifa_flags = getelementptr i8, ptr %call3.i, i32 18
  %8 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ifa_flags, align 2
  %ifa_scope = getelementptr i8, ptr %call3.i, i32 19
  %9 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ifa_scope, align 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %ifa_index = getelementptr i8, ptr %call3.i, i32 20
  %14 = ptrtoint ptr %ifa_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ifa_index, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #11
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %eid, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i23) #11
  %16 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %eid, ptr %tmp.i23, align 1
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i23) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool7.not = icmp eq i32 %call.i24, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %19 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end5.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %21, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !64

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i26 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i27 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i28 = sub i32 %sub.ptr.lhs.cast.i.i26, %sub.ptr.rhs.cast.i.i27
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i28) #11
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end9, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end9 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mctp_addr_notify(ptr nocapture noundef readonly %mdev, i8 noundef zeroext %eid, i32 noundef %msg_type, ptr nocapture noundef readonly %req_skb, ptr noundef %req_nlh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %portid1 = getelementptr inbounds %struct.sk_buff, ptr %req_skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %portid1, align 4
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %req_nlh, i32 0, i32 3
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %call4 = tail call fastcc i32 @mctp_fill_addrinfo(ptr noundef nonnull %call.i.i, ptr noundef %mdev, i8 noundef zeroext %eid, i32 noundef %msg_type, i32 noundef %1, i32 noundef %7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end44

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call4)
  %cmp6 = icmp eq i32 %call4, -90
  br i1 %cmp6, label %land.rhs, label %if.then5.out_crit_edge

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.rhs:                                         ; preds = %if.then5
  %.b59 = load i1, ptr @mctp_addr_notify.__already_done, align 1
  br i1 %.b59, label %land.rhs.out_crit_edge, label %if.then14, !prof !65

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_addr_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_notify(ptr noundef nonnull %call.i.i, ptr noundef %5, i32 noundef %1, i32 noundef 34, ptr noundef %req_nlh, i32 noundef 3264) #11
  br label %cleanup

out:                                              ; preds = %if.then14, %land.rhs.out_crit_edge, %if.then5.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -105, %entry.out_crit_edge ], [ %call4, %if.then5.out_crit_edge ], [ -90, %if.then14 ], [ -90, %land.rhs.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #11
  tail call void @rtnl_set_sk_err(ptr noundef %5, i32 noundef 34, i32 noundef %rc.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_route_add_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mctp_route_remove_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_fill_link_af(ptr noundef %skb, ptr nocapture noundef readonly %dev, i32 noundef %ext_filter_mask) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %entry.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

entry.mctp_dev_get_rtnl.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %mctp_dev_get_rtnl.exit

mctp_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, %entry.mctp_dev_get_rtnl.exit_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %0 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mctp_ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mctp_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end

mctp_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %mctp_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mctp_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.mctp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %net, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i6 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool2.not = icmp eq i32 %call.i6, 0
  %. = select i1 %tobool2.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mctp_dev_get_rtnl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -61, %mctp_dev_get_rtnl.exit.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_get_link_af_size(ptr noundef %dev, i32 noundef %ext_filter_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %0 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mctp_ptr.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.__mctp_dev_get.exit_crit_edge

entry.__mctp_dev_get.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__mctp_dev_get.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__mctp_dev_get.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__mctp_dev_get.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__mctp_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__mctp_dev_get.exit_crit_edge:   ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mctp_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__mctp_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @.str.1) #11
  br label %__mctp_dev_get.exit

__mctp_dev_get.exit:                              ; preds = %if.then.i, %land.lhs.true4.i.__mctp_dev_get.exit_crit_edge, %land.lhs.true.i.__mctp_dev_get.exit_crit_edge, %entry.__mctp_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_set_link_af(ptr nocapture noundef readonly %dev, ptr noundef %attr, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #11
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !75
  %1 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !75
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not.i = icmp sgt i16 %4, -1
  br i1 %tobool.not.i, label %nla_parse_nested.exit.thread, label %nla_parse_nested.exit

nla_parse_nested.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ifla_af_mctp_policy, i32 noundef 31, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %nla_parse_nested.exit.cleanup_crit_edge

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nla_parse_nested.exit
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i, label %if.end.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.mctp_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i20 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @mctp_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mctp_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mctp_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.2) #11
  br label %mctp_dev_get_rtnl.exit

mctp_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.mctp_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.mctp_dev_get_rtnl.exit_crit_edge, %if.end.mctp_dev_get_rtnl.exit_crit_edge
  %mctp_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 85
  %7 = ptrtoint ptr %mctp_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mctp_ptr.i, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %mctp_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end4

mctp_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %mctp_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %mctp_dev_get_rtnl.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %do.body8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i21 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i21, align 4
  %net = getelementptr inbounds %struct.mctp_dev, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %12, ptr %net, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %if.end4.cleanup_crit_edge, %mctp_dev_get_rtnl.exit.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %nla_parse_nested.exit.thread
  %retval.0 = phi i32 [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ 0, %mctp_dev_get_rtnl.exit.cleanup_crit_edge ], [ 0, %do.body8 ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %nla_parse_nested.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/mctp/device.c", i32 30, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/mctp/device.c", i32 35, i32 9}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_mctp_register_netdev, !8, !"__ksymtab_mctp_register_netdev", i1 false, i1 false}
!8 = !{!"../net/mctp/device.c", i32 503, i32 1}
!9 = !{ptr @__ksymtab_mctp_unregister_netdev, !10, !"__ksymtab_mctp_unregister_netdev", i1 false, i1 false}
!10 = !{!"../net/mctp/device.c", i32 509, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/mctp/device.c", i32 328, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mctp_add_dev.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../net/mctp/device.c", i32 334, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mctp_dev_nb, !18, !"mctp_dev_nb", i1 false, i1 false}
!18 = !{!"../net/mctp/device.c", i32 518, i32 30}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/mctp/device.c", i32 438, i32 9}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mctp/device.c", i32 442, i32 21}
!23 = !{ptr @__func__.mctp_register, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mctp/device.c", i32 443, i32 9}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/mctp/device.c", i32 417, i32 20}
!27 = !{ptr @__func__.mctp_unregister, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/mctp/device.c", i32 418, i32 8}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/mctp/device.c", i32 119, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/net/netlink.h", i32 991, i32 3}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__nlmsg_parse.__msg, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../include/net/netlink.h", i32 729, i32 3}
!43 = !{ptr @ifa_mctp_policy, !44, !"ifa_mctp_policy", i1 false, i1 false}
!44 = !{!"../net/mctp/device.c", i32 170, i32 32}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/mctp/device.c", i32 159, i32 3}
!47 = !{ptr @mctp_af_ops, !48, !"mctp_af_ops", i1 false, i1 false}
!48 = !{!"../net/mctp/device.c", i32 511, i32 27}
!49 = !{ptr @nla_parse_nested.__msg, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!51 = !{ptr @ifla_af_mctp_policy, !52, !"ifla_af_mctp_policy", i1 false, i1 false}
!52 = !{!"../net/mctp/device.c", i32 375, i32 32}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148438839, i64 2148438871, i64 2148438900, i64 2148438934, i64 2148438965, i64 2148438988}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2148526840}
!67 = !{i64 2148441304, i64 2148441336, i64 2148441365, i64 2148441399, i64 2148441430, i64 2148441453}
!68 = !{i64 2150598422}
!69 = !{i64 829790, i64 829851}
!70 = !{i64 832522}
!71 = !{i64 832807}
!72 = !{i64 2149733946}
!73 = !{i64 2149734212}
!74 = !{i64 2157177113}
!75 = !{!"auto-init"}
