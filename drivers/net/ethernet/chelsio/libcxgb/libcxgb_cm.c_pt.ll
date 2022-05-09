; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb_get_4tuple\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb_get_4tuple\09\09\09\09"
module asm "\09.long\09__crc_cxgb_get_4tuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb_get_4tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb_get_4tuple\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb_get_4tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb_find_route\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb_find_route\09\09\09\09"
module asm "\09.long\09__crc_cxgb_find_route\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb_find_route:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb_find_route\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb_find_route:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb_find_route6\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb_find_route6\09\09\09\09"
module asm "\09.long\09__crc_cxgb_find_route6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb_find_route6:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb_find_route6\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb_find_route6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.42, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.64, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.64 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.55, i32, %struct.spinlock }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { ptr, ptr }
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
%struct.cpl_pass_accept_req = type { %union.opcode_tid, i16, i16, i32, i16, i16, i32, %struct.tcp_options }
%union.opcode_tid = type { i32 }
%struct.tcp_options = type { i16, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.48 = type { i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.195, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.195 = type { ptr }
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
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }

@cxgb_get_4tuple.__UNIQUE_ID_ddebug725 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libcxgb\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgb_get_4tuple\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s saddr 0x%x daddr 0x%x sport %u dport %u\0A\00", [52 x i8] zeroinitializer }, align 32
@cxgb_get_4tuple.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s saddr %pI6 daddr %pI6 sport %u dport %u\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_cxgb_get_4tuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb_get_4tuple = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb_get_4tuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb_get_4tuple to i32), ptr @__kstrtab_cxgb_get_4tuple, ptr @__kstrtabns_cxgb_get_4tuple }, section "___ksymtab+cxgb_get_4tuple", align 4
@init_net = external dso_local global %struct.net, align 128
@__kstrtab_cxgb_find_route = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb_find_route = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb_find_route = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb_find_route to i32), ptr @__kstrtab_cxgb_find_route, ptr @__kstrtabns_cxgb_find_route }, section "___ksymtab+cxgb_find_route", align 4
@__kstrtab_cxgb_find_route6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb_find_route6 = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb_find_route6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb_find_route6 to i32), ptr @__kstrtab_cxgb_find_route6, ptr @__kstrtabns_cxgb_find_route6 }, section "___ksymtab+cxgb_find_route6", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 58, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [53 x i8] c"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 65, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_cxgb_find_route, ptr @__ksymtab_cxgb_find_route6, ptr @__ksymtab_cxgb_get_4tuple, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb_get_4tuple(ptr noundef %req, i32 noundef %type, ptr nocapture noundef writeonly %iptype, ptr nocapture noundef writeonly %local_ip, ptr nocapture noundef writeonly %peer_ip, ptr nocapture noundef writeonly %local_port, ptr nocapture noundef writeonly %peer_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %type, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %0)
  %cmp = icmp ult i32 %0, 96
  %hdr_len = getelementptr inbounds %struct.cpl_pass_accept_req, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hdr_len, align 4
  %shr4 = lshr i32 %2, 24
  %shr1 = lshr i32 %2, 26
  %and2 = and i32 %shr1, 31
  %.sink = select i1 %cmp, i32 16, i32 14
  %cond95 = select i1 %cmp, i32 %and2, i32 %shr4
  %shr15 = lshr i32 %2, %.sink
  %cond18 = and i32 %shr15, 1023
  %add.ptr = getelementptr %struct.cpl_pass_accept_req, ptr %req, i32 1
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %cond95
  %add.ptr24 = getelementptr i8, ptr %add.ptr19, i32 %cond18
  %3 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %add.ptr19, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp25 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp25, label %do.body, label %do.body34

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb_get_4tuple.__UNIQUE_ID_ddebug725, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb_get_4tuple, %if.then29)) #4
          to label %do.end [label %if.then29], !srcloc !24

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr19, i32 0, i32 8
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr19, i32 0, i32 9
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  %8 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr24, align 4
  %conv30 = zext i16 %9 to i32
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr24, i32 0, i32 1
  %10 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dest, align 2
  %conv31 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgb_get_4tuple.__UNIQUE_ID_ddebug725, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7, i32 noundef %conv30, i32 noundef %conv31) #4
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %12 = ptrtoint ptr %iptype to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %iptype, align 4
  %saddr32 = getelementptr inbounds %struct.iphdr, ptr %add.ptr19, i32 0, i32 8
  %13 = ptrtoint ptr %saddr32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr32, align 4
  %15 = ptrtoint ptr %peer_ip to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %peer_ip, align 1
  %daddr33 = getelementptr inbounds %struct.iphdr, ptr %add.ptr19, i32 0, i32 9
  %16 = ptrtoint ptr %daddr33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr33, align 4
  %18 = ptrtoint ptr %local_ip to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %local_ip, align 1
  br label %if.end64

do.body34:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb_get_4tuple.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb_get_4tuple, %if.then46)) #4
          to label %do.end57 [label %if.then46], !srcloc !24

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %saddr47 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr19, i32 0, i32 5
  %daddr48 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr19, i32 0, i32 6
  %19 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr24, align 4
  %conv52 = zext i16 %20 to i32
  %dest53 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr24, i32 0, i32 1
  %21 = ptrtoint ptr %dest53 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dest53, align 2
  %conv54 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgb_get_4tuple.__UNIQUE_ID_ddebug726, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %saddr47, ptr noundef %daddr48, i32 noundef %conv52, i32 noundef %conv54) #4
  br label %do.end57

do.end57:                                         ; preds = %if.then46, %do.body34
  %23 = ptrtoint ptr %iptype to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %iptype, align 4
  %saddr58 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr19, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %peer_ip, ptr %saddr58, i32 16)
  %daddr61 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr19, i32 0, i32 6
  %25 = call ptr @memcpy(ptr %local_ip, ptr %daddr61, i32 16)
  br label %if.end64

if.end64:                                         ; preds = %do.end57, %do.end
  %26 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr24, align 4
  %28 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %peer_port, align 2
  %dest66 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr24, i32 0, i32 1
  %29 = ptrtoint ptr %dest66 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dest66, align 2
  %31 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %local_port, align 2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb_find_route(ptr nocapture noundef readonly %lldi, ptr nocapture noundef readonly %get_real_dev, i32 noundef %local_ip, i32 noundef %peer_ip, i16 noundef zeroext %local_port, i16 noundef zeroext %peer_port, i8 noundef zeroext %tos) #0 align 64 {
entry:
  %peer_ip.addr = alloca i32, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %peer_ip.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %peer_ip, ptr %peer_ip.addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #4
  %1 = getelementptr inbounds i8, ptr %fl4, i32 32
  %2 = call ptr @memset(ptr %1, i32 255, i32 24)
  %3 = and i8 %tos, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %call.i.i = tail call i32 @make_kuid(ptr noundef %4, i32 noundef 0) #4
  %5 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fl4, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %6 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %7 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %8 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %9 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %10 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %11 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %12 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %13 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %14 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %15 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %peer_ip, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %16 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %local_ip, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %17 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %peer_port, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.48, ptr %uli.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %local_port, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %19 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  %call11.i = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %fl4, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call11.i, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i = call ptr %23(ptr noundef %call11.i, ptr noundef null, ptr noundef nonnull %peer_ip.addr) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %tobool.not35 = icmp eq ptr %call.i, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not35
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 25
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i23 = call ptr %get_real_dev(ptr noundef %25) #4
  %nports.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 11
  %26 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %nports.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp8.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp8.not.i, label %if.end5.land.lhs.true_crit_edge, label %for.body.lr.ph.i

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.body.lr.ph.i:                                 ; preds = %if.end5
  %ports.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 3
  %27 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %cmp2.i36 = icmp eq ptr %30, %call.i23
  br i1 %cmp2.i36, label %for.body.lr.ph.i.if.end12_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end12_crit_edge:              ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.09.i37 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.09.i37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.cxgb_our_interface.exit_crit_edge, label %for.body.i

for.cond.i.cxgb_our_interface.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxgb_our_interface.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %inc.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %32, %call.i23
  br i1 %cmp2.i, label %for.body.i.cxgb_our_interface.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.body.i.cxgb_our_interface.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxgb_our_interface.exit

cxgb_our_interface.exit:                          ; preds = %for.body.i.cxgb_our_interface.exit_crit_edge, %for.cond.i.cxgb_our_interface.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i24.le = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i24.le, label %cxgb_our_interface.exit.if.end12_crit_edge, label %cxgb_our_interface.exit.land.lhs.true_crit_edge

cxgb_our_interface.exit.land.lhs.true_crit_edge:  ; preds = %cxgb_our_interface.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cxgb_our_interface.exit.if.end12_crit_edge:       ; preds = %cxgb_our_interface.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true:                                    ; preds = %cxgb_our_interface.exit.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 8
  %and8 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #4
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #4, !srcloc !26
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !27

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #4
  br label %neigh_release.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @neigh_destroy(ptr noundef %call.i) #4
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  call void @dst_release(ptr noundef %call11.i) #4
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %cxgb_our_interface.exit.if.end12_crit_edge, %for.body.lr.ph.i.if.end12_crit_edge
  %refcnt.i25 = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i25, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !25
  call void @llvm.prefetch.p0(ptr %refcnt.i25, i32 1, i32 3, i32 1) #4
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i25, ptr %refcnt.i25, i32 1, ptr elementtype(i32) %refcnt.i25) #4, !srcloc !26
  %asmresult.i.i.i.i.i.i.i27 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i27)
  %cmp.i.i.i.i28 = icmp eq i32 %asmresult.i.i.i.i.i.i.i27, 1
  br i1 %cmp.i.i.i.i28, label %if.then.i32, label %if.end5.i.i.i.i30

if.end5.i.i.i.i30:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i27)
  %.not.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i27, 0
  br i1 %.not.i.i.i.i29, label %if.end5.i.i.i.i30.cleanup_crit_edge, label %if.then10.i.i.i.i31, !prof !27

if.end5.i.i.i.i30.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i.i.i.i31:                              ; preds = %if.end5.i.i.i.i30
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %refcnt.i25, i32 noundef 3) #4
  br label %cleanup

if.then.i32:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @neigh_destroy(ptr noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i32, %if.then10.i.i.i.i31, %if.end5.i.i.i.i30.cleanup_crit_edge, %neigh_release.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %neigh_release.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call11.i, %if.end5.i.i.i.i30.cleanup_crit_edge ], [ %call11.i, %if.then10.i.i.i.i31 ], [ %call11.i, %if.then.i32 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxgb_find_route6(ptr nocapture noundef readonly %lldi, ptr nocapture noundef readonly %get_real_dev, ptr nocapture noundef readonly %local_ip, ptr nocapture noundef readonly %peer_ip, i16 zeroext %local_port, i16 zeroext %peer_port, i8 zeroext %tos, i32 noundef %sin6_scope_id) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #4
  %0 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %daddr, ptr %peer_ip, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %saddr, ptr %local_ip, i32 16)
  %call.i = call i32 @__ipv6_addr_type(ptr noundef %daddr) #4
  %and = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sin6_scope_id, ptr %fl6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i17 = call ptr @ip6_route_output_flags(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #4
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i17, i32 0, i32 15
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call.i17, i32 0, i32 6
  %6 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt6i_idev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i18 = call ptr %get_real_dev(ptr noundef %9) #4
  %nports.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 11
  %10 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %nports.i, align 2
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp8.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp8.not.i, label %lor.lhs.false.land.lhs.true_crit_edge, label %for.body.lr.ph.i

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %ports.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 3
  %11 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp2.i22 = icmp eq ptr %14, %call.i18
  br i1 %cmp2.i22, label %for.body.lr.ph.i..critedge_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i..critedge_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.critedge

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.09.i23 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.09.i23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.cxgb_our_interface.exit_crit_edge, label %for.body.i

for.cond.i.cxgb_our_interface.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxgb_our_interface.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %inc.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %16, %call.i18
  br i1 %cmp2.i, label %for.body.i.cxgb_our_interface.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.body.i.cxgb_our_interface.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cxgb_our_interface.exit

cxgb_our_interface.exit:                          ; preds = %for.body.i.cxgb_our_interface.exit_crit_edge, %for.cond.i.cxgb_our_interface.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i.le = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i.le, label %cxgb_our_interface.exit..critedge_crit_edge, label %cxgb_our_interface.exit.land.lhs.true_crit_edge

cxgb_our_interface.exit.land.lhs.true_crit_edge:  ; preds = %cxgb_our_interface.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

cxgb_our_interface.exit..critedge_crit_edge:      ; preds = %cxgb_our_interface.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %.critedge

land.lhs.true:                                    ; preds = %cxgb_our_interface.exit.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %17 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rt6i_idev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and8 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true..critedge_crit_edge

land.lhs.true..critedge_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @dst_release(ptr noundef %call.i17) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #4
  br label %23

.critedge:                                        ; preds = %land.lhs.true..critedge_crit_edge, %cxgb_our_interface.exit..critedge_crit_edge, %for.body.lr.ph.i..critedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #4
  br label %23

23:                                               ; preds = %.critedge, %cleanup
  %24 = phi ptr [ %call.i17, %.critedge ], [ null, %cleanup ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxgb_get_4tuple.__UNIQUE_ID_ddebug725, !1, !"__UNIQUE_ID_ddebug725", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c", i32 65, i32 3}
!8 = !{ptr @cxgb_get_4tuple.__UNIQUE_ID_ddebug726, !7, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!9 = !{ptr @__ksymtab_cxgb_get_4tuple, !10, !"__ksymtab_cxgb_get_4tuple", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c", i32 75, i32 1}
!11 = !{ptr @__ksymtab_cxgb_find_route, !12, !"__ksymtab_cxgb_find_route", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c", i32 118, i32 1}
!13 = !{ptr @__ksymtab_cxgb_find_route6, !14, !"__ksymtab_cxgb_find_route6", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_cm.c", i32 148, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148850998, i64 2148851003, i64 2148851016, i64 2148851060, i64 2148851094, i64 2148851115}
!25 = !{i64 2148458714}
!26 = !{i64 2148373178, i64 2148373210, i64 2148373239, i64 2148373273, i64 2148373304, i64 2148373327}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2150540367}
