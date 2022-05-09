; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_acct.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_acct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nfnl_acct_find_get\22, \22a\22\09"
module asm "\09.weak\09__crc_nfnl_acct_find_get\09\09\09\09"
module asm "\09.long\09__crc_nfnl_acct_find_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfnl_acct_find_get:\09\09\09\09\09"
module asm "\09.asciz \09\22nfnl_acct_find_get\22\09\09\09\09\09"
module asm "__kstrtabns_nfnl_acct_find_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfnl_acct_put\22, \22a\22\09"
module asm "\09.weak\09__crc_nfnl_acct_put\09\09\09\09"
module asm "\09.long\09__crc_nfnl_acct_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfnl_acct_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nfnl_acct_put\22\09\09\09\09\09"
module asm "__kstrtabns_nfnl_acct_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfnl_acct_update\22, \22a\22\09"
module asm "\09.weak\09__crc_nfnl_acct_update\09\09\09\09"
module asm "\09.long\09__crc_nfnl_acct_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfnl_acct_update:\09\09\09\09\09"
module asm "\09.asciz \09\22nfnl_acct_update\22\09\09\09\09\09"
module asm "__kstrtabns_nfnl_acct_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfnl_acct_overquota\22, \22a\22\09"
module asm "\09.weak\09__crc_nfnl_acct_overquota\09\09\09\09"
module asm "\09.long\09__crc_nfnl_acct_overquota\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfnl_acct_overquota:\09\09\09\09\09"
module asm "\09.asciz \09\22nfnl_acct_overquota\22\09\09\09\09\09"
module asm "__kstrtabns_nfnl_acct_overquota:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nf_acct = type { %struct.atomic64_t, %struct.atomic64_t, i32, %struct.list_head, %struct.refcount_struct, [32 x i8], %struct.callback_head, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
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
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nfacct_filter = type { i32, i32 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }

@__UNIQUE_ID_file475 = internal constant [49 x i8] c"nfnetlink_acct.file=net/netfilter/nfnetlink_acct\00", section ".modinfo", align 1
@__UNIQUE_ID_license476 = internal constant [27 x i8] c"nfnetlink_acct.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author477 = internal constant [62 x i8] c"nfnetlink_acct.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description478 = internal constant [80 x i8] c"nfnetlink_acct.description=nfacct: Extended Netfilter accounting infrastructure\00", section ".modinfo", align 1
@__UNIQUE_ID_alias482 = internal constant [40 x i8] c"nfnetlink_acct.alias=nfnetlink-subsys-7\00", section ".modinfo", align 1
@nfnl_acct_find_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/nfnetlink_acct.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_nfnl_acct_find_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfnl_acct_find_get = external dso_local constant [0 x i8], align 1
@__ksymtab_nfnl_acct_find_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfnl_acct_find_get to i32), ptr @__kstrtab_nfnl_acct_find_get, ptr @__kstrtabns_nfnl_acct_find_get }, section "___ksymtab_gpl+nfnl_acct_find_get", align 4
@__kstrtab_nfnl_acct_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfnl_acct_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nfnl_acct_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfnl_acct_put to i32), ptr @__kstrtab_nfnl_acct_put, ptr @__kstrtabns_nfnl_acct_put }, section "___ksymtab_gpl+nfnl_acct_put", align 4
@__kstrtab_nfnl_acct_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfnl_acct_update = external dso_local constant [0 x i8], align 1
@__ksymtab_nfnl_acct_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfnl_acct_update to i32), ptr @__kstrtab_nfnl_acct_update, ptr @__kstrtabns_nfnl_acct_update }, section "___ksymtab_gpl+nfnl_acct_update", align 4
@__kstrtab_nfnl_acct_overquota = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfnl_acct_overquota = external dso_local constant [0 x i8], align 1
@__ksymtab_nfnl_acct_overquota = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfnl_acct_overquota to i32), ptr @__kstrtab_nfnl_acct_overquota, ptr @__kstrtabns_nfnl_acct_overquota }, section "___ksymtab_gpl+nfnl_acct_overquota", align 4
@nfnl_acct_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str.8, i8 7, i8 5, ptr @nfnl_acct_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfnl_acct_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nfnl_acct_net_init, ptr null, ptr @nfnl_acct_net_exit, ptr null, ptr @nfnl_acct_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_nfnetlink_acct__487_559_nfnl_acct_init6 = internal global ptr @nfnl_acct_init, section ".initcall6.init", align 4
@__exitcall_nfnl_acct_exit = internal global ptr @nfnl_acct_exit, section ".exitcall.exit", align 4
@nfnl_acct_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"acct\00", [27 x i8] zeroinitializer }, align 32
@nfnl_acct_cb = internal constant { [5 x %struct.nfnl_callback], [48 x i8] } { [5 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfnl_acct_new, ptr @nfnl_acct_policy, i32 1, i16 8 }, %struct.nfnl_callback { ptr @nfnl_acct_get, ptr @nfnl_acct_policy, i32 1, i16 8 }, %struct.nfnl_callback { ptr @nfnl_acct_get, ptr @nfnl_acct_policy, i32 1, i16 8 }, %struct.nfnl_callback { ptr @nfnl_acct_del, ptr @nfnl_acct_policy, i32 1, i16 8 }, %struct.nfnl_callback zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nfnl_acct_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 31, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@filter_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nfnl_acct_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_acct_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013nfnl_acct_init: failed to register pernet ops\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfnl_acct_init\00", [17 x i8] zeroinitializer }, align 32
@nfnl_acct_init._entry_ptr = internal global ptr @nfnl_acct_init._entry, section ".printk_index", align 4
@nfnl_acct_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nfnl_acct_init: cannot register with nfnetlink.\0A\00", [45 x i8] zeroinitializer }, align 32
@nfnl_acct_init._entry_ptr.13 = internal global ptr @nfnl_acct_init._entry.11, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 423, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"nfnl_acct_subsys\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 408, i32 41 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"nfnl_acct_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 523, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 45, i32 7 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 991, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 409, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"nfnl_acct_cb\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 381, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"nfnl_acct_policy\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 372, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"filter_policy\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 240, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 536, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [34 x i8] c"../net/netfilter/nfnetlink_acct.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 542, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias482, ptr @__UNIQUE_ID_author477, ptr @__UNIQUE_ID_description478, ptr @__UNIQUE_ID_file475, ptr @__UNIQUE_ID_license476, ptr @__exitcall_nfnl_acct_exit, ptr @__initcall__kmod_nfnetlink_acct__487_559_nfnl_acct_init6, ptr @__ksymtab_nfnl_acct_find_get, ptr @__ksymtab_nfnl_acct_overquota, ptr @__ksymtab_nfnl_acct_put, ptr @__ksymtab_nfnl_acct_update, ptr @nfnl_acct_exit, ptr @nfnl_acct_init._entry, ptr @nfnl_acct_init._entry.11, ptr @nfnl_acct_init._entry_ptr, ptr @nfnl_acct_init._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @nfnl_acct_subsys, ptr @nfnl_acct_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nfnl_acct_cb, ptr @nfnl_acct_policy, ptr @filter_policy, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_cb to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_acct_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfnl_acct_find_get(ptr noundef %net, ptr nocapture noundef readonly %acct_name) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %net)
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true4

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @nfnl_acct_find_get.__warned, align 1
  br i1 %.b35, label %land.lhs.true4.for.cond.preheader_crit_edge, label %if.then

land.lhs.true4.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfnl_acct_find_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 423, ptr noundef nonnull @.str.1) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true4.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %call, %for.cond.preheader ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %for.cond.err_crit_edge, label %for.body

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body:                                         ; preds = %for.cond
  %name = getelementptr i8, ptr %.pn, i32 12
  %call11 = tail call i32 @strncmp(ptr noundef %name, ptr noundef %acct_name, i32 noundef 32)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end14:                                         ; preds = %for.body
  %cur.0.le = getelementptr i8, ptr %.pn, i32 -20
  %call15 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call15, label %if.end17, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end17:                                         ; preds = %if.end14
  %refcnt = getelementptr i8, ptr %.pn, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end17
  %7 = phi i32 [ %6, %if.end17 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i36 = add i32 %7, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %10, i32 %add.i.i.i36, ptr elementtype(i32) %refcnt) #11, !srcloc !74
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !75

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !75

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #11
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %if.then19, label %refcount_inc_not_zero.exit.err_crit_edge

refcount_inc_not_zero.exit.err_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then19:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @module_put(ptr noundef null) #11
  br label %err

err:                                              ; preds = %if.then19, %refcount_inc_not_zero.exit.err_crit_edge, %if.end14.err_crit_edge, %for.cond.err_crit_edge
  %acct.0 = phi ptr [ null, %if.then19 ], [ null, %if.end14.err_crit_edge ], [ %cur.0.le, %refcount_inc_not_zero.exit.err_crit_edge ], [ null, %for.cond.err_crit_edge ]
  %call.i37 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i37, label %err.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

err.rcu_read_unlock.exit_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %err
  %call1.i38 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %err.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %17 = call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i44 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %acct.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfnl_acct_pernet(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @nfnl_acct_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfnl_acct_put(ptr noundef %acct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !75

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.end5

refcount_dec_and_test.exit:                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  %tobool.not.not = icmp eq ptr %acct, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.if.end5_crit_edge, label %do.end

refcount_dec_and_test.exit.if.end5_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %refcount_dec_and_test.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfnl_acct_update(ptr nocapture noundef readonly %skb, ptr noundef %nfacct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfacct, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %nfacct) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = zext i32 %1 to i64
  %bytes = getelementptr inbounds %struct.nf_acct, ptr %nfacct, i32 0, i32 1
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %bytes) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfnl_acct_overquota(ptr noundef %net, ptr noundef %nfacct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nf_acct, ptr %nfacct, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.nf_acct, ptr %nfacct, i32 0, i32 7
  %and2 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %bytes = getelementptr inbounds %struct.nf_acct, ptr %nfacct, i32 0, i32 1
  %bytes.sink24 = select i1 %tobool3.not, ptr %bytes, ptr %nfacct
  %call.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes.sink24, i32 noundef 8) #11
  %call.i23 = tail call i64 @generic_atomic64_read(ptr noundef %bytes.sink24) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i23, i64 %3)
  %cmp = icmp ugt i64 %call.i23, %3
  %conv = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i23, i64 %3)
  %cmp5.not = icmp ult i64 %call.i23, %3
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.end.i

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then10
  %call1.i = tail call fastcc i32 @nfnl_acct_fill_info(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %nfacct) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nfnetlink_broadcast(ptr noundef %net, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 8, i32 noundef 2592) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.then3.i, %if.then10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %conv, %land.lhs.true.cleanup_crit_edge ], [ %conv, %if.end.cleanup_crit_edge ], [ %conv, %if.then10.cleanup_crit_edge ], [ %conv, %if.then3.i ], [ %conv, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_acct_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfnl_acct_subsys) #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_acct_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nfnl_acct_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfnl_acct_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nfnl_acct_ops) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %do.end ], [ %call2, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfnl_acct_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %type, ptr noundef %acct) unnamed_addr #0 align 64 {
entry:
  %tmp.i15 = alloca i64, align 8
  %tmp.i13 = alloca i32, align 4
  %tmp.i11 = alloca i32, align 4
  %tmp.i9 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

skb_tailroom.exit.i.i:                            ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup51_crit_edge, label %nlmsg_put.exit.i, !prof !80

skb_tailroom.exit.i.i.cleanup51_crit_edge:        ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 1792, i32 noundef 4, i32 noundef %cond) #11
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup51_crit_edge, label %if.end

nlmsg_put.exit.i.cleanup51_crit_edge:             ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end:                                           ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 2
  %name = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 5
  %call.i7 = tail call i32 @strlen(ptr noundef %name) #15
  %add.i = add i32 %call.i7, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end7:                                          ; preds = %if.end
  %flags8 = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 2
  %7 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %acct, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_xchg(ptr noundef %acct, i64 noundef 0) #11
  %bytes13 = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 1
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes13, i32 noundef 8) #11
  %call.i2 = tail call i64 @generic_atomic64_xchg(ptr noundef %bytes13, i64 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !81
  %9 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags8, align 8
  %and = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then10.if.end27_crit_edge, label %if.then20

if.then10.if.end27_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags8) #11
  br label %if.end27

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %acct, i32 noundef 8) #11
  %call.i4 = tail call i64 @generic_atomic64_read(ptr noundef %acct) #11
  %bytes25 = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 1
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes25, i32 noundef 8) #11
  %call.i6 = tail call i64 @generic_atomic64_read(ptr noundef %bytes25) #11
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20, %if.then10.if.end27_crit_edge
  %pkts.0 = phi i64 [ %call.i, %if.then20 ], [ %call.i, %if.then10.if.end27_crit_edge ], [ %call.i4, %if.else ]
  %bytes.0 = phi i64 [ %call.i2, %if.then20 ], [ %call.i2, %if.then10.if.end27_crit_edge ], [ %call.i6, %if.else ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %pkts.0, ptr %tmp.i, align 8
  %call.i8 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool29.not = icmp eq i32 %call.i8, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end27.if.then.i.i_crit_edge

if.end27.if.then.i.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i9) #11
  %12 = ptrtoint ptr %tmp.i9 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %bytes.0, ptr %tmp.i9, align 8
  %call.i10 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i9, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool31.not = icmp eq i32 %call.i10, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %refcnt = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i11) #11
  %15 = ptrtoint ptr %tmp.i11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i11, align 4
  %call.i12 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool35.not = icmp eq i32 %call.i12, 0
  br i1 %tobool35.not, label %if.end37, label %lor.lhs.false32.if.then.i.i_crit_edge

lor.lhs.false32.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end37:                                         ; preds = %lor.lhs.false32
  %16 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags8, align 8
  %and39 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end50_crit_edge, label %if.then41

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then41:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #11
  %18 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %8, ptr %tmp.i13, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool44.not = icmp eq i32 %call.i14, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.then41.if.then.i.i_crit_edge

if.then41.if.then.i.i_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false45:                                  ; preds = %if.then41
  %data = getelementptr inbounds %struct.nf_acct, ptr %acct, i32 0, i32 7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i15) #11
  %21 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tmp.i15, align 8
  %call.i16 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i15, i32 noundef 8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool47.not = icmp eq i32 %call.i16, 0
  br i1 %tobool47.not, label %lor.lhs.false45.if.end50_crit_edge, label %lor.lhs.false45.if.then.i.i_crit_edge

lor.lhs.false45.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false45.if.end50_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.end50:                                         ; preds = %lor.lhs.false45.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %24 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  br label %cleanup51

if.then.i.i:                                      ; preds = %lor.lhs.false45.if.then.i.i_crit_edge, %if.then41.if.then.i.i_crit_edge, %lor.lhs.false32.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end27.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i17 = icmp ugt ptr %28, %call3.i.i
  br i1 %cmp.i.i17, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !80

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup51

cleanup51:                                        ; preds = %if.end.i.i, %if.end50, %nlmsg_put.exit.i.cleanup51_crit_edge, %skb_tailroom.exit.i.i.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.0 = phi i32 [ %26, %if.end50 ], [ -1, %entry.cleanup51_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup51_crit_edge ], [ -1, %nlmsg_put.exit.i.cleanup51_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfnetlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_new(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %tmp.i147 = alloca i64, align 8
  %tmp.i145 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %1)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %char0 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %call, %if.end.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp7.not = icmp eq ptr %.pn, %call
  br i1 %cmp7.not, label %for.cond.if.end38_crit_edge, label %for.body

for.cond.if.end38_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

for.body:                                         ; preds = %for.cond
  %name = getelementptr i8, ptr %.pn, i32 12
  %call8 = tail call i32 @strncmp(ptr noundef %name, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end11:                                         ; preds = %for.body
  %nfacct.0.le = getelementptr i8, ptr %.pn, i32 -20
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 2
  %10 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %for.end, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %if.end11
  %tobool20.not = icmp eq ptr %nfacct.0.le, null
  br i1 %tobool20.not, label %for.end.if.end38_crit_edge, label %if.then21

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then21:                                        ; preds = %for.end
  %11 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nlh, align 4
  %nlmsg_flags23 = getelementptr inbounds %struct.nlmsghdr, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nlmsg_flags23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlmsg_flags23, align 2
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool26.not = icmp eq i16 %15, 0
  br i1 %tobool26.not, label %if.then21.cleanup_crit_edge, label %if.then27

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %if.then21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %nfacct.0.le, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef nonnull %nfacct.0.le, i64 noundef 0) #11
  %bytes = getelementptr i8, ptr %.pn, i32 -12
  %call.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes, i32 noundef 8) #11
  tail call void @generic_atomic64_set(ptr noundef %bytes, i64 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !82
  %flags31 = getelementptr i8, ptr %.pn, i32 -4
  %16 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags31, align 8
  %and32 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then27.cleanup_crit_edge, label %if.then34

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags31) #11
  br label %cleanup

if.end38:                                         ; preds = %for.end.if.end38_crit_edge, %for.cond.if.end38_crit_edge
  %arrayidx39 = getelementptr ptr, ptr %tb, i32 5
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %19, null
  br i1 %tobool40.not, label %if.end38.if.end8.i.i_crit_edge, label %if.then41

if.end38.if.end8.i.i_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then41:                                        ; preds = %if.end38
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %tobool45.not = icmp ult i32 %21, 4
  br i1 %tobool45.not, label %if.end47, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp49 = icmp ne i32 %21, 3
  %and53 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or.cond = and i1 %cmp49, %tobool54.not
  br i1 %or.cond, label %if.end56, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not = icmp eq i32 %21, 0
  br i1 %tobool58.not, label %if.end56.if.end8.i.i_crit_edge, label %land.lhs.true

if.end56.if.end8.i.i_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

land.lhs.true:                                    ; preds = %if.end56
  %arrayidx59 = getelementptr ptr, ptr %tb, i32 6
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %23, null
  br i1 %tobool60.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8.i.i_crit_edge

land.lhs.true.if.end8.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %land.lhs.true.if.end8.i.i_crit_edge, %if.end56.if.end8.i.i_crit_edge, %if.end38.if.end8.i.i_crit_edge
  %flags.0 = phi i32 [ 0, %if.end38.if.end8.i.i_crit_edge ], [ %21, %land.lhs.true.if.end8.i.i_crit_edge ], [ 0, %if.end56.if.end8.i.i_crit_edge ]
  %size.0 = phi i32 [ 72, %if.end38.if.end8.i.i_crit_edge ], [ 80, %land.lhs.true.if.end8.i.i_crit_edge ], [ 80, %if.end56.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3520) #16
  %cmp66 = icmp eq ptr %call9.i.i, null
  br i1 %cmp66, label %if.end8.i.i.cleanup_crit_edge, label %if.end69

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end69:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.0)
  %tobool71.not = icmp eq i32 %flags.0, 0
  br i1 %tobool71.not, label %if.end69.if.end77_crit_edge, label %if.then72

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 7
  %arrayidx74 = getelementptr ptr, ptr %tb, i32 6
  %24 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx74, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %tmp.i, align 8, !annotation !83
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef %25, i32 noundef 8) #11
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %data, align 8
  %flags76 = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %flags76 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %flags.0, ptr %flags76, align 16
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end69.if.end77_crit_edge
  %name78 = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %call81 = call i32 @nla_strscpy(ptr noundef %name78, ptr noundef %32, i32 noundef 32) #11
  %arrayidx82 = getelementptr ptr, ptr %tb, i32 3
  %33 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %34, null
  br i1 %tobool83.not, label %if.end77.if.end88_crit_edge, label %if.then84

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %bytes85 = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i145) #11
  %35 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %tmp.i145, align 8, !annotation !83
  %call.i146 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i145, ptr noundef nonnull %34, i32 noundef 8) #11
  %36 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tmp.i145, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i145) #11
  %call.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes85, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef %bytes85, i64 noundef %37) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end77.if.end88_crit_edge
  %arrayidx89 = getelementptr ptr, ptr %tb, i32 2
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %39, null
  br i1 %tobool90.not, label %if.end88.if.end95_crit_edge, label %if.then91

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i147) #11
  %40 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %tmp.i147, align 8, !annotation !83
  %call.i148 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i147, ptr noundef nonnull %39, i32 noundef 8) #11
  %41 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tmp.i147, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i147) #11
  %call.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 8) #11
  call void @generic_atomic64_set(ptr noundef nonnull %call9.i.i, i64 noundef %42) #11
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end88.if.end95_crit_edge
  %refcnt = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %43 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 1, ptr %refcnt, align 4
  %head96 = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i, align 4
  %call.i.i149 = call zeroext i1 @__list_add_valid(ptr noundef %head96, ptr noundef %45, ptr noundef %call) #11
  br i1 %call.i.i149, label %if.end.i.i150, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i150:                                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %head96 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call, ptr %head96, align 4
  %prev2.i.i = getelementptr inbounds %struct.nf_acct, ptr %call9.i.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %prev2.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %head96, ptr %45, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %head96, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i150, %if.end95.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then34, %if.then27.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %if.end11.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %if.then27.cleanup_crit_edge ], [ -16, %if.then21.cleanup_crit_edge ], [ -95, %if.then41.cleanup_crit_edge ], [ -22, %if.end47.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ], [ 0, %if.end.i.i150 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_get(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %1)
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_flags, align 2
  %6 = and i16 %5, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #11
  %7 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 1
  %8 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 2
  %9 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 3
  %10 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %11 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 5
  %12 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nfnl_acct_start, ptr %c, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nfnl_acct_dump, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nfnl_acct_done, ptr %8, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %9, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %11, align 4
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %10, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %20, ptr noundef %skb, ptr noundef %3, ptr noundef nonnull %c) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #11
  br label %cleanup39

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 1
  %22 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %23, null
  br i1 %tobool4.not, label %if.end.cleanup39_crit_edge, label %if.end6

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end6:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end6
  %.pn.in = phi ptr [ %call, %if.end6 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %24 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %for.cond.cleanup39_crit_edge, label %for.body

for.cond.cleanup39_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

for.body:                                         ; preds = %for.cond
  %name = getelementptr i8, ptr %.pn, i32 12
  %call11 = tail call i32 @strncmp(ptr noundef %name, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end15:                                         ; preds = %for.body
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp17 = icmp eq ptr %call.i.i, null
  br i1 %cmp17, label %if.end15.cleanup39_crit_edge, label %if.end20

if.end15.cleanup39_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end20:                                         ; preds = %if.end15
  %cur.0.le = getelementptr i8, ptr %.pn, i32 -20
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portid, align 4
  %27 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nlmsg_type, align 4
  %33 = and i16 %32, 255
  %and24 = zext i16 %33 to i32
  %call25 = tail call fastcc i32 @nfnl_acct_fill_info(ptr noundef nonnull %call.i.i, i32 noundef %26, i32 noundef %30, i32 noundef %and24, ptr noundef %cur.0.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup39

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %36 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %portid, align 4
  %call33 = tail call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %35, i32 noundef %37) #11
  br label %cleanup39

cleanup39:                                        ; preds = %if.end29, %if.then28, %if.end15.cleanup39_crit_edge, %for.cond.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %netlink_dump_start.exit
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %if.end.cleanup39_crit_edge ], [ -12, %if.end15.cleanup39_crit_edge ], [ %call33, %if.end29 ], [ %call25, %if.then28 ], [ -2, %for.cond.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_del(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %1)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %cmp.not82 = icmp eq ptr %5, %call
  br i1 %cmp.not82, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %nfnl_acct_try_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in83 = phi ptr [ %.pn, %nfnl_acct_try_del.exit.for.body_crit_edge ], [ %5, %if.then.for.body_crit_edge ]
  %cur.0 = getelementptr i8, ptr %.pn.in83, i32 -20
  %6 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in83, align 4
  %refcnt.i = getelementptr i8, ptr %.pn.in83, i32 8
  %call.i = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i) #11
  br i1 %call.i, label %if.then.i, label %for.body.nfnl_acct_try_del.exit_crit_edge

for.body.nfnl_acct_try_del.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_acct_try_del.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in83, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %cur.0, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.nfnl_acct_try_del.exit_crit_edge, label %do.end.i

list_del_rcu.exit.i.nfnl_acct_try_del.exit_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_acct_try_del.exit

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head.i = getelementptr i8, ptr %.pn.in83, i32 44
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %nfnl_acct_try_del.exit

nfnl_acct_try_del.exit:                           ; preds = %do.end.i, %list_del_rcu.exit.i.nfnl_acct_try_del.exit_crit_edge, %for.body.nfnl_acct_try_del.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %nfnl_acct_try_del.exit.cleanup_crit_edge, label %nfnl_acct_try_del.exit.for.body_crit_edge

nfnl_acct_try_del.exit.for.body_crit_edge:        ; preds = %nfnl_acct_try_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nfnl_acct_try_del.exit.cleanup_crit_edge:         ; preds = %nfnl_acct_try_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.body26.for.cond21_crit_edge, %if.end
  %.pn59.in = phi ptr [ %call, %if.end ], [ %.pn59, %for.body26.for.cond21_crit_edge ]
  %14 = ptrtoint ptr %.pn59.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn59 = load ptr, ptr %.pn59.in, align 4
  %cmp24.not = icmp eq ptr %.pn59, %call
  br i1 %cmp24.not, label %for.cond21.cleanup_crit_edge, label %for.body26

for.cond21.cleanup_crit_edge:                     ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body26:                                       ; preds = %for.cond21
  %name = getelementptr i8, ptr %.pn59, i32 12
  %call27 = tail call i32 @strncmp(ptr noundef %name, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end30, label %for.body26.for.cond21_crit_edge

for.body26.for.cond21_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond21

if.end30:                                         ; preds = %for.body26
  %cur.1.le = getelementptr i8, ptr %.pn59, i32 -20
  %refcnt.i61 = getelementptr i8, ptr %.pn59, i32 8
  %call.i62 = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i61) #11
  br i1 %call.i62, label %if.then.i65, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i65:                                      ; preds = %if.end30
  %call.i.i.i64 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn59) #11
  br i1 %call.i.i.i64, label %if.end.i.i.i68, label %if.then.i65.list_del_rcu.exit.i71_crit_edge

if.then.i65.list_del_rcu.exit.i71_crit_edge:      ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i71

if.end.i.i.i68:                                   ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i66 = getelementptr i8, ptr %.pn59, i32 4
  %15 = ptrtoint ptr %prev.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i66, align 4
  %17 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn59, align 4
  %prev1.i.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i67, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_rcu.exit.i71

list_del_rcu.exit.i71:                            ; preds = %if.end.i.i.i68, %if.then.i65.list_del_rcu.exit.i71_crit_edge
  %prev.i.i69 = getelementptr i8, ptr %.pn59, i32 4
  %21 = ptrtoint ptr %prev.i.i69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i69, align 4
  %tobool.not.i70 = icmp eq ptr %cur.1.le, null
  br i1 %tobool.not.i70, label %list_del_rcu.exit.i71.cleanup_crit_edge, label %do.end.i73

list_del_rcu.exit.i71.cleanup_crit_edge:          ; preds = %list_del_rcu.exit.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i73:                                       ; preds = %list_del_rcu.exit.i71
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head.i72 = getelementptr i8, ptr %.pn59, i32 44
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i72, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i73, %list_del_rcu.exit.i71.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.cond21.cleanup_crit_edge, %nfnl_acct_try_del.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end30.cleanup_crit_edge ], [ 0, %do.end.i73 ], [ 0, %list_del_rcu.exit.i71.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %nfnl_acct_try_del.exit.cleanup_crit_edge ], [ -2, %for.cond21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_start(ptr nocapture noundef %cb) #0 align 64 {
entry:
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #11
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !83
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !83
  %5 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !83
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @filter_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #17
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i26, align 4
  %mask = getelementptr inbounds %struct.nfacct_filter, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mask, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i27, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
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
  %call1 = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %4)
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = inttoptr i32 %10 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx2, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %call8 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b81 = load i1, ptr @nfnl_acct_dump.__warned, align 1
  br i1 %.b81, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfnl_acct_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 209, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn92 = load volatile ptr, ptr %call1, align 4
  %cmp.not94 = icmp eq ptr %.pn92, %call1
  br i1 %cmp.not94, label %do.end.for.endthread-pre-split_crit_edge, label %for.body.lr.ph

do.end.for.endthread-pre-split_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %do.end
  %tobool27.not = icmp eq ptr %6, null
  %mask = getelementptr inbounds %struct.nfacct_filter, ptr %6, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn96 = phi ptr [ %.pn92, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %last.095 = phi ptr [ %11, %for.body.lr.ph ], [ %last.2, %for.inc.for.body_crit_edge ]
  %cur.097 = getelementptr i8, ptr %.pn96, i32 -20
  %tobool21.not = icmp eq ptr %last.095, null
  %cmp23.not = icmp eq ptr %cur.097, %last.095
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26:                                         ; preds = %for.body
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %land.lhs.true28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true28:                                  ; preds = %if.end26
  %flags = getelementptr i8, ptr %.pn96, i32 -4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask, align 4
  %and = and i32 %21, %19
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %23)
  %cmp29.not = icmp eq i32 %and, %23
  br i1 %cmp29.not, label %land.lhs.true28.if.end31_crit_edge, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true28.if.end31_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true28.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %portid, align 4
  %28 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nlmsg_type, align 4
  %34 = and i16 %33, 255
  %and35 = zext i16 %34 to i32
  %call36 = tail call fastcc i32 @nfnl_acct_fill_info(ptr noundef %skb, i32 noundef %27, i32 noundef %31, i32 noundef %and35, ptr noundef %cur.097)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %cur.097 to i32
  %36 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx2, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end31.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %last.2 = phi ptr [ null, %land.lhs.true28.for.inc_crit_edge ], [ null, %if.end31.for.inc_crit_edge ], [ %last.095, %for.body.for.inc_crit_edge ]
  %37 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load volatile ptr, ptr %.pn96, align 4
  %cmp.not = icmp eq ptr %.pn, %call1
  br i1 %cmp.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %do.end.for.endthread-pre-split_crit_edge
  %38 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %arrayidx2, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then39
  %39 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %35, %if.then39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool52.not = icmp eq i32 %39, 0
  br i1 %tobool52.not, label %if.then53, label %for.end.if.end55_crit_edge

for.end.if.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %for.end.if.end55_crit_edge
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i82, label %if.end55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i85

if.end55.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i85:                                ; preds = %if.end55
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, %if.end55.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %41 = tail call i32 @llvm.read_register.i32(metadata !63) #11
  %and.i.i.i.i.i89 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i90, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_done(ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_acct_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_acct_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfnl_acct_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %cmp.not33 = icmp eq ptr %1, %call
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn37, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cur.036 = getelementptr i8, ptr %.pn.in34, i32 -20
  %2 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in34, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcnt = getelementptr i8, ptr %.pn.in34, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !75

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %for.inc

refcount_dec_and_test.exit:                       ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !79
  %tobool.not.not = icmp eq ptr %cur.036, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.for.inc_crit_edge, label %do.end

refcount_dec_and_test.exit.for.inc_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head = getelementptr i8, ptr %.pn.in34, i32 44
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 64 to ptr)) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %refcount_dec_and_test.exit.for.inc_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn37, %call
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_file475, !1, !"__UNIQUE_ID_file475", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_acct.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_license476, !1, !"__UNIQUE_ID_license476", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author477, !4, !"__UNIQUE_ID_author477", i1 false, i1 false}
!4 = !{!"../net/netfilter/nfnetlink_acct.c", i32 26, i32 1}
!5 = !{ptr @__UNIQUE_ID_description478, !6, !"__UNIQUE_ID_description478", i1 false, i1 false}
!6 = !{!"../net/netfilter/nfnetlink_acct.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias482, !8, !"__UNIQUE_ID_alias482", i1 false, i1 false}
!8 = !{!"../net/netfilter/nfnetlink_acct.c", i32 415, i32 1}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_acct.c", i32 423, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_nfnl_acct_find_get, !14, !"__ksymtab_nfnl_acct_find_get", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_acct.c", i32 442, i32 1}
!15 = !{ptr @__ksymtab_nfnl_acct_put, !16, !"__ksymtab_nfnl_acct_put", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_acct.c", i32 451, i32 1}
!17 = !{ptr @__ksymtab_nfnl_acct_update, !18, !"__ksymtab_nfnl_acct_update", i1 false, i1 false}
!18 = !{!"../net/netfilter/nfnetlink_acct.c", i32 458, i32 1}
!19 = !{ptr @__ksymtab_nfnl_acct_overquota, !20, !"__ksymtab_nfnl_acct_overquota", i1 false, i1 false}
!20 = !{!"../net/netfilter/nfnetlink_acct.c", i32 501, i32 1}
!21 = !{ptr @__initcall__kmod_nfnetlink_acct__487_559_nfnl_acct_init6, !22, !"__initcall__kmod_nfnetlink_acct__487_559_nfnl_acct_init6", i1 false, i1 false}
!22 = !{!"../net/netfilter/nfnetlink_acct.c", i32 559, i32 1}
!23 = !{ptr @__exitcall_nfnl_acct_exit, !24, !"__exitcall_nfnl_acct_exit", i1 false, i1 false}
!24 = !{!"../net/netfilter/nfnetlink_acct.c", i32 560, i32 1}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfnl_acct_net_id, !30, !"nfnl_acct_net_id", i1 false, i1 false}
!30 = !{!"../net/netfilter/nfnetlink_acct.c", i32 49, i32 21}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/netlink.h", i32 991, i32 3}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/nfnetlink_acct.c", i32 409, i32 13}
!42 = !{ptr @nfnl_acct_subsys, !43, !"nfnl_acct_subsys", i1 false, i1 false}
!43 = !{!"../net/netfilter/nfnetlink_acct.c", i32 408, i32 41}
!44 = !{ptr @nfnl_acct_cb, !45, !"nfnl_acct_cb", i1 false, i1 false}
!45 = !{!"../net/netfilter/nfnetlink_acct.c", i32 381, i32 35}
!46 = !{ptr @nfnl_acct_policy, !47, !"nfnl_acct_policy", i1 false, i1 false}
!47 = !{!"../net/netfilter/nfnetlink_acct.c", i32 372, i32 32}
!48 = !{ptr @filter_policy, !49, !"filter_policy", i1 false, i1 false}
!49 = !{!"../net/netfilter/nfnetlink_acct.c", i32 240, i32 32}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/netfilter/nfnetlink_acct.c", i32 209, i32 2}
!52 = !{ptr @nfnl_acct_ops, !53, !"nfnl_acct_ops", i1 false, i1 false}
!53 = !{!"../net/netfilter/nfnetlink_acct.c", i32 523, i32 33}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nfnetlink_acct.c", i32 536, i32 3}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nfnl_acct_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @nfnl_acct_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nfnetlink_acct.c", i32 542, i32 3}
!61 = !{ptr @nfnl_acct_init._entry.11, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @nfnl_acct_init._entry_ptr.13, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2149367751}
!74 = !{i64 848609, i64 848633, i64 848654, i64 848671, i64 848688}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2149368017}
!77 = !{i64 2148453631}
!78 = !{i64 2148368071, i64 2148368103, i64 2148368132, i64 2148368166, i64 2148368197, i64 2148368220}
!79 = !{i64 2149317261}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2156900847}
!82 = !{i64 2156899698}
!83 = !{!"auto-init"}
!84 = !{i64 2151879103}
