; ModuleID = '/llk/IR_all_yes/net/netlink/genetlink.c_pt.bc'
source_filename = "../net/netlink/genetlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+genl_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_genl_lock\09\09\09\09"
module asm "\09.long\09__crc_genl_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_lock\22\09\09\09\09\09"
module asm "__kstrtabns_genl_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genl_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_genl_unlock\09\09\09\09"
module asm "\09.long\09__crc_genl_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_genl_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genl_register_family\22, \22a\22\09"
module asm "\09.weak\09__crc_genl_register_family\09\09\09\09"
module asm "\09.long\09__crc_genl_register_family\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_register_family\22\09\09\09\09\09"
module asm "__kstrtabns_genl_register_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genl_unregister_family\22, \22a\22\09"
module asm "\09.weak\09__crc_genl_unregister_family\09\09\09\09"
module asm "\09.long\09__crc_genl_unregister_family\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_unregister_family\22\09\09\09\09\09"
module asm "__kstrtabns_genl_unregister_family:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genlmsg_put\22, \22a\22\09"
module asm "\09.weak\09__crc_genlmsg_put\09\09\09\09"
module asm "\09.long\09__crc_genlmsg_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22genlmsg_put\22\09\09\09\09\09"
module asm "__kstrtabns_genlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genlmsg_multicast_allns\22, \22a\22\09"
module asm "\09.weak\09__crc_genlmsg_multicast_allns\09\09\09\09"
module asm "\09.long\09__crc_genlmsg_multicast_allns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genlmsg_multicast_allns:\09\09\09\09\09"
module asm "\09.asciz \09\22genlmsg_multicast_allns\22\09\09\09\09\09"
module asm "__kstrtabns_genlmsg_multicast_allns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+genl_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_genl_notify\09\09\09\09"
module asm "\09.long\09__crc_genl_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22genl_notify\22\09\09\09\09\09"
module asm "__kstrtabns_genl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.4, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.ctrl_dump_policy_ctx = type { ptr, ptr, i32, i32, i16, i8 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.genl_start_context = type { ptr, ptr, ptr, ptr, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }

@genl_sk_destructing_cnt = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"genl_sk_destructing_waitq.lock\00", [33 x i8] zeroinitializer }, align 32
@genl_sk_destructing_waitq = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @genl_sk_destructing_waitq, i64 44), ptr getelementptr (i8, ptr @genl_sk_destructing_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@genl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @genl_mutex, i64 52), ptr getelementptr (i8, ptr @genl_mutex, i64 52) }, ptr @genl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_genl_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_lock to i32), ptr @__kstrtab_genl_lock, ptr @__kstrtabns_genl_lock }, section "___ksymtab+genl_lock", align 4
@__kstrtab_genl_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_unlock to i32), ptr @__kstrtab_genl_unlock, ptr @__kstrtabns_genl_unlock }, section "___ksymtab+genl_unlock", align 4
@genl_ctrl = internal global %struct.genl_family { i32 16, i32 0, [16 x i8] c"nlctrl\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 0, i8 -128, i8 2, i8 0, i8 1, ptr null, ptr null, ptr null, ptr @genl_ctrl_ops, ptr null, ptr @genl_ctrl_groups, ptr null }, section ".data..ro_after_init", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmcraid\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VFS_DQUOT\00", [22 x i8] zeroinitializer }, align 32
@genl_fam_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_genl_register_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_register_family = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_register_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_register_family to i32), ptr @__kstrtab_genl_register_family, ptr @__kstrtabns_genl_register_family }, section "___ksymtab+genl_register_family", align 4
@cb_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @cb_lock, i64 56), ptr getelementptr (i8, ptr @cb_lock, i64 56) }, ptr @cb_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netlink/genetlink.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_genl_unregister_family = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_unregister_family = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_unregister_family = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_unregister_family to i32), ptr @__kstrtab_genl_unregister_family, ptr @__kstrtabns_genl_unregister_family }, section "___ksymtab+genl_unregister_family", align 4
@__kstrtab_genlmsg_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_genlmsg_put = external dso_local constant [0 x i8], align 1
@__ksymtab_genlmsg_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genlmsg_put to i32), ptr @__kstrtab_genlmsg_put, ptr @__kstrtabns_genlmsg_put }, section "___ksymtab+genlmsg_put", align 4
@__initcall__kmod_genetlink__464_1435_genl_init1 = internal global ptr @genl_init, section ".initcall1.init", align 4
@genlmsg_multicast_allns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_genlmsg_multicast_allns = external dso_local constant [0 x i8], align 1
@__kstrtabns_genlmsg_multicast_allns = external dso_local constant [0 x i8], align 1
@__ksymtab_genlmsg_multicast_allns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genlmsg_multicast_allns to i32), ptr @__kstrtab_genlmsg_multicast_allns, ptr @__kstrtabns_genlmsg_multicast_allns }, section "___ksymtab+genlmsg_multicast_allns", align 4
@genl_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_genl_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_genl_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_genl_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genl_notify to i32), ptr @__kstrtab_genl_notify, ptr @__kstrtabns_genl_notify }, section "___ksymtab+genl_notify", align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"genl_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"genl_mutex\00", [21 x i8] zeroinitializer }, align 32
@genl_get_cmd_by_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"genl_fam_idr.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NET_DM\00", [25 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@genl_validate_assign_mc_groups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@net_namespace_list = external dso_local global %struct.list_head, align 4
@mc_groups_longs = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@mc_groups = internal global { ptr, [28 x i8] } { ptr @mc_group_start, [28 x i8] zeroinitializer }, align 32
@mc_group_start = internal global { i32, [28 x i8] } { i32 458755, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@genl_unregister_mc_groups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb_lock.wait_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cb_lock\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@genl_ctrl_ops = internal constant { [2 x %struct.genl_ops], [40 x i8] } { [2 x %struct.genl_ops] [%struct.genl_ops { ptr @ctrl_getfamily, ptr null, ptr @ctrl_dumpfamily, ptr null, ptr @ctrl_policy_family, i32 2, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr null, ptr @ctrl_dumppolicy_start, ptr @ctrl_dumppolicy, ptr @ctrl_dumppolicy_done, ptr @ctrl_policy_policy, i32 10, i8 10, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@genl_ctrl_groups = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"notify\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@ctrl_policy_family = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.2 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.2 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@ctrl_policy_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.2 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.2 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.2 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net-pf-%d-proto-%d-family-%s\00", [35 x i8] zeroinitializer }, align 32
@genl_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @genl_pernet_init, ptr null, ptr @genl_pernet_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GENL: Cannot register controller: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__const.genl_pernet_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 1, ptr @genl_rcv, ptr null, ptr @genl_bind, ptr null, ptr null }, align 4
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"GENL: Cannot initialize generic netlink\0A\00", [55 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@genlmsg_mcast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"genl_sk_destructing_cnt\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 28, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"genl_sk_destructing_waitq\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 29, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"genl_mutex\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 410, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 412, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"genl_fam_idr\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"cb_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 467, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 25, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 55, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 266, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 293, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"mc_groups_longs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 79, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"mc_groups\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 78, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"mc_group_start\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 75, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 695, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 26, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 991, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 308, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"genl_ctrl_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1320, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"genl_ctrl_groups\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1339, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"ctrl_policy_family\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1011, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"ctrl_policy_policy\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1115, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1038, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"genl_pernet_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1412, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1432, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [27 x i8] c"../net/netlink/genetlink.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1398, i32 9 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__initcall__kmod_genetlink__464_1435_genl_init1, ptr @__ksymtab_genl_lock, ptr @__ksymtab_genl_notify, ptr @__ksymtab_genl_register_family, ptr @__ksymtab_genl_unlock, ptr @__ksymtab_genl_unregister_family, ptr @__ksymtab_genlmsg_multicast_allns, ptr @__ksymtab_genlmsg_put, ptr @genl_sk_destructing_cnt, ptr @.str, ptr @genl_sk_destructing_waitq, ptr @genl_mutex, ptr @.str.1, ptr @.str.2, ptr @genl_fam_idr, ptr @cb_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mc_groups_longs, ptr @mc_groups, ptr @mc_group_start, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @genl_ctrl_ops, ptr @genl_ctrl_groups, ptr @ctrl_policy_family, ptr @ctrl_policy_policy, ptr @.str.16, ptr @genl_pernet_ops, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_sk_destructing_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_sk_destructing_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_fam_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_groups_longs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_group_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_ctrl_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_ctrl_groups to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_policy_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_policy_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genl_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @genl_lock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @genl_unlock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @genl_register_family(ptr noundef %family) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n_ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 7
  %0 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_ops.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.lor.lhs.false.critedge.i_crit_edge, label %land.rhs.i

entry.lor.lhs.false.critedge.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.critedge.i

land.rhs.i:                                       ; preds = %entry
  %ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 13
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.rhs.i.cleanup88.sink.split.i_crit_edge, label %land.rhs.i.lor.lhs.false.critedge.i_crit_edge, !prof !101

land.rhs.i.lor.lhs.false.critedge.i_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.critedge.i

land.rhs.i.cleanup88.sink.split.i_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88.sink.split.i

lor.lhs.false.critedge.i:                         ; preds = %land.rhs.i.lor.lhs.false.critedge.i_crit_edge, %entry.lor.lhs.false.critedge.i_crit_edge
  %n_small_ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 8
  %4 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %n_small_ops.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool25.not.i = icmp eq i8 %5, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.critedge.i.for.cond.preheader.i_crit_edge, label %land.rhs26.i

lor.lhs.false.critedge.i.for.cond.preheader.i_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %land.rhs26.i.for.cond.preheader.i_crit_edge, %lor.lhs.false.critedge.i.for.cond.preheader.i_crit_edge
  %conv.i165.i = zext i8 %1 to i32
  %conv1.i166.i = zext i8 %5 to i32
  %add.i167.i = add nuw nsw i32 %conv1.i166.i, %conv.i165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i167.i)
  %cmp168.not.i = icmp eq i32 %add.i167.i, 0
  br i1 %cmp168.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %small_ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 14
  %ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 13
  br label %for.body.i

land.rhs26.i:                                     ; preds = %lor.lhs.false.critedge.i
  %small_ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 14
  %6 = ptrtoint ptr %small_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %small_ops.i, align 4
  %tobool27.not.i = icmp eq ptr %7, null
  br i1 %tobool27.not.i, label %land.rhs26.i.cleanup88.sink.split.i_crit_edge, label %land.rhs26.i.for.cond.preheader.i_crit_edge, !prof !101

land.rhs26.i.for.cond.preheader.i_crit_edge:      ; preds = %land.rhs26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

land.rhs26.i.cleanup88.sink.split.i_crit_edge:    ; preds = %land.rhs26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88.sink.split.i

for.body.i:                                       ; preds = %cleanup82.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add.i173.i = phi i32 [ %add.i167.i, %for.body.lr.ph.i ], [ %add.i116.i, %cleanup82.i.for.body.i_crit_edge ]
  %conv.i172.i = phi i32 [ %conv.i165.i, %for.body.lr.ph.i ], [ %conv.i113.i, %cleanup82.i.for.body.i_crit_edge ]
  %i.0169.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc86.i, %cleanup82.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0169.i, i32 %conv.i172.i)
  %cmp.i.i = icmp ult i32 %i.0169.i, %conv.i172.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.genl_ops, ptr %9, i32 %i.0169.i
  %op.sroa.10.0.arrayidx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 8
  %op.sroa.22.0.arrayidx.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 24
  br label %genl_get_cmd_by_index.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i173.i, i32 %i.0169.i)
  %cmp5.i.i = icmp ugt i32 %add.i173.i, %i.0169.i
  br i1 %cmp5.i.i, label %if.then7.i.i, label %land.end.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub nsw i32 %i.0169.i, %conv.i172.i
  %10 = ptrtoint ptr %small_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %small_ops.i.i.i, align 4
  %arrayidx.i59.i.i = getelementptr %struct.genl_small_ops, ptr %11, i32 %sub.i.i
  %dumpit.i.i.i = getelementptr %struct.genl_small_ops, ptr %11, i32 %sub.i.i, i32 1
  %cmd.i.i.i = getelementptr %struct.genl_small_ops, ptr %11, i32 %sub.i.i, i32 2
  br label %genl_get_cmd_by_index.exit.i

land.end.i.i:                                     ; preds = %if.else.i.i
  %.b58.i.i = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %.b58.i.i, label %land.end.i.i.if.end69.i_crit_edge, label %if.then16.i.i, !prof !102

land.end.i.i.if.end69.i_crit_edge:                ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

if.then16.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 178, i32 noundef 9, ptr noundef null) #12
  br label %if.end69.i

genl_get_cmd_by_index.exit.i:                     ; preds = %if.then7.i.i, %if.then.i.i
  %op.sroa.0.0.in.i = phi ptr [ %arrayidx.i59.i.i, %if.then7.i.i ], [ %arrayidx.i.i.i, %if.then.i.i ]
  %op.sroa.10.0.in.i = phi ptr [ %dumpit.i.i.i, %if.then7.i.i ], [ %op.sroa.10.0.arrayidx.i.i.sroa_idx.i, %if.then.i.i ]
  %op.sroa.22.0.in.i = phi ptr [ %cmd.i.i.i, %if.then7.i.i ], [ %op.sroa.22.0.arrayidx.i.i.sroa_idx.i, %if.then.i.i ]
  %12 = ptrtoint ptr %op.sroa.22.0.in.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %op.sroa.22.0.i = load i8, ptr %op.sroa.22.0.in.i, align 4
  %13 = ptrtoint ptr %op.sroa.10.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %op.sroa.10.0.i = load ptr, ptr %op.sroa.10.0.in.i, align 4
  %14 = ptrtoint ptr %op.sroa.0.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %op.sroa.0.0.i = load ptr, ptr %op.sroa.0.0.in.i, align 4
  %cmp64.i = icmp eq ptr %op.sroa.10.0.i, null
  %cmp66.i = icmp eq ptr %op.sroa.0.0.i, null
  %or.cond.i = select i1 %cmp64.i, i1 %cmp66.i, i1 false
  br i1 %or.cond.i, label %genl_get_cmd_by_index.exit.i.cleanup_crit_edge, label %genl_get_cmd_by_index.exit.i.if.end69.i_crit_edge

genl_get_cmd_by_index.exit.i.if.end69.i_crit_edge: ; preds = %genl_get_cmd_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

genl_get_cmd_by_index.exit.i.cleanup_crit_edge:   ; preds = %genl_get_cmd_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end69.i:                                       ; preds = %genl_get_cmd_by_index.exit.i.if.end69.i_crit_edge, %if.then16.i.i, %land.end.i.i.if.end69.i_crit_edge
  %op.sroa.22.0163.i = phi i8 [ %op.sroa.22.0.i, %genl_get_cmd_by_index.exit.i.if.end69.i_crit_edge ], [ -1, %land.end.i.i.if.end69.i_crit_edge ], [ -1, %if.then16.i.i ]
  %15 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n_ops.i, align 1
  %conv.i113.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i115.i = zext i8 %18 to i32
  %add.i116.i = add nuw nsw i32 %conv1.i115.i, %conv.i113.i
  br label %for.cond70.i

for.cond70.i:                                     ; preds = %genl_get_cmd_by_index.exit158.i.for.cond70.i_crit_edge, %if.end69.i
  %j.0.in.i = phi i32 [ %i.0169.i, %if.end69.i ], [ %j.0.i, %genl_get_cmd_by_index.exit158.i.for.cond70.i_crit_edge ]
  %j.0.i = add nuw nsw i32 %j.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.i, i32 %add.i116.i)
  %cmp72.i = icmp ult i32 %j.0.i, %add.i116.i
  br i1 %cmp72.i, label %for.body74.i, label %cleanup82.i

for.body74.i:                                     ; preds = %for.cond70.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.i, i32 %conv.i113.i)
  %cmp.i119.i = icmp ult i32 %j.0.i, %conv.i113.i
  br i1 %cmp.i119.i, label %if.then.i124.i, label %if.then7.i154.i

if.then.i124.i:                                   ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i.i, align 4
  %op2.sroa.18.0.arrayidx.i.i121.sroa_idx.i = getelementptr %struct.genl_ops, ptr %20, i32 %j.0.i, i32 6
  br label %genl_get_cmd_by_index.exit158.i

if.then7.i154.i:                                  ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i137.i = sub nsw i32 %j.0.i, %conv.i113.i
  %21 = ptrtoint ptr %small_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %small_ops.i.i.i, align 4
  %cmd.i.i142.i = getelementptr %struct.genl_small_ops, ptr %22, i32 %sub.i137.i, i32 2
  br label %genl_get_cmd_by_index.exit158.i

genl_get_cmd_by_index.exit158.i:                  ; preds = %if.then7.i154.i, %if.then.i124.i
  %op2.sroa.18.0.arrayidx.i.i121.sroa_idx.sink.i = phi ptr [ %op2.sroa.18.0.arrayidx.i.i121.sroa_idx.i, %if.then.i124.i ], [ %cmd.i.i142.i, %if.then7.i154.i ]
  %23 = ptrtoint ptr %op2.sroa.18.0.arrayidx.i.i121.sroa_idx.sink.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %op2.sroa.18.0.copyload.i = load i8, ptr %op2.sroa.18.0.arrayidx.i.i121.sroa_idx.sink.i, align 4
  %cmp78.i = icmp eq i8 %op.sroa.22.0163.i, %op2.sroa.18.0.copyload.i
  br i1 %cmp78.i, label %genl_get_cmd_by_index.exit158.i.cleanup_crit_edge, label %genl_get_cmd_by_index.exit158.i.for.cond70.i_crit_edge

genl_get_cmd_by_index.exit158.i.for.cond70.i_crit_edge: ; preds = %genl_get_cmd_by_index.exit158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond70.i

genl_get_cmd_by_index.exit158.i.cleanup_crit_edge: ; preds = %genl_get_cmd_by_index.exit158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup82.i:                                      ; preds = %for.cond70.i
  %inc86.i = add nuw nsw i32 %i.0169.i, 1
  %cmp.i = icmp ult i32 %inc86.i, %add.i116.i
  br i1 %cmp.i, label %cleanup82.i.for.body.i_crit_edge, label %cleanup82.i.if.end_crit_edge

cleanup82.i.if.end_crit_edge:                     ; preds = %cleanup82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup82.i.for.body.i_crit_edge:                 ; preds = %cleanup82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup88.sink.split.i:                           ; preds = %land.rhs26.i.cleanup88.sink.split.i_crit_edge, %land.rhs.i.cleanup88.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 350, %land.rhs.i.cleanup88.sink.split.i_crit_edge ], [ 351, %land.rhs26.i.cleanup88.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %cleanup82.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  tail call void @down_write(ptr noundef nonnull @cb_lock) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  %name = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %id.i, align 4
  %call6.i = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not7.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not7.i, label %if.end.if.end4_crit_edge, label %if.end.for.body.i62_crit_edge

if.end.for.body.i62_crit_edge:                    ; preds = %if.end
  br label %for.body.i62

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.body.i62:                                     ; preds = %for.inc.i.for.body.i62_crit_edge, %if.end.for.body.i62_crit_edge
  %call8.i = phi ptr [ %call.i, %for.inc.i.for.body.i62_crit_edge ], [ %call6.i, %if.end.for.body.i62_crit_edge ]
  %name1.i = getelementptr inbounds %struct.genl_family, ptr %call8.i, i32 0, i32 2
  %call2.i = call i32 @strcmp(ptr noundef %name1.i, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %genl_family_find_byname.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i62
  %25 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id.i, align 4
  %add.i = add i32 %26, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i62_crit_edge

for.inc.i.for.body.i62_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i62

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

genl_family_find_byname.exit:                     ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %errout_locked

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  %cmp = icmp eq ptr %family, @genl_ctrl
  br i1 %cmp, label %if.end4.if.end19_crit_edge, label %if.else

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(8) @.str.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.else.if.end19_crit_edge, label %if.else11

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(10) @.str.2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  %spec.select = select i1 %cmp15, i32 17, i32 19
  %spec.select61 = select i1 %cmp15, i32 18, i32 1024
  br label %if.end19

if.end19:                                         ; preds = %if.else11, %if.else.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %start.0 = phi i32 [ 16, %if.end4.if.end19_crit_edge ], [ 18, %if.else.if.end19_crit_edge ], [ %spec.select, %if.else11 ]
  %end.0 = phi i32 [ 17, %if.end4.if.end19_crit_edge ], [ 19, %if.else.if.end19_crit_edge ], [ %spec.select61, %if.else11 ]
  %call20 = call i32 @idr_alloc_cyclic(ptr noundef nonnull @genl_fam_idr, ptr noundef %family, i32 noundef %start.0, i32 noundef %end.0, i32 noundef 3264) #12
  %27 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call20, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.end19.errout_locked_crit_edge, label %if.end25

if.end19.errout_locked_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_locked

if.end25:                                         ; preds = %if.end19
  %n_mcgrps.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %28 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %n_mcgrps.i, align 1
  %conv.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i63 = icmp eq i8 %29, 0
  br i1 %tobool.not.i63, label %if.end25.if.end29_crit_edge, label %for.body.preheader.i

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.body.preheader.i:                             ; preds = %if.end25
  %mcgrps.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 15
  %30 = ptrtoint ptr %mcgrps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcgrps.i, align 4
  br label %for.body.i64

for.cond.i:                                       ; preds = %if.end29.i
  %inc.i = add nuw nsw i32 %i.0284.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i64_crit_edge

for.cond.i.for.body.i64_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.cond.i.for.body.i64_crit_edge, %for.body.preheader.i
  %i.0284.i = phi i32 [ %inc.i, %for.cond.i.for.body.i64_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.genl_multicast_group, ptr %31, i32 %i.0284.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp4.i = icmp eq i8 %33, 0
  br i1 %cmp4.i, label %for.body.i64.cleanup228.sink.split.i_crit_edge, label %if.end29.i, !prof !101

for.body.i64.cleanup228.sink.split.i_crit_edge:   ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228.sink.split.i

if.end29.i:                                       ; preds = %for.body.i64
  %call.i65 = call ptr @memchr(ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef 16) #15
  %cmp32.i = icmp eq ptr %call.i65, null
  br i1 %cmp32.i, label %if.end29.i.cleanup228.sink.split.i_crit_edge, label %for.cond.i, !prof !101

if.end29.i.cleanup228.sink.split.i_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup228.sink.split.i

for.end.i:                                        ; preds = %for.cond.i
  br i1 %cmp, label %if.then68.i, label %if.else.i

if.then68.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp70.not.i = icmp eq i8 %29, 1
  br i1 %cmp70.not.i, label %if.then68.i.if.end168.i_crit_edge, label %do.body79.i, !prof !102

if.then68.i.if.end168.i_crit_edge:                ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

do.body79.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #12, !srcloc !103
  unreachable

if.else.i:                                        ; preds = %for.end.i
  %call90.i = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(7) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.i, label %if.then93.i, label %if.else113.i

if.then93.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp95.not.i = icmp eq i8 %29, 1
  br i1 %cmp95.not.i, label %if.then93.i.if.end168.i_crit_edge, label %do.body104.i, !prof !102

if.then93.i.if.end168.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

do.body104.i:                                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

if.else113.i:                                     ; preds = %if.else.i
  %34 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %if.else160.i [
    i32 17, label %if.then116.i
    i32 18, label %if.then140.i
  ]

if.then116.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp118.not.i = icmp eq i8 %29, 1
  br i1 %cmp118.not.i, label %if.then116.i.if.end168.i_crit_edge, label %do.body127.i, !prof !102

if.then116.i.if.end168.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

do.body127.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

if.then140.i:                                     ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp142.not.i = icmp eq i8 %29, 1
  br i1 %cmp142.not.i, label %if.then140.i.if.end168.i_crit_edge, label %do.body151.i, !prof !102

if.then140.i.if.end168.i_crit_edge:               ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

do.body151.i:                                     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #12, !srcloc !106
  unreachable

if.else160.i:                                     ; preds = %if.else113.i
  %sub.i.i67 = add nuw nsw i32 %conv.i, 31
  %div80.i.i = lshr i32 %sub.i.i67, 5
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div80.i.i, i32 1) #12
  %35 = shl nuw nsw i32 %umax.i.i, 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.else160.i
  %start.0.i.i = phi i32 [ 0, %if.else160.i ], [ %start.1.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.0.i.i)
  %cmp.i.i68 = icmp eq i32 %start.0.i.i, 0
  %36 = load ptr, ptr @mc_groups, align 4
  %37 = load i32, ptr @mc_groups_longs, align 4
  %mul.i.i = shl i32 %37, 5
  br i1 %cmp.i.i68, label %if.then.i265.i, label %if.else.i.i69

if.then.i265.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i264.i = call i32 @_find_first_zero_bit_be(ptr noundef %36, i32 noundef %mul.i.i) #12
  br label %if.end.i.i

if.else.i.i69:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %36, i32 noundef %mul.i.i, i32 noundef %start.0.i.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i69, %if.then.i265.i
  %id.0.i.i = phi i32 [ %call.i264.i, %if.then.i265.i ], [ %call2.i.i, %if.else.i.i69 ]
  %add.i.i70 = add i32 %id.0.i.i, %conv.i
  %38 = load i32, ptr @mc_groups_longs, align 4
  %mul3.i.i = shl i32 %38, 5
  %39 = call i32 @llvm.smin.i32(i32 %add.i.i70, i32 %mul3.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.i.i, i32 %39)
  %cmp586.i.i = icmp slt i32 %id.0.i.i, %39
  br i1 %cmp586.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %40 = load ptr, ptr @mc_groups, align 4
  %div3.i.i285.i = lshr i32 %id.0.i.i, 5
  %arrayidx.i.i286.i = getelementptr i32, ptr %40, i32 %div3.i.i285.i
  %41 = ptrtoint ptr %arrayidx.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i286.i, align 4
  %and.i.i287.i = and i32 %id.0.i.i, 31
  %43 = shl nuw i32 1, %and.i.i287.i
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i266288.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i266288.i, label %for.body.lr.ph.i.i.for.inc.i.i_crit_edge, label %for.body.lr.ph.i.i.for.end.i.i_crit_edge

for.body.lr.ph.i.i.for.end.i.i_crit_edge:         ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i.for.inc.i.i_crit_edge:         ; preds = %for.body.lr.ph.i.i
  br label %for.inc.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i
  %div3.i.i.i = lshr i32 %inc.i.i, 5
  %arrayidx.i.i.i71 = getelementptr i32, ptr %40, i32 %div3.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i.i71, align 4
  %and.i.i.i = and i32 %inc.i.i, 31
  %47 = shl nuw i32 1, %and.i.i.i
  %48 = and i32 %46, %47
  %tobool.not.i266.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i266.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %for.body.i.i.for.end.i.loopexit.i_crit_edge

for.body.i.i.for.end.i.loopexit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.loopexit.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i.for.inc.i.i_crit_edge, %for.body.lr.ph.i.i.for.inc.i.i_crit_edge
  %i.087.i289.i = phi i32 [ %inc.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %id.0.i.i, %for.body.lr.ph.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add i32 %i.087.i289.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %39)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %39
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.loopexit.i_crit_edge, label %for.body.i.i

for.inc.i.i.for.end.i.loopexit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.loopexit.i

for.end.i.loopexit.i:                             ; preds = %for.inc.i.i.for.end.i.loopexit.i_crit_edge, %for.body.i.i.for.end.i.loopexit.i_crit_edge
  %inc.i.i.lcssa = phi i32 [ %39, %for.inc.i.i.for.end.i.loopexit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.end.i.loopexit.i_crit_edge ]
  %start.1.i.ph.i = phi i32 [ %start.0.i.i, %for.inc.i.i.for.end.i.loopexit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.end.i.loopexit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.lcssa, i32 %39)
  %cmp5.i.le.i = icmp slt i32 %inc.i.i.lcssa, %39
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.loopexit.i, %for.body.lr.ph.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %cmp5.lcssa.i.i = phi i1 [ false, %if.end.i.i.for.end.i.i_crit_edge ], [ true, %for.body.lr.ph.i.i.for.end.i.i_crit_edge ], [ %cmp5.i.le.i, %for.end.i.loopexit.i ]
  %start.1.i.i = phi i32 [ %start.0.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %id.0.i.i, %for.body.lr.ph.i.i.for.end.i.i_crit_edge ], [ %start.1.i.ph.i, %for.end.i.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i70, i32 %mul3.i.i)
  %cmp11.i.i = icmp ugt i32 %add.i.i70, %mul3.i.i
  br i1 %cmp11.i.i, label %if.then12.i.i, label %for.end.i.i.do.cond.i.i_crit_edge

for.end.i.i.do.cond.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i.i

if.then12.i.i:                                    ; preds = %for.end.i.i
  %add14.i.i = add i32 %38, %div80.i.i
  %mul15.i.i = shl i32 %add14.i.i, 2
  %49 = load ptr, ptr @mc_groups, align 4
  %cmp16.i.i = icmp eq ptr %49, @mc_group_start
  br i1 %cmp16.i.i, label %if.end8.i.i.i.i, label %if.else22.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then12.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul15.i.i, i32 noundef 3520) #17
  %tobool19.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool19.not.i.i, label %if.end8.i.i.i.i.errout_remove_crit_edge, label %if.end21.i.i

if.end8.i.i.i.i.errout_remove_crit_edge:          ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_remove

if.end21.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call9.i.i.i.i, ptr @mc_groups, align 4
  %50 = load i32, ptr @mc_group_start, align 4
  %51 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %call9.i.i.i.i, align 128
  br label %if.end37.i.i

if.else22.i.i:                                    ; preds = %if.then12.i.i
  %call23.i.i = call noalias ptr @krealloc(ptr noundef %49, i32 noundef %mul15.i.i, i32 noundef 3264) #18
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool24.not.i.i, label %if.else22.i.i.errout_remove_crit_edge, label %if.end26.i.i

if.else22.i.i.errout_remove_crit_edge:            ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_remove

if.end26.i.i:                                     ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call23.i.i, ptr @mc_groups, align 4
  %52 = load i32, ptr @mc_groups_longs, align 4
  %53 = shl i32 %52, 2
  %uglygep.i.i = getelementptr i8, ptr %call23.i.i, i32 %53
  %54 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 %35)
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.end26.i.i, %if.end21.i.i
  store i32 %add14.i.i, ptr @mc_groups_longs, align 4
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.end37.i.i, %for.end.i.i.do.cond.i.i_crit_edge
  br i1 %cmp5.lcssa.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %for.cond41.preheader.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

for.cond41.preheader.i.i:                         ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.i.i, i32 %add.i.i70)
  %cmp43100.i.i = icmp slt i32 %id.0.i.i, %add.i.i70
  br i1 %cmp43100.i.i, label %for.cond41.preheader.i.i.for.body44.i.i_crit_edge, label %for.cond41.preheader.i.i.if.end168.i_crit_edge

for.cond41.preheader.i.i.if.end168.i_crit_edge:   ; preds = %for.cond41.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

for.cond41.preheader.i.i.for.body44.i.i_crit_edge: ; preds = %for.cond41.preheader.i.i
  br label %for.body44.i.i

for.body44.i.i:                                   ; preds = %for.body44.i.i.for.body44.i.i_crit_edge, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge
  %i.2101.i.i = phi i32 [ %inc46.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ], [ %id.0.i.i, %for.cond41.preheader.i.i.for.body44.i.i_crit_edge ]
  %55 = load ptr, ptr @mc_groups, align 4
  call void @_set_bit(i32 noundef %i.2101.i.i, ptr noundef %55) #12
  %inc46.i.i = add i32 %i.2101.i.i, 1
  %exitcond105.not.i.i = icmp eq i32 %inc46.i.i, %add.i.i70
  br i1 %exitcond105.not.i.i, label %for.body44.i.i.if.end168.i_crit_edge, label %for.body44.i.i.for.body44.i.i_crit_edge

for.body44.i.i.for.body44.i.i_crit_edge:          ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.i.i

for.body44.i.i.if.end168.i_crit_edge:             ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

if.end168.i:                                      ; preds = %for.body44.i.i.if.end168.i_crit_edge, %for.cond41.preheader.i.i.if.end168.i_crit_edge, %if.then140.i.if.end168.i_crit_edge, %if.then116.i.if.end168.i_crit_edge, %if.then93.i.if.end168.i_crit_edge, %if.then68.i.if.end168.i_crit_edge
  %first_id.1.i = phi i32 [ 16, %if.then68.i.if.end168.i_crit_edge ], [ 1, %if.then93.i.if.end168.i_crit_edge ], [ 18, %if.then140.i.if.end168.i_crit_edge ], [ 17, %if.then116.i.if.end168.i_crit_edge ], [ %id.0.i.i, %for.cond41.preheader.i.i.if.end168.i_crit_edge ], [ %id.0.i.i, %for.body44.i.i.if.end168.i_crit_edge ]
  %groups_allocated.0.off0.i = phi i1 [ true, %if.then68.i.if.end168.i_crit_edge ], [ true, %if.then93.i.if.end168.i_crit_edge ], [ true, %if.then140.i.if.end168.i_crit_edge ], [ true, %if.then116.i.if.end168.i_crit_edge ], [ false, %for.cond41.preheader.i.i.if.end168.i_crit_edge ], [ false, %for.body44.i.i.if.end168.i_crit_edge ]
  %mcgrp_offset.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  %56 = ptrtoint ptr %mcgrp_offset.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %first_id.1.i, ptr %mcgrp_offset.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %tobool169.not.i = icmp eq ptr %57, null
  br i1 %tobool169.not.i, label %if.end168.i.if.end29_crit_edge, label %if.end171.i

if.end168.i.if.end29_crit_edge:                   ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end171.i:                                      ; preds = %if.end168.i
  %netnsok.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 6
  %58 = ptrtoint ptr %netnsok.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %netnsok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool172.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool172.not.i, label %if.else208.i, label %if.then173.i

if.then173.i:                                     ; preds = %if.end171.i
  call void @netlink_table_grab() #12
  %59 = call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then173.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then173.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then173.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i72

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i72:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i72, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then173.i.rcu_read_lock.exit.i_crit_edge
  %call175.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175.i)
  %tobool176.not.i = icmp eq i32 %call175.i, 0
  br i1 %tobool176.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.for.cond190.i.preheader_crit_edge

rcu_read_lock.exit.i.for.cond190.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond190.i.preheader

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call177.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177.i)
  %tobool178.not.i = icmp eq i32 %call177.i, 0
  br i1 %tobool178.not.i, label %land.lhs.true.i.for.cond190.i.preheader_crit_edge, label %land.lhs.true179.i

land.lhs.true.i.for.cond190.i.preheader_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond190.i.preheader

land.lhs.true179.i:                               ; preds = %land.lhs.true.i
  %.b263.i = load i1, ptr @genl_validate_assign_mc_groups.__warned, align 1
  br i1 %.b263.i, label %land.lhs.true179.i.for.cond190.i.preheader_crit_edge, label %if.then181.i

land.lhs.true179.i.for.cond190.i.preheader_crit_edge: ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond190.i.preheader

if.then181.i:                                     ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_validate_assign_mc_groups.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 293, ptr noundef nonnull @.str.8) #12
  br label %for.cond190.i.preheader

for.cond190.i.preheader:                          ; preds = %if.then181.i, %land.lhs.true179.i.for.cond190.i.preheader_crit_edge, %land.lhs.true.i.for.cond190.i.preheader_crit_edge, %rcu_read_lock.exit.i.for.cond190.i.preheader_crit_edge
  br label %for.cond190.i

for.cond190.i:                                    ; preds = %for.body193.i.for.cond190.i_crit_edge, %for.cond190.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body193.i.for.cond190.i_crit_edge ], [ @net_namespace_list, %for.cond190.i.preheader ]
  %63 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp191.not.i = icmp eq ptr %.pn.i, @net_namespace_list
  br i1 %cmp191.not.i, label %for.cond190.i.for.end207.i_crit_edge, label %for.body193.i

for.cond190.i.for.end207.i_crit_edge:             ; preds = %for.cond190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end207.i

for.body193.i:                                    ; preds = %for.cond190.i
  %genl_sock.i = getelementptr i8, ptr %.pn.i, i32 248
  %64 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %genl_sock.i, align 4
  %66 = load i32, ptr @mc_groups_longs, align 4
  %mul.i = shl i32 %66, 5
  %call194.i = call i32 @__netlink_change_ngroups(ptr noundef %65, i32 noundef %mul.i) #12
  %tobool195.not.i = icmp eq i32 %call194.i, 0
  br i1 %tobool195.not.i, label %for.body193.i.for.cond190.i_crit_edge, label %for.body193.i.for.end207.i_crit_edge

for.body193.i.for.end207.i_crit_edge:             ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end207.i

for.body193.i.for.cond190.i_crit_edge:            ; preds = %for.body193.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond190.i

for.end207.i:                                     ; preds = %for.body193.i.for.end207.i_crit_edge, %for.cond190.i.for.end207.i_crit_edge
  %err.2.i = phi i32 [ %call194.i, %for.body193.i.for.end207.i_crit_edge ], [ 0, %for.cond190.i.for.end207.i_crit_edge ]
  %call.i267.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i267.i, label %for.end207.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i270.i

for.end207.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %for.end207.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i270.i:                             ; preds = %for.end207.i
  %call1.i268.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i268.i)
  %tobool.not.i269.i = icmp eq i32 %call1.i268.i, 0
  br i1 %tobool.not.i269.i, label %land.lhs.true.i270.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i272.i

land.lhs.true.i270.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i270.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i272.i:                            ; preds = %land.lhs.true.i270.i
  %.b4.i271.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i271.i, label %land.lhs.true2.i272.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i273.i

land.lhs.true2.i272.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i272.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i273.i:                                   ; preds = %land.lhs.true2.i272.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i273.i, %land.lhs.true2.i272.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i270.i.rcu_read_unlock.exit.i_crit_edge, %for.end207.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %67 = call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i274.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i274.i to ptr
  %preempt_count.i.i.i.i275.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i275.i, align 4
  %sub.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i275.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @netlink_table_ungrab() #12
  br label %if.end211.i

if.else208.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = load i32, ptr @mc_groups_longs, align 4
  %mul209.i = shl i32 %71, 5
  %call210.i = call i32 @netlink_change_ngroups(ptr noundef nonnull %57, i32 noundef %mul209.i) #12
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.else208.i, %rcu_read_unlock.exit.i
  %err.3.i = phi i32 [ %err.2.i, %rcu_read_unlock.exit.i ], [ %call210.i, %if.else208.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.i)
  %tobool215.not.i = icmp eq i32 %err.3.i, 0
  %or.cond.i73 = select i1 %groups_allocated.0.off0.i, i1 true, i1 %tobool215.not.i
  br i1 %or.cond.i73, label %if.end211.i.genl_validate_assign_mc_groups.exit_crit_edge, label %for.cond217.preheader.i

if.end211.i.genl_validate_assign_mc_groups.exit_crit_edge: ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_validate_assign_mc_groups.exit

for.cond217.preheader.i:                          ; preds = %if.end211.i
  %72 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %n_mcgrps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp220294.not.i = icmp eq i8 %73, 0
  br i1 %cmp220294.not.i, label %for.cond217.preheader.i.errout_remove_crit_edge, label %for.cond217.preheader.i.for.body222.i_crit_edge

for.cond217.preheader.i.for.body222.i_crit_edge:  ; preds = %for.cond217.preheader.i
  br label %for.body222.i

for.cond217.preheader.i.errout_remove_crit_edge:  ; preds = %for.cond217.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_remove

for.body222.i:                                    ; preds = %for.body222.i.for.body222.i_crit_edge, %for.cond217.preheader.i.for.body222.i_crit_edge
  %i.1295.i = phi i32 [ %inc225.i, %for.body222.i.for.body222.i_crit_edge ], [ 0, %for.cond217.preheader.i.for.body222.i_crit_edge ]
  %74 = ptrtoint ptr %mcgrp_offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mcgrp_offset.i, align 4
  %add.i74 = add i32 %75, %i.1295.i
  %76 = load ptr, ptr @mc_groups, align 4
  call void @_clear_bit(i32 noundef %add.i74, ptr noundef %76) #12
  %inc225.i = add nuw nsw i32 %i.1295.i, 1
  %77 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %n_mcgrps.i, align 1
  %conv219.i = zext i8 %78 to i32
  %cmp220.i = icmp ult i32 %inc225.i, %conv219.i
  br i1 %cmp220.i, label %for.body222.i.for.body222.i_crit_edge, label %for.body222.i.genl_validate_assign_mc_groups.exit_crit_edge

for.body222.i.genl_validate_assign_mc_groups.exit_crit_edge: ; preds = %for.body222.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_validate_assign_mc_groups.exit

for.body222.i.for.body222.i_crit_edge:            ; preds = %for.body222.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body222.i

cleanup228.sink.split.i:                          ; preds = %if.end29.i.cleanup228.sink.split.i_crit_edge, %for.body.i64.cleanup228.sink.split.i_crit_edge
  %.sink.i75 = phi i32 [ 256, %for.body.i64.cleanup228.sink.split.i_crit_edge ], [ 258, %if.end29.i.cleanup228.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink.i75, i32 noundef 9, ptr noundef null) #12
  br label %errout_remove

genl_validate_assign_mc_groups.exit:              ; preds = %for.body222.i.genl_validate_assign_mc_groups.exit_crit_edge, %if.end211.i.genl_validate_assign_mc_groups.exit_crit_edge
  br i1 %tobool215.not.i, label %genl_validate_assign_mc_groups.exit.if.end29_crit_edge, label %genl_validate_assign_mc_groups.exit.errout_remove_crit_edge

genl_validate_assign_mc_groups.exit.errout_remove_crit_edge: ; preds = %genl_validate_assign_mc_groups.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout_remove

genl_validate_assign_mc_groups.exit.if.end29_crit_edge: ; preds = %genl_validate_assign_mc_groups.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %genl_validate_assign_mc_groups.exit.if.end29_crit_edge, %if.end168.i.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  call void @up_write(ptr noundef nonnull @cb_lock) #12
  call fastcc void @genl_ctrl_event(i32 noundef 1, ptr noundef %family, ptr noundef null, i32 noundef 0)
  %79 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %n_mcgrps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp3192.not = icmp eq i8 %80, 0
  br i1 %cmp3192.not, label %if.end29.cleanup_crit_edge, label %for.body.lr.ph

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end29
  %mcgrps = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 15
  %mcgrp_offset = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %81 = ptrtoint ptr %mcgrps to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mcgrps, align 4
  %arrayidx = getelementptr %struct.genl_multicast_group, ptr %82, i32 %i.093
  %83 = ptrtoint ptr %mcgrp_offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mcgrp_offset, align 4
  %add33 = add i32 %84, %i.093
  call fastcc void @genl_ctrl_event(i32 noundef 7, ptr noundef %family, ptr noundef %arrayidx, i32 noundef %add33)
  %inc = add nuw nsw i32 %i.093, 1
  %85 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %n_mcgrps.i, align 1
  %conv = zext i8 %86 to i32
  %cmp31 = icmp ult i32 %inc, %conv
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

errout_remove:                                    ; preds = %genl_validate_assign_mc_groups.exit.errout_remove_crit_edge, %cleanup228.sink.split.i, %for.cond217.preheader.i.errout_remove_crit_edge, %if.else22.i.i.errout_remove_crit_edge, %if.end8.i.i.i.i.errout_remove_crit_edge
  %retval.2.i82 = phi i32 [ %err.3.i, %genl_validate_assign_mc_groups.exit.errout_remove_crit_edge ], [ -22, %cleanup228.sink.split.i ], [ %err.3.i, %for.cond217.preheader.i.errout_remove_crit_edge ], [ -12, %if.end8.i.i.i.i.errout_remove_crit_edge ], [ -12, %if.else22.i.i.errout_remove_crit_edge ]
  %87 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %family, align 4
  %call36 = call ptr @idr_remove(ptr noundef nonnull @genl_fam_idr, i32 noundef %88) #12
  br label %errout_locked

errout_locked:                                    ; preds = %errout_remove, %if.end19.errout_locked_crit_edge, %genl_family_find_byname.exit
  %err.0 = phi i32 [ %retval.2.i82, %errout_remove ], [ -17, %genl_family_find_byname.exit ], [ %call20, %if.end19.errout_locked_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  call void @up_write(ptr noundef nonnull @cb_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %errout_locked, %for.body.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %cleanup88.sink.split.i, %genl_get_cmd_by_index.exit158.i.cleanup_crit_edge, %genl_get_cmd_by_index.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %errout_locked ], [ -22, %cleanup88.sink.split.i ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ -22, %genl_get_cmd_by_index.exit158.i.cleanup_crit_edge ], [ -22, %genl_get_cmd_by_index.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genl_ctrl_event(i32 noundef %event, ptr noundef %family, ptr noundef %grp, i32 noundef %grp_id) unnamed_addr #0 align 64 {
entry:
  %tmp.i9.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge23
    i32 7, label %if.end.do.body24_crit_edge
    i32 8, label %if.end.do.body24_crit_edge24
  ]

if.end.do.body24_crit_edge24:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge23
  %tobool1.not = icmp eq ptr %grp, null
  br i1 %tobool1.not, label %sw.bb.if.end16_crit_edge, label %do.end, !prof !102

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1077, i32 noundef 9, ptr noundef null) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %sw.bb.if.end16_crit_edge
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %if.end.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %conv = trunc i32 %event to i8
  %call2.i = tail call fastcc i32 @ctrl_fill_info(ptr noundef %family, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %call.i.i.i, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #12
  %2 = inttoptr i32 %call2.i to ptr
  br label %sw.epilog

do.body24:                                        ; preds = %if.end.do.body24_crit_edge, %if.end.do.body24_crit_edge24
  %tobool25.not = icmp eq ptr %grp, null
  br i1 %tobool25.not, label %do.body35, label %do.end43, !prof !101

do.body35:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/genetlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1082, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

do.end43:                                         ; preds = %do.body24
  %conv44 = trunc i32 %event to i8
  %call.i.i.i1 = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %cmp.i2 = icmp eq ptr %call.i.i.i1, null
  br i1 %cmp.i2, label %do.end43.cleanup_crit_edge, label %if.end.i4

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i4:                                        ; preds = %do.end43
  %3 = load i32, ptr @genl_ctrl, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %add.i.i.i3 = add i32 %4, 4
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i1, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %cond.false.i.i.i.i.i, label %if.end.i4.skb_tailroom.exit.i.i.i.i_crit_edge

if.end.i4.skb_tailroom.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i1, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i1, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  br label %skb_tailroom.exit.i.i.i.i

skb_tailroom.exit.i.i.i.i:                        ; preds = %cond.false.i.i.i.i.i, %if.end.i4.skb_tailroom.exit.i.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i.i.i, %cond.false.i.i.i.i.i ], [ 0, %if.end.i4.skb_tailroom.exit.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = add i32 %4, 23
  %and.i.i.i.i.i5 = and i32 %sub.i.i.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i.i, i32 %and.i.i.i.i.i5)
  %cmp.i.i.i.i = icmp slt i32 %cond.i.i.i.i.i, %and.i.i.i.i.i5
  br i1 %cmp.i.i.i.i, label %skb_tailroom.exit.i.i.i.i.if.then4.i6_crit_edge, label %nlmsg_put.exit.i.i.i, !prof !101

skb_tailroom.exit.i.i.i.i.if.then4.i6_crit_edge:  ; preds = %skb_tailroom.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i6

nlmsg_put.exit.i.i.i:                             ; preds = %skb_tailroom.exit.i.i.i.i
  %call3.i.i.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 0, i32 noundef 0, i32 noundef %3, i32 noundef %add.i.i.i3, i32 noundef 0) #12
  %cmp.i.i.i = icmp eq ptr %call3.i.i.i.i, null
  br i1 %cmp.i.i.i, label %nlmsg_put.exit.i.i.i.if.then4.i6_crit_edge, label %genlmsg_put.exit.i.i

nlmsg_put.exit.i.i.i.if.then4.i6_crit_edge:       ; preds = %nlmsg_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i6

genlmsg_put.exit.i.i:                             ; preds = %nlmsg_put.exit.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 16
  %11 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv44, ptr %add.ptr.i.i.i.i, align 2
  %12 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %conv.i.i.i = trunc i32 %12 to i8
  %version3.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 17
  %13 = ptrtoint ptr %version3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.i.i, ptr %version3.i.i.i, align 1
  %reserved.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 18
  %14 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %reserved.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 20
  %cmp.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i.i, label %genlmsg_put.exit.i.i.if.then4.i6_crit_edge, label %if.end.i.i

genlmsg_put.exit.i.i.if.then4.i6_crit_edge:       ; preds = %genlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4.i6

if.end.i.i:                                       ; preds = %genlmsg_put.exit.i.i
  %name.i.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 2
  %call.i.i1.i = tail call i32 @strlen(ptr noundef %name.i.i) #15
  %add.i1.i.i = add i32 %call.i.i1.i, 1
  %call1.i.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 2, i32 noundef %add.i1.i.i, ptr noundef %name.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.if.then.i.i.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family, align 4
  %conv.i.i = trunc i32 %16 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %17 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %tmp.i.i.i, align 2
  %call.i2.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %lor.lhs.false.i.i.if.then.i.i.i.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i.i.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.end5.i.i:                                      ; preds = %lor.lhs.false.i.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i1, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i3.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 7, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i.i)
  %cmp.i4.i.i = icmp slt i32 %call1.i3.i.i, 0
  %cmp727.i.i = icmp eq ptr %19, null
  %cmp7.i.i = select i1 %cmp.i4.i.i, i1 true, i1 %cmp727.i.i
  br i1 %cmp7.i.i, label %if.end5.i.i.if.then.i.i.i.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.if.then.i.i.i.i.i_crit_edge:          ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %20 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i6.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i.i)
  %cmp.i7.i.i = icmp slt i32 %call1.i6.i.i, 0
  %cmp1228.i.i = icmp eq ptr %21, null
  %cmp12.i.i = select i1 %cmp.i7.i.i, i1 true, i1 %cmp1228.i.i
  br i1 %cmp12.i.i, label %if.end10.i.i.if.then.i.i.i.i.i_crit_edge, label %if.end15.i.i

if.end10.i.i.if.then.i.i.i.i.i_crit_edge:         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i9.i.i) #12
  %22 = ptrtoint ptr %tmp.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %grp_id, ptr %tmp.i9.i.i, align 4
  %call.i10.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false18.i.i, label %if.end15.i.i.if.then.i.i.i.i.i_crit_edge

if.end15.i.i.if.then.i.i.i.i.i_crit_edge:         ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

lor.lhs.false18.i.i:                              ; preds = %if.end15.i.i
  %call.i.i = call i32 @strlen(ptr noundef nonnull %grp) #15
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i1, i32 noundef 1, i32 noundef %add.i.i, ptr noundef nonnull %grp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool22.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool22.not.i.i, label %ctrl_fill_mcgrp_info.exit.i, label %lor.lhs.false18.i.i.if.then.i.i.i.i.i_crit_edge

lor.lhs.false18.i.i.if.then.i.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %lor.lhs.false18.i.i.if.then.i.i.i.i.i_crit_edge, %if.end15.i.i.if.then.i.i.i.i.i_crit_edge, %if.end10.i.i.if.then.i.i.i.i.i_crit_edge, %if.end5.i.i.if.then.i.i.i.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i.i.i_crit_edge
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i1, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %24, %call3.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !101

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i20.i.i = ptrtoint ptr %call3.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i21.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i22.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i20.i.i, %sub.ptr.rhs.cast.i.i.i21.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i1, i32 noundef %sub.ptr.sub.i.i.i22.i.i) #12
  br label %if.then4.i6

ctrl_fill_mcgrp_info.exit.i:                      ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i12.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i12.i.i, ptr %21, align 2
  %30 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i14.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i15.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i16.i.i = sub i32 %sub.ptr.lhs.cast.i14.i.i, %sub.ptr.rhs.cast.i15.i.i
  %conv.i17.i.i = trunc i32 %sub.ptr.sub.i16.i.i to i16
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i17.i.i, ptr %19, align 2
  %32 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %call3.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %33 = ptrtoint ptr %call3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %call3.i.i.i.i, align 4
  br label %sw.epilog

if.then4.i6:                                      ; preds = %if.end.i.i.i.i.i, %genlmsg_put.exit.i.i.if.then4.i6_crit_edge, %nlmsg_put.exit.i.i.i.if.then4.i6_crit_edge, %skb_tailroom.exit.i.i.i.i.if.then4.i6_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i1, i32 noundef 0) #12
  br label %cleanup

sw.epilog:                                        ; preds = %ctrl_fill_mcgrp_info.exit.i, %if.then4.i, %if.end.i.sw.epilog_crit_edge
  %msg.0 = phi ptr [ %2, %if.then4.i ], [ %call.i.i.i, %if.end.i.sw.epilog_crit_edge ], [ %call.i.i.i1, %ctrl_fill_mcgrp_info.exit.i ]
  %cmp.i8 = icmp ugt ptr %msg.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8, label %sw.epilog.cleanup_crit_edge, label %if.end49

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  %netnsok = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 6
  %34 = ptrtoint ptr %netnsok to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %netnsok, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool50.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool50.not, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end49
  %35 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i9 = icmp eq i8 %35, 0
  br i1 %cmp.i9, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then51
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i10, !prof !102

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i10:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 308, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %36 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg.0, i32 0, i32 3, i32 16
  %38 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %dst_group.i.i, align 8
  %call.i.i11 = call i32 @netlink_broadcast(ptr noundef %37, ptr noundef %msg.0, i32 noundef 0, i32 noundef %36, i32 noundef 3264) #12
  br label %cleanup

if.else:                                          ; preds = %if.end49
  %39 = call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.else.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else.rcu_read_lock.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else.rcu_read_lock.exit_crit_edge
  %call53 = call i32 @genlmsg_multicast_allns(ptr noundef nonnull @genl_ctrl, ptr noundef %msg.0, i32 noundef 0, i32 noundef 0, i32 noundef 2592)
  %call.i12 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i12, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %rcu_read_lock.exit
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %43 = call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i19 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end39.i, %if.then.i10, %land.rhs.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then4.i6, %do.end43.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @genl_unregister_family(ptr noundef %family) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @cb_lock) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  tail call void @up_write(ptr noundef nonnull @cb_lock) #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @netlink_table_grab() #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i20 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i20, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i21 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b54.i = load i1, ptr @genl_unregister_mc_groups.__warned, align 1
  br i1 %.b54.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_unregister_mc_groups.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 328, ptr noundef nonnull @.str.8) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn67.i = load volatile ptr, ptr @net_namespace_list, align 4
  %cmp.not68.i = icmp eq ptr %.pn67.i, @net_namespace_list
  br i1 %cmp.not68.i, label %do.end.i.for.end22.i_crit_edge, label %for.cond9.preheader.lr.ph.i

do.end.i.for.end22.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22.i

for.cond9.preheader.lr.ph.i:                      ; preds = %do.end.i
  %n_mcgrps.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %mcgrp_offset.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  br label %for.cond9.preheader.i

for.cond.loopexit.i:                              ; preds = %for.body12.i.for.cond.loopexit.i_crit_edge, %for.cond9.preheader.i.for.cond.loopexit.i_crit_edge
  %6 = ptrtoint ptr %.pn69.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load volatile ptr, ptr %.pn69.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_namespace_list
  br i1 %cmp.not.i, label %for.cond.loopexit.i.for.end22.i_crit_edge, label %for.cond.loopexit.i.for.cond9.preheader.i_crit_edge

for.cond.loopexit.i.for.cond9.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader.i

for.cond.loopexit.i.for.end22.i_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22.i

for.cond9.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond9.preheader.i_crit_edge, %for.cond9.preheader.lr.ph.i
  %.pn69.i = phi ptr [ %.pn67.i, %for.cond9.preheader.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.cond9.preheader.i_crit_edge ]
  %7 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %n_mcgrps.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1065.not.i = icmp eq i8 %8, 0
  br i1 %cmp1065.not.i, label %for.cond9.preheader.i.for.cond.loopexit.i_crit_edge, label %for.body12.lr.ph.i

for.cond9.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body12.lr.ph.i:                               ; preds = %for.cond9.preheader.i
  %genl_sock.i = getelementptr i8, ptr %.pn69.i, i32 248
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.066.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc.i, %for.body12.i.for.body12.i_crit_edge ]
  %9 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %genl_sock.i, align 4
  %11 = ptrtoint ptr %mcgrp_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcgrp_offset.i, align 4
  %add.i = add i32 %12, %i.066.i
  tail call void @__netlink_clear_multicast_users(ptr noundef %10, i32 noundef %add.i) #12
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %13 = ptrtoint ptr %n_mcgrps.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n_mcgrps.i, align 1
  %conv.i = zext i8 %14 to i32
  %cmp10.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp10.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.for.cond.loopexit.i_crit_edge

for.body12.i.for.cond.loopexit.i_crit_edge:       ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i

for.end22.i:                                      ; preds = %for.cond.loopexit.i.for.end22.i_crit_edge, %do.end.i.for.end22.i_crit_edge
  %call.i55.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i55.i, label %for.end22.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i58.i

for.end22.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i58.i:                              ; preds = %for.end22.i
  %call1.i56.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool.not.i57.i, label %land.lhs.true.i58.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i60.i

land.lhs.true.i58.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i60.i:                             ; preds = %land.lhs.true.i58.i
  %.b4.i59.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i, label %land.lhs.true2.i60.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i61.i

land.lhs.true2.i60.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i61.i:                                    ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i61.i, %land.lhs.true2.i60.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i58.i.rcu_read_unlock.exit.i_crit_edge, %for.end22.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %15 = tail call i32 @llvm.read_register.i32(metadata !91) #12
  %and.i.i.i.i.i62.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i62.i to ptr
  %preempt_count.i.i.i.i63.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i63.i, align 4
  %sub.i.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i63.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @netlink_table_ungrab() #12
  %n_mcgrps24.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %19 = ptrtoint ptr %n_mcgrps24.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %n_mcgrps24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp2671.not.i = icmp eq i8 %20, 0
  br i1 %cmp2671.not.i, label %rcu_read_unlock.exit.i.genl_unregister_mc_groups.exit_crit_edge, label %for.body28.lr.ph.i

rcu_read_unlock.exit.i.genl_unregister_mc_groups.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_unregister_mc_groups.exit

for.body28.lr.ph.i:                               ; preds = %rcu_read_unlock.exit.i
  %mcgrp_offset29.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  %mcgrps.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 15
  br label %for.body28.i

for.body28.i:                                     ; preds = %if.end34.i.for.body28.i_crit_edge, %for.body28.lr.ph.i
  %i.172.i = phi i32 [ 0, %for.body28.lr.ph.i ], [ %inc37.i, %if.end34.i.for.body28.i_crit_edge ]
  %21 = ptrtoint ptr %mcgrp_offset29.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mcgrp_offset29.i, align 4
  %add30.i = add i32 %22, %i.172.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add30.i)
  %cmp31.not.i = icmp eq i32 %add30.i, 1
  br i1 %cmp31.not.i, label %for.body28.i.if.end34.i_crit_edge, label %if.then33.i

for.body28.i.if.end34.i_crit_edge:                ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then33.i:                                      ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = load ptr, ptr @mc_groups, align 4
  tail call void @_clear_bit(i32 noundef %add30.i, ptr noundef %23) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %for.body28.i.if.end34.i_crit_edge
  %24 = ptrtoint ptr %mcgrps.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcgrps.i, align 4
  %arrayidx.i = getelementptr %struct.genl_multicast_group, ptr %25, i32 %i.172.i
  tail call fastcc void @genl_ctrl_event(i32 noundef 8, ptr noundef %family, ptr noundef %arrayidx.i, i32 noundef %add30.i) #12
  %inc37.i = add nuw nsw i32 %i.172.i, 1
  %26 = ptrtoint ptr %n_mcgrps24.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %n_mcgrps24.i, align 1
  %conv25.i = zext i8 %27 to i32
  %cmp26.i = icmp ult i32 %inc37.i, %conv25.i
  br i1 %cmp26.i, label %if.end34.i.for.body28.i_crit_edge, label %if.end34.i.genl_unregister_mc_groups.exit_crit_edge

if.end34.i.genl_unregister_mc_groups.exit_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_unregister_mc_groups.exit

if.end34.i.for.body28.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body28.i

genl_unregister_mc_groups.exit:                   ; preds = %if.end34.i.genl_unregister_mc_groups.exit_crit_edge, %rcu_read_unlock.exit.i.genl_unregister_mc_groups.exit_crit_edge
  %28 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %family, align 4
  %call2 = tail call ptr @idr_remove(ptr noundef nonnull @genl_fam_idr, i32 noundef %29) #12
  tail call void @up_write(ptr noundef nonnull @cb_lock) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 468) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @genl_sk_destructing_cnt, i32 noundef 4) #12
  %30 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %genl_unregister_mc_groups.exit.do.end14_crit_edge, label %if.end8

genl_unregister_mc_groups.exit.do.end14_crit_edge: ; preds = %genl_unregister_mc_groups.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.end8:                                          ; preds = %genl_unregister_mc_groups.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %31 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call924 = call i32 @prepare_to_wait_event(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i1925 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @genl_sk_destructing_cnt, i32 noundef 4) #12
  %32 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1126 = icmp eq i32 %32, 0
  br i1 %cmp1126, label %if.end8.for.end_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  br label %cleanup

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  call void @schedule() #12
  %call9 = call i32 @prepare_to_wait_event(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %call.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @genl_sk_destructing_cnt, i32 noundef 4) #12
  %33 = load volatile i32, ptr @genl_sk_destructing_cnt, align 4
  %cmp11 = icmp eq i32 %33, 0
  br i1 %cmp11, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @genl_sk_destructing_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end14

do.end14:                                         ; preds = %for.end, %genl_unregister_mc_groups.exit.do.end14_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  call fastcc void @genl_ctrl_event(i32 noundef 2, ptr noundef %family, ptr noundef null, i32 noundef 0)
  br label %return

return:                                           ; preds = %do.end14, %if.then
  %retval.0 = phi i32 [ 0, %do.end14 ], [ -2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr nocapture noundef readonly %family, i32 noundef %flags, i8 noundef zeroext %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %hdrsize = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 1
  %2 = ptrtoint ptr %hdrsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hdrsize, align 4
  %add = add i32 %3, 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %entry.skb_tailroom.exit.i_crit_edge

entry.skb_tailroom.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %entry.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %entry.skb_tailroom.exit.i_crit_edge ]
  %sub.i.i = add i32 %3, 23
  %and.i.i = and i32 %sub.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %and.i.i)
  %cmp.i = icmp slt i32 %cond.i.i, %and.i.i
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !101

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %1, i32 noundef %add, i32 noundef %flags) #12
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cmd, ptr %add.ptr.i, align 2
  %version = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 3
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  %conv = trunc i32 %12 to i8
  %version3 = getelementptr i8, ptr %call3.i, i32 17
  %13 = ptrtoint ptr %version3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %version3, align 1
  %reserved = getelementptr i8, ptr %call3.i, i32 18
  %14 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %reserved, align 2
  %add.ptr = getelementptr i8, ptr %call3.i, i32 20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %nlmsg_put.exit.cleanup_crit_edge ], [ null, %skb_tailroom.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @genl_ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.problem_crit_edge, label %if.end

entry.problem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %problem

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @genl_pernet_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.problem_crit_edge

if.end.problem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %problem

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0

problem:                                          ; preds = %if.end.problem_crit_edge, %entry.problem_crit_edge
  %err.0 = phi i32 [ %call, %entry.problem_crit_edge ], [ %call1, %if.end.problem_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.17, i32 noundef %err.0) #19
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @genlmsg_multicast_allns(ptr nocapture noundef readonly %family, ptr noundef %skb, i32 noundef %portid, i32 noundef %group, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n_mcgrps = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %0 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_mcgrps, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %group)
  %cmp.not = icmp ugt i32 %conv, %group
  br i1 %cmp.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @genlmsg_multicast_allns.__already_done, align 1
  br i1 %.b45, label %land.rhs.return_crit_edge, label %if.then, !prof !102

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genlmsg_multicast_allns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1478, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end39:                                         ; preds = %entry
  %mcgrp_offset = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  %2 = ptrtoint ptr %mcgrp_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mcgrp_offset, align 4
  %add = add i32 %3, %group
  %call.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end39.do.end.i_crit_edge

if.end39.do.end.i_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b65.i = load i1, ptr @genlmsg_mcast.__warned, align 1
  br i1 %.b65.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genlmsg_mcast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1445, ptr noundef nonnull @.str.8) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end39.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn71.i = load volatile ptr, ptr @net_namespace_list, align 4
  %cmp.not73.i = icmp eq ptr %.pn71.i, @net_namespace_list
  br i1 %cmp.not73.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn76.i = phi ptr [ %.pn.i, %if.end23.i.for.body.i_crit_edge ], [ %.pn71.i, %do.end.i.for.body.i_crit_edge ]
  %prev.075.i = phi ptr [ %net.077.i, %if.end23.i.for.body.i_crit_edge ], [ null, %do.end.i.for.body.i_crit_edge ]
  %delivered.0.off074.i = phi i1 [ %delivered.1.off0.i, %if.end23.i.for.body.i_crit_edge ], [ false, %do.end.i.for.body.i_crit_edge ]
  %net.077.i = getelementptr i8, ptr %.pn76.i, i32 -108
  %tobool10.not.i = icmp eq ptr %prev.075.i, null
  br i1 %tobool10.not.i, label %for.body.i.if.end23.i_crit_edge, label %if.then11.i

for.body.i.if.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then11.i:                                      ; preds = %for.body.i
  %call12.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef %flags) #12
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.error.i_crit_edge, label %if.end15.i

if.then11.i.error.i_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end15.i:                                       ; preds = %if.then11.i
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %prev.075.i, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call12.i, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %dst_group.i.i, align 8
  %call.i.i = tail call i32 @netlink_broadcast(ptr noundef %5, ptr noundef nonnull %call12.i, i32 noundef %portid, i32 noundef %add, i32 noundef %flags) #12
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #12
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %7, label %if.end15.i.error.i_crit_edge [
    i32 0, label %if.end15.i.if.end23.i_crit_edge
    i32 -3, label %if.end23.fold.split.i
  ]

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end15.i.error.i_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error.i

if.end23.fold.split.i:                            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.fold.split.i, %if.end15.i.if.end23.i_crit_edge, %for.body.i.if.end23.i_crit_edge
  %delivered.1.off0.i = phi i1 [ %delivered.0.off074.i, %for.body.i.if.end23.i_crit_edge ], [ true, %if.end15.i.if.end23.i_crit_edge ], [ %delivered.0.off074.i, %if.end23.fold.split.i ]
  %9 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load volatile ptr, ptr %.pn76.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @net_namespace_list
  br i1 %cmp.not.i, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %delivered.0.off0.lcssa.i = phi i1 [ false, %do.end.i.for.end.i_crit_edge ], [ %delivered.1.off0.i, %if.end23.i.for.end.i_crit_edge ]
  %prev.0.lcssa.i = phi ptr [ null, %do.end.i.for.end.i_crit_edge ], [ %net.077.i, %if.end23.i.for.end.i_crit_edge ]
  %genl_sock32.i = getelementptr inbounds %struct.net, ptr %prev.0.lcssa.i, i32 0, i32 21
  %10 = ptrtoint ptr %genl_sock32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genl_sock32.i, align 4
  %dst_group.i66.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %dst_group.i66.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %dst_group.i66.i, align 8
  %call.i67.i = tail call i32 @netlink_broadcast(ptr noundef %11, ptr noundef %skb, i32 noundef %portid, i32 noundef %add, i32 noundef %flags) #12
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i67.i, i32 0) #12
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %13, label %for.end.i.return_crit_edge [
    i32 0, label %for.end.i.if.end40.thread.i_crit_edge
    i32 -3, label %if.end40.i
  ]

for.end.i.if.end40.thread.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.thread.i

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end40.i:                                       ; preds = %for.end.i
  br i1 %delivered.0.off0.lcssa.i, label %if.end40.i.if.end40.thread.i_crit_edge, label %if.end40.i.return_crit_edge

if.end40.i.return_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end40.i.if.end40.thread.i_crit_edge:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.thread.i

if.end40.thread.i:                                ; preds = %if.end40.i.if.end40.thread.i_crit_edge, %for.end.i.if.end40.thread.i_crit_edge
  br label %return

error.i:                                          ; preds = %if.end15.i.error.i_crit_edge, %if.then11.i.error.i_crit_edge
  %err.0.i = phi i32 [ -12, %if.then11.i.error.i_crit_edge ], [ %7, %if.end15.i.error.i_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %error.i, %if.end40.thread.i, %if.end40.i.return_crit_edge, %for.end.i.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ], [ %err.0.i, %error.i ], [ %13, %for.end.i.return_crit_edge ], [ 0, %if.end40.thread.i ], [ -3, %if.end40.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @genl_notify(ptr nocapture noundef readonly %family, ptr noundef %skb, ptr nocapture noundef readonly %info, i32 noundef %group, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %genl_sock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %genl_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %genl_sock, align 4
  %n_mcgrps = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %4 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %n_mcgrps, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %group)
  %cmp.not = icmp ugt i32 %conv, %group
  br i1 %cmp.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b50 = load i1, ptr @genl_notify.__already_done, align 1
  br i1 %.b50, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !102

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1492, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %entry
  %mcgrp_offset = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  %6 = ptrtoint ptr %mcgrp_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcgrp_offset, align 4
  %add = add i32 %7, %group
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid, align 4
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlhdr, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end39.nlmsg_report.exit_crit_edge, label %cond.true.i

if.end39.nlmsg_report.exit_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_report.exit

cond.true.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nlmsg_flags.i, align 2
  %14 = lshr i16 %13, 3
  %.lobit.i = and i16 %14, 1
  %15 = zext i16 %.lobit.i to i32
  br label %nlmsg_report.exit

nlmsg_report.exit:                                ; preds = %cond.true.i, %if.end39.nlmsg_report.exit_crit_edge
  %cond.i = phi i32 [ %15, %cond.true.i ], [ 0, %if.end39.nlmsg_report.exit_crit_edge ]
  %call41 = tail call i32 @nlmsg_notify(ptr noundef %3, ptr noundef %skb, i32 noundef %9, i32 noundef %add, i32 noundef %cond.i, i32 noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_report.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsg_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_table_grab() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_change_ngroups(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_table_ungrab() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_change_ngroups(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netlink_clear_multicast_users(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_fill_info(ptr noundef %family, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %skb, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %tmp.i203 = alloca i32, align 4
  %tmp.i186 = alloca i32, align 4
  %tmp.i184 = alloca i32, align 4
  %tmp.i164 = alloca i32, align 4
  %tmp.i162 = alloca i32, align 4
  %tmp.i160 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @genl_ctrl, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %add.i = add i32 %1, 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %entry.skb_tailroom.exit.i.i_crit_edge

entry.skb_tailroom.exit.i.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %entry.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i, %cond.false.i.i.i ], [ 0, %entry.skb_tailroom.exit.i.i_crit_edge ]
  %sub.i.i.i = add i32 %1, 23
  %and.i.i.i = and i32 %sub.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %and.i.i.i)
  %cmp.i.i = icmp slt i32 %cond.i.i.i, %and.i.i.i
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup107_crit_edge, label %nlmsg_put.exit.i, !prof !101

skb_tailroom.exit.i.i.cleanup107_crit_edge:       ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %0, i32 noundef %add.i, i32 noundef %flags) #12
  %cmp.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i, label %nlmsg_put.exit.i.cleanup107_crit_edge, label %genlmsg_put.exit

nlmsg_put.exit.i.cleanup107_crit_edge:            ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

genlmsg_put.exit:                                 ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cmd, ptr %add.ptr.i.i, align 2
  %9 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %conv.i = trunc i32 %9 to i8
  %version3.i = getelementptr i8, ptr %call3.i.i, i32 17
  %10 = ptrtoint ptr %version3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %version3.i, align 1
  %reserved.i = getelementptr i8, ptr %call3.i.i, i32 18
  %11 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %reserved.i, align 2
  %add.ptr.i = getelementptr i8, ptr %call3.i.i, i32 20
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %genlmsg_put.exit.cleanup107_crit_edge, label %if.end

genlmsg_put.exit.cleanup107_crit_edge:            ; preds = %genlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup107

if.end:                                           ; preds = %genlmsg_put.exit
  %name = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 2
  %call.i = tail call i32 @strlen(ptr noundef %name) #15
  %add.i158 = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i158, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  %conv = trunc i32 %13 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %tmp.i, align 2
  %call.i159 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool3.not = icmp eq i32 %call.i159, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.if.then.i.i.i_crit_edge

lor.lhs.false.if.then.i.i.i_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 3
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i160) #12
  %17 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i160, align 4
  %call.i161 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i160) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i160) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool6.not = icmp eq i32 %call.i161, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.if.then.i.i.i_crit_edge

lor.lhs.false4.if.then.i.i.i_crit_edge:           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %hdrsize = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 1
  %18 = ptrtoint ptr %hdrsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdrsize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i162) #12
  %20 = ptrtoint ptr %tmp.i162 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i162, align 4
  %call.i163 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i162) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i162) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool9.not = icmp eq i32 %call.i163, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.if.then.i.i.i_crit_edge

lor.lhs.false7.if.then.i.i.i_crit_edge:           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %maxattr = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 4
  %21 = ptrtoint ptr %maxattr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxattr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i164) #12
  %23 = ptrtoint ptr %tmp.i164 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tmp.i164, align 4
  %call.i165 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i164) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i164) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool12.not = icmp eq i32 %call.i165, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false10.if.then.i.i.i_crit_edge

lor.lhs.false10.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end14:                                         ; preds = %lor.lhs.false10
  %n_ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 7
  %24 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %n_ops.i, align 1
  %conv.i166 = zext i8 %25 to i32
  %n_small_ops.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 8
  %26 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i = zext i8 %27 to i32
  %add.i167 = sub nsw i32 0, %conv.i166
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %add.i167)
  %tobool16.not = icmp eq i32 %conv1.i, %add.i167
  br i1 %tobool16.not, label %if.end14.if.end61_crit_edge, label %if.then17

if.end14.if.end61_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then17:                                        ; preds = %if.end14
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %call1.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %cmp.i169 = icmp slt i32 %call1.i168, 0
  %cmp19246 = icmp eq ptr %29, null
  %cmp19 = select i1 %cmp.i169, i1 true, i1 %cmp19246
  br i1 %cmp19, label %if.then17.if.then.i.i.i_crit_edge, label %for.cond.preheader

if.then17.if.then.i.i.i_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.cond.preheader:                               ; preds = %if.then17
  %30 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %n_ops.i, align 1
  %conv.i171235 = zext i8 %31 to i32
  %32 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i173236 = zext i8 %33 to i32
  %add.i174237 = add nuw nsw i32 %conv1.i173236, %conv.i171235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i174237)
  %cmp24238.not = icmp eq i32 %add.i174237, 0
  br i1 %cmp24238.not, label %for.cond.preheader.cleanup57_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup57_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %small_ops.i.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 14
  %policy.i61.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 10
  %ops.i.i = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %add.i174242 = phi i32 [ %add.i174237, %for.body.lr.ph ], [ %add.i174, %cleanup.for.body_crit_edge ]
  %conv.i171241 = phi i32 [ %conv.i171235, %for.body.lr.ph ], [ %conv.i171, %cleanup.for.body_crit_edge ]
  %i.0239 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0239, i32 %conv.i171241)
  %cmp.i177 = icmp ult i32 %i.0239, %conv.i171241
  br i1 %cmp.i177, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.genl_ops, ptr %35, i32 %i.0239
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %op.sroa.0.0.copyload = load ptr, ptr %arrayidx.i.i, align 4
  %op.sroa.8.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %37 = ptrtoint ptr %op.sroa.8.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %op.sroa.8.0.copyload = load ptr, ptr %op.sroa.8.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.12.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %38 = ptrtoint ptr %op.sroa.12.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %op.sroa.12.0.copyload = load ptr, ptr %op.sroa.12.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.21.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 24
  %39 = ptrtoint ptr %op.sroa.21.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %op.sroa.21.0.copyload = load i8, ptr %op.sroa.21.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.26.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 26
  %40 = ptrtoint ptr %op.sroa.26.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %op.sroa.26.0.copyload = load i8, ptr %op.sroa.26.0.arrayidx.i.i.sroa_idx, align 2
  %tobool3.not.i.i = icmp eq ptr %op.sroa.12.0.copyload, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.then.i.genl_get_cmd_by_index.exit_crit_edge

if.then.i.genl_get_cmd_by_index.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_get_cmd_by_index.exit

if.then4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %policy.i61.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %policy.i61.i, align 4
  br label %genl_get_cmd_by_index.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i174242, i32 %i.0239)
  %cmp5.i = icmp ugt i32 %add.i174242, %i.0239
  br i1 %cmp5.i, label %if.then7.i, label %land.end.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub nsw i32 %i.0239, %conv.i171241
  %43 = ptrtoint ptr %small_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %small_ops.i.i, align 4
  %arrayidx.i59.i = getelementptr %struct.genl_small_ops, ptr %44, i32 %sub.i
  %45 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i59.i, align 4
  %dumpit.i.i = getelementptr %struct.genl_small_ops, ptr %44, i32 %sub.i, i32 1
  %47 = ptrtoint ptr %dumpit.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dumpit.i.i, align 4
  %cmd.i.i = getelementptr %struct.genl_small_ops, ptr %44, i32 %sub.i, i32 2
  %49 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cmd.i.i, align 4
  %flags.i.i = getelementptr %struct.genl_small_ops, ptr %44, i32 %sub.i, i32 4
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags.i.i, align 2
  %53 = ptrtoint ptr %policy.i61.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %policy.i61.i, align 4
  br label %genl_get_cmd_by_index.exit

land.end.i:                                       ; preds = %if.else.i
  %.b58.i = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %.b58.i, label %land.end.i.genl_get_cmd_by_index.exit_crit_edge, label %if.then16.i, !prof !102

land.end.i.genl_get_cmd_by_index.exit_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_get_cmd_by_index.exit

if.then16.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 178, i32 noundef 9, ptr noundef null) #12
  br label %genl_get_cmd_by_index.exit

genl_get_cmd_by_index.exit:                       ; preds = %if.then16.i, %land.end.i.genl_get_cmd_by_index.exit_crit_edge, %if.then7.i, %if.then4.i.i, %if.then.i.genl_get_cmd_by_index.exit_crit_edge
  %op.sroa.0.0 = phi ptr [ %op.sroa.0.0.copyload, %if.then4.i.i ], [ %op.sroa.0.0.copyload, %if.then.i.genl_get_cmd_by_index.exit_crit_edge ], [ %46, %if.then7.i ], [ inttoptr (i32 -1 to ptr), %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then16.i ]
  %op.sroa.8.0 = phi ptr [ %op.sroa.8.0.copyload, %if.then4.i.i ], [ %op.sroa.8.0.copyload, %if.then.i.genl_get_cmd_by_index.exit_crit_edge ], [ %48, %if.then7.i ], [ inttoptr (i32 -1 to ptr), %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then16.i ]
  %op.sroa.12.0 = phi ptr [ %42, %if.then4.i.i ], [ %op.sroa.12.0.copyload, %if.then.i.genl_get_cmd_by_index.exit_crit_edge ], [ %54, %if.then7.i ], [ inttoptr (i32 -1 to ptr), %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then16.i ]
  %op.sroa.21.0 = phi i8 [ %op.sroa.21.0.copyload, %if.then4.i.i ], [ %op.sroa.21.0.copyload, %if.then.i.genl_get_cmd_by_index.exit_crit_edge ], [ %50, %if.then7.i ], [ -1, %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ -1, %if.then16.i ]
  %op.sroa.26.0 = phi i8 [ %op.sroa.26.0.copyload, %if.then4.i.i ], [ %op.sroa.26.0.copyload, %if.then.i.genl_get_cmd_by_index.exit_crit_edge ], [ %52, %if.then7.i ], [ -1, %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ -1, %if.then16.i ]
  %conv27 = zext i8 %op.sroa.26.0 to i32
  %tobool28.not = icmp eq ptr %op.sroa.8.0, null
  %or = or i32 %conv27, 4
  %spec.select = select i1 %tobool28.not, i32 %conv27, i32 %or
  %tobool31.not = icmp eq ptr %op.sroa.0.0, null
  %or33 = or i32 %spec.select, 2
  %op_flags.1 = select i1 %tobool31.not, i32 %spec.select, i32 %or33
  %tobool35.not = icmp eq ptr %op.sroa.12.0, null
  %or37 = or i32 %op_flags.1, 8
  %op_flags.2 = select i1 %tobool35.not, i32 %op_flags.1, i32 %or37
  %add = add nuw nsw i32 %i.0239, 1
  %55 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i, align 8
  %call1.i181 = call i32 @nla_put(ptr noundef %skb, i32 noundef %add, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i181)
  %cmp.i182 = icmp slt i32 %call1.i181, 0
  %cmp40233 = icmp eq ptr %56, null
  %cmp40 = select i1 %cmp.i182, i1 true, i1 %cmp40233
  br i1 %cmp40, label %genl_get_cmd_by_index.exit.if.then.i.i.i_crit_edge, label %if.end43

genl_get_cmd_by_index.exit.if.then.i.i.i_crit_edge: ; preds = %genl_get_cmd_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end43:                                         ; preds = %genl_get_cmd_by_index.exit
  %conv45 = zext i8 %op.sroa.21.0 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i184) #12
  %57 = ptrtoint ptr %tmp.i184 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv45, ptr %tmp.i184, align 4
  %call.i185 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i184) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i184) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool47.not = icmp eq i32 %call.i185, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.end43.if.then.i.i.i_crit_edge

if.end43.if.then.i.i.i_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false48:                                  ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i186) #12
  %58 = ptrtoint ptr %tmp.i186 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %op_flags.2, ptr %tmp.i186, align 4
  %call.i187 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i186) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i186) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool50.not = icmp eq i32 %call.i187, 0
  br i1 %tobool50.not, label %cleanup, label %lor.lhs.false48.if.then.i.i.i_crit_edge

lor.lhs.false48.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

cleanup:                                          ; preds = %lor.lhs.false48
  %59 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i189 = trunc i32 %sub.ptr.sub.i to i16
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i189, ptr %56, align 2
  %62 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %n_ops.i, align 1
  %conv.i171 = zext i8 %63 to i32
  %64 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i173 = zext i8 %65 to i32
  %add.i174 = add nuw nsw i32 %conv1.i173, %conv.i171
  %cmp24 = icmp ult i32 %add, %add.i174
  br i1 %cmp24, label %cleanup.for.body_crit_edge, label %cleanup.cleanup57_crit_edge

cleanup.cleanup57_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup57:                                        ; preds = %cleanup.cleanup57_crit_edge, %for.cond.preheader.cleanup57_crit_edge
  %66 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i191 = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i192 = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i193 = sub i32 %sub.ptr.lhs.cast.i191, %sub.ptr.rhs.cast.i192
  %conv.i194 = trunc i32 %sub.ptr.sub.i193 to i16
  %68 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i194, ptr %29, align 2
  br label %if.end61

if.end61:                                         ; preds = %cleanup57, %if.end14.if.end61_crit_edge
  %n_mcgrps = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 9
  %69 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %n_mcgrps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool62.not = icmp eq i8 %70, 0
  br i1 %tobool62.not, label %if.end61.if.end106_crit_edge, label %if.then63

if.end61.if.end106_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then63:                                        ; preds = %if.end61
  %tail.i.i195 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %71 = ptrtoint ptr %tail.i.i195 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i195, align 8
  %call1.i196 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i196)
  %cmp.i197 = icmp slt i32 %call1.i196, 0
  %cmp66247 = icmp eq ptr %72, null
  %cmp66 = select i1 %cmp.i197, i1 true, i1 %cmp66247
  br i1 %cmp66, label %if.then63.if.then.i.i.i_crit_edge, label %for.cond70.preheader

if.then63.if.then.i.i.i_crit_edge:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

for.cond70.preheader:                             ; preds = %if.then63
  %73 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %n_mcgrps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp73244.not = icmp eq i8 %74, 0
  br i1 %cmp73244.not, label %for.cond70.preheader.cleanup102_crit_edge, label %for.body75.lr.ph

for.cond70.preheader.cleanup102_crit_edge:        ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup102

for.body75.lr.ph:                                 ; preds = %for.cond70.preheader
  %mcgrps = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 15
  %mcgrp_offset = getelementptr inbounds %struct.genl_family, ptr %family, i32 0, i32 5
  br label %for.body75

for.body75:                                       ; preds = %cleanup94.for.body75_crit_edge, %for.body75.lr.ph
  %i64.0245 = phi i32 [ 0, %for.body75.lr.ph ], [ %add77, %cleanup94.for.body75_crit_edge ]
  %75 = ptrtoint ptr %mcgrps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mcgrps, align 4
  %arrayidx = getelementptr %struct.genl_multicast_group, ptr %76, i32 %i64.0245
  %add77 = add nuw nsw i32 %i64.0245, 1
  %77 = ptrtoint ptr %tail.i.i195 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i195, align 8
  %call1.i200 = call i32 @nla_put(ptr noundef %skb, i32 noundef %add77, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200)
  %cmp.i201 = icmp slt i32 %call1.i200, 0
  %cmp79232 = icmp eq ptr %78, null
  %cmp79 = select i1 %cmp.i201, i1 true, i1 %cmp79232
  br i1 %cmp79, label %for.body75.if.then.i.i.i_crit_edge, label %if.end82

for.body75.if.then.i.i.i_crit_edge:               ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end82:                                         ; preds = %for.body75
  %79 = ptrtoint ptr %mcgrp_offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mcgrp_offset, align 4
  %add83 = add i32 %80, %i64.0245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i203) #12
  %81 = ptrtoint ptr %tmp.i203 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add83, ptr %tmp.i203, align 4
  %call.i204 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i203) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i203) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool85.not = icmp eq i32 %call.i204, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %if.end82.if.then.i.i.i_crit_edge

if.end82.if.then.i.i.i_crit_edge:                 ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false86:                                  ; preds = %if.end82
  %call89 = call fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef 1, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cleanup94, label %lor.lhs.false86.if.then.i.i.i_crit_edge

lor.lhs.false86.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

cleanup94:                                        ; preds = %lor.lhs.false86
  %82 = ptrtoint ptr %tail.i.i195 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i195, align 8
  %sub.ptr.lhs.cast.i206 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i207 = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i208 = sub i32 %sub.ptr.lhs.cast.i206, %sub.ptr.rhs.cast.i207
  %conv.i209 = trunc i32 %sub.ptr.sub.i208 to i16
  %84 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i209, ptr %78, align 2
  %85 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %n_mcgrps, align 1
  %conv72 = zext i8 %86 to i32
  %cmp73 = icmp ult i32 %add77, %conv72
  br i1 %cmp73, label %cleanup94.for.body75_crit_edge, label %cleanup94.cleanup102_crit_edge

cleanup94.cleanup102_crit_edge:                   ; preds = %cleanup94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup102

cleanup94.for.body75_crit_edge:                   ; preds = %cleanup94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body75

cleanup102:                                       ; preds = %cleanup94.cleanup102_crit_edge, %for.cond70.preheader.cleanup102_crit_edge
  %87 = ptrtoint ptr %tail.i.i195 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i195, align 8
  %sub.ptr.lhs.cast.i211 = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i212 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i213 = sub i32 %sub.ptr.lhs.cast.i211, %sub.ptr.rhs.cast.i212
  %conv.i214 = trunc i32 %sub.ptr.sub.i213 to i16
  %89 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i214, ptr %72, align 2
  br label %if.end106

if.end106:                                        ; preds = %cleanup102, %if.end61.if.end106_crit_edge
  %tail.i.i.i215 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %90 = ptrtoint ptr %tail.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i.i.i215, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %92 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %cleanup107

if.then.i.i.i:                                    ; preds = %lor.lhs.false86.if.then.i.i.i_crit_edge, %if.end82.if.then.i.i.i_crit_edge, %for.body75.if.then.i.i.i_crit_edge, %if.then63.if.then.i.i.i_crit_edge, %lor.lhs.false48.if.then.i.i.i_crit_edge, %if.end43.if.then.i.i.i_crit_edge, %genl_get_cmd_by_index.exit.if.then.i.i.i_crit_edge, %if.then17.if.then.i.i.i_crit_edge, %lor.lhs.false10.if.then.i.i.i_crit_edge, %lor.lhs.false7.if.then.i.i.i_crit_edge, %lor.lhs.false4.if.then.i.i.i_crit_edge, %lor.lhs.false.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %93 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %94, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !101

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %95 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i218 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i.i219 = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i.i.i220 = sub i32 %sub.ptr.lhs.cast.i.i.i218, %sub.ptr.rhs.cast.i.i.i219
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i220) #12
  br label %cleanup107

cleanup107:                                       ; preds = %if.end.i.i.i, %if.end106, %genlmsg_put.exit.cleanup107_crit_edge, %nlmsg_put.exit.i.cleanup107_crit_edge, %skb_tailroom.exit.i.i.cleanup107_crit_edge
  %retval.0 = phi i32 [ 0, %if.end106 ], [ -1, %genlmsg_put.exit.cleanup107_crit_edge ], [ -90, %if.end.i.i.i ], [ -1, %nlmsg_put.exit.i.cleanup107_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup107_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlen(ptr noundef %str) #16
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_getfamily(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %id.i52 = alloca i32, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv = zext i16 %5 to i32
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res.0 = phi ptr [ %call.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  %err.0 = phi i32 [ -2, %if.then ], [ -22, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %id.i, align 4
  %call6.i = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not7.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not7.i, label %if.then7.if.then13_crit_edge, label %if.then7.for.body.i_crit_edge

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

if.then7.if.then13_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %call8.i = phi ptr [ %call.i51, %for.inc.i.for.body.i_crit_edge ], [ %call6.i, %if.then7.for.body.i_crit_edge ]
  %name1.i = getelementptr inbounds %struct.genl_family, ptr %call8.i, i32 0, i32 2
  %call2.i = call i32 @strcmp(ptr noundef %name1.i, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end17.thread, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %add.i = add i32 %12, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i51 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not.i = icmp eq ptr %call.i51, null
  br i1 %cmp.not.i, label %for.inc.i.if.then13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end17.thread:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %if.end21

if.then13:                                        ; preds = %for.inc.i.if.then13_crit_edge, %if.then7.if.then13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  call void @up_read(ptr noundef nonnull @cb_lock) #12
  %call14 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.16, i32 noundef 16, i32 noundef 16, ptr noundef %add.ptr.i) #12
  call void @down_read(ptr noundef nonnull @cb_lock) #12
  call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i52) #12
  %13 = ptrtoint ptr %id.i52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %id.i52, align 4
  %call6.i53 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i52) #12
  %cmp.not7.i54 = icmp eq ptr %call6.i53, null
  br i1 %cmp.not7.i54, label %if.then13.genl_family_find_byname.exit65_crit_edge, label %if.then13.for.body.i59_crit_edge

if.then13.for.body.i59_crit_edge:                 ; preds = %if.then13
  br label %for.body.i59

if.then13.genl_family_find_byname.exit65_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_find_byname.exit65

for.body.i59:                                     ; preds = %for.inc.i63.for.body.i59_crit_edge, %if.then13.for.body.i59_crit_edge
  %call8.i55 = phi ptr [ %call.i61, %for.inc.i63.for.body.i59_crit_edge ], [ %call6.i53, %if.then13.for.body.i59_crit_edge ]
  %name1.i56 = getelementptr inbounds %struct.genl_family, ptr %call8.i55, i32 0, i32 2
  %call2.i57 = call i32 @strcmp(ptr noundef %name1.i56, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i57)
  %cmp3.i58 = icmp eq i32 %call2.i57, 0
  br i1 %cmp3.i58, label %for.body.i59.genl_family_find_byname.exit65_crit_edge, label %for.inc.i63

for.body.i59.genl_family_find_byname.exit65_crit_edge: ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_find_byname.exit65

for.inc.i63:                                      ; preds = %for.body.i59
  %14 = ptrtoint ptr %id.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i52, align 4
  %add.i60 = add i32 %15, 1
  store i32 %add.i60, ptr %id.i52, align 4
  %call.i61 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i52) #12
  %cmp.not.i62 = icmp eq ptr %call.i61, null
  br i1 %cmp.not.i62, label %for.inc.i63.genl_family_find_byname.exit65_crit_edge, label %for.inc.i63.for.body.i59_crit_edge

for.inc.i63.for.body.i59_crit_edge:               ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i59

for.inc.i63.genl_family_find_byname.exit65_crit_edge: ; preds = %for.inc.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_find_byname.exit65

genl_family_find_byname.exit65:                   ; preds = %for.inc.i63.genl_family_find_byname.exit65_crit_edge, %for.body.i59.genl_family_find_byname.exit65_crit_edge, %if.then13.genl_family_find_byname.exit65_crit_edge
  %call.lcssa.i64 = phi ptr [ null, %if.then13.genl_family_find_byname.exit65_crit_edge ], [ %call8.i55, %for.body.i59.genl_family_find_byname.exit65_crit_edge ], [ null, %for.inc.i63.genl_family_find_byname.exit65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i52) #12
  br label %if.end17

if.end17:                                         ; preds = %genl_family_find_byname.exit65, %if.end.if.end17_crit_edge
  %res.2 = phi ptr [ %res.0, %if.end.if.end17_crit_edge ], [ %call.lcssa.i64, %genl_family_find_byname.exit65 ]
  %err.1 = phi i32 [ %err.0, %if.end.if.end17_crit_edge ], [ -2, %genl_family_find_byname.exit65 ]
  %cmp18 = icmp eq ptr %res.2, null
  br i1 %cmp18, label %if.end17.cleanup_crit_edge, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.end17.thread
  %res.276 = phi ptr [ %call8.i, %if.end17.thread ], [ %res.2, %if.end17.if.end21_crit_edge ]
  %netnsok = getelementptr inbounds %struct.genl_family, ptr %res.276, i32 0, i32 6
  %16 = ptrtoint ptr %netnsok to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %netnsok, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %land.lhs.true, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end21
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %17 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_net.i, align 4
  %cmp.i.not = icmp eq ptr %18, @init_net
  br i1 %cmp.i.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snd_portid, align 4
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %info, align 4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %cmp.i66 = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i66, label %if.end27.if.then30_crit_edge, label %if.end.i

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.end.i:                                         ; preds = %if.end27
  %call2.i67 = call fastcc i32 @ctrl_fill_info(ptr noundef nonnull %res.276, i32 noundef %20, i32 noundef %22, i32 noundef 0, ptr noundef nonnull %call.i.i.i, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %cmp3.i68 = icmp slt i32 %call2.i67, 0
  br i1 %cmp3.i68, label %if.then4.i, label %if.end.i.ctrl_build_family_msg.exit_crit_edge

if.end.i.ctrl_build_family_msg.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ctrl_build_family_msg.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #12
  %23 = inttoptr i32 %call2.i67 to ptr
  br label %ctrl_build_family_msg.exit

ctrl_build_family_msg.exit:                       ; preds = %if.then4.i, %if.end.i.ctrl_build_family_msg.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.then4.i ], [ %call.i.i.i, %if.end.i.ctrl_build_family_msg.exit_crit_edge ]
  %cmp.i69 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %ctrl_build_family_msg.exit.if.then30_crit_edge, label %if.end32

ctrl_build_family_msg.exit.if.then30_crit_edge:   ; preds = %ctrl_build_family_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %ctrl_build_family_msg.exit.if.then30_crit_edge, %if.end27.if.then30_crit_edge
  %retval.0.i79 = phi ptr [ %retval.0.i, %ctrl_build_family_msg.exit.if.then30_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end27.if.then30_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i79 to i32
  br label %cleanup

if.end32:                                         ; preds = %ctrl_build_family_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %25 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_net.i.i, align 4
  %27 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i70 = call i32 @netlink_unicast(ptr noundef %30, ptr noundef %retval.0.i, i32 noundef %28, i32 noundef 64) #12
  %31 = call i32 @llvm.smin.i32(i32 %call.i.i.i70, i32 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then30, %land.lhs.true.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.then30 ], [ %31, %if.end32 ], [ %err.1, %if.end17.cleanup_crit_edge ], [ -2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_dumpfamily(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %id, align 4
  %call122 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id) #12
  %cmp.not23 = icmp eq ptr %call122, null
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp.i.not = icmp eq ptr %4, @init_net
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call125 = phi ptr [ %call122, %for.body.lr.ph ], [ %call1, %for.inc.for.body_crit_edge ]
  %n.024 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %netnsok = getelementptr inbounds %struct.genl_family, ptr %call125, i32 0, i32 6
  %9 = ptrtoint ptr %netnsok to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %netnsok, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not = icmp slt i8 %bf.load, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.i.not
  br i1 %or.cond, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %n.024, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %n.024, i32 %7)
  %cmp4 = icmp slt i32 %n.024, %7
  br i1 %cmp4, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call9 = call fastcc i32 @ctrl_fill_info(ptr noundef nonnull %call125, i32 noundef %13, i32 noundef %17, i32 noundef 2, ptr noundef %skb, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.for.end_crit_edge, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %inc, %if.end.for.inc_crit_edge ], [ %inc, %if.end6.for.inc_crit_edge ], [ %n.024, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %add = add i32 %19, 1
  store i32 %add, ptr %id, align 4
  %call1 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id) #12
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.024, %if.end6.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %n.0.lcssa, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy_start(ptr noundef %cb) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then5

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %4, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #12
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %id.i, align 4
  %call6.i = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not7.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not7.i, label %if.else.genl_family_find_byname.exit.thread_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.genl_family_find_byname.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_find_byname.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %call8.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %call6.i, %if.else.for.body.i_crit_edge ]
  %name1.i = getelementptr inbounds %struct.genl_family, ptr %call8.i, i32 0, i32 2
  %call2.i = call i32 @strcmp(ptr noundef %name1.i, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end13, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %add.i = add i32 %15, 1
  store i32 %add.i, ptr %id.i, align 4
  %call.i = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id.i) #12
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.inc.i.genl_family_find_byname.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.genl_family_find_byname.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_find_byname.exit.thread

genl_family_find_byname.exit.thread:              ; preds = %for.inc.i.genl_family_find_byname.exit.thread_crit_edge, %if.else.genl_family_find_byname.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  br label %cleanup

if.end13:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #12
  %16 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call8.i, align 4
  %conv = trunc i32 %17 to i16
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then5
  %conv.sink = phi i16 [ %conv, %if.end13 ], [ %10, %if.then5 ]
  %fam_id14 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %18 = ptrtoint ptr %fam_id14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.sink, ptr %fam_id14, align 4
  %conv17 = zext i16 %conv.sink to i32
  %call.i107 = call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %conv17) #12
  %tobool19.not = icmp eq ptr %call.i107, null
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %rt22 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %19 = ptrtoint ptr %rt22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i107, ptr %rt22, align 4
  %arrayidx23 = getelementptr ptr, ptr %4, i32 10
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %for.cond.preheader, label %if.then25

for.cond.preheader:                               ; preds = %if.end21
  %n_ops.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 7
  %n_small_ops.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 8
  %22 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %n_ops.i, align 1
  %conv.i192 = zext i8 %23 to i32
  %24 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i193 = zext i8 %25 to i32
  %add.i109194 = add nuw nsw i32 %conv1.i193, %conv.i192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i109194)
  %cmp195.not = icmp eq i32 %add.i109194, 0
  br i1 %cmp195.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %maxattr.i60.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 4
  %policy.i61.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 10
  %ops.i.i112 = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 13
  br label %for.body

if.then25:                                        ; preds = %if.end21
  %single_op = getelementptr inbounds %struct.ctrl_dump_policy_ctx, ptr %2, i32 0, i32 5
  %26 = ptrtoint ptr %single_op to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %single_op, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %single_op, align 2
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i108, align 4
  %op28 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %31 = ptrtoint ptr %op28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %op28, align 4
  %n_ops.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 7
  %32 = ptrtoint ptr %n_ops.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %n_ops.i.i, align 1
  %conv.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp12.not.i.i = icmp eq i8 %33, 0
  br i1 %cmp12.not.i.i, label %if.then25.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then25
  %ops.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 13
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmd2.i.i = getelementptr %struct.genl_ops, ptr %35, i32 %i.013.i.i, i32 6
  %36 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cmd2.i.i, align 4
  %conv3.i.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv3.i.i)
  %cmp4.i.i = icmp eq i32 %30, %conv3.i.i
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr %struct.genl_ops, ptr %35, i32 %i.013.i.i
  %op.sroa.14.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 16
  %38 = ptrtoint ptr %op.sroa.14.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %op.sroa.14.0.copyload = load ptr, ptr %op.sroa.14.0.arrayidx.i.i.i.sroa_idx, align 4
  %op.sroa.23.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 20
  %39 = ptrtoint ptr %op.sroa.23.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %op.sroa.23.0.copyload = load i32, ptr %op.sroa.23.0.arrayidx.i.i.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op.sroa.23.0.copyload)
  %tobool.not.i.i.i = icmp eq i32 %op.sroa.23.0.copyload, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %maxattr1.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 4
  %40 = ptrtoint ptr %maxattr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %maxattr1.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %op.sroa.23.0 = phi i32 [ %41, %if.then.i.i.i ], [ %op.sroa.23.0.copyload, %if.then.i.i.if.end.i.i.i_crit_edge ]
  %tobool3.not.i.i.i = icmp eq ptr %op.sroa.14.0.copyload, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.if.end42_crit_edge, label %if.end.i.i.i.if.end46_crit_edge

if.end.i.i.i.if.end46_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end.i.i.i.if.end42_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.then25.if.end.i_crit_edge
  %n_small_ops.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 8
  %42 = ptrtoint ptr %n_small_ops.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %n_small_ops.i.i, align 2
  %conv.i5.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp12.not.i6.i = icmp eq i8 %43, 0
  br i1 %cmp12.not.i6.i, label %if.end.i.do.body33_crit_edge, label %for.body.lr.ph.i7.i

if.end.i.do.body33_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

for.body.lr.ph.i7.i:                              ; preds = %if.end.i
  %small_ops.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 14
  %44 = ptrtoint ptr %small_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %small_ops.i.i, align 4
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.inc.i19.i.for.body.i12.i_crit_edge, %for.body.lr.ph.i7.i
  %i.013.i8.i = phi i32 [ 0, %for.body.lr.ph.i7.i ], [ %inc.i17.i, %for.inc.i19.i.for.body.i12.i_crit_edge ]
  %cmd2.i9.i = getelementptr %struct.genl_small_ops, ptr %45, i32 %i.013.i8.i, i32 2
  %46 = ptrtoint ptr %cmd2.i9.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %cmd2.i9.i, align 4
  %conv3.i10.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv3.i10.i)
  %cmp4.i11.i = icmp eq i32 %30, %conv3.i10.i
  br i1 %cmp4.i11.i, label %if.then.i16.i, label %for.inc.i19.i

if.then.i16.i:                                    ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  %maxattr.i.i14.i = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 4
  %48 = ptrtoint ptr %maxattr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %maxattr.i.i14.i, align 4
  br label %if.end42

for.inc.i19.i:                                    ; preds = %for.body.i12.i
  %inc.i17.i = add nuw nsw i32 %i.013.i8.i, 1
  %exitcond.not.i18.i = icmp eq i32 %inc.i17.i, %conv.i5.i
  br i1 %exitcond.not.i18.i, label %for.inc.i19.i.do.body33_crit_edge, label %for.inc.i19.i.for.body.i12.i_crit_edge

for.inc.i19.i.for.body.i12.i_crit_edge:           ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i12.i

for.inc.i19.i.do.body33_crit_edge:                ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body33:                                        ; preds = %for.inc.i19.i.do.body33_crit_edge, %if.end.i.do.body33_crit_edge
  %extack = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 6
  %50 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %extack, align 4
  %tobool34.not = icmp eq ptr %51, null
  br i1 %tobool34.not, label %do.body33.cleanup_crit_edge, label %if.then35

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then35:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx23, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %bad_attr, align 4
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %extack, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then.i16.i, %if.end.i.i.i.if.end42_crit_edge
  %op.sroa.23.1.ph = phi i32 [ %49, %if.then.i16.i ], [ %op.sroa.23.0, %if.end.i.i.i.if.end42_crit_edge ]
  %op.sroa.14.0.ph.in = getelementptr inbounds %struct.genl_family, ptr %call.i107, i32 0, i32 10
  %58 = ptrtoint ptr %op.sroa.14.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %58)
  %op.sroa.14.0.ph = load ptr, ptr %op.sroa.14.0.ph.in, align 4
  %tobool44.not = icmp eq ptr %op.sroa.14.0.ph, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %if.end42.if.end46_crit_edge, %if.end.i.i.i.if.end46_crit_edge
  %op.sroa.23.1.ph158 = phi i32 [ %op.sroa.23.1.ph, %if.end42.if.end46_crit_edge ], [ %op.sroa.23.0, %if.end.i.i.i.if.end46_crit_edge ]
  %op.sroa.14.0.ph157 = phi ptr [ %op.sroa.14.0.ph, %if.end42.if.end46_crit_edge ], [ %op.sroa.14.0.copyload, %if.end.i.i.i.if.end46_crit_edge ]
  %call48 = call i32 @netlink_policy_dump_add_policy(ptr noundef %2, ptr noundef nonnull %op.sroa.14.0.ph157, i32 noundef %op.sroa.23.1.ph158) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %add.i109207 = phi i32 [ %add.i109194, %for.body.lr.ph ], [ %add.i109, %for.inc.for.body_crit_edge ]
  %conv.i206 = phi i32 [ %conv.i192, %for.body.lr.ph ], [ %conv.i, %for.inc.for.body_crit_edge ]
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %op.sroa.23.2201 = phi i32 [ -1, %for.body.lr.ph ], [ %op.sroa.23.4181, %for.inc.for.body_crit_edge ]
  %op.sroa.14.1200 = phi ptr [ inttoptr (i32 -1 to ptr), %for.body.lr.ph ], [ %op.sroa.14.2179, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0202, i32 %conv.i206)
  %cmp.i = icmp ult i32 %i.0202, %conv.i206
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %59 = ptrtoint ptr %ops.i.i112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i112, align 4
  %arrayidx.i.i = getelementptr %struct.genl_ops, ptr %60, i32 %i.0202
  %op.sroa.14.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %61 = ptrtoint ptr %op.sroa.14.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %op.sroa.14.0.copyload121 = load ptr, ptr %op.sroa.14.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.23.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 20
  %62 = ptrtoint ptr %op.sroa.23.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %op.sroa.23.0.copyload125 = load i32, ptr %op.sroa.23.0.arrayidx.i.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op.sroa.23.0.copyload125)
  %tobool.not.i.i = icmp eq i32 %op.sroa.23.0.copyload125, 0
  br i1 %tobool.not.i.i, label %if.then.i.i113, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i113:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %maxattr.i60.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %maxattr.i60.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i113, %if.then.i.if.end.i.i_crit_edge
  %op.sroa.23.3 = phi i32 [ %64, %if.then.i.i113 ], [ %op.sroa.23.0.copyload125, %if.then.i.if.end.i.i_crit_edge ]
  %tobool3.not.i.i = icmp eq ptr %op.sroa.14.0.copyload121, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i.if.then54_crit_edge

if.end.i.i.if.then54_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %policy.i61.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %policy.i61.i, align 4
  br label %genl_get_cmd_by_index.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i109207, i32 %i.0202)
  %cmp5.i = icmp ugt i32 %add.i109207, %i.0202
  br i1 %cmp5.i, label %if.then7.i, label %land.end.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %maxattr.i60.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maxattr.i60.i, align 4
  %69 = ptrtoint ptr %policy.i61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %policy.i61.i, align 4
  br label %genl_get_cmd_by_index.exit

land.end.i:                                       ; preds = %if.else.i
  %.b58.i = load i1, ptr @genl_get_cmd_by_index.__already_done, align 1
  br i1 %.b58.i, label %land.end.i.genl_get_cmd_by_index.exit_crit_edge, label %if.then16.i, !prof !102

land.end.i.genl_get_cmd_by_index.exit_crit_edge:  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_get_cmd_by_index.exit

if.then16.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @genl_get_cmd_by_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 178, i32 noundef 9, ptr noundef null) #12
  br label %genl_get_cmd_by_index.exit

genl_get_cmd_by_index.exit:                       ; preds = %if.then16.i, %land.end.i.genl_get_cmd_by_index.exit_crit_edge, %if.then7.i, %if.then4.i.i
  %op.sroa.14.2 = phi ptr [ %66, %if.then4.i.i ], [ %70, %if.then7.i ], [ %op.sroa.14.1200, %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ %op.sroa.14.1200, %if.then16.i ]
  %op.sroa.23.4 = phi i32 [ %op.sroa.23.3, %if.then4.i.i ], [ %68, %if.then7.i ], [ %op.sroa.23.2201, %land.end.i.genl_get_cmd_by_index.exit_crit_edge ], [ %op.sroa.23.2201, %if.then16.i ]
  %tobool53.not = icmp eq ptr %op.sroa.14.2, null
  br i1 %tobool53.not, label %genl_get_cmd_by_index.exit.for.inc_crit_edge, label %genl_get_cmd_by_index.exit.if.then54_crit_edge

genl_get_cmd_by_index.exit.if.then54_crit_edge:   ; preds = %genl_get_cmd_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

genl_get_cmd_by_index.exit.for.inc_crit_edge:     ; preds = %genl_get_cmd_by_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then54:                                        ; preds = %genl_get_cmd_by_index.exit.if.then54_crit_edge, %if.end.i.i.if.then54_crit_edge
  %op.sroa.23.4180 = phi i32 [ %op.sroa.23.4, %genl_get_cmd_by_index.exit.if.then54_crit_edge ], [ %op.sroa.23.3, %if.end.i.i.if.then54_crit_edge ]
  %op.sroa.14.2178 = phi ptr [ %op.sroa.14.2, %genl_get_cmd_by_index.exit.if.then54_crit_edge ], [ %op.sroa.14.0.copyload121, %if.end.i.i.if.then54_crit_edge ]
  %call58 = call i32 @netlink_policy_dump_add_policy(ptr noundef %2, ptr noundef nonnull %op.sroa.14.2178, i32 noundef %op.sroa.23.4180) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then54.for.inc_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then54.for.inc_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.then54.for.inc_crit_edge, %genl_get_cmd_by_index.exit.for.inc_crit_edge
  %op.sroa.23.4181 = phi i32 [ %op.sroa.23.4, %genl_get_cmd_by_index.exit.for.inc_crit_edge ], [ %op.sroa.23.4180, %if.then54.for.inc_crit_edge ]
  %op.sroa.14.2179 = phi ptr [ null, %genl_get_cmd_by_index.exit.for.inc_crit_edge ], [ %op.sroa.14.2178, %if.then54.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0202, 1
  %71 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %n_ops.i, align 1
  %conv.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i = zext i8 %74 to i32
  %add.i109 = add nuw nsw i32 %conv1.i, %conv.i
  %cmp = icmp ult i32 %inc, %add.i109
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %2, align 4
  %tobool64.not = icmp eq ptr %76, null
  %. = select i1 %tobool64.not, i32 -61, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then54.cleanup_crit_edge, %if.end46, %if.end42.cleanup_crit_edge, %if.then35, %do.body33.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %genl_family_find_byname.exit.thread, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end46 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end15.cleanup_crit_edge ], [ -2, %if.then35 ], [ -2, %do.body33.cleanup_crit_edge ], [ -61, %if.end42.cleanup_crit_edge ], [ %., %for.end ], [ -2, %genl_family_find_byname.exit.thread ], [ %call58, %if.then54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tmp.i.i125 = alloca i16, align 2
  %tmp.i73.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %policies = getelementptr inbounds %struct.ctrl_dump_policy_ctx, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %policies to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %policies, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

while.cond.preheader:                             ; preds = %entry
  %opidx = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %rt = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %2 = ptrtoint ptr %opidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opidx, align 4
  %4 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt, align 4
  %n_ops.i252 = getelementptr inbounds %struct.genl_family, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %n_ops.i252 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_ops.i252, align 1
  %conv.i253 = zext i8 %7 to i32
  %n_small_ops.i254 = getelementptr inbounds %struct.genl_family, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %n_small_ops.i254 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_small_ops.i254, align 2
  %conv1.i255 = zext i8 %9 to i32
  %add.i256 = add nuw nsw i32 %conv1.i255, %conv.i253
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i256)
  %cmp257 = icmp ult i32 %3, %add.i256
  br i1 %cmp257, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %op5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 3
  %nlh.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %fam_id.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup44.while.body_crit_edge, %while.body.lr.ph
  %add.i260 = phi i32 [ %add.i256, %while.body.lr.ph ], [ %add.i, %cleanup44.while.body_crit_edge ]
  %conv1.i259 = phi i32 [ %conv1.i255, %while.body.lr.ph ], [ %conv1.i, %cleanup44.while.body_crit_edge ]
  %10 = phi i8 [ %9, %while.body.lr.ph ], [ %122, %cleanup44.while.body_crit_edge ]
  %conv.i258 = phi i32 [ %conv.i253, %while.body.lr.ph ], [ %conv.i, %cleanup44.while.body_crit_edge ]
  %11 = phi i8 [ %7, %while.body.lr.ph ], [ %120, %cleanup44.while.body_crit_edge ]
  %12 = phi ptr [ %5, %while.body.lr.ph ], [ %118, %cleanup44.while.body_crit_edge ]
  %13 = phi i32 [ %3, %while.body.lr.ph ], [ %inc, %cleanup44.while.body_crit_edge ]
  %14 = ptrtoint ptr %policies to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load1 = load i8, ptr %policies, align 2
  %15 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %while.body
  %16 = ptrtoint ptr %op5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp12.not.i.i, label %if.then4.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then4
  %ops.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 13
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %cmd2.i.i = getelementptr %struct.genl_ops, ptr %19, i32 %i.013.i.i, i32 6
  %20 = ptrtoint ptr %cmd2.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd2.i.i, align 4
  %conv3.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv3.i.i)
  %cmp4.i.i = icmp eq i32 %17, %conv3.i.i
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr %struct.genl_ops, ptr %19, i32 %i.013.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %op.sroa.0.0.copyload = load ptr, ptr %arrayidx.i.i.i, align 4
  %op.sroa.12.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 8
  %23 = ptrtoint ptr %op.sroa.12.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %op.sroa.12.0.copyload = load ptr, ptr %op.sroa.12.0.arrayidx.i.i.i.sroa_idx, align 4
  %op.sroa.18.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 16
  %24 = ptrtoint ptr %op.sroa.18.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %op.sroa.18.0.copyload = load ptr, ptr %op.sroa.18.0.arrayidx.i.i.i.sroa_idx, align 4
  %op.sroa.27.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 20
  %25 = ptrtoint ptr %op.sroa.27.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %op.sroa.27.0.copyload = load i32, ptr %op.sroa.27.0.arrayidx.i.i.i.sroa_idx, align 4
  %op.sroa.35.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 24
  %26 = ptrtoint ptr %op.sroa.35.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %op.sroa.35.0.copyload = load i8, ptr %op.sroa.35.0.arrayidx.i.i.i.sroa_idx, align 4
  %op.sroa.45.0.arrayidx.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i.i, i32 27
  %27 = ptrtoint ptr %op.sroa.45.0.arrayidx.i.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %op.sroa.45.0.copyload = load i8, ptr %op.sroa.45.0.arrayidx.i.i.i.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op.sroa.27.0.copyload)
  %tobool.not.i.i.i = icmp eq i32 %op.sroa.27.0.copyload, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %maxattr1.i.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %28 = ptrtoint ptr %maxattr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxattr1.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %op.sroa.27.0 = phi i32 [ %29, %if.then.i.i.i ], [ %op.sroa.27.0.copyload, %if.then.i.i.if.end.i.i.i_crit_edge ]
  %tobool3.not.i.i.i = icmp eq ptr %op.sroa.18.0.copyload, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.cleanup.thread.sink.split_crit_edge, label %if.end.i.i.i.cleanup.thread_crit_edge

if.end.i.i.i.cleanup.thread_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end.i.i.i.cleanup.thread.sink.split_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.sink.split

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i258
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.then4.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12.not.i6.i = icmp eq i8 %10, 0
  br i1 %cmp12.not.i6.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i7.i:                              ; preds = %if.end.i
  %small_ops.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 14
  %30 = ptrtoint ptr %small_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %small_ops.i.i, align 4
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.inc.i19.i.for.body.i12.i_crit_edge, %for.body.lr.ph.i7.i
  %i.013.i8.i = phi i32 [ 0, %for.body.lr.ph.i7.i ], [ %inc.i17.i, %for.inc.i19.i.for.body.i12.i_crit_edge ]
  %cmd2.i9.i = getelementptr %struct.genl_small_ops, ptr %31, i32 %i.013.i8.i, i32 2
  %32 = ptrtoint ptr %cmd2.i9.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cmd2.i9.i, align 4
  %conv3.i10.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv3.i10.i)
  %cmp4.i11.i = icmp eq i32 %17, %conv3.i10.i
  br i1 %cmp4.i11.i, label %if.then.i16.i, label %for.inc.i19.i

if.then.i16.i:                                    ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i13.i = getelementptr %struct.genl_small_ops, ptr %31, i32 %i.013.i8.i
  %34 = ptrtoint ptr %arrayidx.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i13.i, align 4
  %dumpit.i.i.i = getelementptr %struct.genl_small_ops, ptr %31, i32 %i.013.i8.i, i32 1
  %36 = ptrtoint ptr %dumpit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dumpit.i.i.i, align 4
  %validate.i.i.i = getelementptr %struct.genl_small_ops, ptr %31, i32 %i.013.i8.i, i32 5
  %38 = ptrtoint ptr %validate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %validate.i.i.i, align 1
  %maxattr.i.i14.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %40 = ptrtoint ptr %maxattr.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %maxattr.i.i14.i, align 4
  br label %cleanup.thread.sink.split

for.inc.i19.i:                                    ; preds = %for.body.i12.i
  %inc.i17.i = add nuw nsw i32 %i.013.i8.i, 1
  %exitcond.not.i18.i = icmp eq i32 %inc.i17.i, %conv1.i259
  br i1 %exitcond.not.i18.i, label %for.inc.i19.i.cleanup_crit_edge, label %for.inc.i19.i.for.body.i12.i_crit_edge

for.inc.i19.i.for.body.i12.i_crit_edge:           ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i12.i

for.inc.i19.i.cleanup_crit_edge:                  ; preds = %for.inc.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.then.i16.i, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge
  %op.sroa.0.0.ph.ph = phi ptr [ %35, %if.then.i16.i ], [ %op.sroa.0.0.copyload, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge ]
  %op.sroa.12.0.ph.ph = phi ptr [ %37, %if.then.i16.i ], [ %op.sroa.12.0.copyload, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge ]
  %op.sroa.27.1.ph.ph = phi i32 [ %41, %if.then.i16.i ], [ %op.sroa.27.0, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge ]
  %op.sroa.35.0.ph.ph = phi i8 [ %33, %if.then.i16.i ], [ %op.sroa.35.0.copyload, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge ]
  %op.sroa.45.0.ph.ph = phi i8 [ %39, %if.then.i16.i ], [ %op.sroa.45.0.copyload, %if.end.i.i.i.cleanup.thread.sink.split_crit_edge ]
  %policy5.i.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 10
  %42 = ptrtoint ptr %policy5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %policy5.i.i.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end.i.i.i.cleanup.thread_crit_edge
  %op.sroa.0.0.ph = phi ptr [ %op.sroa.0.0.copyload, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %op.sroa.0.0.ph.ph, %cleanup.thread.sink.split ]
  %op.sroa.12.0.ph = phi ptr [ %op.sroa.12.0.copyload, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %op.sroa.12.0.ph.ph, %cleanup.thread.sink.split ]
  %op.sroa.18.0.ph = phi ptr [ %op.sroa.18.0.copyload, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %43, %cleanup.thread.sink.split ]
  %op.sroa.27.1.ph = phi i32 [ %op.sroa.27.0, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %op.sroa.27.1.ph.ph, %cleanup.thread.sink.split ]
  %op.sroa.35.0.ph = phi i8 [ %op.sroa.35.0.copyload, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %op.sroa.35.0.ph.ph, %cleanup.thread.sink.split ]
  %op.sroa.45.0.ph = phi i8 [ %op.sroa.45.0.copyload, %if.end.i.i.i.cleanup.thread_crit_edge ], [ %op.sroa.45.0.ph.ph, %cleanup.thread.sink.split ]
  %44 = ptrtoint ptr %opidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i260, ptr %opidx, align 4
  br label %if.end37

cleanup:                                          ; preds = %for.inc.i19.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1267, i32 noundef 9, ptr noundef null) #12
  br label %cleanup74

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i258)
  %cmp.i = icmp ult i32 %13, %conv.i258
  br i1 %cmp.i, label %if.then.i, label %if.then7.i

if.then.i:                                        ; preds = %if.else
  %ops.i.i115 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 13
  %45 = ptrtoint ptr %ops.i.i115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i115, align 4
  %arrayidx.i.i = getelementptr %struct.genl_ops, ptr %46, i32 %13
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %op.sroa.0.0.copyload155 = load ptr, ptr %arrayidx.i.i, align 4
  %op.sroa.12.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %48 = ptrtoint ptr %op.sroa.12.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %op.sroa.12.0.copyload157 = load ptr, ptr %op.sroa.12.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.18.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %49 = ptrtoint ptr %op.sroa.18.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %op.sroa.18.0.copyload160 = load ptr, ptr %op.sroa.18.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.27.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 20
  %50 = ptrtoint ptr %op.sroa.27.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %op.sroa.27.0.copyload164 = load i32, ptr %op.sroa.27.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.35.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 24
  %51 = ptrtoint ptr %op.sroa.35.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %51)
  %op.sroa.35.0.copyload167 = load i8, ptr %op.sroa.35.0.arrayidx.i.i.sroa_idx, align 4
  %op.sroa.45.0.arrayidx.i.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 27
  %52 = ptrtoint ptr %op.sroa.45.0.arrayidx.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %52)
  %op.sroa.45.0.copyload171 = load i8, ptr %op.sroa.45.0.arrayidx.i.i.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op.sroa.27.0.copyload164)
  %tobool.not.i.i = icmp eq i32 %op.sroa.27.0.copyload164, 0
  br i1 %tobool.not.i.i, label %if.then.i.i116, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i116:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %maxattr1.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %53 = ptrtoint ptr %maxattr1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %maxattr1.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i116, %if.then.i.if.end.i.i_crit_edge
  %op.sroa.27.2 = phi i32 [ %54, %if.then.i.i116 ], [ %op.sroa.27.0.copyload164, %if.then.i.if.end.i.i_crit_edge ]
  %tobool3.not.i.i = icmp eq ptr %op.sroa.18.0.copyload160, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i.if.end.i120_crit_edge

if.end.i.i.if.end.i120_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i120

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %policy5.i.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 10
  %55 = ptrtoint ptr %policy5.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %policy5.i.i, align 4
  br label %if.end37

if.then7.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %13, %conv.i258
  %small_ops.i.i119 = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 14
  %57 = ptrtoint ptr %small_ops.i.i119 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %small_ops.i.i119, align 4
  %arrayidx.i59.i = getelementptr %struct.genl_small_ops, ptr %58, i32 %sub.i
  %59 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i59.i, align 4
  %dumpit.i.i = getelementptr %struct.genl_small_ops, ptr %58, i32 %sub.i, i32 1
  %61 = ptrtoint ptr %dumpit.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dumpit.i.i, align 4
  %cmd.i.i = getelementptr %struct.genl_small_ops, ptr %58, i32 %sub.i, i32 2
  %63 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cmd.i.i, align 4
  %validate.i.i = getelementptr %struct.genl_small_ops, ptr %58, i32 %sub.i, i32 5
  %65 = ptrtoint ptr %validate.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %validate.i.i, align 1
  %maxattr.i60.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 4
  %67 = ptrtoint ptr %maxattr.i60.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %maxattr.i60.i, align 4
  %policy.i61.i = getelementptr inbounds %struct.genl_family, ptr %12, i32 0, i32 10
  %69 = ptrtoint ptr %policy.i61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %policy.i61.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then7.i, %if.then4.i.i, %cleanup.thread
  %op.sroa.0.2 = phi ptr [ %op.sroa.0.0.ph, %cleanup.thread ], [ %op.sroa.0.0.copyload155, %if.then4.i.i ], [ %60, %if.then7.i ]
  %op.sroa.12.2 = phi ptr [ %op.sroa.12.0.ph, %cleanup.thread ], [ %op.sroa.12.0.copyload157, %if.then4.i.i ], [ %62, %if.then7.i ]
  %op.sroa.18.2 = phi ptr [ %op.sroa.18.0.ph, %cleanup.thread ], [ %56, %if.then4.i.i ], [ %70, %if.then7.i ]
  %op.sroa.27.4 = phi i32 [ %op.sroa.27.1.ph, %cleanup.thread ], [ %op.sroa.27.2, %if.then4.i.i ], [ %68, %if.then7.i ]
  %op.sroa.35.2 = phi i8 [ %op.sroa.35.0.ph, %cleanup.thread ], [ %op.sroa.35.0.copyload167, %if.then4.i.i ], [ %64, %if.then7.i ]
  %op.sroa.45.2 = phi i8 [ %op.sroa.45.0.ph, %cleanup.thread ], [ %op.sroa.45.0.copyload171, %if.then4.i.i ], [ %66, %if.then7.i ]
  %tobool.not.i = icmp eq ptr %op.sroa.18.2, null
  br i1 %tobool.not.i, label %if.end37.cleanup44_crit_edge, label %if.end37.if.end.i120_crit_edge

if.end37.if.end.i120_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i120

if.end37.cleanup44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44

if.end.i120:                                      ; preds = %if.end37.if.end.i120_crit_edge, %if.end.i.i.if.end.i120_crit_edge
  %op.sroa.45.2227 = phi i8 [ %op.sroa.45.2, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.45.0.copyload171, %if.end.i.i.if.end.i120_crit_edge ]
  %op.sroa.35.2226 = phi i8 [ %op.sroa.35.2, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.35.0.copyload167, %if.end.i.i.if.end.i120_crit_edge ]
  %op.sroa.27.4225 = phi i32 [ %op.sroa.27.4, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.27.2, %if.end.i.i.if.end.i120_crit_edge ]
  %op.sroa.18.2224 = phi ptr [ %op.sroa.18.2, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.18.0.copyload160, %if.end.i.i.if.end.i120_crit_edge ]
  %op.sroa.12.2222 = phi ptr [ %op.sroa.12.2, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.12.0.copyload157, %if.end.i.i.if.end.i120_crit_edge ]
  %op.sroa.0.2221 = phi ptr [ %op.sroa.0.2, %if.end37.if.end.i120_crit_edge ], [ %op.sroa.0.0.copyload155, %if.end.i.i.if.end.i120_crit_edge ]
  %tobool1.not.i = icmp eq ptr %op.sroa.0.2221, null
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end.i120.if.end5.i_crit_edge

if.end.i120.if.end5.i_crit_edge:                  ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i120
  %tobool2.not.i = icmp ne ptr %op.sroa.12.2222, null
  %71 = and i8 %op.sroa.45.2227, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool3.not.i = icmp eq i8 %71, 0
  %or.cond = select i1 %tobool2.not.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.cleanup44_crit_edge

land.lhs.true.i.cleanup44_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup44

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i120.if.end5.i_crit_edge
  %72 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cb, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %73, i32 0, i32 3, i32 12
  %74 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %portid.i.i, align 4
  %76 = ptrtoint ptr %nlh.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nlh.i.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nlmsg_seq.i.i, align 4
  %80 = load i32, ptr @genl_ctrl, align 4
  %81 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %add.i.i.i = add i32 %81, 4
  %82 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %cond.false.i.i.i.i.i, label %if.end5.i.skb_tailroom.exit.i.i.i.i_crit_edge

if.end5.i.skb_tailroom.exit.i.i.i.i_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i.i.i.i

cond.false.i.i.i.i.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i.i.i.i.i, align 4
  %86 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  br label %skb_tailroom.exit.i.i.i.i

skb_tailroom.exit.i.i.i.i:                        ; preds = %cond.false.i.i.i.i.i, %if.end5.i.skb_tailroom.exit.i.i.i.i_crit_edge
  %cond.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i.i.i, %cond.false.i.i.i.i.i ], [ 0, %if.end5.i.skb_tailroom.exit.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = add i32 %81, 23
  %and.i.i.i.i.i = and i32 %sub.i.i.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i.i, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %cond.i.i.i.i.i, %and.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %skb_tailroom.exit.i.i.i.i.cleanup74_crit_edge, label %nlmsg_put.exit.i.i.i, !prof !101

skb_tailroom.exit.i.i.i.i.cleanup74_crit_edge:    ; preds = %skb_tailroom.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

nlmsg_put.exit.i.i.i:                             ; preds = %skb_tailroom.exit.i.i.i.i
  %call3.i.i.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %75, i32 noundef %79, i32 noundef %80, i32 noundef %add.i.i.i, i32 noundef 2) #12
  %cmp.i.i.i = icmp eq ptr %call3.i.i.i.i, null
  br i1 %cmp.i.i.i, label %nlmsg_put.exit.i.i.i.cleanup74_crit_edge, label %genlmsg_put.exit.i.i

nlmsg_put.exit.i.i.i.cleanup74_crit_edge:         ; preds = %nlmsg_put.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

genlmsg_put.exit.i.i:                             ; preds = %nlmsg_put.exit.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 16
  %88 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 10, ptr %add.ptr.i.i.i.i, align 2
  %89 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %conv.i.i.i = trunc i32 %89 to i8
  %version3.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 17
  %90 = ptrtoint ptr %version3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.i.i.i, ptr %version3.i.i.i, align 1
  %reserved.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 18
  %91 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %reserved.i.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i.i.i, i32 20
  %tobool.not.i.i121 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i121, label %genlmsg_put.exit.i.i.cleanup74_crit_edge, label %if.end.i.i122

genlmsg_put.exit.i.i.cleanup74_crit_edge:         ; preds = %genlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end.i.i122:                                    ; preds = %genlmsg_put.exit.i.i
  %92 = ptrtoint ptr %fam_id.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %fam_id.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %94 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8.i, label %if.end.i.i122.cleanup74_crit_edge

if.end.i.i122.cleanup74_crit_edge:                ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end8.i:                                        ; preds = %if.end.i.i122
  %95 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32777, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i68.i = icmp slt i32 %call1.i.i.i, 0
  %tobool10.not88.i = icmp eq ptr %96, null
  %tobool10.not.i = select i1 %cmp.i.i68.i, i1 true, i1 %tobool10.not88.i
  br i1 %tobool10.not.i, label %if.end8.i.if.then.i.i.i.i_crit_edge, label %if.end12.i

if.end8.i.if.then.i.i.i.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end12.i:                                       ; preds = %if.end8.i
  %conv13.i = zext i8 %op.sroa.35.2226 to i32
  %or.i.i = or i32 %conv13.i, 32768
  %97 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i70.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i.i, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i70.i)
  %cmp.i.i71.i = icmp slt i32 %call1.i.i70.i, 0
  %tobool15.not89.i = icmp eq ptr %98, null
  %tobool15.not.i = select i1 %cmp.i.i71.i, i1 true, i1 %tobool15.not89.i
  br i1 %tobool15.not.i, label %if.end12.i.if.then.i.i.i.i_crit_edge, label %if.end17.i

if.end12.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end17.i:                                       ; preds = %if.end12.i
  %99 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %0, align 4
  %call19.i = call i32 @netlink_policy_dump_get_policy_idx(ptr noundef %100, ptr noundef nonnull %op.sroa.18.2224, i32 noundef %op.sroa.27.4225) #12
  br i1 %tobool1.not.i, label %if.end17.i.if.end26.i_crit_edge, label %land.lhs.true22.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

land.lhs.true22.i:                                ; preds = %if.end17.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %101 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call19.i, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true22.i.if.end26.i_crit_edge, label %land.lhs.true22.i.if.then.i.i.i.i_crit_edge

land.lhs.true22.i.if.then.i.i.i.i_crit_edge:      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

land.lhs.true22.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.end26.i:                                       ; preds = %land.lhs.true22.i.if.end26.i_crit_edge, %if.end17.i.if.end26.i_crit_edge
  %tobool28.not.i = icmp ne ptr %op.sroa.12.2222, null
  %102 = and i8 %op.sroa.45.2227, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool33.not.i = icmp eq i8 %102, 0
  %or.cond245 = select i1 %tobool28.not.i, i1 %tobool33.not.i, i1 false
  br i1 %or.cond245, label %land.lhs.true34.i, label %if.end26.i.if.end38.i_crit_edge

if.end26.i.if.end38.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

land.lhs.true34.i:                                ; preds = %if.end26.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73.i) #12
  %103 = ptrtoint ptr %tmp.i73.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call19.i, ptr %tmp.i73.i, align 4
  %call.i74.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i73.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool36.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true34.i.if.end38.i_crit_edge, label %land.lhs.true34.i.if.then.i.i.i.i_crit_edge

land.lhs.true34.i.if.then.i.i.i.i_crit_edge:      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

land.lhs.true34.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true34.i.if.end38.i_crit_edge, %if.end26.i.if.end38.i_crit_edge
  %104 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i123 = trunc i32 %sub.ptr.sub.i.i to i16
  %106 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i123, ptr %98, align 2
  %107 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i77.i = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i78.i = sub i32 %sub.ptr.lhs.cast.i76.i, %sub.ptr.rhs.cast.i77.i
  %conv.i79.i = trunc i32 %sub.ptr.sub.i78.i to i16
  %108 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i79.i, ptr %96, align 2
  %109 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %110 = ptrtoint ptr %call3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.ptr.sub.i.i.i, ptr %call3.i.i.i.i, align 4
  br label %cleanup44

if.then.i.i.i.i:                                  ; preds = %land.lhs.true34.i.if.then.i.i.i.i_crit_edge, %land.lhs.true22.i.if.then.i.i.i.i_crit_edge, %if.end12.i.if.then.i.i.i.i_crit_edge, %if.end8.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %111 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i83.i = icmp ugt ptr %112, %call3.i.i.i.i
  br i1 %cmp.i.i.i83.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !101

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %113 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %call3.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #12
  br label %cleanup74

cleanup44:                                        ; preds = %if.end38.i, %land.lhs.true.i.cleanup44_crit_edge, %if.end37.cleanup44_crit_edge
  %115 = ptrtoint ptr %opidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %opidx, align 4
  %inc = add i32 %116, 1
  store i32 %inc, ptr %opidx, align 4
  %117 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rt, align 4
  %n_ops.i = getelementptr inbounds %struct.genl_family, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %n_ops.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %n_ops.i, align 1
  %conv.i = zext i8 %120 to i32
  %n_small_ops.i = getelementptr inbounds %struct.genl_family, ptr %118, i32 0, i32 8
  %121 = ptrtoint ptr %n_small_ops.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %n_small_ops.i, align 2
  %conv1.i = zext i8 %122 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %cmp = icmp ult i32 %inc, %add.i
  br i1 %cmp, label %cleanup44.while.body_crit_edge, label %cleanup44.while.end_crit_edge

cleanup44.while.end_crit_edge:                    ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup44.while.body_crit_edge:                   ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup44.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %123 = ptrtoint ptr %policies to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load48 = load i8, ptr %policies, align 2
  %bf.set = or i8 %bf.load48, -128
  store i8 %bf.set, ptr %policies, align 2
  br label %if.end50

if.end50:                                         ; preds = %while.end, %entry.if.end50_crit_edge
  %124 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %0, align 4
  %call52261 = call zeroext i1 @netlink_policy_dump_loop(ptr noundef %125) #12
  br i1 %call52261, label %while.body53.lr.ph, label %if.end50.cleanup74_crit_edge

if.end50.cleanup74_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

while.body53.lr.ph:                               ; preds = %if.end50
  %nlh.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i.i126 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %fam_id.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  br label %while.body53

while.body53:                                     ; preds = %cleanup68.while.body53_crit_edge, %while.body53.lr.ph
  %126 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cb, align 4
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %127, i32 0, i32 3, i32 12
  %128 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %portid.i, align 4
  %130 = ptrtoint ptr %nlh.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nlh.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nlmsg_seq.i, align 4
  %134 = load i32, ptr @genl_ctrl, align 4
  %135 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 1), align 4
  %add.i.i = add i32 %135, 4
  %136 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.i.not.i.i.i.i = icmp eq i32 %137, 0
  br i1 %tobool.i.not.i.i.i.i, label %cond.false.i.i.i.i, label %while.body53.skb_tailroom.exit.i.i.i_crit_edge

while.body53.skb_tailroom.exit.i.i.i_crit_edge:   ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %end.i.i.i.i, align 4
  %140 = ptrtoint ptr %tail.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tail.i.i.i.i126, align 8
  %sub.ptr.lhs.cast.i.i.i.i127 = ptrtoint ptr %139 to i32
  %sub.ptr.rhs.cast.i.i.i.i128 = ptrtoint ptr %141 to i32
  %sub.ptr.sub.i.i.i.i129 = sub i32 %sub.ptr.lhs.cast.i.i.i.i127, %sub.ptr.rhs.cast.i.i.i.i128
  br label %skb_tailroom.exit.i.i.i

skb_tailroom.exit.i.i.i:                          ; preds = %cond.false.i.i.i.i, %while.body53.skb_tailroom.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i.i.i129, %cond.false.i.i.i.i ], [ 0, %while.body53.skb_tailroom.exit.i.i.i_crit_edge ]
  %sub.i.i.i.i = add i32 %135, 23
  %and.i.i.i.i = and i32 %sub.i.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i.i, i32 %and.i.i.i.i)
  %cmp.i.i.i130 = icmp slt i32 %cond.i.i.i.i, %and.i.i.i.i
  br i1 %cmp.i.i.i130, label %skb_tailroom.exit.i.i.i.cleanup74_crit_edge, label %nlmsg_put.exit.i.i, !prof !101

skb_tailroom.exit.i.i.i.cleanup74_crit_edge:      ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %129, i32 noundef %133, i32 noundef %134, i32 noundef %add.i.i, i32 noundef 2) #12
  %cmp.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %cmp.i.i, label %nlmsg_put.exit.i.i.cleanup74_crit_edge, label %genlmsg_put.exit.i

nlmsg_put.exit.i.i.cleanup74_crit_edge:           ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

genlmsg_put.exit.i:                               ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i131 = getelementptr i8, ptr %call3.i.i.i, i32 16
  %142 = ptrtoint ptr %add.ptr.i.i.i131 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 10, ptr %add.ptr.i.i.i131, align 2
  %143 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @genl_ctrl, i32 0, i32 3), align 4
  %conv.i.i132 = trunc i32 %143 to i8
  %version3.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %144 = ptrtoint ptr %version3.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv.i.i132, ptr %version3.i.i, align 1
  %reserved.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %145 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %reserved.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i.i, i32 20
  %tobool.not.i133 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i133, label %genlmsg_put.exit.i.cleanup74_crit_edge, label %if.end.i135

genlmsg_put.exit.i.cleanup74_crit_edge:           ; preds = %genlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end.i135:                                      ; preds = %genlmsg_put.exit.i
  %146 = ptrtoint ptr %fam_id.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %fam_id.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i125) #12
  %148 = ptrtoint ptr %tmp.i.i125 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %tmp.i.i125, align 2
  %call.i.i134 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i125) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool4.not.i = icmp eq i32 %call.i.i134, 0
  br i1 %tobool4.not.i, label %if.end57, label %if.end.i135.cleanup74_crit_edge

if.end.i135.cleanup74_crit_edge:                  ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

if.end57:                                         ; preds = %if.end.i135
  %149 = ptrtoint ptr %tail.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tail.i.i.i.i126, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i137 = icmp slt i32 %call1.i.i, 0
  %tobool59.not246 = icmp eq ptr %150, null
  %tobool59.not = select i1 %cmp.i.i137, i1 true, i1 %tobool59.not246
  br i1 %tobool59.not, label %if.end57.if.then.i.i.i148_crit_edge, label %if.end61

if.end57.if.then.i.i.i148_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i148

if.end61:                                         ; preds = %if.end57
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %0, align 4
  %call63 = call i32 @netlink_policy_dump_write(ptr noundef %skb, ptr noundef %152) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup68, label %if.end61.if.then.i.i.i148_crit_edge

if.end61.if.then.i.i.i148_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i148

cleanup68:                                        ; preds = %if.end61
  %153 = ptrtoint ptr %tail.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tail.i.i.i.i126, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %154 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %150 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i138 = trunc i32 %sub.ptr.sub.i to i16
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i138, ptr %150, align 2
  %156 = load ptr, ptr %tail.i.i.i.i126, align 8
  %sub.ptr.lhs.cast.i.i140 = ptrtoint ptr %156 to i32
  %sub.ptr.rhs.cast.i.i141 = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i142 = sub i32 %sub.ptr.lhs.cast.i.i140, %sub.ptr.rhs.cast.i.i141
  %157 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub.ptr.sub.i.i142, ptr %call3.i.i.i, align 4
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %0, align 4
  %call52 = call zeroext i1 @netlink_policy_dump_loop(ptr noundef %159) #12
  br i1 %call52, label %cleanup68.while.body53_crit_edge, label %cleanup68.cleanup74_crit_edge

cleanup68.cleanup74_crit_edge:                    ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup74

cleanup68.while.body53_crit_edge:                 ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body53

if.then.i.i.i148:                                 ; preds = %if.end61.if.then.i.i.i148_crit_edge, %if.end57.if.then.i.i.i148_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %160 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i147 = icmp ugt ptr %161, %call3.i.i.i
  br i1 %cmp.i.i.i147, label %do.end.i.i.i, label %if.then.i.i.i148.if.end.i.i.i152_crit_edge, !prof !101

if.then.i.i.i148.if.end.i.i.i152_crit_edge:       ; preds = %if.then.i.i.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i152

do.end.i.i.i:                                     ; preds = %if.then.i.i.i148
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i152

if.end.i.i.i152:                                  ; preds = %do.end.i.i.i, %if.then.i.i.i148.if.end.i.i.i152_crit_edge
  %162 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i149 = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i150 = ptrtoint ptr %163 to i32
  %sub.ptr.sub.i.i.i151 = sub i32 %sub.ptr.lhs.cast.i.i.i149, %sub.ptr.rhs.cast.i.i.i150
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i151) #12
  br label %cleanup74

cleanup74:                                        ; preds = %if.end.i.i.i152, %cleanup68.cleanup74_crit_edge, %if.end.i135.cleanup74_crit_edge, %genlmsg_put.exit.i.cleanup74_crit_edge, %nlmsg_put.exit.i.i.cleanup74_crit_edge, %skb_tailroom.exit.i.i.i.cleanup74_crit_edge, %if.end50.cleanup74_crit_edge, %if.end.i.i.i.i, %if.end.i.i122.cleanup74_crit_edge, %genlmsg_put.exit.i.i.cleanup74_crit_edge, %nlmsg_put.exit.i.i.i.cleanup74_crit_edge, %skb_tailroom.exit.i.i.i.i.cleanup74_crit_edge, %cleanup
  %retval.5.in = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %164 = ptrtoint ptr %retval.5.in to i32
  call void @__asan_load4_noabort(i32 %164)
  %retval.5 = load i32, ptr %retval.5.in, align 4
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctrl_dumppolicy_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @netlink_policy_dump_free(ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_add_policy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_policy_dump_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_get_policy_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_policy_dump_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_pernet_init(ptr noundef %net) #0 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #12
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.genl_pernet_init.cfg, i32 28)
  %call.i = call ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef 16, ptr noundef null, ptr noundef nonnull %cfg) #12
  %genl_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 21
  %1 = ptrtoint ptr %genl_sock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %genl_sock, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp.i.not = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.18) #19
  unreachable

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %. = phi i32 [ -12, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #12
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @genl_pernet_exit(ptr nocapture noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %genl_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 21
  %0 = ptrtoint ptr %genl_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %genl_sock, align 4
  tail call void @netlink_kernel_release(ptr noundef %1) #12
  %2 = ptrtoint ptr %genl_sock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %genl_sock, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @genl_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @cb_lock) #12
  %call = tail call i32 @netlink_rcv_skb(ptr noundef %skb, ptr noundef nonnull @genl_rcv_msg) #12
  tail call void @up_read(ptr noundef nonnull @cb_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_bind(ptr nocapture noundef readonly %net, i32 noundef %group) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #12
  tail call void @down_write(ptr noundef nonnull @cb_lock) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call30 = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id) #12
  %cmp.not31 = icmp eq ptr %call30, null
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call32 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call30, %entry.for.body_crit_edge ]
  %n_mcgrps = getelementptr inbounds %struct.genl_family, ptr %call32, i32 0, i32 9
  %1 = ptrtoint ptr %n_mcgrps to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %n_mcgrps, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp1 = icmp eq i8 %2, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %conv = zext i8 %2 to i32
  %mcgrp_offset = getelementptr inbounds %struct.genl_family, ptr %call32, i32 0, i32 5
  %3 = ptrtoint ptr %mcgrp_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mcgrp_offset, align 4
  %sub = sub i32 %group, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp3 = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp7.not = icmp slt i32 %sub, %conv
  %or.cond = select i1 %cmp3, i1 %cmp7.not, i1 false
  br i1 %or.cond, label %if.end10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %mcgrps = getelementptr inbounds %struct.genl_family, ptr %call32, i32 0, i32 15
  %5 = ptrtoint ptr %mcgrps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcgrps, align 4
  %flags = getelementptr %struct.genl_multicast_group, ptr %6, i32 %sub, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end10.for.end_crit_edge, label %land.lhs.true

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  %call12 = call zeroext i1 @ns_capable(ptr noundef %11, i32 noundef 12) #12
  %not.call12 = xor i1 %call12, true
  %spec.select = sext i1 %not.call12 to i32
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %add = add i32 %13, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @genl_fam_idr, ptr noundef nonnull %id) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true, %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.3 = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  call void @up_write(ptr noundef nonnull @cb_lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #12
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_rcv_msg(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %info.i.i = alloca %struct.genl_info, align 4
  %ctx.i.i = alloca %struct.genl_start_context, align 4
  %c.i.i = alloca %struct.netlink_dump_control, align 4
  %c9.i.i = alloca %struct.netlink_dump_control, align 4
  %op.i = alloca %struct.genl_ops, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %0 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlmsg_type, align 4
  %conv = zext i16 %1 to i32
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @genl_fam_idr, i32 noundef %conv) #12
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %parallel_ops = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %parallel_ops to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %parallel_ops, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %op.i) #12
  %9 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 4
  %11 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 5
  %12 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 6
  %13 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 7
  %14 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 8
  %15 = getelementptr inbounds %struct.genl_ops, ptr %op.i, i32 0, i32 9
  %16 = ptrtoint ptr %parallel_ops to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %parallel_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i = icmp slt i8 %bf.load.i, 0
  %cmp.i.not.i = icmp eq ptr %8, @init_net
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end3.genl_family_rcv_msg.exit_crit_edge

if.end3.genl_family_rcv_msg.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

if.end.i:                                         ; preds = %if.end3
  %hdrsize.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %hdrsize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdrsize.i, align 4
  %add.i = add i32 %18, 4
  %19 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nlh, align 4
  %add.i.i = add i32 %18, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i.i)
  %cmp.i = icmp ult i32 %20, %add.i.i
  br i1 %cmp.i, label %if.end.i.genl_family_rcv_msg.exit_crit_edge, label %if.end6.i

if.end.i.genl_family_rcv_msg.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

if.end6.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i, align 2
  %n_ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %n_ops.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %n_ops.i.i.i, align 1
  %conv.i.i.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp12.not.i.i.i = icmp eq i8 %24, 0
  br i1 %cmp12.not.i.i.i, label %if.end6.i.if.end.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end6.i.if.end.i.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end6.i
  %ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 13
  %25 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.013.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %cmd2.i.i.i = getelementptr %struct.genl_ops, ptr %26, i32 %i.013.i.i.i, i32 6
  %27 = ptrtoint ptr %cmd2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cmd2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %22)
  %cmp4.i.i.i = icmp eq i8 %28, %22
  br i1 %cmp4.i.i.i, label %if.then.i.i.i, label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.genl_ops, ptr %26, i32 %i.013.i.i.i
  %29 = call ptr @memcpy(ptr %op.i, ptr %arrayidx.i.i.i.i, i32 28)
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %maxattr1.i.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %maxattr1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %maxattr1.i.i.i.i, align 4
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %11, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %10, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i.i.i.if.end10.sink.split.i_crit_edge, label %if.end.i.i.i.i.if.end10.i_crit_edge

if.end.i.i.i.i.if.end10.i_crit_edge:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.end.i.i.i.i.if.end10.sink.split.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.013.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i.if.end.i.i_crit_edge, %if.end6.i.if.end.i.i_crit_edge
  %n_small_ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %n_small_ops.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %n_small_ops.i.i.i, align 2
  %conv.i5.i.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp12.not.i6.i.i = icmp eq i8 %38, 0
  br i1 %cmp12.not.i6.i.i, label %if.end.i.i.genl_family_rcv_msg.exit_crit_edge, label %for.body.lr.ph.i7.i.i

if.end.i.i.genl_family_rcv_msg.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

for.body.lr.ph.i7.i.i:                            ; preds = %if.end.i.i
  %small_ops.i.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 14
  %39 = ptrtoint ptr %small_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %small_ops.i.i.i, align 4
  br label %for.body.i12.i.i

for.body.i12.i.i:                                 ; preds = %for.inc.i19.i.i.for.body.i12.i.i_crit_edge, %for.body.lr.ph.i7.i.i
  %i.013.i8.i.i = phi i32 [ 0, %for.body.lr.ph.i7.i.i ], [ %inc.i17.i.i, %for.inc.i19.i.i.for.body.i12.i.i_crit_edge ]
  %cmd2.i9.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i, i32 2
  %41 = ptrtoint ptr %cmd2.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cmd2.i9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %22)
  %cmp4.i11.i.i = icmp eq i8 %42, %22
  br i1 %cmp4.i11.i.i, label %if.then.i16.i.i, label %for.inc.i19.i.i

if.then.i16.i.i:                                  ; preds = %for.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = getelementptr inbounds i8, ptr %op.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 12)
  %arrayidx.i.i13.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i
  %45 = ptrtoint ptr %arrayidx.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i13.i.i, align 4
  %47 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %op.i, align 4
  %dumpit.i.i.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i, i32 1
  %48 = ptrtoint ptr %dumpit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dumpit.i.i.i.i, align 4
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %9, align 4
  %51 = ptrtoint ptr %cmd2.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cmd2.i9.i.i, align 4
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %12, align 4
  %internal_flags.i.i.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i, i32 3
  %54 = ptrtoint ptr %internal_flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %internal_flags.i.i.i.i, align 1
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %13, align 1
  %flags.i.i.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i, i32 4
  %57 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %flags.i.i.i.i, align 2
  %59 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %14, align 2
  %validate.i.i.i.i = getelementptr %struct.genl_small_ops, ptr %40, i32 %i.013.i8.i.i, i32 5
  %60 = ptrtoint ptr %validate.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %validate.i.i.i.i, align 1
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %15, align 1
  %maxattr.i.i14.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %maxattr.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %maxattr.i.i14.i.i, align 4
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %11, align 4
  br label %if.end10.sink.split.i

for.inc.i19.i.i:                                  ; preds = %for.body.i12.i.i
  %inc.i17.i.i = add nuw nsw i32 %i.013.i8.i.i, 1
  %exitcond.not.i18.i.i = icmp eq i32 %inc.i17.i.i, %conv.i5.i.i
  br i1 %exitcond.not.i18.i.i, label %for.inc.i19.i.i.genl_family_rcv_msg.exit_crit_edge, label %for.inc.i19.i.i.for.body.i12.i.i_crit_edge

for.inc.i19.i.i.for.body.i12.i.i_crit_edge:       ; preds = %for.inc.i19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i12.i.i

for.inc.i19.i.i.genl_family_rcv_msg.exit_crit_edge: ; preds = %for.inc.i19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

if.end10.sink.split.i:                            ; preds = %if.then.i16.i.i, %if.end.i.i.i.i.if.end10.sink.split.i_crit_edge
  %policy.i.i15.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 10
  %66 = ptrtoint ptr %policy.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %policy.i.i15.i.i, align 4
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %10, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.end.i.i.i.i.if.end10.i_crit_edge
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %14, align 2
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool12.not.i = icmp eq i8 %71, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end16.i_crit_edge, label %land.lhs.true13.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

land.lhs.true13.i:                                ; preds = %if.end10.i
  %call14.i = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #12
  br i1 %call14.i, label %land.lhs.true13.i.if.end16.i_crit_edge, label %land.lhs.true13.i.genl_family_rcv_msg.exit_crit_edge

land.lhs.true13.i.genl_family_rcv_msg.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

land.lhs.true13.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true13.i.if.end16.i_crit_edge, %if.end10.i.if.end16.i_crit_edge
  %72 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %14, align 2
  %74 = and i8 %73, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool20.not.i = icmp eq i8 %74, 0
  br i1 %tobool20.not.i, label %if.end16.i.if.end24.i_crit_edge, label %land.lhs.true21.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

land.lhs.true21.i:                                ; preds = %if.end16.i
  %user_ns.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 11
  %75 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %user_ns.i, align 4
  %call22.i = tail call zeroext i1 @netlink_ns_capable(ptr noundef %skb, ptr noundef %76, i32 noundef 12) #12
  br i1 %call22.i, label %land.lhs.true21.i.if.end24.i_crit_edge, label %land.lhs.true21.i.genl_family_rcv_msg.exit_crit_edge

land.lhs.true21.i.genl_family_rcv_msg.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg.exit

land.lhs.true21.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true21.i.if.end24.i_crit_edge, %if.end16.i.if.end24.i_crit_edge
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %77 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nlmsg_flags.i, align 2
  %79 = and i16 %78, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %79)
  %cmp27.i = icmp eq i16 %79, 768
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctx.i.i) #12
  %80 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %9, align 4
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.then29.i.genl_family_rcv_msg_dumpit.exit.i_crit_edge, label %if.end.i53.i

if.then29.i.genl_family_rcv_msg_dumpit.exit.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg_dumpit.exit.i

if.end.i53.i:                                     ; preds = %if.then29.i
  %82 = getelementptr inbounds %struct.genl_start_context, ptr %ctx.i.i, i32 0, i32 4
  %83 = getelementptr inbounds %struct.genl_start_context, ptr %ctx.i.i, i32 0, i32 3
  %84 = getelementptr inbounds %struct.genl_start_context, ptr %ctx.i.i, i32 0, i32 2
  %85 = getelementptr inbounds %struct.genl_start_context, ptr %ctx.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %ctx.i.i, align 4
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %nlh, ptr %85, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %extack, ptr %84, align 4
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %op.i, ptr %83, align 4
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add.i, ptr %82, align 4
  %91 = ptrtoint ptr %parallel_ops to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i.i = load i8, ptr %parallel_ops, align 4
  %92 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool6.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c.i.i) #12
  %93 = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i.i, i32 0, i32 1
  %94 = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i.i, i32 0, i32 2
  %95 = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i.i, i32 0, i32 3
  %96 = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i.i, i32 0, i32 4
  %97 = getelementptr inbounds %struct.netlink_dump_control, ptr %c.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @genl_start, ptr %c.i.i, align 4
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @genl_lock_dumpit, ptr %93, align 4
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @genl_lock_done, ptr %94, align 4
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %ctx.i.i, ptr %95, align 4
  %module8.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 16
  %102 = ptrtoint ptr %module8.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %module8.i.i, align 4
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %96, align 4
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %97, align 4
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 21
  %106 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i = call i32 @__netlink_dump_start(ptr noundef %107, ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %c.i.i) #12
  call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c.i.i) #12
  br label %genl_family_rcv_msg_dumpit.exit.i

if.else.i.i:                                      ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c9.i.i) #12
  %108 = getelementptr inbounds %struct.netlink_dump_control, ptr %c9.i.i, i32 0, i32 1
  %109 = getelementptr inbounds %struct.netlink_dump_control, ptr %c9.i.i, i32 0, i32 2
  %110 = getelementptr inbounds %struct.netlink_dump_control, ptr %c9.i.i, i32 0, i32 3
  %111 = getelementptr inbounds %struct.netlink_dump_control, ptr %c9.i.i, i32 0, i32 4
  %112 = getelementptr inbounds %struct.netlink_dump_control, ptr %c9.i.i, i32 0, i32 5
  %113 = ptrtoint ptr %c9.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @genl_start, ptr %c9.i.i, align 4
  %114 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %81, ptr %108, align 4
  %115 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @genl_parallel_done, ptr %109, align 4
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %ctx.i.i, ptr %110, align 4
  %module16.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 16
  %117 = ptrtoint ptr %module16.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %module16.i.i, align 4
  %119 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %111, align 4
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %112, align 4
  %genl_sock18.i.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 21
  %121 = ptrtoint ptr %genl_sock18.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %genl_sock18.i.i, align 4
  %call19.i.i = call i32 @__netlink_dump_start(ptr noundef %122, ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %c9.i.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c9.i.i) #12
  br label %genl_family_rcv_msg_dumpit.exit.i

genl_family_rcv_msg_dumpit.exit.i:                ; preds = %if.else.i.i, %if.then7.i.i, %if.then29.i.genl_family_rcv_msg_dumpit.exit.i_crit_edge
  %retval.0.i54.i = phi i32 [ -95, %if.then29.i.genl_family_rcv_msg_dumpit.exit.i_crit_edge ], [ %call19.i.i, %if.else.i.i ], [ %call.i.i, %if.then7.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctx.i.i) #12
  br label %genl_family_rcv_msg.exit

if.else.i:                                        ; preds = %if.end24.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info.i.i) #12
  %123 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %op.i, align 4
  %tobool.not.i55.i = icmp eq ptr %124, null
  br i1 %tobool.not.i55.i, label %if.else.i.genl_family_rcv_msg_doit.exit.i_crit_edge, label %if.end.i57.i

if.else.i.genl_family_rcv_msg_doit.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %genl_family_rcv_msg_doit.exit.i

if.end.i57.i:                                     ; preds = %if.else.i
  %call.i56.i = call fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %nlh, ptr noundef %extack, ptr noundef nonnull %op.i, i32 noundef %add.i, i32 noundef 1) #12
  %cmp.i.i.i = icmp ugt ptr %call.i56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then2.i.i, label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %call.i56.i to i32
  br label %genl_family_rcv_msg_doit.exit.i

if.end4.i.i:                                      ; preds = %if.end.i57.i
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %126 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nlmsg_seq.i.i, align 4
  %128 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %info.i.i, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %129 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %portid.i.i, align 4
  %snd_portid.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %snd_portid.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %snd_portid.i.i, align 4
  %nlhdr.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %nlhdr.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %nlh, ptr %nlhdr.i.i, align 4
  %genlhdr.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %genlhdr.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %add.ptr.i.i, ptr %genlhdr.i.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %nlh, i32 20
  %userhdr.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 4
  %134 = ptrtoint ptr %userhdr.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %add.ptr.i58.i, ptr %userhdr.i.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i56.i, ptr %attrs.i.i, align 4
  %extack7.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 8
  %136 = ptrtoint ptr %extack7.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %extack, ptr %extack7.i.i, align 4
  %_net.i.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 6
  %137 = ptrtoint ptr %_net.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %8, ptr %_net.i.i.i, align 4
  %user_ptr.i.i = getelementptr inbounds %struct.genl_info, ptr %info.i.i, i32 0, i32 7
  %138 = ptrtoint ptr %user_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 0, ptr %user_ptr.i.i, align 4
  %pre_doit.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 11
  %139 = ptrtoint ptr %pre_doit.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pre_doit.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %140, null
  br i1 %tobool8.not.i.i, label %if.end4.i.i.if.end15.i.i_crit_edge, label %if.then9.i.i

if.end4.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %if.end4.i.i
  %call11.i.i = call i32 %140(ptr noundef nonnull %op.i, ptr noundef %skb, ptr noundef nonnull %info.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then9.i.i.if.end15.i.i_crit_edge, label %if.then9.i.i.out.i.i_crit_edge

if.then9.i.i.out.i.i_crit_edge:                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then9.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then9.i.i.if.end15.i.i_crit_edge, %if.end4.i.i.if.end15.i.i_crit_edge
  %141 = ptrtoint ptr %op.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %op.i, align 4
  %call17.i.i = call i32 %142(ptr noundef %skb, ptr noundef nonnull %info.i.i) #12
  %post_doit.i.i = getelementptr inbounds %struct.genl_family, ptr %call.i, i32 0, i32 12
  %143 = ptrtoint ptr %post_doit.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %post_doit.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %144, null
  br i1 %tobool18.not.i.i, label %if.end15.i.i.out.i.i_crit_edge, label %if.then19.i.i

if.end15.i.i.out.i.i_crit_edge:                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %144(ptr noundef nonnull %op.i, ptr noundef %skb, ptr noundef nonnull %info.i.i) #12
  br label %out.i.i

out.i.i:                                          ; preds = %if.then19.i.i, %if.end15.i.i.out.i.i_crit_edge, %if.then9.i.i.out.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call11.i.i, %if.then9.i.i.out.i.i_crit_edge ], [ %call17.i.i, %if.then19.i.i ], [ %call17.i.i, %if.end15.i.i.out.i.i_crit_edge ]
  call void @kfree(ptr noundef %call.i56.i) #12
  br label %genl_family_rcv_msg_doit.exit.i

genl_family_rcv_msg_doit.exit.i:                  ; preds = %out.i.i, %if.then2.i.i, %if.else.i.genl_family_rcv_msg_doit.exit.i_crit_edge
  %retval.0.i59.i = phi i32 [ %125, %if.then2.i.i ], [ %err.0.i.i, %out.i.i ], [ -95, %if.else.i.genl_family_rcv_msg_doit.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info.i.i) #12
  br label %genl_family_rcv_msg.exit

genl_family_rcv_msg.exit:                         ; preds = %genl_family_rcv_msg_doit.exit.i, %genl_family_rcv_msg_dumpit.exit.i, %land.lhs.true21.i.genl_family_rcv_msg.exit_crit_edge, %land.lhs.true13.i.genl_family_rcv_msg.exit_crit_edge, %for.inc.i19.i.i.genl_family_rcv_msg.exit_crit_edge, %if.end.i.i.genl_family_rcv_msg.exit_crit_edge, %if.end.i.genl_family_rcv_msg.exit_crit_edge, %if.end3.genl_family_rcv_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i54.i, %genl_family_rcv_msg_dumpit.exit.i ], [ %retval.0.i59.i, %genl_family_rcv_msg_doit.exit.i ], [ -22, %if.end.i.genl_family_rcv_msg.exit_crit_edge ], [ -1, %land.lhs.true13.i.genl_family_rcv_msg.exit_crit_edge ], [ -1, %land.lhs.true21.i.genl_family_rcv_msg.exit_crit_edge ], [ -95, %if.end.i.i.genl_family_rcv_msg.exit_crit_edge ], [ -2, %if.end3.genl_family_rcv_msg.exit_crit_edge ], [ -95, %for.inc.i19.i.i.genl_family_rcv_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %op.i) #12
  %145 = ptrtoint ptr %parallel_ops to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load6 = load i8, ptr %parallel_ops, align 4
  %146 = and i8 %bf.load6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool9.not = icmp eq i8 %146, 0
  br i1 %tobool9.not, label %if.then10, label %genl_family_rcv_msg.exit.cleanup_crit_edge

genl_family_rcv_msg.exit.cleanup_crit_edge:       ; preds = %genl_family_rcv_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %genl_family_rcv_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %genl_family_rcv_msg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.then10 ], [ %retval.0.i, %genl_family_rcv_msg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_start(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ops1 = getelementptr inbounds %struct.genl_start_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  %validate = getelementptr inbounds %struct.genl_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %validate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %validate, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.no_attrs_crit_edge

entry.no_attrs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_attrs

if.end:                                           ; preds = %entry
  %nlh = getelementptr inbounds %struct.genl_start_context, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nlh, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %hdrlen = getelementptr inbounds %struct.genl_start_context, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdrlen, align 4
  %add.i = add i32 %12, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp = icmp ult i32 %10, %add.i
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %extack = getelementptr inbounds %struct.genl_start_context, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extack, align 4
  %call7 = tail call fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %8, ptr noundef %14, ptr noundef %3, i32 noundef %12, i32 noundef 4)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end4.no_attrs_crit_edge

if.end4.no_attrs_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_attrs

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call7 to i32
  br label %cleanup

no_attrs:                                         ; preds = %if.end4.no_attrs_crit_edge, %entry.no_attrs_crit_edge
  %attrs.0 = phi ptr [ null, %entry.no_attrs_crit_edge ], [ %call7, %if.end4.no_attrs_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 36) #20
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %no_attrs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %attrs.0) #12
  br label %cleanup

if.end15:                                         ; preds = %no_attrs
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call7.i.i, align 8
  %op = getelementptr inbounds %struct.genl_dumpit_info, ptr %call7.i.i, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %op, ptr %3, i32 28)
  %attrs18 = getelementptr inbounds %struct.genl_dumpit_info, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %attrs18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %attrs.0, ptr %attrs18, align 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %data, align 4
  %start = getelementptr inbounds %struct.genl_ops, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %start, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.then21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end15
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %parallel_ops = getelementptr inbounds %struct.genl_family, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %parallel_ops to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %parallel_ops, align 4
  %28 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not = icmp eq i8 %28, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end25_crit_edge

if.then21.if.end25_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then21.if.end25_crit_edge
  %29 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %start, align 4
  %call27 = tail call i32 %30(ptr noundef %cb) #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %parallel_ops29 = getelementptr inbounds %struct.genl_family, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %parallel_ops29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load30 = load i8, ptr %parallel_ops29, align 4
  %34 = and i8 %bf.load30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33.not = icmp eq i8 %34, 0
  br i1 %tobool33.not, label %if.then34, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end25.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool37.not = icmp eq i32 %call27, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %attrs18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attrs18, align 8
  tail call void @kfree(ptr noundef %36) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then14, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then14 ], [ %15, %if.then9 ], [ -22, %if.end.cleanup_crit_edge ], [ %call27, %if.then38 ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_lock_dumpit(ptr noundef %skb, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  %dumpit = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %dumpit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumpit, align 4
  %call1 = tail call i32 %3(ptr noundef %skb, ptr noundef %cb) #12
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_lock_done(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %done = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @genl_mutex, i32 noundef 0) #12
  %4 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %done, align 4
  %call2 = tail call i32 %5(ptr noundef %cb) #12
  tail call void @mutex_unlock(ptr noundef nonnull @genl_mutex) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @kfree(ptr noundef %1) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genl_parallel_done(ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %done = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 %3(ptr noundef %cb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %attrs = getelementptr inbounds %struct.genl_dumpit_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %1) #12
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @genl_family_rcv_msg_attrs_parse(ptr noundef %nlh, ptr noundef %extack, ptr nocapture noundef readonly %ops, i32 noundef %hdrlen, i32 noundef %no_strict_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %validate1 = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 9
  %0 = ptrtoint ptr %validate1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %validate1, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, %no_strict_flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 31, i32 0
  %maxattr = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 5
  %2 = ptrtoint ptr %maxattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxattr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !101

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #17
  %tobool4.not = icmp eq ptr %call8.i, null
  br i1 %tobool4.not, label %if.end7.i.cleanup_crit_edge, label %if.end7

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end7.i
  %7 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlh, align 4
  %add.i.i = add i32 %hdrlen, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add.i.i)
  %cmp.i = icmp ult i32 %8, %add.i.i
  br i1 %cmp.i, label %do.body.i, label %__nlmsg_parse.exit

do.body.i:                                        ; preds = %if.end7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #12
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.if.then11_crit_edge, label %if.then1.i

do.body.i.if.then11_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %if.then11

__nlmsg_parse.exit:                               ; preds = %if.end7
  %policy = getelementptr inbounds %struct.genl_ops, ptr %ops, i32 0, i32 4
  %10 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy, align 4
  %12 = ptrtoint ptr %maxattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxattr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 16
  %sub.i.i = add i32 %hdrlen, 3
  %and.i.i = and i32 %sub.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %and.i.i
  %sub.i.i.i = sub i32 -16, %and.i.i
  %sub1.i.i = add i32 %sub.i.i.i, %8
  %call5.i = tail call i32 @__nla_parse(ptr noundef nonnull %call8.i, i32 noundef %13, ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, ptr noundef %11, i32 noundef %cond, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool10.not = icmp eq i32 %call5.i, 0
  br i1 %tobool10.not, label %__nlmsg_parse.exit.cleanup_crit_edge, label %__nlmsg_parse.exit.if.then11_crit_edge

__nlmsg_parse.exit.if.then11_crit_edge:           ; preds = %__nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

__nlmsg_parse.exit.cleanup_crit_edge:             ; preds = %__nlmsg_parse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %__nlmsg_parse.exit.if.then11_crit_edge, %if.then1.i, %do.body.i.if.then11_crit_edge
  %retval.0.i110 = phi i32 [ %call5.i, %__nlmsg_parse.exit.if.then11_crit_edge ], [ -22, %if.then1.i ], [ -22, %do.body.i.if.then11_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #12
  %14 = inttoptr i32 %retval.0.i110 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %__nlmsg_parse.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then11 ], [ null, %entry.cleanup_crit_edge ], [ %call8.i, %__nlmsg_parse.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !51, !53, !55, !56, !58, !60, !62, !63, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @genl_sk_destructing_cnt, !1, !"genl_sk_destructing_cnt", i1 false, i1 false}
!1 = !{!"../net/netlink/genetlink.c", i32 28, i32 10}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netlink/genetlink.c", i32 29, i32 1}
!4 = !{ptr @genl_sk_destructing_waitq, !3, !"genl_sk_destructing_waitq", i1 false, i1 false}
!5 = !{ptr @__ksymtab_genl_lock, !6, !"__ksymtab_genl_lock", i1 false, i1 false}
!6 = !{!"../net/netlink/genetlink.c", i32 35, i32 1}
!7 = !{ptr @__ksymtab_genl_unlock, !8, !"__ksymtab_genl_unlock", i1 false, i1 false}
!8 = !{!"../net/netlink/genetlink.c", i32 41, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/netlink/genetlink.c", i32 410, i32 34}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netlink/genetlink.c", i32 412, i32 34}
!13 = !{ptr @__ksymtab_genl_register_family, !14, !"__ksymtab_genl_register_family", i1 false, i1 false}
!14 = !{!"../net/netlink/genetlink.c", i32 443, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netlink/genetlink.c", i32 467, i32 2}
!17 = !{ptr @__ksymtab_genl_unregister_family, !18, !"__ksymtab_genl_unregister_family", i1 false, i1 false}
!18 = !{!"../net/netlink/genetlink.c", i32 475, i32 1}
!19 = !{ptr @__ksymtab_genlmsg_put, !20, !"__ksymtab_genlmsg_put", i1 false, i1 false}
!20 = !{!"../net/netlink/genetlink.c", i32 506, i32 1}
!21 = !{ptr @__initcall__kmod_genetlink__464_1435_genl_init1, !22, !"__initcall__kmod_genetlink__464_1435_genl_init1", i1 false, i1 false}
!22 = !{!"../net/netlink/genetlink.c", i32 1435, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/netlink/genetlink.c", i32 1478, i32 6}
!25 = !{ptr @__ksymtab_genlmsg_multicast_allns, !26, !"__ksymtab_genlmsg_multicast_allns", i1 false, i1 false}
!26 = !{!"../net/netlink/genetlink.c", i32 1484, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/netlink/genetlink.c", i32 1492, i32 6}
!29 = !{ptr @__ksymtab_genl_notify, !30, !"__ksymtab_genl_notify", i1 false, i1 false}
!30 = !{!"../net/netlink/genetlink.c", i32 1499, i32 1}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netlink/genetlink.c", i32 25, i32 8}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @genl_mutex, !32, !"genl_mutex", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/netlink/genetlink.c", i32 178, i32 3}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netlink/genetlink.c", i32 55, i32 8}
!39 = !{ptr @genl_fam_idr, !38, !"genl_fam_idr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netlink/genetlink.c", i32 266, i32 34}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/netlink/genetlink.c", i32 293, i32 3}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mc_group_start, !46, !"mc_group_start", i1 false, i1 false}
!46 = !{!"../net/netlink/genetlink.c", i32 75, i32 22}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mc_groups_longs, !52, !"mc_groups_longs", i1 false, i1 false}
!52 = !{!"../net/netlink/genetlink.c", i32 79, i32 22}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mc_groups, !57, !"mc_groups", i1 false, i1 false}
!57 = !{!"../net/netlink/genetlink.c", i32 78, i32 23}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/netlink/genetlink.c", i32 328, i32 2}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netlink/genetlink.c", i32 26, i32 8}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cb_lock, !61, !"cb_lock", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/net/netlink.h", i32 991, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!68 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @genl_ctrl, !70, !"genl_ctrl", i1 false, i1 false}
!70 = !{!"../net/netlink/genetlink.c", i32 1343, i32 27}
!71 = !{ptr @genl_ctrl_ops, !72, !"genl_ctrl_ops", i1 false, i1 false}
!72 = !{!"../net/netlink/genetlink.c", i32 1320, i32 30}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/netlink/genetlink.c", i32 1038, i32 4}
!75 = !{ptr @ctrl_policy_family, !76, !"ctrl_policy_family", i1 false, i1 false}
!76 = !{!"../net/netlink/genetlink.c", i32 1011, i32 32}
!77 = !{ptr @ctrl_policy_policy, !78, !"ctrl_policy_policy", i1 false, i1 false}
!78 = !{!"../net/netlink/genetlink.c", i32 1115, i32 32}
!79 = !{ptr @genl_ctrl_groups, !80, !"genl_ctrl_groups", i1 false, i1 false}
!80 = !{!"../net/netlink/genetlink.c", i32 1339, i32 42}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/netlink/genetlink.c", i32 1432, i32 8}
!83 = !{ptr @genl_pernet_ops, !84, !"genl_pernet_ops", i1 false, i1 false}
!84 = !{!"../net/netlink/genetlink.c", i32 1412, i32 33}
!85 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netlink/genetlink.c", i32 1398, i32 9}
!87 = !{ptr @__nlmsg_parse.__msg, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../include/net/netlink.h", i32 729, i32 3}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/netlink/genetlink.c", i32 1445, i32 2}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2156878873, i64 2156879361, i64 2156878910, i64 2156878966, i64 2156879000, i64 2156879024, i64 2156879065, i64 2156879086, i64 2156879114, i64 2156879148}
!104 = !{i64 2156880467, i64 2156880955, i64 2156880504, i64 2156880560, i64 2156880594, i64 2156880618, i64 2156880659, i64 2156880680, i64 2156880708, i64 2156880742}
!105 = !{i64 2156882113, i64 2156882601, i64 2156882150, i64 2156882206, i64 2156882240, i64 2156882264, i64 2156882305, i64 2156882326, i64 2156882354, i64 2156882388}
!106 = !{i64 2156883759, i64 2156884247, i64 2156883796, i64 2156883852, i64 2156883886, i64 2156883910, i64 2156883951, i64 2156883972, i64 2156884000, i64 2156884034}
!107 = !{i64 2149388646}
!108 = !{i64 2149388912}
!109 = !{i64 2156974363, i64 2156974852, i64 2156974400, i64 2156974456, i64 2156974490, i64 2156974514, i64 2156974555, i64 2156974576, i64 2156974604, i64 2156974638}
