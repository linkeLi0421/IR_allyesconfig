; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_fragment.c_pt.bc'
source_filename = "../net/ipv4/ip_fragment.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_defrag\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_defrag\09\09\09\09"
module asm "\09.long\09__crc_ip_defrag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_defrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_check_defrag\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_check_defrag\09\09\09\09"
module asm "\09.long\09__crc_ip_check_defrag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_check_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_check_defrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_check_defrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.frag_v4_compare_key = type { i32, i32, i32, i32, i16, i16 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.139, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.139 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.ipq = type { %struct.inet_frag_queue, i8, i16, i32, i32, ptr }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i32, %union.anon.147, i32, %struct.refcount_struct }
%struct.rb_node = type { i32, ptr, ptr }
%struct.inetpeer_addr = type { %union.anon.146, i16 }
%union.anon.146 = type { %struct.in6_addr }
%union.anon.147 = type { %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.150, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.150 = type { %struct.in6_addr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ip_defrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_defrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_defrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_defrag to i32), ptr @__kstrtab_ip_defrag, ptr @__kstrtabns_ip_defrag }, section "___ksymtab+ip_defrag", align 4
@__kstrtab_ip_check_defrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_check_defrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_check_defrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_check_defrag to i32), ptr @__kstrtab_ip_check_defrag, ptr @__kstrtabns_ip_check_defrag }, section "___ksymtab+ip_check_defrag", align 4
@ip4_frags = internal global { %struct.inet_frags, [48 x i8] } zeroinitializer, align 32
@ip_frag_cache_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip4-frags\00", [22 x i8] zeroinitializer }, align 32
@ip4_rhash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 20, i16 4, i16 0, i32 0, i16 0, i8 1, ptr @ip4_key_hashfn, ptr @ip4_obj_hashfn, ptr @ip4_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IP: failed to allocate ip4_frags cache\0A\00", [56 x i8] zeroinitializer }, align 32
@ip4_frags_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_frags_init_net, ptr @ipv4_frags_pre_exit_net, ptr @ipv4_frags_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_frag_ecn_table = external dso_local local_unnamed_addr constant [16 x i8], align 1
@ip_frag_reasm.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ip_fragment\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ip_frag_reasm\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ipv4/ip_fragment.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"queue_glue: no memory for gluing queue %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"IPv4: queue_glue: no memory for gluing queue %p\0A\00", [47 x i8] zeroinitializer }, align 32
@ip_frag_reasm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IPv4: Oversized IP packet from %pI4\0A\00", [57 x i8] zeroinitializer }, align 32
@ip_frag_reasm._entry_ptr = internal global ptr @ip_frag_reasm._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv4\00", [23 x i8] zeroinitializer }, align 32
@ip4_frags_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr @ip4_frags_secret_interval_unused, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipfrag_secret_interval\00", [41 x i8] zeroinitializer }, align 32
@ip4_frags_secret_interval_unused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ip4_frags_ns_ctl_table = internal global { [5 x %struct.ctl_table], [44 x i8] } { [5 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.14, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @dist_min, ptr null }, %struct.ctl_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipfrag_high_thresh\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipfrag_low_thresh\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipfrag_time\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipfrag_max_dist\00", [16 x i8] zeroinitializer }, align 32
@dist_min = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"ip4_frags\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 76, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"ip_frag_cache_name\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 58, i32 19 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"ip4_rhash_params\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 730, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 749, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"ip4_frags_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 701, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1011, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 271, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 464, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 468, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 635, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"ip4_frags_ctl_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 580, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 582, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [33 x i8] c"ip4_frags_secret_interval_unused\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 579, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"ip4_frags_ns_ctl_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 549, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 551, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 557, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 563, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 569, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"dist_min\00", align 1
@___asan_gen_.97 = private constant [26 x i8] c"../net/ipv4/ip_fragment.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 547, i32 12 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_ip_check_defrag, ptr @__ksymtab_ip_defrag, ptr @ip_frag_reasm._entry, ptr @ip_frag_reasm._entry_ptr, ptr @ip4_frags, ptr @ip_frag_cache_name, ptr @ip4_rhash_params, ptr @.str, ptr @ip4_frags_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ip4_frags_ctl_table, ptr @.str.13, ptr @ip4_frags_secret_interval_unused, ptr @ip4_frags_ns_ctl_table, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @dist_min], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_frags to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_frag_cache_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_rhash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_frags_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_frag_reasm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_frags_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_frags_secret_interval_unused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip4_frags_ns_ctl_table to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dist_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_defrag(ptr nocapture noundef readonly %net, ptr noundef %skb, i32 noundef %user) #0 align 64 {
entry:
  %key.i = alloca %struct.frag_v4_compare_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.skb_dst.exit_crit_edge, label %land.lhs.true.i

cond.false.skb_dst.exit_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %cond.false
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !67

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %cond.false.skb_dst.exit_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and25.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  br label %cond.end

cond.end:                                         ; preds = %skb_dst.exit, %entry.cond.end_crit_edge
  %cond = phi ptr [ %10, %skb_dst.exit ], [ %2, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %cond) #15
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %11 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mib, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i62 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i62 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx7 = getelementptr [37 x i64], ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx7, align 8
  %add8 = add i64 %22, 1
  store i64 %add8, ptr %arrayidx7, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1, i32 0, i32 1
  %23 = tail call ptr @llvm.returnaddress(i32 0) #15
  %24 = ptrtoint ptr %23 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %25 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i63 = icmp eq ptr %28, null
  br i1 %tobool.not.i63, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %28(ptr noundef %skb) #15
  %29 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %destructor.i, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %30, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %cond.end
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool3.not.i64 = icmp eq ptr %34, null
  br i1 %tobool3.not.i64, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !69

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #15, !srcloc !70
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key.i) #15
  %39 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %key.i, i32 0, i32 1
  %40 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %key.i, i32 0, i32 2
  %41 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %key.i, i32 0, i32 3
  %42 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %key.i, i32 0, i32 4
  %43 = getelementptr inbounds %struct.frag_v4_compare_key, ptr %key.i, i32 0, i32 5
  %saddr1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr1.i, align 4
  %46 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %key.i, align 4
  %daddr2.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %daddr2.i, align 4
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %39, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %user, ptr %40, align 4
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call2, ptr %41, align 4
  %id5.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %id5.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %id5.i, align 4
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %42, align 4
  %protocol6.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %protocol6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %protocol6.i, align 1
  %conv.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %43, align 2
  %fqdir.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 24
  %58 = ptrtoint ptr %fqdir.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fqdir.i, align 4
  %call.i65 = call ptr @inet_frag_find(ptr noundef %59, ptr noundef nonnull %key.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i) #15
  %tobool16.not = icmp eq ptr %call.i65, null
  br i1 %tobool16.not, label %do.body20, label %if.then

if.then:                                          ; preds = %skb_orphan.exit
  %lock = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #15
  %fqdir.i66 = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 13
  %60 = ptrtoint ptr %fqdir.i66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fqdir.i66, align 4
  %net1.i = getelementptr inbounds %struct.fqdir, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %net1.i, align 4
  %flags3.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 11
  %64 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags3.i, align 8
  %66 = and i8 %65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i67 = icmp eq i8 %66, 0
  br i1 %tobool.not.i67, label %if.end.i, label %if.then.err216.i_crit_edge

if.then.err216.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %err216.i

if.end.i:                                         ; preds = %if.then
  %flags4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %67 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags4.i, align 4
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool7.not.i = icmp eq i16 %69, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i68, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true.i68:                                ; preds = %if.end.i
  %peer1.i.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 5
  %70 = ptrtoint ptr %peer1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %peer1.i.i, align 4
  %max_dist.i.i = getelementptr inbounds %struct.fqdir, ptr %61, i32 0, i32 3
  %72 = ptrtoint ptr %max_dist.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_dist.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %71, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool2.not.i.i = icmp eq i32 %73, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i68.if.end21.i_crit_edge, label %if.end.i.i

land.lhs.true.i68.if.end21.i_crit_edge:           ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.end.i.i:                                       ; preds = %land.lhs.true.i68
  %rid.i.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 4
  %74 = ptrtoint ptr %rid.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rid.i.i, align 8
  %76 = getelementptr inbounds %struct.inet_peer, ptr %71, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %76, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !71
  call void @llvm.prefetch.p0(ptr %76, i32 1, i32 3, i32 1) #15
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #15, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !73
  %78 = ptrtoint ptr %rid.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %asmresult.i.i.i.i.i.i, ptr %rid.i.i, align 8
  %fragments_tail.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 6
  %79 = ptrtoint ptr %fragments_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fragments_tail.i.i, align 4
  %tobool6.not.i.i = icmp ne ptr %80, null
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i.i, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %73)
  %cmp.i.i = icmp ugt i32 %sub.i.i, %73
  %81 = select i1 %tobool6.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %81, label %land.lhs.true11.i, label %if.end.i.i.if.end21.i_crit_edge

if.end.i.i.if.end21.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true11.i:                                ; preds = %if.end.i.i
  call fastcc void @local_bh_disable() #15
  %82 = ptrtoint ptr %fqdir.i66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fqdir.i66, align 4
  %net.i.i = getelementptr inbounds %struct.fqdir, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net.i.i, align 4
  %mib.i.i = getelementptr inbounds %struct.net, ptr %85, i32 0, i32 30
  %86 = ptrtoint ptr %mib.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mib.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %92
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %94, %88
  %95 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %95, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i.i) #15
  %arrayidx15.i.i = getelementptr [37 x i64], ptr %95, i32 0, i32 19
  %96 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx15.i.i, align 8
  %add16.i.i = add i64 %97, 1
  store i64 %add16.i.i, ptr %arrayidx15.i.i, align 8
  %dep_map.i.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %95, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %24) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %98 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %99, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  call fastcc void @local_bh_enable() #15
  %timer.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %101 = ptrtoint ptr %fqdir.i66 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fqdir.i66, align 4
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %timeout.i, align 8
  %add.i73 = add i32 %104, %100
  %call.i74 = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i73) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.then.i77, label %ip_frag_reinit.exit

if.then.i77:                                      ; preds = %land.lhs.true11.i
  %refcnt.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %105 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !74
  %asmresult.i.i.i.i.i.i76 = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i76)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i76, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !67

if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i77
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i76, 1
  %106 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %.not.i.i.i.i = icmp sgt i32 %106, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then20.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then20.i_crit_edge:            ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i77.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %if.then20.i

ip_frag_reinit.exit:                              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #17
  %rb_fragments.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 5
  %call4.i = call i32 @inet_frag_rbtree_purge(ptr noundef %rb_fragments.i) #15
  %107 = ptrtoint ptr %fqdir.i66 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fqdir.i66, align 4
  %mem.i.i78 = getelementptr inbounds %struct.fqdir, ptr %108, i32 0, i32 10
  %call.i.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef %mem.i.i78, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %mem.i.i78, i32 1, i32 3, i32 1) #15
  %109 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i.i78, ptr %mem.i.i78, i32 %call4.i, ptr elementtype(i32) %mem.i.i78) #15, !srcloc !75
  %110 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %flags3.i, align 8
  %len.i80 = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 9
  %111 = ptrtoint ptr %len.i80 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %len.i80, align 8
  %meat.i81 = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 10
  %112 = ptrtoint ptr %meat.i81 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %meat.i81, align 4
  %113 = ptrtoint ptr %rb_fragments.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %rb_fragments.i, align 8
  %114 = ptrtoint ptr %fragments_tail.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %fragments_tail.i.i, align 4
  %last_run_head.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 7
  %115 = ptrtoint ptr %last_run_head.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %last_run_head.i, align 8
  %iif.i83 = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 3
  %116 = ptrtoint ptr %iif.i83 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %iif.i83, align 4
  %ecn.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 1
  %117 = ptrtoint ptr %ecn.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %ecn.i, align 8
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then20.i_crit_edge
  call void @inet_frag_kill(ptr noundef nonnull %call.i65) #15
  br label %err216.i

if.end21.i:                                       ; preds = %ip_frag_reinit.exit, %if.end.i.i.if.end21.i_crit_edge, %land.lhs.true.i68.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %118 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i, align 8
  %120 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %121 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %119, i32 %conv.i.i.i
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tos.i, align 1
  %124 = and i8 %123, 3
  %shl.i.i = shl nuw nsw i8 1, %124
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %125 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %frag_off.i, align 2
  %conv25.i = zext i16 %126 to i32
  %and27.i = shl nuw nsw i32 %conv25.i, 3
  %shl.i = and i32 %and27.i, 65528
  %127 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %128 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %128 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %129 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %131 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %132 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %130, %sub.ptr.lhs.cast.i.i
  %.neg.i = add i32 %sub.ptr.sub.i.neg.i, %shl.i
  %add.i = add i32 %.neg.i, %sub.ptr.rhs.cast.i.i
  %sub30.i = sub i32 %add.i, %mul.i.i
  %and31.i = and i32 %conv25.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp.i = icmp eq i32 %and31.i, 0
  br i1 %cmp.i, label %if.then33.i, label %if.else.i

if.then33.i:                                      ; preds = %if.end21.i
  %len35.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 9
  %133 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len35.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30.i, i32 %134)
  %cmp36.i = icmp slt i32 %sub30.i, %134
  br i1 %cmp36.i, label %if.then33.i.discard_qp.i_crit_edge, label %lor.lhs.false.i

if.then33.i.discard_qp.i_crit_edge:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

lor.lhs.false.i:                                  ; preds = %if.then33.i
  %135 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %flags3.i, align 8
  %137 = and i8 %136, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool42.not.i = icmp eq i8 %137, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30.i, i32 %134)
  %cmp46.not.i = icmp eq i32 %sub30.i, %134
  %or.cond.i = select i1 %tobool42.not.i, i1 true, i1 %cmp46.not.i
  br i1 %or.cond.i, label %if.end49.i, label %lor.lhs.false.i.discard_qp.i_crit_edge

lor.lhs.false.i.discard_qp.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

if.end49.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %138 = or i8 %136, 2
  %139 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %flags3.i, align 8
  %140 = ptrtoint ptr %len35.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub30.i, ptr %len35.i, align 8
  br label %if.end84.i

if.else.i:                                        ; preds = %if.end21.i
  %and56.i = and i32 %sub30.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.else.i.if.end68.i_crit_edge, label %if.then58.i

if.else.i.if.end68.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68.i

if.then58.i:                                      ; preds = %if.else.i
  %and59.i = and i32 %sub30.i, -8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %141 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %142 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %142)
  %cmp61.not.i = icmp eq i16 %142, 512
  br i1 %cmp61.not.i, label %if.then58.i.if.end68.i_crit_edge, label %if.then63.i

if.then58.i.if.end68.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68.i

if.then63.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear66.i = and i16 %bf.load.i, -1537
  %143 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %bf.clear66.i, ptr %ip_summed.i, align 8
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then63.i, %if.then58.i.if.end68.i_crit_edge, %if.else.i.if.end68.i_crit_edge
  %end.0.i = phi i32 [ %and59.i, %if.then63.i ], [ %and59.i, %if.then58.i.if.end68.i_crit_edge ], [ %sub30.i, %if.else.i.if.end68.i_crit_edge ]
  %len70.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 9
  %144 = ptrtoint ptr %len70.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len70.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0.i, i32 %145)
  %cmp71.i = icmp sgt i32 %end.0.i, %145
  br i1 %cmp71.i, label %if.then73.i, label %if.end68.i.if.end84.i_crit_edge

if.end68.i.if.end84.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84.i

if.then73.i:                                      ; preds = %if.end68.i
  %146 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %flags3.i, align 8
  %148 = and i8 %147, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool78.not.i = icmp eq i8 %148, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.then73.i.discard_qp.i_crit_edge

if.then73.i.discard_qp.i_crit_edge:               ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

if.end80.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  %149 = ptrtoint ptr %len70.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %end.0.i, ptr %len70.i, align 8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end80.i, %if.end68.i.if.end84.i_crit_edge, %if.end49.i
  %end.1.i = phi i32 [ %sub30.i, %if.end49.i ], [ %end.0.i, %if.end80.i ], [ %end.0.i, %if.end68.i.if.end84.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end.1.i, i32 %shl.i)
  %cmp85.i = icmp eq i32 %end.1.i, %shl.i
  br i1 %cmp85.i, label %if.end84.i.discard_qp.i_crit_edge, label %if.end88.i

if.end84.i.discard_qp.i_crit_edge:                ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

if.end88.i:                                       ; preds = %if.end84.i
  %150 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %head.i.i, align 8
  %152 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i325.i = zext i16 %153 to i32
  %add.ptr.i.i326.i = getelementptr i8, ptr %151, i32 %conv.i.i325.i
  %154 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i328.i = ptrtoint ptr %add.ptr.i.i326.i to i32
  %sub.ptr.rhs.cast.i329.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub.i330.i = sub i32 %sub.ptr.lhs.cast.i328.i, %sub.ptr.rhs.cast.i329.i
  %add90.i = add i32 %sub.ptr.sub.i330.i, %mul.i.i
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %add90.i)
  %cmp.i331.i = icmp ult i32 %157, %add90.i
  br i1 %cmp.i331.i, label %if.end88.i.discard_qp.i_crit_edge, label %cond.false.i.i, !prof !67

if.end88.i.discard_qp.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

cond.false.i.i:                                   ; preds = %if.end88.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %158 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %157, %159
  call void @__sanitizer_cov_trace_cmp4(i32 %add90.i, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add90.i, %sub.i.i.i.i
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %cond.false.i.i.pskb_pull.exit.i_crit_edge

cond.false.i.i.pskb_pull.exit.i_crit_edge:        ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i
  %sub.i.i.i = sub i32 %add90.i, %sub.i.i.i.i
  %call2.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #15
  %tobool.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.discard_qp.i_crit_edge, label %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge

land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pskb_pull.exit.i

land.lhs.true.i.i.i.discard_qp.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

pskb_pull.exit.i:                                 ; preds = %land.lhs.true.i.i.i.pskb_pull.exit.i_crit_edge, %cond.false.i.i.pskb_pull.exit.i_crit_edge
  %160 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len.i, align 4
  %sub4.i.i.i = sub i32 %161, %add90.i
  store i32 %sub4.i.i.i, ptr %len.i, align 4
  %162 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i332.i = getelementptr i8, ptr %163, i32 %add90.i
  store ptr %add.ptr.i.i332.i, ptr %data.i.i, align 4
  %tobool92.not.i = icmp eq ptr %add.ptr.i.i332.i, null
  br i1 %tobool92.not.i, label %pskb_pull.exit.i.discard_qp.i_crit_edge, label %if.end94.i

pskb_pull.exit.i.discard_qp.i_crit_edge:          ; preds = %pskb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

if.end94.i:                                       ; preds = %pskb_pull.exit.i
  %sub95.i = sub i32 %end.1.i, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4.i.i.i, i32 %sub95.i)
  %cmp.not.i.i = icmp ugt i32 %sub4.i.i.i, %sub95.i
  br i1 %cmp.not.i.i, label %pskb_trim_rcsum.exit.i, label %if.end94.i.if.end99.i_crit_edge, !prof !67

if.end94.i.if.end99.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99.i

pskb_trim_rcsum.exit.i:                           ; preds = %if.end94.i
  %call.i.i = call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub95.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool97.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool97.not.i, label %pskb_trim_rcsum.exit.i.if.end99.i_crit_edge, label %pskb_trim_rcsum.exit.i.discard_qp.i_crit_edge

pskb_trim_rcsum.exit.i.discard_qp.i_crit_edge:    ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %discard_qp.i

pskb_trim_rcsum.exit.i.if.end99.i_crit_edge:      ; preds = %pskb_trim_rcsum.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99.i

if.end99.i:                                       ; preds = %pskb_trim_rcsum.exit.i.if.end99.i_crit_edge, %if.end94.i.if.end99.i_crit_edge
  %164 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %0, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  %fragments_tail.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 6
  %166 = ptrtoint ptr %fragments_tail.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %fragments_tail.i, align 4
  %call102.i = call i32 @inet_frag_queue_insert(ptr noundef nonnull %call.i65, ptr noundef %skb, i32 noundef %shl.i, i32 noundef %end.1.i) #15
  %168 = zext i32 %call102.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call102.i, label %if.end177.i [
    i32 0, label %if.end105.i
    i32 1, label %if.then176.i
  ]

if.end105.i:                                      ; preds = %if.end99.i
  %tobool106.not.i = icmp eq ptr %165, null
  br i1 %tobool106.not.i, label %if.end105.i.if.end108.i_crit_edge, label %if.then107.i

if.end105.i.if.end108.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i

if.then107.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %165, i32 0, i32 17
  %169 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ifindex.i, align 4
  %iif.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 3
  %171 = ptrtoint ptr %iif.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %iif.i, align 4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then107.i, %if.end105.i.if.end108.i_crit_edge
  %172 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %172, align 8
  %stamp.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 8
  %175 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %stamp.i, align 8
  %176 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len.i, align 4
  %meat.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 10
  %178 = ptrtoint ptr %meat.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %meat.i, align 4
  %add112.i = add i32 %179, %177
  store i32 %add112.i, ptr %meat.i, align 4
  %ecn114.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 1
  %180 = ptrtoint ptr %ecn114.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %ecn114.i, align 8
  %or116314.i = or i8 %181, %shl.i.i
  store i8 %or116314.i, ptr %ecn114.i, align 8
  %182 = ptrtoint ptr %fqdir.i66 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fqdir.i66, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %184 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %truesize.i, align 8
  %mem.i.i = getelementptr inbounds %struct.fqdir, ptr %183, i32 0, i32 10
  %call.i.i.i336.i = call zeroext i1 @__kasan_check_write(ptr noundef %mem.i.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %mem.i.i, i32 1, i32 3, i32 1) #15
  %186 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i.i, ptr %mem.i.i, i32 %185, ptr elementtype(i32) %mem.i.i) #15, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp120.i = icmp eq i32 %shl.i, 0
  br i1 %cmp120.i, label %if.then122.i, label %if.end108.i.if.end128.i_crit_edge

if.end108.i.if.end128.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  %187 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %flags3.i, align 8
  %189 = or i8 %188, 1
  store i8 %189, ptr %flags3.i, align 8
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then122.i, %if.end108.i.if.end128.i_crit_edge
  %190 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %len.i, align 4
  %add130.i = add i32 %191, %mul.i.i
  %max_size.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 12
  %192 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %max_size.i, align 2
  %conv132.i = zext i16 %193 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add130.i, i32 %conv132.i)
  %cmp133.i = icmp ugt i32 %add130.i, %conv132.i
  br i1 %cmp133.i, label %if.then135.i, label %if.end128.i.if.end139.i_crit_edge

if.end128.i.if.end139.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139.i

if.then135.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv136.i = trunc i32 %add130.i to i16
  %194 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv136.i, ptr %max_size.i, align 2
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then135.i, %if.end128.i.if.end139.i_crit_edge
  %195 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %head.i.i, align 8
  %197 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i339.i = zext i16 %198 to i32
  %add.ptr.i.i340.i = getelementptr i8, ptr %196, i32 %conv.i.i339.i
  %frag_off141.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i340.i, i32 0, i32 4
  %199 = ptrtoint ptr %frag_off141.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %frag_off141.i, align 2
  %201 = and i16 %200, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %tobool144.not.i = icmp eq i16 %201, 0
  br i1 %tobool144.not.i, label %if.end139.i.if.end152.i_crit_edge, label %land.lhs.true145.i

if.end139.i.if.end152.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152.i

land.lhs.true145.i:                               ; preds = %if.end139.i
  %max_df_size.i = getelementptr inbounds %struct.ipq, ptr %call.i65, i32 0, i32 2
  %202 = ptrtoint ptr %max_df_size.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %max_df_size.i, align 2
  %conv146.i = zext i16 %203 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add130.i, i32 %conv146.i)
  %cmp147.i = icmp ugt i32 %add130.i, %conv146.i
  br i1 %cmp147.i, label %if.then149.i, label %land.lhs.true145.i.if.end152.i_crit_edge

land.lhs.true145.i.if.end152.i_crit_edge:         ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152.i

if.then149.i:                                     ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv150.i = trunc i32 %add130.i to i16
  %204 = ptrtoint ptr %max_df_size.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv150.i, ptr %max_df_size.i, align 2
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then149.i, %land.lhs.true145.i.if.end152.i_crit_edge, %if.end139.i.if.end152.i_crit_edge
  %205 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %flags3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %206)
  %cmp156.i = icmp eq i8 %206, 3
  br i1 %cmp156.i, label %land.lhs.true158.i, label %if.end152.i.if.end173.i_crit_edge

if.end152.i.if.end173.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173.i

land.lhs.true158.i:                               ; preds = %if.end152.i
  %207 = ptrtoint ptr %meat.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %meat.i, align 4
  %len162.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 9
  %209 = ptrtoint ptr %len162.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %len162.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp163.i = icmp eq i32 %208, %210
  br i1 %cmp163.i, label %if.then165.i, label %land.lhs.true158.i.if.end173.i_crit_edge

land.lhs.true158.i.if.end173.i_crit_edge:         ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end173.i

if.then165.i:                                     ; preds = %land.lhs.true158.i
  %211 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 8
  store i32 0, ptr %211, align 8
  %call167.i = call fastcc i32 @ip_frag_reasm(ptr noundef nonnull %call.i65, ptr noundef %skb, ptr noundef %167, ptr noundef %165) #15
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %tobool169.not.i = icmp eq i32 %call167.i, 0
  br i1 %tobool169.not.i, label %if.then165.i.ip_frag_queue.exit_crit_edge, label %if.then170.i

if.then165.i.ip_frag_queue.exit_crit_edge:        ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_frag_queue.exit

if.then170.i:                                     ; preds = %if.then165.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @inet_frag_kill(ptr noundef nonnull %call.i65) #15
  br label %ip_frag_queue.exit

if.end173.i:                                      ; preds = %land.lhs.true158.i.if.end173.i_crit_edge, %if.end152.i.if.end173.i_crit_edge
  %215 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i341.i = icmp eq i32 %217, 0
  br i1 %tobool.not.i341.i, label %if.end173.i.ip_frag_queue.exit_crit_edge, label %if.then.i.i

if.end173.i.ip_frag_queue.exit_crit_edge:         ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_frag_queue.exit

if.then.i.i:                                      ; preds = %if.end173.i
  %and.i.i342.i = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i342.i)
  %tobool.not.i.i343.i = icmp eq i32 %and.i.i342.i, 0
  br i1 %tobool.not.i.i343.i, label %if.then.i.i.i, label %if.then.i.i.refdst_drop.exit.i.i_crit_edge

if.then.i.i.refdst_drop.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and1.i.i.i = and i32 %217, -2
  %218 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %218) #15
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i.refdst_drop.exit.i.i_crit_edge
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %215, align 8
  br label %ip_frag_queue.exit

if.then176.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %ip_frag_queue.exit

if.end177.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @local_bh_disable() #15
  %mib.i = getelementptr inbounds %struct.net, ptr %63, i32 0, i32 30
  %220 = ptrtoint ptr %mib.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mib.i, align 4
  %222 = ptrtoint ptr %221 to i32
  %223 = call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i = and i32 %223, -16384
  %224 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %226
  %227 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx.i, align 4
  %add182.i = add i32 %228, %222
  %229 = inttoptr i32 %add182.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %229, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #15
  %arrayidx183.i = getelementptr [37 x i64], ptr %229, i32 0, i32 36
  %230 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %arrayidx183.i, align 8
  %add184.i = add i64 %231, 1
  store i64 %add184.i, ptr %arrayidx183.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %229, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %24) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %232 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %233, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  call fastcc void @local_bh_enable() #15
  br label %discard_qp.i

discard_qp.i:                                     ; preds = %if.end177.i, %pskb_trim_rcsum.exit.i.discard_qp.i_crit_edge, %pskb_pull.exit.i.discard_qp.i_crit_edge, %land.lhs.true.i.i.i.discard_qp.i_crit_edge, %if.end88.i.discard_qp.i_crit_edge, %if.end84.i.discard_qp.i_crit_edge, %if.then73.i.discard_qp.i_crit_edge, %lor.lhs.false.i.discard_qp.i_crit_edge, %if.then33.i.discard_qp.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.then33.i.discard_qp.i_crit_edge ], [ -22, %if.end84.i.discard_qp.i_crit_edge ], [ %call.i.i, %pskb_trim_rcsum.exit.i.discard_qp.i_crit_edge ], [ -22, %if.end177.i ], [ -12, %pskb_pull.exit.i.discard_qp.i_crit_edge ], [ -22, %if.then73.i.discard_qp.i_crit_edge ], [ -22, %lor.lhs.false.i.discard_qp.i_crit_edge ], [ -12, %if.end88.i.discard_qp.i_crit_edge ], [ -12, %land.lhs.true.i.i.i.discard_qp.i_crit_edge ]
  call void @inet_frag_kill(ptr noundef nonnull %call.i65) #15
  call fastcc void @local_bh_disable() #15
  %mib200.i = getelementptr inbounds %struct.net, ptr %63, i32 0, i32 30
  %234 = ptrtoint ptr %mib200.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mib200.i, align 4
  %236 = ptrtoint ptr %235 to i32
  %237 = call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i345.i = and i32 %237, -16384
  %238 = inttoptr i32 %and.i345.i to ptr
  %cpu204.i = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 3
  %239 = ptrtoint ptr %cpu204.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cpu204.i, align 4
  %arrayidx205.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %240
  %241 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx205.i, align 4
  %add206.i = add i32 %242, %236
  %243 = inttoptr i32 %add206.i to ptr
  %syncp207.i = getelementptr inbounds %struct.ipstats_mib, ptr %243, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp207.i) #15
  %arrayidx209.i = getelementptr [37 x i64], ptr %243, i32 0, i32 19
  %244 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %arrayidx209.i, align 8
  %add210.i = add i64 %245, 1
  store i64 %add210.i, ptr %arrayidx209.i, align 8
  %dep_map.i.i346.i = getelementptr inbounds %struct.ipstats_mib, ptr %243, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i346.i, i32 noundef %24) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %246 = ptrtoint ptr %syncp207.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %syncp207.i, align 4
  %inc.i.i.i347.i = add i32 %247, 1
  store i32 %inc.i.i.i347.i, ptr %syncp207.i, align 4
  call fastcc void @local_bh_enable() #15
  br label %err216.i

err216.i:                                         ; preds = %discard_qp.i, %if.then20.i, %if.then.err216.i_crit_edge
  %err.1.i = phi i32 [ -2, %if.then.err216.i_crit_edge ], [ %err.0.i, %discard_qp.i ], [ -110, %if.then20.i ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %ip_frag_queue.exit

ip_frag_queue.exit:                               ; preds = %err216.i, %if.then176.i, %refdst_drop.exit.i.i, %if.end173.i.ip_frag_queue.exit_crit_edge, %if.then170.i, %if.then165.i.ip_frag_queue.exit_crit_edge
  %retval.0.i = phi i32 [ %err.1.i, %err216.i ], [ -22, %if.then176.i ], [ %call167.i, %if.then170.i ], [ 0, %if.then165.i.ip_frag_queue.exit_crit_edge ], [ -115, %if.end173.i.ip_frag_queue.exit_crit_edge ], [ -115, %refdst_drop.exit.i.i ]
  call void @_raw_spin_unlock(ptr noundef %lock) #15
  %refcnt.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i65, i32 0, i32 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #15
  %248 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #15, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %248, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i69, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %ip_frag_queue.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #15
  br label %cleanup

if.then.i.i69:                                    ; preds = %ip_frag_queue.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  call void @inet_frag_destroy(ptr noundef nonnull %call.i65) #15
  br label %cleanup

do.body20:                                        ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @local_bh_disable()
  %249 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mib, align 4
  %251 = ptrtoint ptr %250 to i32
  %252 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %cpu, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %253
  %254 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %255, %251
  %256 = inttoptr i32 %add35 to ptr
  %syncp36 = getelementptr inbounds %struct.ipstats_mib, ptr %256, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp36)
  %arrayidx38 = getelementptr [37 x i64], ptr %256, i32 0, i32 19
  %257 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %arrayidx38, align 8
  %add39 = add i64 %258, 1
  store i64 %add39, ptr %arrayidx38, align 8
  %dep_map.i.i70 = getelementptr inbounds %struct.ipstats_mib, ptr %256, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i70, i32 noundef %24) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %259 = ptrtoint ptr %syncp36 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %syncp36, align 4
  %inc.i.i.i71 = add i32 %260, 1
  store i32 %inc.i.i.i71, ptr %syncp36, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %if.then.i.i69, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.body20 ], [ %retval.0.i, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i, %if.then10.i.i.i.i.i ], [ %retval.0.i, %if.then.i.i69 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !81
  %5 = tail call i32 @llvm.read_register.i32(metadata !57) #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !82
  %14 = tail call i32 @llvm.read_register.i32(metadata !57) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !57) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !83
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !84
  %33 = tail call i32 @llvm.read_register.i32(metadata !57) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !69

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #15
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_check_defrag(ptr nocapture noundef readonly %net, ptr noundef %skb, i32 noundef %user) #0 align 64 {
entry:
  %iph = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iph) #15
  %0 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 2
  %1 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = call ptr @memset(ptr %iph, i32 255, i32 20)
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.not = icmp eq i16 %4, 2048
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call2 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %iph, i32 noundef 20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %iph, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp8 = icmp ugt i8 %bf.clear, 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp12.not = icmp eq i8 %bf.lshr.mask, 64
  %or.cond = and i1 %cmp8, %cmp12.not
  br i1 %or.cond, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 2
  %conv16 = zext i16 %13 to i32
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len17, align 4
  %add = add i32 %sub.ptr.sub.i, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp18 = icmp ult i32 %15, %add
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %lor.lhs.false20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end15
  %16 = shl nuw nsw i8 %bf.clear, 2
  %17 = zext i8 %16 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp24 = icmp ult i16 %13, %17
  br i1 %cmp24, label %lor.lhs.false20.cleanup_crit_edge, label %if.end27

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false20
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 2
  %20 = and i16 %19, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.not = icmp eq i16 %20, 0
  br i1 %cmp.i.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %call30 = call fastcc ptr @skb_share_check(ptr noundef %skb)
  %tobool.not = icmp eq ptr %call30, null
  br i1 %tobool.not, label %if.then29.cleanup_crit_edge, label %if.then31

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then31:                                        ; preds = %if.then29
  %21 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load32 = load i8, ptr %iph, align 4
  %bf.clear33 = shl i8 %bf.load32, 2
  %22 = and i8 %bf.clear33, 60
  %mul35 = zext i8 %22 to i32
  %add36 = add i32 %sub.ptr.sub.i, %mul35
  %call37 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef nonnull %call30, i32 noundef %add36)
  br i1 %call37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef nonnull %call30, i32 noundef 0) #15
  br label %cleanup

if.end39:                                         ; preds = %if.then31
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 6
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp.not.i = icmp ugt i32 %24, %add
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end39.if.end44_crit_edge, !prof !67

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

pskb_trim_rcsum.exit:                             ; preds = %if.end39
  %call.i = call i32 @pskb_trim_rcsum_slow(ptr noundef nonnull %call30, i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %pskb_trim_rcsum.exit.if.end44_crit_edge, label %if.then43

pskb_trim_rcsum.exit.if.end44_crit_edge:          ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then43:                                        ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree_skb_reason(ptr noundef nonnull %call30, i32 noundef 0) #15
  br label %cleanup

if.end44:                                         ; preds = %pskb_trim_rcsum.exit.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 3
  %25 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %call45 = call i32 @ip_defrag(ptr noundef %net, ptr noundef nonnull %call30, i32 noundef %user)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15, i32 0, i32 8
  %26 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %hash.i, align 4
  %sw_hash.i = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 15
  %27 = ptrtoint ptr %sw_hash.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %sw_hash.i, align 8
  %bf.clear2.i = and i16 %bf.load.i, -193
  store i16 %bf.clear2.i, ptr %sw_hash.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %if.then43, %if.then38, %if.then29.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then43 ], [ null, %if.then38 ], [ %skb, %entry.cleanup_crit_edge ], [ %skb, %if.end.cleanup_crit_edge ], [ %skb, %if.end6.cleanup_crit_edge ], [ %skb, %lor.lhs.false20.cleanup_crit_edge ], [ %skb, %if.end15.cleanup_crit_edge ], [ null, %if.end44.cleanup_crit_edge ], [ %call30, %if.end48 ], [ null, %if.then29.cleanup_crit_edge ], [ %skb, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iph) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_share_check(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #15
  %0 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %entry.if.end13_crit_edge, label %if.then6

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then6:                                         ; preds = %entry
  %call7 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #15
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then11, !prof !67

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef %skb) #15
  br label %if.end13

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %entry.if.end13_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.if.end13_crit_edge ], [ null, %if.else ], [ %call7, %if.then11 ]
  ret ptr %skb.addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !67

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !67

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #15
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ipfrag_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @ip4_frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 1), align 4
  store ptr @ip4_frag_free, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 2), align 4
  store i32 208, ptr @ip4_frags, align 4
  store ptr @ip_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 3), align 4
  store ptr @ip_frag_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 5), align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.inet_frags, ptr @ip4_frags, i32 0, i32 6), ptr @ip4_rhash_params, i32 28)
  %call = tail call i32 @inet_frags_init(ptr noundef nonnull @ip4_frags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #18
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.12, ptr noundef nonnull @ip4_frags_ctl_table) #15
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip4_frags_ops) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip4_frag_init(ptr nocapture noundef %q, ptr nocapture noundef readonly %a) #0 align 64 {
entry:
  %daddr.i = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net1 = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %key2 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %key2, ptr %a, i32 20)
  %ecn = getelementptr inbounds %struct.ipq, ptr %q, i32 0, i32 1
  %5 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ecn, align 8
  %max_dist = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %max_dist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_dist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %peers = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 35, i32 22
  %8 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peers, align 4
  %10 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %a, align 4
  %vif = getelementptr inbounds %struct.frag_v4_compare_key, ptr %a, i32 0, i32 3
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vif, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i) #15
  %14 = getelementptr inbounds i8, ptr %daddr.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 255, i32 12)
  %16 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %daddr.i, align 4
  %vif1.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr.i, i32 0, i32 1
  %17 = ptrtoint ptr %vif1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %vif1.i, align 4
  %family.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr.i, i32 0, i32 1
  %18 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %family.i, align 4
  %call.i = call ptr @inet_getpeer(ptr noundef %9, ptr noundef nonnull %daddr.i, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call.i, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %peer = getelementptr inbounds %struct.ipq, ptr %q, i32 0, i32 5
  %19 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond, ptr %peer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip4_frag_free(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %peer = getelementptr inbounds %struct.ipq, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @inet_putpeer(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %fqdir = getelementptr i8, ptr %t, i32 132
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net4 = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net4, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !86
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fqdir, align 4
  %dead = getelementptr inbounds %struct.fqdir, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %dead, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %rcu_read_lock.exit.out_rcu_unlock_crit_edge

rcu_read_lock.exit.out_rcu_unlock_crit_edge:      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rcu_unlock

if.end:                                           ; preds = %rcu_read_lock.exit
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %flags = getelementptr i8, ptr %t, i32 128
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 8
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end13:                                         ; preds = %if.end
  tail call void @inet_frag_kill(ptr noundef %add.ptr) #15
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30
  %15 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mib, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx21 = getelementptr [37 x i64], ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx21, align 8
  %add22 = add i64 %26, 1
  store i64 %add22, ptr %arrayidx21, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1, i32 0, i32 1
  %27 = tail call ptr @llvm.returnaddress(i32 0) #15
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %29 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call fastcc void @local_bh_disable()
  %31 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mib, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %37, %33
  %38 = inttoptr i32 %add43 to ptr
  %syncp44 = getelementptr inbounds %struct.ipstats_mib, ptr %38, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp44)
  %arrayidx46 = getelementptr [37 x i64], ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx46, align 8
  %add47 = add i64 %40, 1
  store i64 %add47, ptr %arrayidx46, align 8
  %dep_map.i.i113 = getelementptr inbounds %struct.ipstats_mib, ptr %38, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i113, i32 noundef %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %41 = ptrtoint ptr %syncp44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %syncp44, align 4
  %inc.i.i.i114 = add i32 %42, 1
  store i32 %inc.i.i.i114, ptr %syncp44, align 4
  tail call fastcc void @local_bh_enable()
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags, align 8
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not = icmp eq i8 %45, 0
  br i1 %tobool57.not, label %if.end13.out_crit_edge, label %if.end59

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end59:                                         ; preds = %if.end13
  %call61 = tail call ptr @inet_frag_pull_head(ptr noundef %add.ptr) #15
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end59.out_crit_edge, label %if.end64

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end64:                                         ; preds = %if.end59
  %iif = getelementptr i8, ptr %t, i32 148
  %46 = ptrtoint ptr %iif to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iif, align 4
  %call65 = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %47) #15
  %48 = getelementptr inbounds %struct.anon.83, ptr %call61, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call65, ptr %48, align 8
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.out_crit_edge, label %if.end68

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end68:                                         ; preds = %if.end64
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 18
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %saddr, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tos, align 1
  %call70 = tail call i32 @ip_route_input_noref(ptr noundef nonnull %call61, i32 noundef %55, i32 noundef %57, i8 noundef zeroext %59, ptr noundef nonnull %call65) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end73:                                         ; preds = %if.end68
  %user = getelementptr i8, ptr %t, i32 -36
  %60 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %user, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196613, i32 %61)
  %cmp.i = icmp eq i32 %61, 196613
  %62 = and i32 %61, -131073
  %63 = add i32 %62, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %63)
  %64 = icmp ult i32 %63, 65536
  %65 = or i1 %cmp.i, %64
  br i1 %65, label %land.lhs.true, label %if.end73.if.end81_crit_edge

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end73
  %call77 = tail call fastcc ptr @skb_rtable(ptr noundef nonnull %call61)
  %rt_type = getelementptr inbounds %struct.rtable, ptr %call77, i32 0, i32 3
  %66 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %67)
  %cmp.not = icmp eq i16 %67, 2
  br i1 %cmp.not, label %land.lhs.true.if.end81_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true.if.end81_crit_edge, %if.end73.if.end81_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %call61, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef nonnull %call61, i32 noundef 11, i32 noundef 1, i32 noundef 0, ptr noundef %opt.i) #15
  br label %out_rcu_unlock

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.end68.out_crit_edge, %if.end64.out_crit_edge, %if.end59.out_crit_edge, %if.end13.out_crit_edge, %if.end.out_crit_edge
  %head.0 = phi ptr [ null, %if.end.out_crit_edge ], [ %call61, %if.end68.out_crit_edge ], [ %call61, %land.lhs.true.out_crit_edge ], [ %call61, %if.end64.out_crit_edge ], [ null, %if.end59.out_crit_edge ], [ null, %if.end13.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %out_rcu_unlock

out_rcu_unlock:                                   ; preds = %out, %if.end81, %rcu_read_lock.exit.out_rcu_unlock_crit_edge
  %head.1 = phi ptr [ null, %rcu_read_lock.exit.out_rcu_unlock_crit_edge ], [ %head.0, %out ], [ %call61, %if.end81 ]
  %call.i115 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i115, label %out_rcu_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i118

out_rcu_unlock.rcu_read_unlock.exit_crit_edge:    ; preds = %out_rcu_unlock
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i118:                               ; preds = %out_rcu_unlock
  %call1.i116 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116)
  %tobool.not.i117 = icmp eq i32 %call1.i116, 0
  br i1 %tobool.not.i117, label %land.lhs.true.i118.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i120

land.lhs.true.i118.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i118
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i120:                              ; preds = %land.lhs.true.i118
  %.b4.i119 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i119, label %land.lhs.true2.i120.rcu_read_unlock.exit_crit_edge, label %if.then.i121

land.lhs.true2.i120.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i121:                                     ; preds = %land.lhs.true2.i120
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i121, %land.lhs.true2.i120.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i118.rcu_read_unlock.exit_crit_edge, %out_rcu_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !88
  %68 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i.i.i.i.i122 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i122 to ptr
  %preempt_count.i.i.i.i123 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i123, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i123, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @kfree_skb_reason(ptr noundef %head.1, i32 noundef 0) #15
  %refcnt.i.i = getelementptr i8, ptr %t, i32 92
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #15
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #15, !srcloc !79
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ipq_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !69

if.end5.i.i.i.i.i.ipq_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ipq_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #15
  br label %ipq_put.exit

if.then.i.i:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  tail call void @inet_frag_destroy(ptr noundef %add.ptr) #15
  br label %ipq_put.exit

ipq_put.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ipq_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_frag_reasm(ptr noundef %qp, ptr noundef %skb, ptr noundef %prev_tail, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 13
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net1 = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  tail call void @inet_frag_kill(ptr noundef %qp) #15
  %ecn2 = getelementptr inbounds %struct.ipq, ptr %qp, i32 0, i32 1
  %4 = ptrtoint ptr %ecn2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ecn2, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [16 x i8], ptr @ip_frag_ecn_table, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  br i1 %cmp, label %entry.do.body92_crit_edge, label %if.end, !prof !67

entry.do.body92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92

if.end:                                           ; preds = %entry
  %call = tail call ptr @inet_frag_reasm_prepare(ptr noundef %qp, ptr noundef %skb, ptr noundef %prev_tail) #15
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %do.body63, label %if.end8

if.end8:                                          ; preds = %if.end
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %13 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %13 to i32
  %len11 = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 9
  %14 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len11, align 8
  %add = add i32 %15, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp12 = icmp sgt i32 %add, 65535
  br i1 %cmp12, label %do.body79, label %if.end15

if.end15:                                         ; preds = %if.end8
  %user.i = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %user.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  tail call void @inet_frag_reasm_finish(ptr noundef %qp, ptr noundef %skb, ptr noundef nonnull %call, i1 noundef zeroext %cmp.i) #15
  %18 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %18, align 8
  %max_df_size = getelementptr inbounds %struct.ipq, ptr %qp, i32 0, i32 2
  %20 = ptrtoint ptr %max_df_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_df_size, align 2
  %max_size = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 12
  %22 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_size, align 2
  %24 = tail call i16 @llvm.umax.i16(i16 %21, i16 %23)
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %25 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %frag_max_size, align 2
  %26 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i, align 8
  %28 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %conv.i.i
  %conv27 = trunc i32 %add to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv27, ptr %tot_len, align 2
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tos, align 1
  %or157 = or i8 %32, %7
  store i8 %or157, ptr %tos, align 1
  %33 = ptrtoint ptr %max_df_size to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_df_size, align 2
  %35 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp36 = icmp eq i16 %34, %36
  br i1 %cmp36, label %if.then38, label %if.end15.if.end45_crit_edge

if.end15.if.end45_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then38:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags, align 4
  %39 = or i16 %38, 64
  store i16 %39, ptr %flags, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.end15.if.end45_crit_edge
  %.sink = phi i16 [ 16384, %if.then38 ], [ 0, %if.end15.if.end45_crit_edge ]
  %40 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %.sink, ptr %40, align 2
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i) #15
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30
  %42 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mib, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %50, %44
  %51 = inttoptr i32 %add52 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx53 = getelementptr [37 x i64], ptr %51, i32 0, i32 18
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %53, 1
  store i64 %add54, ptr %arrayidx53, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %51, i32 0, i32 1, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #15
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %55) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %56 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 5
  %58 = ptrtoint ptr %rb_fragments to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_fragments, align 8
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 6
  %59 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %fragments_tail, align 4
  %last_run_head = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 7
  %60 = ptrtoint ptr %last_run_head to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %last_run_head, align 8
  br label %cleanup

do.body63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_frag_reasm.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_frag_reasm, %land.lhs.true)) #15
          to label %do.body92 [label %land.lhs.true], !srcloc !89

land.lhs.true:                                    ; preds = %do.body63
  %call73 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true.do.body92_crit_edge, label %if.then75

land.lhs.true.do.body92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_frag_reasm.descriptor, ptr noundef nonnull @.str.7, ptr noundef %qp) #15
  br label %do.body92

do.body79:                                        ; preds = %if.end8
  %call80 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body79.do.body92_crit_edge, label %do.end85

do.body79.do.body92_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body92

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #17
  %key = getelementptr inbounds %struct.inet_frag_queue, ptr %qp, i32 0, i32 1
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %key) #19
  br label %do.body92

do.body92:                                        ; preds = %do.end85, %do.body79.do.body92_crit_edge, %if.then75, %land.lhs.true.do.body92_crit_edge, %do.body63, %entry.do.body92_crit_edge
  %err.0 = phi i32 [ -7, %do.end85 ], [ -7, %do.body79.do.body92_crit_edge ], [ -22, %entry.do.body92_crit_edge ], [ -12, %if.then75 ], [ -12, %land.lhs.true.do.body92_crit_edge ], [ -12, %do.body63 ]
  tail call fastcc void @local_bh_disable()
  %mib101 = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30
  %61 = ptrtoint ptr %mib101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mib101, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !57) #15
  %and.i158 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i158 to ptr
  %cpu105 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu105, align 4
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %69, %63
  %70 = inttoptr i32 %add107 to ptr
  %syncp108 = getelementptr inbounds %struct.ipstats_mib, ptr %70, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp108)
  %arrayidx110 = getelementptr [37 x i64], ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx110, align 8
  %add111 = add i64 %72, 1
  store i64 %add111, ptr %arrayidx110, align 8
  %dep_map.i.i159 = getelementptr inbounds %struct.ipstats_mib, ptr %70, i32 0, i32 1, i32 0, i32 1
  %73 = tail call ptr @llvm.returnaddress(i32 0) #15
  %74 = ptrtoint ptr %73 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i159, i32 noundef %74) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !68
  %75 = ptrtoint ptr %syncp108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %syncp108, align 4
  %inc.i.i.i160 = add i32 %76, 1
  store i32 %inc.i.i.i160, ptr %syncp108, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %do.body92, %if.end45
  %retval.0 = phi i32 [ %err.0, %do.body92 ], [ 0, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_rbtree_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_pull_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_rtable(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !67

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  ret ptr %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip4_key_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %seed, -559038717
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %add2.i = add i32 %1, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %3, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %5, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add.ptr.i = getelementptr i32, ptr %data, i32 3
  %arrayidx32.i = getelementptr i32, ptr %data, i32 4
  %6 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx32.i, align 4
  %add27.i = add i32 %add23.i, %7
  %add33.i = add i32 %add27.i, %xor22.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %add23.i, %9
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  ret i32 %sub57.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip4_obj_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.inet_frag_queue, ptr %data, i32 0, i32 1
  %add1.i = add i32 %seed, -559038717
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %add2.i = add i32 %1, %add1.i
  %arrayidx3.i = getelementptr %struct.inet_frag_queue, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %3, %add1.i
  %arrayidx5.i = getelementptr %struct.inet_frag_queue, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %5, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add.ptr.i = getelementptr %struct.inet_frag_queue, ptr %data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %arrayidx32.i = getelementptr %struct.inet_frag_queue, ptr %data, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx32.i, align 4
  %add27.i = add i32 %add23.i, %7
  %add33.i = add i32 %add27.i, %xor22.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %add23.i, %9
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  ret i32 %sub57.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip4_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  %key2 = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(20) %key2, ptr noundef dereferenceable(20) %1, i32 20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool = icmp ne i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_frags_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 24
  %call = tail call i32 @fqdir_init(ptr noundef %fqdir, ptr noundef nonnull @ip4_frags, ptr noundef %net) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4194304, ptr %1, align 128
  %3 = load ptr, ptr %fqdir, align 4
  %low_thresh = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3145728, ptr %low_thresh, align 4
  %5 = load ptr, ptr %fqdir, align 4
  %timeout = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3000, ptr %timeout, align 8
  %7 = load ptr, ptr %fqdir, align 4
  %max_dist = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %max_dist to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %max_dist, align 4
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @ip4_frags_ns_ctl_table, i32 noundef 180, i32 noundef 3264) #15
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then11_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then.i.if.then11_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %table.0.i = phi ptr [ @ip4_frags_ns_ctl_table, %if.end.if.end4.i_crit_edge ], [ %call1.i, %if.then.i.if.end4.i_crit_edge ]
  %9 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fqdir, align 4
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %data.i, align 4
  %12 = load ptr, ptr %fqdir, align 4
  %low_thresh.i = getelementptr inbounds %struct.fqdir, ptr %12, i32 0, i32 1
  %extra1.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 7
  %13 = ptrtoint ptr %extra1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %low_thresh.i, ptr %extra1.i, align 4
  %14 = load ptr, ptr %fqdir, align 4
  %low_thresh10.i = getelementptr inbounds %struct.fqdir, ptr %14, i32 0, i32 1
  %data12.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 1
  %15 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %low_thresh10.i, ptr %data12.i, align 4
  %16 = load ptr, ptr %fqdir, align 4
  %extra2.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 8
  %17 = ptrtoint ptr %extra2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %extra2.i, align 4
  %18 = load ptr, ptr %fqdir, align 4
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 2
  %data20.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 1
  %19 = ptrtoint ptr %data20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %timeout.i, ptr %data20.i, align 4
  %20 = load ptr, ptr %fqdir, align 4
  %max_dist.i = getelementptr inbounds %struct.fqdir, ptr %20, i32 0, i32 3
  %data24.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 3, i32 1
  %21 = ptrtoint ptr %data24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %max_dist.i, ptr %data24.i, align 4
  %call25.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.12, ptr noundef nonnull %table.0.i) #15
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %err_reg.i, label %ip4_frags_ns_ctl_register.exit

err_reg.i:                                        ; preds = %if.end4.i
  br i1 %cmp.i.not.i, label %err_reg.i.if.then11_crit_edge, label %if.then32.i

err_reg.i.if.then11_crit_edge:                    ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.then32.i:                                      ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %table.0.i) #15
  br label %if.then11

ip4_frags_ns_ctl_register.exit:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %frags_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 2
  %22 = ptrtoint ptr %frags_hdr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call25.i, ptr %frags_hdr.i, align 4
  br label %cleanup

if.then11:                                        ; preds = %if.then32.i, %err_reg.i.if.then11_crit_edge, %if.then.i.if.then11_crit_edge
  %23 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %ip4_frags_ns_ctl_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.then11 ], [ 0, %ip4_frags_ns_ctl_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv4_frags_pre_exit_net(ptr nocapture noundef readonly %net) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 24
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %1, align 128
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 1, ptr %dead.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv4_frags_exit_net(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frags_hdr.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 2
  %0 = ptrtoint ptr %frags_hdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frags_hdr.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #15
  tail call void @kfree(ptr noundef %3) #15
  %fqdir = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 24
  %4 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab_ip_defrag, !1, !"__ksymtab_ip_defrag", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_fragment.c", i32 502, i32 1}
!2 = !{ptr @__ksymtab_ip_check_defrag, !3, !"__ksymtab_ip_check_defrag", i1 false, i1 false}
!3 = !{!"../net/ipv4/ip_fragment.c", i32 544, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_fragment.c", i32 749, i32 9}
!6 = !{ptr @ip4_frags, !7, !"ip4_frags", i1 false, i1 false}
!7 = !{!"../net/ipv4/ip_fragment.c", i32 76, i32 26}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/ip_fragment.c", i32 464, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ip_frag_reasm.descriptor, !14, !"descriptor", i1 false, i1 false}
!19 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv4/ip_fragment.c", i32 468, i32 2}
!22 = !{ptr @ip_frag_reasm._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ip_frag_reasm._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ip_frag_cache_name, !32, !"ip_frag_cache_name", i1 false, i1 false}
!32 = !{!"../net/ipv4/ip_fragment.c", i32 58, i32 19}
!33 = !{ptr @ip4_rhash_params, !34, !"ip4_rhash_params", i1 false, i1 false}
!34 = !{!"../net/ipv4/ip_fragment.c", i32 730, i32 39}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ipv4/ip_fragment.c", i32 635, i32 33}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ipv4/ip_fragment.c", i32 582, i32 15}
!39 = !{ptr @ip4_frags_ctl_table, !40, !"ip4_frags_ctl_table", i1 false, i1 false}
!40 = !{!"../net/ipv4/ip_fragment.c", i32 580, i32 25}
!41 = !{ptr @ip4_frags_secret_interval_unused, !42, !"ip4_frags_secret_interval_unused", i1 false, i1 false}
!42 = !{!"../net/ipv4/ip_fragment.c", i32 579, i32 12}
!43 = !{ptr @ip4_frags_ops, !44, !"ip4_frags_ops", i1 false, i1 false}
!44 = !{!"../net/ipv4/ip_fragment.c", i32 701, i32 33}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ipv4/ip_fragment.c", i32 551, i32 15}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv4/ip_fragment.c", i32 557, i32 15}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ipv4/ip_fragment.c", i32 563, i32 15}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv4/ip_fragment.c", i32 569, i32 15}
!53 = !{ptr @ip4_frags_ns_ctl_table, !54, !"ip4_frags_ns_ctl_table", i1 false, i1 false}
!54 = !{!"../net/ipv4/ip_fragment.c", i32 549, i32 25}
!55 = !{ptr @dist_min, !56, !"dist_min", i1 false, i1 false}
!56 = !{!"../net/ipv4/ip_fragment.c", i32 547, i32 12}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2149988617}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2154599783, i64 2154600271, i64 2154599820, i64 2154599876, i64 2154599910, i64 2154599934, i64 2154599975, i64 2154599996, i64 2154600024, i64 2154600058}
!71 = !{i64 2148441576}
!72 = !{i64 2148356861, i64 2148356893, i64 2148356922, i64 2148356956, i64 2148356987, i64 2148357010}
!73 = !{i64 2148441805}
!74 = !{i64 2148357671, i64 2148357703, i64 2148357732, i64 2148357766, i64 2148357797, i64 2148357820}
!75 = !{i64 2148358606, i64 2148358632, i64 2148358661, i64 2148358695, i64 2148358726, i64 2148358749}
!76 = !{i64 2157448200}
!77 = !{i64 2148356141, i64 2148356167, i64 2148356196, i64 2148356230, i64 2148356261, i64 2148356284}
!78 = !{i64 2148445696}
!79 = !{i64 2148360136, i64 2148360168, i64 2148360197, i64 2148360231, i64 2148360262, i64 2148360285}
!80 = !{i64 2149321810}
!81 = !{i64 2149880299}
!82 = !{i64 2149885231}
!83 = !{i64 2149906943}
!84 = !{i64 2149911835}
!85 = !{i64 2149988292}
!86 = !{i64 2149372300}
!87 = !{i8 0, i8 2}
!88 = !{i64 2149372566}
!89 = !{i64 2148969518, i64 2148969523, i64 2148969536, i64 2148969580, i64 2148969614, i64 2148969635}
