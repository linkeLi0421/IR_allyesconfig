; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_ecache.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_ecache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_conntrack_eventmask_report\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_conntrack_eventmask_report\09\09\09\09"
module asm "\09.long\09__crc_nf_conntrack_eventmask_report\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_conntrack_eventmask_report:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_conntrack_eventmask_report\22\09\09\09\09\09"
module asm "__kstrtabns_nf_conntrack_eventmask_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_deliver_cached_events\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_deliver_cached_events\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_deliver_cached_events\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_deliver_cached_events:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_deliver_cached_events\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_deliver_cached_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_conntrack_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_conntrack_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_nf_conntrack_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_conntrack_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_conntrack_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nf_conntrack_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_conntrack_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_conntrack_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_nf_conntrack_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_conntrack_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_conntrack_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nf_conntrack_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.nf_ct_event = type { ptr, i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.135, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.135 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conntrack_ecache = type { i32, i16, i16, i16, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
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
%struct.nf_exp_event = type { ptr, i32, i32 }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.132 }
%struct.anon.132 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.callback_head = type { ptr, ptr }
%struct.nf_ct_event_notifier = type { ptr, ptr }
%struct.nf_conntrack_net = type { %struct.atomic_t, i32, i8, i8, i32, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ct_pcpu = type { %struct.spinlock, %struct.hlist_nulls_head, %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }

@__kstrtab_nf_conntrack_eventmask_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_conntrack_eventmask_report = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_conntrack_eventmask_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_conntrack_eventmask_report to i32), ptr @__kstrtab_nf_conntrack_eventmask_report, ptr @__kstrtabns_nf_conntrack_eventmask_report }, section "___ksymtab_gpl+nf_conntrack_eventmask_report", align 4
@__kstrtab_nf_ct_deliver_cached_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_deliver_cached_events = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_deliver_cached_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_deliver_cached_events to i32), ptr @__kstrtab_nf_ct_deliver_cached_events, ptr @__kstrtabns_nf_ct_deliver_cached_events }, section "___ksymtab_gpl+nf_ct_deliver_cached_events", align 4
@nf_ct_expect_event_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/netfilter/nf_conntrack_ecache.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_ct_ecache_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nf_ct_ecache_mutex, i64 52), ptr getelementptr (i8, ptr @nf_ct_ecache_mutex, i64 52) }, ptr @nf_ct_ecache_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nf_conntrack_register_notifier.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nf_conntrack_register_notifier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nf_conntrack_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_conntrack_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_conntrack_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_conntrack_register_notifier to i32), ptr @__kstrtab_nf_conntrack_register_notifier, ptr @__kstrtabns_nf_conntrack_register_notifier }, section "___ksymtab_gpl+nf_conntrack_register_notifier", align 4
@__kstrtab_nf_conntrack_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_conntrack_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_conntrack_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_conntrack_unregister_notifier to i32), ptr @__kstrtab_nf_conntrack_unregister_notifier, ptr @__kstrtabns_nf_conntrack_unregister_notifier }, section "___ksymtab_gpl+nf_conntrack_unregister_notifier", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nf_conntrack_ecache_pernet_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&cnet->ecache_dwork)->work)\00", [48 x i8] zeroinitializer }, align 32
@nf_conntrack_ecache_pernet_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&cnet->ecache_dwork)->timer\00", [34 x i8] zeroinitializer }, align 32
@event_extend = internal constant { %struct.nf_ct_ext_type, [20 x i8] } { %struct.nf_ct_ext_type { ptr null, i32 4, i8 16, i8 4 }, [20 x i8] zeroinitializer }, align 32
@nf_conntrack_ecache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nf_conntrack: Unable to register event extension\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_ecache_init\00", [39 x i8] zeroinitializer }, align 32
@nf_conntrack_ecache_init._entry_ptr = internal global ptr @nf_conntrack_ecache_init._entry, section ".printk_index", align 4
@__nf_conntrack_eventmask_report.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nf_ct_ecache_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_ct_ecache_mutex\00", [45 x i8] zeroinitializer }, align 32
@nf_conntrack_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 247, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"nf_ct_ecache_mutex\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 273, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 319, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"event_extend\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 307, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 333, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@___asan_gen_.64 = private constant [39 x i8] c"../net/netfilter/nf_conntrack_ecache.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 30, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 45, i32 7 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_nf_conntrack_eventmask_report, ptr @__ksymtab_nf_conntrack_register_notifier, ptr @__ksymtab_nf_conntrack_unregister_notifier, ptr @__ksymtab_nf_ct_deliver_cached_events, ptr @nf_conntrack_ecache_init._entry, ptr @nf_conntrack_ecache_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @nf_ct_ecache_mutex, ptr @.str.2, ptr @nf_conntrack_ecache_pernet_init.__key, ptr @.str.3, ptr @nf_conntrack_ecache_pernet_init.__key.4, ptr @.str.5, ptr @event_extend, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_ecache_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_ecache_pernet_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_ecache_pernet_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_extend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_ecache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_eventmask_report(i32 noundef %events, ptr noundef %ct, i32 noundef %portid, i32 noundef %report) #0 align 64 {
entry:
  %item = alloca %struct.nf_ct_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %item) #8
  %0 = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %5 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.i.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %nf_ct_ecache_find.exit.cleanup_crit_edge, label %if.end4

nf_ct_ecache_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %nf_ct_ecache_find.exit
  %9 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ct, ptr %item, align 4
  %portid6 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %portid6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  %portid. = select i1 %tobool7.not, i32 %portid, i32 %11
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %portid., ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %report, ptr %1, align 4
  br i1 %tobool7.not, label %cond.false14, label %if.end4.cond.end16_crit_edge

if.end4.cond.end16_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false14:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %missed15 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %missed15 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %missed15, align 4
  %conv = zext i16 %15 to i32
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false14, %if.end4.cond.end16_crit_edge
  %cond17 = phi i32 [ %conv, %cond.false14 ], [ 0, %if.end4.cond.end16_crit_edge ]
  %call18 = call fastcc i32 @__nf_conntrack_eventmask_report(ptr noundef nonnull %add.ptr.i.i, i32 noundef %events, i32 noundef %cond17, ptr noundef nonnull %item)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  %and = and i32 %events, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20 = icmp ne i32 %and, 0
  %16 = and i1 %tobool20, %cmp
  br i1 %16, label %if.then23, label %cond.end16.cleanup_crit_edge, !prof !57

cond.end16.cleanup_crit_edge:                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %cond.end16
  %17 = ptrtoint ptr %portid6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portid6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %cmp27.not = icmp eq i32 %portid, 0
  %or.cond = or i1 %cmp27.not, %cmp25
  br i1 %or.cond, label %if.then23.if.end31_crit_edge, label %if.then29

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %portid6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %portid, ptr %portid6, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then23.if.end31_crit_edge
  %state = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %cond.end16.cleanup_crit_edge, %nf_ct_ecache_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %nf_ct_ecache_find.exit.cleanup_crit_edge ], [ %call18, %if.end31 ], [ %call18, %cond.end16.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nf_conntrack_eventmask_report(ptr nocapture noundef %e, i32 noundef %events, i32 noundef %missed, ptr noundef %item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %item, align 4
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_net.i, align 4
  %or = or i32 %missed, %events
  %ctmask = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %ctmask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctmask, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %or, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %nf_conntrack_event_cb = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 40, i32 9
  %10 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %nf_conntrack_event_cb, align 16
  %call5 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end14_crit_edge

rcu_read_lock.exit.do.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b57 = load i1, ptr @__nf_conntrack_eventmask_report.__warned, align 1
  br i1 %.b57, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__nf_conntrack_eventmask_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.1) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %rcu_read_lock.exit.do.end14_crit_edge
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.end14
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i58, label %if.then17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

if.then17.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %if.then17
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %if.then17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %12 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i65 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %call20 = tail call i32 %17(i32 noundef %or, ptr noundef %item) #8
  %call.i67 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i67, label %if.end18.rcu_read_unlock.exit77_crit_edge, label %land.lhs.true.i70

if.end18.rcu_read_unlock.exit77_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit77

land.lhs.true.i70:                                ; preds = %if.end18
  %call1.i68 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i68)
  %tobool.not.i69 = icmp eq i32 %call1.i68, 0
  br i1 %tobool.not.i69, label %land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge, label %land.lhs.true2.i72

land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge: ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit77

land.lhs.true2.i72:                               ; preds = %land.lhs.true.i70
  %.b4.i71 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i71, label %land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge, label %if.then.i73

land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge: ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit77

if.then.i73:                                      ; preds = %land.lhs.true2.i72
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit77

rcu_read_unlock.exit77:                           ; preds = %if.then.i73, %land.lhs.true2.i72.rcu_read_unlock.exit77_crit_edge, %land.lhs.true.i70.rcu_read_unlock.exit77_crit_edge, %if.end18.rcu_read_unlock.exit77_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %18 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i74 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i74 to ptr
  %preempt_count.i.i.i.i75 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i75, align 4
  %sub.i.i.i76 = add i32 %21, -1
  store volatile i32 %sub.i.i.i76, ptr %preempt_count.i.i.i.i75, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %cmp = icmp sgt i32 %call20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %missed)
  %cmp22 = icmp eq i32 %missed, 0
  %spec.select = and i1 %cmp22, %cmp
  br i1 %spec.select, label %rcu_read_unlock.exit77.cleanup_crit_edge, label %if.end27, !prof !60

rcu_read_unlock.exit77.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %rcu_read_unlock.exit77
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp28 = icmp slt i32 %call20, 0
  %missed31 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %e, i32 0, i32 1
  %22 = ptrtoint ptr %missed31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %missed31, align 4
  %24 = trunc i32 %missed to i16
  %25 = xor i16 %24, -1
  %conv38 = and i16 %23, %25
  %26 = trunc i32 %events to i16
  %conv34 = or i16 %23, %26
  %conv38.sink = select i1 %cmp28, i16 %conv34, i16 %conv38
  store i16 %conv38.sink, ptr %missed31, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %rcu_read_unlock.exit77.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end27 ], [ 0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_deliver_cached_events(ptr noundef %ct) #0 align 64 {
entry:
  %item = alloca %struct.nf_ct_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %item) #8
  %0 = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nf_ct_event, ptr %item, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %8 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.i.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %nf_ct_ecache_find.exit.cleanup_crit_edge, label %if.end5

nf_ct_ecache_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull %add.ptr.i.i) #8, !srcloc !62
  %asmresult.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  %13 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ct, ptr %item, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %1, align 4
  %missed = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %missed to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %missed, align 4
  %conv = zext i16 %17 to i32
  %call22 = call fastcc i32 @__nf_conntrack_eventmask_report(ptr noundef nonnull %add.ptr.i.i, i32 noundef %asmresult.i, i32 noundef %conv, ptr noundef nonnull %item)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %nf_ct_ecache_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_expect_event_report(i32 noundef %event, ptr noundef %exp, i32 noundef %portid, i32 noundef %report) local_unnamed_addr #0 align 64 {
entry:
  %item = alloca %struct.nf_exp_event, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 6
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_net.i.i, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %nf_conntrack_event_cb = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 40, i32 9
  %8 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %nf_conntrack_event_cb, align 16
  %call2 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @nf_ct_expect_event_report.__warned, align 1
  br i1 %.b30, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_ct_expect_event_report.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 247, ptr noundef nonnull @.str.1) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end8.out_unlock_crit_edge, label %if.end12

do.end8.out_unlock_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end12:                                         ; preds = %do.end8
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end12.out_unlock_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end12
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.i.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.out_unlock_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.out_unlock_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %tobool14.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool14.not, label %nf_ct_ecache_find.exit.out_unlock_crit_edge, label %if.end16

nf_ct_ecache_find.exit.out_unlock_crit_edge:      ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end16:                                         ; preds = %nf_ct_ecache_find.exit
  %expmask = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %expmask to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %expmask, align 4
  %conv = zext i16 %17 to i32
  %shl = shl nuw i32 1, %event
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.out_unlock_crit_edge, label %if.then18

if.end16.out_unlock_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %item) #8
  %18 = getelementptr inbounds %struct.nf_exp_event, ptr %item, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nf_exp_event, ptr %item, i32 0, i32 2
  %20 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %exp, ptr %item, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %portid, ptr %18, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %report, ptr %19, align 4
  %exp_event = getelementptr inbounds %struct.nf_ct_event_notifier, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %exp_event to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exp_event, align 4
  %call23 = call i32 %24(i32 noundef %shl, ptr noundef nonnull %item) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then18, %if.end16.out_unlock_crit_edge, %nf_ct_ecache_find.exit.out_unlock_crit_edge, %nf_ct_ext_exist.exit.i.i.out_unlock_crit_edge, %if.end12.out_unlock_crit_edge, %do.end8.out_unlock_crit_edge
  %call.i31 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i31, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %out_unlock
  %call1.i32 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %25 = call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i38 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_register_notifier(ptr noundef %net, ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_ct_ecache_mutex, i32 noundef 0) #8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @nf_ct_ecache_mutex, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b92 = load i1, ptr @nf_conntrack_register_notifier.__warned, align 1
  br i1 %.b92, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_conntrack_register_notifier.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 274, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %nf_conntrack_event_cb = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 9
  %0 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nf_conntrack_event_cb, align 16
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.if.end39_crit_edge, label %land.rhs

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.rhs:                                         ; preds = %do.end
  %.b9091 = load i1, ptr @nf_conntrack_register_notifier.__already_done, align 1
  br i1 %.b9091, label %land.rhs.if.end39_crit_edge, label %if.then13, !prof !60

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_conntrack_register_notifier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then13, %land.rhs.if.end39_crit_edge, %do.end.if.end39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  %2 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %new, ptr %nf_conntrack_event_cb, align 16
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_ecache_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_unregister_notifier(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_ct_ecache_mutex, i32 noundef 0) #8
  %nf_conntrack_event_cb = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 9
  %0 = ptrtoint ptr %nf_conntrack_event_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %nf_conntrack_event_cb, align 16
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_ecache_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_ecache_work(ptr noundef %net, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net)
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.if.end10_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %if.then5
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %ecache_dwork = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %ecache_dwork to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %ecache_dwork, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %ecache_dwork, i32 noundef 100) #8
  %ct = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40
  %4 = ptrtoint ptr %ct to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ct, align 16
  br label %if.end10

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ct6 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40
  %5 = ptrtoint ptr %ct6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ct6, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %ecache_dwork8 = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ecache_dwork8, i32 noundef 0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_ct_pernet(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_net_id to i32))
  %0 = load i32, ptr @nf_conntrack_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 45, ptr noundef nonnull @.str.1) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %9 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_ecache_pernet_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net)
  %ct = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40
  %sysctl_events = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 2
  %0 = ptrtoint ptr %sysctl_events to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %sysctl_events, align 2
  %ct_net = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %ct_net to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ct, ptr %ct_net, align 4
  %ecache_dwork = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8
  tail call void @__init_work(ptr noundef %ecache_dwork, i32 noundef 0) #8
  %2 = ptrtoint ptr %ecache_dwork to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %ecache_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @nf_conntrack_ecache_pernet_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ecache_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @nf_conntrack_ecache_pernet_init.__key.4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecache_work(ptr noundef %work) #0 align 64 {
entry:
  %item.i.i.i = alloca %struct.nf_ct_event, align 4
  %refs.i = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %ct_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net, align 4
  tail call fastcc void @local_bh_disable()
  %call30 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %2)
  %cmp31 = icmp ult i32 %call30, %2
  br i1 %cmp31, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %pcpu_lists = getelementptr inbounds %struct.netns_ct, ptr %1, i32 0, i32 7
  %3 = getelementptr inbounds %struct.nf_ct_event, ptr %item.i.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nf_ct_event, ptr %item.i.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %call33 = phi i32 [ %call30, %for.body.lr.ph ], [ %call, %cleanup.for.body_crit_edge ]
  %delay.032 = phi i32 [ -1, %for.body.lr.ph ], [ %delay.1, %cleanup.for.body_crit_edge ]
  %5 = ptrtoint ptr %pcpu_lists to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_lists, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call33
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %refs.i) #8
  %11 = call ptr @memset(ptr %refs.i, i32 255, i32 256)
  call void @_raw_spin_lock(ptr noundef %10) #8
  %dying.i = getelementptr inbounds %struct.ct_pcpu, ptr %10, i32 0, i32 2
  %12 = ptrtoint ptr %dying.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %n.0.i20 = load ptr, ptr %dying.i, align 4
  %13 = ptrtoint ptr %n.0.i20 to i32
  %and.i.i21 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i22, label %for.body.for.body.i_crit_edge, label %ecache_work_evict_list.exit.thread

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

ecache_work_evict_list.exit.thread:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %refs.i) #8
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %n.0.i26 = phi ptr [ %n.0.i, %cleanup.i.for.body.i_crit_edge ], [ %n.0.i20, %for.body.for.body.i_crit_edge ]
  %evicted.0.i23 = phi i32 [ %evicted.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %dir.i.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %n.0.i26, i32 0, i32 1, i32 1, i32 3
  %14 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %.neg.i.i = mul nsw i32 %conv.i.i, -48
  %idx.neg.i.i = add nsw i32 %.neg.i.i, -56
  %add.ptr.i.i = getelementptr i8, ptr %n.0.i26, i32 %idx.neg.i.i
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i.i, i32 0, i32 13
  %19 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.cleanup.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.i.not.i.i.i = icmp eq i8 %22, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup.i_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup.i_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %22 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 %conv.i.i.i
  %tobool7.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool7.not.i, label %nf_ct_ecache_find.exit.i.cleanup.i_crit_edge, label %lor.lhs.false.i

nf_ct_ecache_find.exit.i.cleanup.i_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %nf_ct_ecache_find.exit.i
  %state.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.not.i = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.not.i, label %if.end9.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %ct_net.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %ct_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ct_net.i.i.i, align 4
  %nf_conntrack_event_cb.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 40, i32 9
  %26 = ptrtoint ptr %nf_conntrack_event_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %nf_conntrack_event_cb.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end9.i.if.end13.i_crit_edge, label %if.end.i.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end.i.i:                                       ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %item.i.i.i) #8
  %28 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.nf_conntrack_event.exit.thread48.i_crit_edge, label %if.end.i.i39.i

if.end.i.i.nf_conntrack_event.exit.thread48.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_conntrack_event.exit.thread48.i

if.end.i.i39.i:                                   ; preds = %if.end.i.i
  %31 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i39.i.nf_conntrack_event.exit.thread48.i_crit_edge, label %nf_ct_ext_exist.exit.i.i.i.i.i

if.end.i.i39.i.nf_conntrack_event.exit.thread48.i_crit_edge: ; preds = %if.end.i.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_conntrack_event.exit.thread48.i

nf_ct_ext_exist.exit.i.i.i.i.i:                   ; preds = %if.end.i.i39.i
  %arrayidx.i.i.i.i.i.i.i = getelementptr [10 x i8], ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.i.not.i.i.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.i.i.not.i.i.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge, label %nf_ct_ecache_find.exit.i.i.i

nf_ct_ext_exist.exit.i.i.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_conntrack_event.exit.thread48.i

nf_ct_ecache_find.exit.i.i.i:                     ; preds = %nf_ct_ext_exist.exit.i.i.i.i.i
  %conv.i.i.i.i.i = zext i8 %34 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i.i.i
  %tobool2.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %nf_ct_ecache_find.exit.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge, label %if.end4.i.i.i

nf_ct_ecache_find.exit.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge: ; preds = %nf_ct_ecache_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_conntrack_event.exit.thread48.i

if.end4.i.i.i:                                    ; preds = %nf_ct_ecache_find.exit.i.i.i
  %35 = ptrtoint ptr %item.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i, ptr %item.i.i.i, align 4
  %portid6.i.i.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %portid6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %portid6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool7.not.i.i.i = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %3, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %4, align 4
  br i1 %tobool7.not.i.i.i, label %cond.false14.i.i.i, label %if.end4.i.i.i.cond.end16.i.i.i_crit_edge

if.end4.i.i.i.cond.end16.i.i.i_crit_edge:         ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16.i.i.i

cond.false14.i.i.i:                               ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %missed15.i.i.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %missed15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %missed15.i.i.i, align 4
  %conv.i.i40.i = zext i16 %41 to i32
  br label %cond.end16.i.i.i

cond.end16.i.i.i:                                 ; preds = %cond.false14.i.i.i, %if.end4.i.i.i.cond.end16.i.i.i_crit_edge
  %cond17.i.i.i = phi i32 [ %conv.i.i40.i, %cond.false14.i.i.i ], [ 0, %if.end4.i.i.i.cond.end16.i.i.i_crit_edge ]
  %call18.i.i.i = call fastcc i32 @__nf_conntrack_eventmask_report(ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef 4, i32 noundef %cond17.i.i.i, ptr noundef nonnull %item.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call18.i.i.i, 0
  br i1 %cmp.i.i.i, label %nf_conntrack_event.exit.thread51.i, label %nf_conntrack_event.exit.i, !prof !57

nf_conntrack_event.exit.thread51.i:               ; preds = %cond.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %state.i.i.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %state.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item.i.i.i) #8
  br label %for.end.i

nf_conntrack_event.exit.thread48.i:               ; preds = %nf_ct_ecache_find.exit.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i.i.i.nf_conntrack_event.exit.thread48.i_crit_edge, %if.end.i.i39.i.nf_conntrack_event.exit.thread48.i_crit_edge, %if.end.i.i.nf_conntrack_event.exit.thread48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item.i.i.i) #8
  br label %if.end13.i

nf_conntrack_event.exit.i:                        ; preds = %cond.end16.i.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %item.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool11.not.i = icmp eq i32 %call18.i.i.i, 0
  br i1 %tobool11.not.i, label %nf_conntrack_event.exit.i.if.end13.i_crit_edge, label %nf_conntrack_event.exit.i.for.end.i_crit_edge

nf_conntrack_event.exit.i.for.end.i_crit_edge:    ; preds = %nf_conntrack_event.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

nf_conntrack_event.exit.i.if.end13.i_crit_edge:   ; preds = %nf_conntrack_event.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %nf_conntrack_event.exit.i.if.end13.i_crit_edge, %nf_conntrack_event.exit.thread48.i, %if.end9.i.if.end13.i_crit_edge
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %state.i, align 2
  %arrayidx.i = getelementptr [64 x ptr], ptr %refs.i, i32 0, i32 %evicted.0.i23
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %evicted.0.i23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %inc.i)
  %cmp15.i = icmp ugt i32 %inc.i, 63
  br i1 %cmp15.i, label %for.end.thread.i, label %if.end13.i.cleanup.i_crit_edge

if.end13.i.cleanup.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.end.thread.i:                                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %10) #8
  br label %while.body.preheader.i

cleanup.i:                                        ; preds = %if.end13.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %nf_ct_ecache_find.exit.i.cleanup.i_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %evicted.1.i = phi i32 [ %evicted.0.i23, %for.body.i.cleanup.i_crit_edge ], [ %evicted.0.i23, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %evicted.0.i23, %nf_ct_ecache_find.exit.i.cleanup.i_crit_edge ], [ %inc.i, %if.end13.i.cleanup.i_crit_edge ], [ %evicted.0.i23, %nf_ct_ext_exist.exit.i.i.i.cleanup.i_crit_edge ], [ %evicted.0.i23, %if.end.i.cleanup.i_crit_edge ]
  %45 = ptrtoint ptr %n.0.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %n.0.i = load ptr, ptr %n.0.i26, align 4
  %46 = ptrtoint ptr %n.0.i to i32
  %and.i.i = and i32 %46, 1
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %nf_conntrack_event.exit.i.for.end.i_crit_edge, %nf_conntrack_event.exit.thread51.i
  %evicted.0.i19 = phi i32 [ %evicted.0.i23, %nf_conntrack_event.exit.thread51.i ], [ %evicted.1.i, %cleanup.i.for.end.i_crit_edge ], [ %evicted.0.i23, %nf_conntrack_event.exit.i.for.end.i_crit_edge ]
  %ret.2.i = phi i32 [ 0, %nf_conntrack_event.exit.thread51.i ], [ 2, %cleanup.i.for.end.i_crit_edge ], [ 0, %nf_conntrack_event.exit.i.for.end.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %evicted.0.i19)
  %tobool20.not60.i = icmp eq i32 %evicted.0.i19, 0
  br i1 %tobool20.not60.i, label %for.end.i.ecache_work_evict_list.exit_crit_edge, label %for.end.i.while.body.preheader.i_crit_edge

for.end.i.while.body.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader.i

for.end.i.ecache_work_evict_list.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecache_work_evict_list.exit

while.body.preheader.i:                           ; preds = %for.end.i.while.body.preheader.i_crit_edge, %for.end.thread.i
  %ret.271.i = phi i32 [ 1, %for.end.thread.i ], [ %ret.2.i, %for.end.i.while.body.preheader.i_crit_edge ]
  %evicted.270.i = phi i32 [ %inc.i, %for.end.thread.i ], [ %evicted.0.i19, %for.end.i.while.body.preheader.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %nf_ct_put.exit.i.while.body.i_crit_edge, %while.body.preheader.i
  %evicted.361.i = phi i32 [ %dec.i, %nf_ct_put.exit.i.while.body.i_crit_edge ], [ %evicted.270.i, %while.body.preheader.i ]
  %dec.i = add i32 %evicted.361.i, -1
  %arrayidx21.i = getelementptr [64 x ptr], ptr %refs.i, i32 0, i32 %dec.i
  %47 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx21.i, align 4
  %tobool.not.i42.i = icmp eq ptr %48, null
  br i1 %tobool.not.i42.i, label %while.body.i.nf_ct_put.exit.i_crit_edge, label %land.lhs.true.i.i

while.body.i.nf_ct_put.exit.i_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_put.exit.i

land.lhs.true.i.i:                                ; preds = %while.body.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #8, !srcloc !66
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !60

if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nf_ct_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #8
  br label %nf_ct_put.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @nf_ct_destroy(ptr noundef nonnull %48) #8
  br label %nf_ct_put.exit.i

nf_ct_put.exit.i:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_ct_put.exit.i_crit_edge, %while.body.i.nf_ct_put.exit.i_crit_edge
  %tobool20.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool20.not.i, label %nf_ct_put.exit.i.ecache_work_evict_list.exit_crit_edge, label %nf_ct_put.exit.i.while.body.i_crit_edge

nf_ct_put.exit.i.while.body.i_crit_edge:          ; preds = %nf_ct_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

nf_ct_put.exit.i.ecache_work_evict_list.exit_crit_edge: ; preds = %nf_ct_put.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ecache_work_evict_list.exit

ecache_work_evict_list.exit:                      ; preds = %nf_ct_put.exit.i.ecache_work_evict_list.exit_crit_edge, %for.end.i.ecache_work_evict_list.exit_crit_edge
  %ret.272.i = phi i32 [ %ret.2.i, %for.end.i.ecache_work_evict_list.exit_crit_edge ], [ %ret.271.i, %nf_ct_put.exit.i.ecache_work_evict_list.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %refs.i) #8
  %50 = zext i32 %ret.272.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %ret.272.i, label %ecache_work_evict_list.exit.cleanup_crit_edge [
    i32 0, label %ecache_work_evict_list.exit.out_crit_edge
    i32 1, label %sw.bb4
  ]

ecache_work_evict_list.exit.out_crit_edge:        ; preds = %ecache_work_evict_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

ecache_work_evict_list.exit.cleanup_crit_edge:    ; preds = %ecache_work_evict_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %ecache_work_evict_list.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %ecache_work_evict_list.exit.cleanup_crit_edge, %ecache_work_evict_list.exit.thread
  %delay.1 = phi i32 [ %delay.032, %ecache_work_evict_list.exit.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ %delay.032, %ecache_work_evict_list.exit.thread ]
  %call = call i32 @cpumask_next(i32 noundef %call33, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %51
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out:                                              ; preds = %cleanup.out_crit_edge, %ecache_work_evict_list.exit.out_crit_edge, %entry.out_crit_edge
  %delay.3 = phi i32 [ -1, %entry.out_crit_edge ], [ 10, %ecache_work_evict_list.exit.out_crit_edge ], [ %delay.1, %cleanup.out_crit_edge ]
  call fastcc void @local_bh_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.3)
  %cmp5 = icmp sgt i32 %delay.3, 0
  %frombool = zext i1 %cmp5 to i8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %delay.3)
  %cmp6 = icmp sgt i32 %delay.3, -1
  br i1 %cmp6, label %if.then, label %out.if.end_crit_edge

out.if.end_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %work, i32 noundef %delay.3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %out.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_ecache_pernet_fini(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net)
  %ecache_dwork = getelementptr inbounds %struct.nf_conntrack_net, ptr %call, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ecache_dwork) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_ecache_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @event_extend) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_ecache_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @event_extend) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_nf_conntrack_eventmask_report, !1, !"__ksymtab_nf_conntrack_eventmask_report", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 206, i32 1}
!2 = !{ptr @__ksymtab_nf_ct_deliver_cached_events, !3, !"__ksymtab_nf_ct_deliver_cached_events", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 235, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 247, i32 11}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 273, i32 11}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 275, i32 2}
!13 = !{ptr @__ksymtab_nf_conntrack_register_notifier, !14, !"__ksymtab_nf_conntrack_register_notifier", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 279, i32 1}
!15 = !{ptr @__ksymtab_nf_conntrack_unregister_notifier, !16, !"__ksymtab_nf_conntrack_unregister_notifier", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 288, i32 1}
!17 = !{ptr @nf_conntrack_ecache_pernet_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 319, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nf_conntrack_ecache_pernet_init.__key.4, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 333, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nf_conntrack_ecache_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @nf_conntrack_ecache_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 148, i32 11}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 30, i32 8}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nf_ct_ecache_mutex, !37, !"nf_ct_ecache_mutex", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"nf_ct_events", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 305, i32 12}
!45 = !{ptr @event_extend, !46, !"event_extend", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_conntrack_ecache.c", i32 307, i32 36}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2149665610}
!59 = !{i64 2149665876}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2158031017}
!62 = !{i64 888225, i64 888242, i64 888266, i64 888292, i64 888310}
!63 = !{i64 2158031360}
!64 = !{i64 2158045828}
!65 = !{i64 2148470988}
!66 = !{i64 2148385452, i64 2148385484, i64 2148385513, i64 2148385547, i64 2148385578, i64 2148385601}
!67 = !{i64 2150540157}
