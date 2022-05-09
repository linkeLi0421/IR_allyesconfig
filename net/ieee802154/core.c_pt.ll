; ModuleID = '/llk/IR_all_yes/net/ieee802154/core.c_pt.bc'
source_filename = "../net/ieee802154/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wpan_phy_find\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_find\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_find:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_find\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wpan_phy_for_each\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_for_each\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_for_each\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_for_each\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wpan_phy_new\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_new\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_new:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_new\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wpan_phy_register\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_register\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_register\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wpan_phy_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_unregister\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wpan_phy_free\22, \22a\22\09"
module asm "\09.weak\09__crc_wpan_phy_free\09\09\09\09"
module asm "\09.long\09__crc_wpan_phy_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wpan_phy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22wpan_phy_free\22\09\09\09\09\09"
module asm "__kstrtabns_wpan_phy_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wpan_phy_iter_data = type { ptr, ptr }
%struct.cfg802154_registered_device = type { ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, i32, %struct.list_head, i32, i32, %struct.wpan_phy }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
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
%struct.possible_net_t = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }

@cfg802154_rdev_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cfg802154_rdev_list, ptr @cfg802154_rdev_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ieee802154/core.c\00", [42 x i8] zeroinitializer }, align 32
@wpan_phy_class = external dso_local global %struct.class, align 4
@__kstrtab_wpan_phy_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_find = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_find to i32), ptr @__kstrtab_wpan_phy_find, ptr @__kstrtabns_wpan_phy_find }, section "___ksymtab+wpan_phy_find", align 4
@__kstrtab_wpan_phy_for_each = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_for_each = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_for_each = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_for_each to i32), ptr @__kstrtab_wpan_phy_for_each, ptr @__kstrtabns_wpan_phy_for_each }, section "___ksymtab+wpan_phy_for_each", align 4
@cfg802154_rdev_by_wpan_phy_idx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@wpan_phy_idx_to_wpan_phy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wpan_phy_new.wpan_phy_counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"phy%d\00", [26 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@wpan_phy_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rdev->dev_wait\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_wpan_phy_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_new = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_new to i32), ptr @__kstrtab_wpan_phy_new, ptr @__kstrtabns_wpan_phy_new }, section "___ksymtab+wpan_phy_new", align 4
@cfg802154_rdev_list_generation = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_wpan_phy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_register to i32), ptr @__kstrtab_wpan_phy_register, ptr @__kstrtabns_wpan_phy_register }, section "___ksymtab+wpan_phy_register", align 4
@__kstrtab_wpan_phy_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_unregister to i32), ptr @__kstrtab_wpan_phy_unregister, ptr @__kstrtabns_wpan_phy_unregister }, section "___ksymtab+wpan_phy_unregister", align 4
@__kstrtab_wpan_phy_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_wpan_phy_free = external dso_local constant [0 x i8], align 1
@__ksymtab_wpan_phy_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wpan_phy_free to i32), ptr @__kstrtab_wpan_phy_free, ptr @__kstrtabns_wpan_phy_free }, section "___ksymtab+wpan_phy_free", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wpan%d\00", [25 x i8] zeroinitializer }, align 32
@__initcall__kmod_ieee802154__339_374_wpan_phy_class_init4 = internal global ptr @wpan_phy_class_init, section ".initcall4.init", align 4
@cfg802154_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cfg802154_netdev_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cfg802154_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cfg802154_pernet_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wpan_phy_class_exit = internal global ptr @wpan_phy_class_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [42 x i8] c"ieee802154.file=net/ieee802154/ieee802154\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [26 x i8] c"ieee802154.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [61 x i8] c"ieee802154.description=IEEE 802.15.4 configuration interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [42 x i8] c"ieee802154.author=Dmitry Eremin-Solenikov\00", section ".modinfo", align 1
@cfg802154_update_iface_num.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"cfg802154_rdev_list\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 23, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 30, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 72, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"wpan_phy_counter\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 99, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 124, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 131, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"cfg802154_rdev_list_generation\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 208, i32 57 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"cfg802154_netdev_notifier\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 316, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"cfg802154_pernet_ops\00", align 1
@___asan_gen_.36 = private constant [25 x i8] c"../net/ieee802154/core.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 332, i32 33 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_wpan_phy_class_exit, ptr @__initcall__kmod_ieee802154__339_374_wpan_phy_class_init4, ptr @__ksymtab_wpan_phy_find, ptr @__ksymtab_wpan_phy_for_each, ptr @__ksymtab_wpan_phy_free, ptr @__ksymtab_wpan_phy_new, ptr @__ksymtab_wpan_phy_register, ptr @__ksymtab_wpan_phy_unregister, ptr @wpan_phy_class_exit, ptr @cfg802154_rdev_list, ptr @.str, ptr @.str.1, ptr @wpan_phy_new.wpan_phy_counter, ptr @.str.2, ptr @wpan_phy_new.__key, ptr @.str.3, ptr @cfg802154_rdev_list_generation, ptr @.str.4, ptr @cfg802154_netdev_notifier, ptr @cfg802154_pernet_ops], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg802154_rdev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpan_phy_new.wpan_phy_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpan_phy_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg802154_rdev_list_generation to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg802154_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg802154_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wpan_phy_find(ptr noundef %str) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @class_find_device(ptr noundef nonnull @wpan_phy_class, ptr noundef null, ptr noundef nonnull %str, ptr noundef nonnull @device_match_name) #7
  %tobool24.not = icmp eq ptr %call.i, null
  %add.ptr = getelementptr i8, ptr %call.i, i32 -216
  %spec.select = select i1 %tobool24.not, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %spec.select, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wpan_phy_for_each(ptr noundef %fn, ptr noundef %data) #0 align 64 {
entry:
  %wpid = alloca %struct.wpan_phy_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wpid) #7
  %0 = getelementptr inbounds %struct.wpan_phy_iter_data, ptr %wpid, i32 0, i32 1
  %1 = ptrtoint ptr %wpid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fn, ptr %wpid, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %0, align 4
  %call = call i32 @class_for_each_device(ptr noundef nonnull @wpan_phy_class, ptr noundef null, ptr noundef nonnull %wpid, ptr noundef nonnull @wpan_phy_iter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wpid) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wpan_phy_iter(ptr noundef %dev, ptr nocapture noundef readonly %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -216
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %data = getelementptr inbounds %struct.wpan_phy_iter_data, ptr %_data, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfg802154_rdev_by_wpan_phy_idx(i32 noundef %wpan_phy_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.rhs:                                         ; preds = %entry
  %.b53 = load i1, ptr @cfg802154_rdev_by_wpan_phy_idx.__already_done, align 1
  br i1 %.b53, label %land.rhs.for.cond.preheader_crit_edge, label %if.then, !prof !59

land.rhs.for.cond.preheader_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cfg802154_rdev_by_wpan_phy_idx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 72) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.rhs.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @cfg802154_rdev_list, %for.cond.preheader ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @cfg802154_rdev_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %wpan_phy_idx40 = getelementptr i8, ptr %.pn, i32 8
  %1 = ptrtoint ptr %wpan_phy_idx40 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wpan_phy_idx40, align 4
  %cmp41 = icmp eq i32 %2, %wpan_phy_idx
  br i1 %cmp41, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %result.0 = phi ptr [ %rdev.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  ret ptr %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wpan_phy_idx_to_wpan_phy(i32 noundef %wpan_phy_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @wpan_phy_idx_to_wpan_phy.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !59

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @wpan_phy_idx_to_wpan_phy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 88) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end29.for.cond.i.preheader_crit_edge

if.end29.for.cond.i.preheader_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end29
  %.b53.i = load i1, ptr @cfg802154_rdev_by_wpan_phy_idx.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, label %if.then.i, !prof !59

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cfg802154_rdev_by_wpan_phy_idx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 72) #7
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end29.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @cfg802154_rdev_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cfg802154_rdev_list
  br i1 %cmp.not.i, label %for.cond.i.cfg802154_rdev_by_wpan_phy_idx.exit_crit_edge, label %for.body.i

for.cond.i.cfg802154_rdev_by_wpan_phy_idx.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg802154_rdev_by_wpan_phy_idx.exit

for.body.i:                                       ; preds = %for.cond.i
  %wpan_phy_idx40.i = getelementptr i8, ptr %.pn.i, i32 8
  %1 = ptrtoint ptr %wpan_phy_idx40.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wpan_phy_idx40.i, align 4
  %cmp41.i = icmp eq i32 %2, %wpan_phy_idx
  br i1 %cmp41.i, label %for.end.split.loop.exit.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.split.loop.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rdev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  br label %cfg802154_rdev_by_wpan_phy_idx.exit

cfg802154_rdev_by_wpan_phy_idx.exit:              ; preds = %for.end.split.loop.exit.i, %for.cond.i.cfg802154_rdev_by_wpan_phy_idx.exit_crit_edge
  %result.0.i = phi ptr [ %rdev.0.le.i, %for.end.split.loop.exit.i ], [ null, %for.cond.i.cfg802154_rdev_by_wpan_phy_idx.exit_crit_edge ]
  %tobool38.not = icmp eq ptr %result.0.i, null
  %wpan_phy = getelementptr inbounds %struct.cfg802154_registered_device, ptr %result.0.i, i32 0, i32 9
  %retval.0 = select i1 %tobool38.not, ptr null, ptr %wpan_phy
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wpan_phy_new(ptr noundef %ops, i32 noundef %priv_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %priv_size, 1248
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %call9.i.i, align 128
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @wpan_phy_new.wpan_phy_counter, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull @wpan_phy_new.wpan_phy_counter, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @wpan_phy_new.wpan_phy_counter, ptr nonnull @wpan_phy_new.wpan_phy_counter, i32 1, ptr nonnull elementtype(i32) @wpan_phy_new.wpan_phy_counter) #7, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  %wpan_phy_idx = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %asmresult.i.i.i.i, ptr %wpan_phy_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then6, label %if.end7, !prof !58

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @wpan_phy_new.wpan_phy_counter, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @wpan_phy_new.wpan_phy_counter, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @wpan_phy_new.wpan_phy_counter, ptr nonnull @wpan_phy_new.wpan_phy_counter, i32 1, ptr nonnull elementtype(i32) @wpan_phy_new.wpan_phy_counter) #7, !srcloc !63
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %asmresult.i.i.i.i, -1
  %4 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %wpan_phy_idx, align 4
  %wpan_dev_list = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %wpan_dev_list, ptr %wpan_dev_list, align 4
  %prev.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wpan_dev_list, ptr %prev.i, align 16
  %wpan_phy = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 9
  %dev = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 9, i32 12
  tail call void @device_initialize(ptr noundef %dev) #7
  %7 = ptrtoint ptr %wpan_phy_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wpan_phy_idx, align 4
  %call12 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %8) #7
  %class = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 9, i32 12, i32 33
  %9 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wpan_phy_class, ptr %class, align 4
  %platform_data = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 9, i32 12, i32 7
  %10 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %platform_data, align 8
  %_net.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 9, i32 13
  %11 = ptrtoint ptr %_net.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @init_net, ptr %_net.i, align 8
  %dev_wait = getelementptr inbounds %struct.cfg802154_registered_device, ptr %call9.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %dev_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @wpan_phy_new.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ %wpan_phy, %if.end7 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wpan_phy_register(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %phy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wpan_phy_to_rdev.exit, !prof !58

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

wpan_phy_to_rdev.exit:                            ; preds = %entry
  tail call void @rtnl_lock() #7
  %dev = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 12
  %call1 = tail call i32 @device_add(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %wpan_phy_to_rdev.exit.cleanup_crit_edge

wpan_phy_to_rdev.exit.cleanup_crit_edge:          ; preds = %wpan_phy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %wpan_phy_to_rdev.exit
  %list = getelementptr i8, ptr %phy, i32 -92
  %0 = load ptr, ptr @cfg802154_rdev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @cfg802154_rdev_list, ptr noundef %0) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %phy, i32 -88
  %2 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfg802154_rdev_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  store volatile ptr %list, ptr @cfg802154_rdev_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_add_rcu.exit_crit_edge
  %4 = load i32, ptr @cfg802154_rdev_list_generation, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @cfg802154_rdev_list_generation, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %wpan_phy_to_rdev.exit.cleanup_crit_edge
  tail call void @rtnl_unlock() #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wpan_phy_unregister(ptr noundef %phy) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %phy, null
  br i1 %tobool.not.i, label %do.body4.i, label %wpan_phy_to_rdev.exit, !prof !58

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

wpan_phy_to_rdev.exit:                            ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 170) #7
  tail call void @rtnl_lock() #7
  %opencount = getelementptr i8, ptr %phy, i32 -80
  %0 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opencount, align 16
  tail call void @rtnl_unlock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %wpan_phy_to_rdev.exit.do.end17_crit_edge, label %if.end

wpan_phy_to_rdev.exit.do.end17_crit_edge:         ; preds = %wpan_phy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end:                                           ; preds = %wpan_phy_to_rdev.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %dev_wait = getelementptr i8, ptr %phy, i32 -76
  %call555 = call i32 @prepare_to_wait_event(ptr noundef %dev_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  call void @rtnl_lock() #7
  %3 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opencount, align 16
  call void @rtnl_unlock() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp956 = icmp eq i32 %4, 0
  br i1 %cmp956, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #7
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %dev_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  call void @rtnl_lock() #7
  %5 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opencount, align 16
  call void @rtnl_unlock() #7
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %dev_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end17

do.end17:                                         ; preds = %for.end, %wpan_phy_to_rdev.exit.do.end17_crit_edge
  call void @rtnl_lock() #7
  %wpan_dev_list = getelementptr i8, ptr %phy, i32 -20
  %7 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %wpan_dev_list, align 4
  %cmp.i.not = icmp eq ptr %8, %wpan_dev_list
  br i1 %cmp.i.not, label %do.end17.if.end38_crit_edge, label %do.end32, !prof !59

do.end17.if.end38_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end32:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #7
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %do.end17.if.end38_crit_edge
  %list = getelementptr i8, ptr %phy, i32 -92
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_del_rcu.exit_crit_edge

if.end38.list_del_rcu.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %phy, i32 -88
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end38.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr i8, ptr %phy, i32 -88
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @synchronize_rcu() #7
  %16 = load i32, ptr @cfg802154_rdev_list_generation, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr @cfg802154_rdev_list_generation, align 4
  %dev = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 12
  call void @device_del(ptr noundef %dev) #7
  call void @rtnl_unlock() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wpan_phy_free(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.wpan_phy, ptr %phy, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfg802154_switch_netns(ptr noundef %rdev, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wpan_dev_list = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn142 = load ptr, ptr %wpan_dev_list, align 4
  %cmp.not143 = icmp eq ptr %.pn142, %wpan_dev_list
  br i1 %cmp.not143, label %entry.if.end70_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn144 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn142, %entry.for.body_crit_edge ]
  %netdev = getelementptr i8, ptr %.pn144, i32 8
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %features = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %and = and i64 %4, -8193
  store i64 %and, ptr %features, align 16
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 8
  %call.i = tail call i32 @__dev_change_net_namespace(ptr noundef %6, ptr noundef %net, ptr noundef nonnull @.str.4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.then15

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev, align 8
  %features8 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features8, align 16
  %or = or i64 %10, 8192
  store i64 %or, ptr %features8, align 16
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn144, align 4
  %cmp.not = icmp eq ptr %.pn, %wpan_dev_list
  br i1 %cmp.not, label %for.inc.if.end70_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end70_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then15:                                        ; preds = %if.end
  %_net.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 13
  %12 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_net.i, align 4
  %.pn136.in145 = getelementptr inbounds %struct.list_head, ptr %.pn144, i32 0, i32 1
  %14 = ptrtoint ptr %.pn136.in145 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn136146 = load ptr, ptr %.pn136.in145, align 4
  %cmp24.not147 = icmp eq ptr %.pn136146, %wpan_dev_list
  br i1 %cmp24.not147, label %if.then15.cleanup_crit_edge, label %if.then15.for.body26_crit_edge

if.then15.for.body26_crit_edge:                   ; preds = %if.then15
  br label %for.body26

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body26:                                       ; preds = %for.inc63.for.body26_crit_edge, %if.then15.for.body26_crit_edge
  %.pn136149 = phi ptr [ %.pn136, %for.inc63.for.body26_crit_edge ], [ %.pn136146, %if.then15.for.body26_crit_edge ]
  %err.3148 = phi i32 [ %err.4, %for.inc63.for.body26_crit_edge ], [ %call.i, %if.then15.for.body26_crit_edge ]
  %netdev27 = getelementptr i8, ptr %.pn136149, i32 8
  %15 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev27, align 8
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %for.body26.for.inc63_crit_edge, label %if.end30

for.body26.for.inc63_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc63

if.end30:                                         ; preds = %for.body26
  %features32 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %features32 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features32, align 16
  %and33 = and i64 %18, -8193
  store i64 %and33, ptr %features32, align 16
  %19 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev27, align 8
  %call.i137 = tail call i32 @__dev_change_net_namespace(ptr noundef %20, ptr noundef %13, ptr noundef nonnull @.str.4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool36.not = icmp eq i32 %call.i137, 0
  br i1 %tobool36.not, label %if.end30.if.end52_crit_edge, label %do.end, !prof !59

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end30.if.end52_crit_edge
  %21 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev27, align 8
  %features61 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 23
  %23 = ptrtoint ptr %features61 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features61, align 16
  %or62 = or i64 %24, 8192
  store i64 %or62, ptr %features61, align 16
  br label %for.inc63

for.inc63:                                        ; preds = %if.end52, %for.body26.for.inc63_crit_edge
  %err.4 = phi i32 [ %call.i137, %if.end52 ], [ %err.3148, %for.body26.for.inc63_crit_edge ]
  %.pn136.in = getelementptr inbounds %struct.list_head, ptr %.pn136149, i32 0, i32 1
  %25 = ptrtoint ptr %.pn136.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn136 = load ptr, ptr %.pn136.in, align 4
  %cmp24.not = icmp eq ptr %.pn136, %wpan_dev_list
  br i1 %cmp24.not, label %for.inc63.cleanup_crit_edge, label %for.inc63.for.body26_crit_edge

for.inc63.for.body26_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %for.inc.if.end70_crit_edge, %entry.if.end70_crit_edge
  %_net.i138 = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 13
  %26 = ptrtoint ptr %_net.i138 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %net, ptr %_net.i138, align 4
  %dev = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 12
  %init_name.i = getelementptr inbounds %struct.cfg802154_registered_device, ptr %rdev, i32 0, i32 9, i32 12, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end70.dev_name.exit_crit_edge

if.end70.dev_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end70.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %if.end70.dev_name.exit_crit_edge ]
  %call76 = tail call i32 @device_rename(ptr noundef %dev, ptr noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %dev_name.exit.cleanup_crit_edge, label %do.end94, !prof !59

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %dev_name.exit.cleanup_crit_edge, %for.inc63.cleanup_crit_edge, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end94 ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ %call.i, %if.then15.cleanup_crit_edge ], [ %err.4, %for.inc63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfg802154_dev_free(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wpan_phy_class_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @cfg802154_pernet_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wpan_phy_sysfs_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_sysfs_crit_edge

if.end.err_sysfs_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sysfs

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cfg802154_netdev_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_nl_crit_edge

if.end4.err_nl_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_nl

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @ieee802154_nl_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_notifier_crit_edge

if.end8.err_notifier_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_notifier

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @nl802154_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %err_ieee802154_nl

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_ieee802154_nl:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee802154_nl_exit() #7
  br label %err_notifier

err_notifier:                                     ; preds = %err_ieee802154_nl, %if.end8.err_notifier_crit_edge
  %rc.0 = phi i32 [ %call9, %if.end8.err_notifier_crit_edge ], [ %call13, %err_ieee802154_nl ]
  %call17 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cfg802154_netdev_notifier) #7
  br label %err_nl

err_nl:                                           ; preds = %err_notifier, %if.end4.err_nl_crit_edge
  %rc.1 = phi i32 [ %call5, %if.end4.err_nl_crit_edge ], [ %rc.0, %err_notifier ]
  tail call void @wpan_phy_sysfs_exit() #7
  br label %err_sysfs

err_sysfs:                                        ; preds = %err_nl, %if.end.err_sysfs_crit_edge
  %rc.2 = phi i32 [ %call1, %if.end.err_sysfs_crit_edge ], [ %rc.1, %err_nl ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @cfg802154_pernet_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %err_sysfs, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %rc.2, %err_sysfs ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wpan_phy_class_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nl802154_exit() #7
  tail call void @ieee802154_nl_exit() #7
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cfg802154_netdev_notifier) #7
  tail call void @wpan_phy_sysfs_exit() #7
  tail call void @unregister_pernet_device(ptr noundef nonnull @cfg802154_pernet_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nl802154_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_nl_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpan_phy_sysfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_change_net_namespace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wpan_phy_sysfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ieee802154_nl_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nl802154_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfg802154_netdev_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %state, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee802154_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body4.i, label %wpan_phy_to_rdev.exit, !prof !58

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ieee802154/core.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

wpan_phy_to_rdev.exit:                            ; preds = %if.end
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %wpan_phy_to_rdev.exit.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 2, label %sw.bb3
    i32 1, label %sw.bb4
    i32 6, label %sw.bb8
  ]

wpan_phy_to_rdev.exit.cleanup_crit_edge:          ; preds = %wpan_phy_to_rdev.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %wpan_phy_to_rdev.exit
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %or = or i64 %8, 8192
  store i64 %or, ptr %features, align 16
  %wpan_dev_id = getelementptr i8, ptr %5, i32 -8
  %9 = ptrtoint ptr %wpan_dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wpan_dev_id, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %wpan_dev_id, align 8
  %identifier = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %identifier to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %identifier, align 4
  %list = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2
  %wpan_dev_list = getelementptr i8, ptr %5, i32 -20
  %12 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wpan_dev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %wpan_dev_list, ptr noundef %13) #7
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb.list_add_rcu.exit_crit_edge

sw.bb.list_add_rcu.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wpan_dev_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %16 = ptrtoint ptr %wpan_dev_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %wpan_dev_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %sw.bb.list_add_rcu.exit_crit_edge
  %devlist_generation = getelementptr i8, ptr %5, i32 -12
  %18 = ptrtoint ptr %devlist_generation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devlist_generation, align 4
  %inc2 = add i32 %19, 1
  store i32 %inc2, ptr %devlist_generation, align 4
  %netdev = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %netdev, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %wpan_phy_to_rdev.exit
  %call.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %land.rhs.i, label %sw.bb3.cfg802154_update_iface_num.exit_crit_edge

sw.bb3.cfg802154_update_iface_num.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg802154_update_iface_num.exit

land.rhs.i:                                       ; preds = %sw.bb3
  %.b1.i = load i1, ptr @cfg802154_update_iface_num.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cfg802154_update_iface_num.exit_crit_edge, label %if.then.i, !prof !59

land.rhs.i.cfg802154_update_iface_num.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg802154_update_iface_num.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cfg802154_update_iface_num.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 250) #7
  br label %cfg802154_update_iface_num.exit

cfg802154_update_iface_num.exit:                  ; preds = %if.then.i, %land.rhs.i.cfg802154_update_iface_num.exit_crit_edge, %sw.bb3.cfg802154_update_iface_num.exit_crit_edge
  %num_running_ifaces.i = getelementptr i8, ptr %5, i32 -24
  %21 = ptrtoint ptr %num_running_ifaces.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_running_ifaces.i, align 8
  %add.i = add i32 %22, -1
  store i32 %add.i, ptr %num_running_ifaces.i, align 8
  %opencount = getelementptr i8, ptr %5, i32 -80
  %23 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %opencount, align 16
  %dec = add i32 %24, -1
  store i32 %dec, ptr %opencount, align 16
  %dev_wait = getelementptr i8, ptr %5, i32 -76
  tail call void @__wake_up(ptr noundef %dev_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

sw.bb4:                                           ; preds = %wpan_phy_to_rdev.exit
  %call.i40 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %land.rhs.i43, label %sw.bb4.cfg802154_update_iface_num.exit47_crit_edge

sw.bb4.cfg802154_update_iface_num.exit47_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg802154_update_iface_num.exit47

land.rhs.i43:                                     ; preds = %sw.bb4
  %.b1.i42 = load i1, ptr @cfg802154_update_iface_num.__already_done, align 1
  br i1 %.b1.i42, label %land.rhs.i43.cfg802154_update_iface_num.exit47_crit_edge, label %if.then.i44, !prof !59

land.rhs.i43.cfg802154_update_iface_num.exit47_crit_edge: ; preds = %land.rhs.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfg802154_update_iface_num.exit47

if.then.i44:                                      ; preds = %land.rhs.i43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cfg802154_update_iface_num.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 250) #7
  br label %cfg802154_update_iface_num.exit47

cfg802154_update_iface_num.exit47:                ; preds = %if.then.i44, %land.rhs.i43.cfg802154_update_iface_num.exit47_crit_edge, %sw.bb4.cfg802154_update_iface_num.exit47_crit_edge
  %num_running_ifaces.i45 = getelementptr i8, ptr %5, i32 -24
  %25 = ptrtoint ptr %num_running_ifaces.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_running_ifaces.i45, align 8
  %add.i46 = add i32 %26, 1
  store i32 %add.i46, ptr %num_running_ifaces.i45, align 8
  %opencount6 = getelementptr i8, ptr %5, i32 -80
  %27 = ptrtoint ptr %opencount6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %opencount6, align 16
  %inc7 = add i32 %28, 1
  store i32 %inc7, ptr %opencount6, align 16
  br label %cleanup

sw.bb8:                                           ; preds = %wpan_phy_to_rdev.exit
  %list9 = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %list9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %list9, align 4
  %cmp.i.not = icmp eq ptr %30, %list9
  br i1 %cmp.i.not, label %sw.bb8.if.end16_crit_edge, label %if.then12

sw.bb8.if.end16_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %sw.bb8
  %call.i.i48 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list9) #7
  br i1 %call.i.i48, label %if.end.i.i49, label %if.then12.list_del_rcu.exit_crit_edge

if.then12.list_del_rcu.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i49:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %list9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i49, %if.then12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %devlist_generation14 = getelementptr i8, ptr %5, i32 -12
  %38 = ptrtoint ptr %devlist_generation14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devlist_generation14, align 4
  %inc15 = add i32 %39, 1
  store i32 %inc15, ptr %devlist_generation14, align 4
  br label %if.end16

if.end16:                                         ; preds = %list_del_rcu.exit, %sw.bb8.if.end16_crit_edge
  tail call void @synchronize_rcu() #7
  %40 = ptrtoint ptr %list9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list9, ptr %list9, align 4
  %prev.i50 = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list9, ptr %prev.i50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %cfg802154_update_iface_num.exit47, %cfg802154_update_iface_num.exit, %list_add_rcu.exit, %wpan_phy_to_rdev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %wpan_phy_to_rdev.exit.cleanup_crit_edge ], [ 1, %if.end16 ], [ 1, %cfg802154_update_iface_num.exit47 ], [ 1, %cfg802154_update_iface_num.exit ], [ 1, %list_add_rcu.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfg802154_pernet_exit(ptr noundef readnone %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #7
  %.pn35 = load ptr, ptr @cfg802154_rdev_list, align 4
  %cmp.not37 = icmp eq ptr %.pn35, @cfg802154_rdev_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn35, %entry.for.body_crit_edge ]
  %_net.i = getelementptr i8, ptr %.pn38, i32 1236
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, %net
  br i1 %cmp.i.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %rdev.039 = getelementptr i8, ptr %.pn38, i32 -4
  %call2 = tail call i32 @cfg802154_switch_netns(ptr noundef %rdev.039, ptr noundef nonnull @init_net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.for.inc_crit_edge, label %do.end, !prof !59

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, @cfg802154_rdev_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @cfg802154_rdev_list, !1, !"cfg802154_rdev_list", i1 false, i1 false}
!1 = !{!"../net/ieee802154/core.c", i32 23, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ieee802154/core.c", i32 30, i32 6}
!4 = !{ptr @__ksymtab_wpan_phy_find, !5, !"__ksymtab_wpan_phy_find", i1 false, i1 false}
!5 = !{!"../net/ieee802154/core.c", i32 39, i32 1}
!6 = !{ptr @__ksymtab_wpan_phy_for_each, !7, !"__ksymtab_wpan_phy_for_each", i1 false, i1 false}
!7 = !{!"../net/ieee802154/core.c", i32 65, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/ieee802154/core.c", i32 72, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/ieee802154/core.c", i32 88, i32 2}
!13 = !{ptr @wpan_phy_new.wpan_phy_counter, !14, !"wpan_phy_counter", i1 false, i1 false}
!14 = !{!"../net/ieee802154/core.c", i32 99, i32 18}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ieee802154/core.c", i32 124, i32 36}
!17 = !{ptr @wpan_phy_new.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/ieee802154/core.c", i32 131, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__ksymtab_wpan_phy_new, !21, !"__ksymtab_wpan_phy_new", i1 false, i1 false}
!21 = !{!"../net/ieee802154/core.c", i32 135, i32 1}
!22 = !{ptr @__ksymtab_wpan_phy_register, !23, !"__ksymtab_wpan_phy_register", i1 false, i1 false}
!23 = !{!"../net/ieee802154/core.c", i32 159, i32 1}
!24 = !{ptr @__ksymtab_wpan_phy_unregister, !25, !"__ksymtab_wpan_phy_unregister", i1 false, i1 false}
!25 = !{!"../net/ieee802154/core.c", i32 190, i32 1}
!26 = !{ptr @__ksymtab_wpan_phy_free, !27, !"__ksymtab_wpan_phy_free", i1 false, i1 false}
!27 = !{!"../net/ieee802154/core.c", i32 196, i32 1}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ieee802154/core.c", i32 208, i32 57}
!30 = !{ptr @__initcall__kmod_ieee802154__339_374_wpan_phy_class_init4, !31, !"__initcall__kmod_ieee802154__339_374_wpan_phy_class_init4", i1 false, i1 false}
!31 = !{!"../net/ieee802154/core.c", i32 374, i32 1}
!32 = !{ptr @__exitcall_wpan_phy_class_exit, !33, !"__exitcall_wpan_phy_class_exit", i1 false, i1 false}
!33 = !{!"../net/ieee802154/core.c", i32 384, i32 1}
!34 = !{ptr @__UNIQUE_ID_file340, !35, !"__UNIQUE_ID_file340", i1 false, i1 false}
!35 = !{!"../net/ieee802154/core.c", i32 386, i32 1}
!36 = !{ptr @__UNIQUE_ID_license341, !35, !"__UNIQUE_ID_license341", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_description342, !38, !"__UNIQUE_ID_description342", i1 false, i1 false}
!38 = !{!"../net/ieee802154/core.c", i32 387, i32 1}
!39 = !{ptr @__UNIQUE_ID_author343, !40, !"__UNIQUE_ID_author343", i1 false, i1 false}
!40 = !{!"../net/ieee802154/core.c", i32 388, i32 1}
!41 = !{ptr @cfg802154_rdev_list_generation, !42, !"cfg802154_rdev_list_generation", i1 false, i1 false}
!42 = !{!"../net/ieee802154/core.c", i32 24, i32 5}
!43 = !{ptr @cfg802154_netdev_notifier, !44, !"cfg802154_netdev_notifier", i1 false, i1 false}
!44 = !{!"../net/ieee802154/core.c", i32 316, i32 30}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/ieee802154/core.c", i32 250, i32 2}
!47 = !{ptr @cfg802154_pernet_ops, !48, !"cfg802154_pernet_ops", i1 false, i1 false}
!48 = !{!"../net/ieee802154/core.c", i32 332, i32 33}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148672521}
!61 = !{i64 2148587806, i64 2148587838, i64 2148587867, i64 2148587901, i64 2148587932, i64 2148587955}
!62 = !{i64 2148672750}
!63 = !{i64 2148589551, i64 2148589577, i64 2148589606, i64 2148589640, i64 2148589671, i64 2148589694}
!64 = !{i64 2156058782, i64 2156059267, i64 2156058819, i64 2156058875, i64 2156058909, i64 2156058933, i64 2156058974, i64 2156058995, i64 2156059023, i64 2156059057}
!65 = !{i64 2151426469}
