; ModuleID = '/llk/IR_all_yes/net/l2tp/l2tp_netlink.c_pt.bc'
source_filename = "../net/l2tp/l2tp_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+l2tp_nl_register_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_l2tp_nl_register_ops\09\09\09\09"
module asm "\09.long\09__crc_l2tp_nl_register_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l2tp_nl_register_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22l2tp_nl_register_ops\22\09\09\09\09\09"
module asm "__kstrtabns_l2tp_nl_register_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+l2tp_nl_unregister_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_l2tp_nl_unregister_ops\09\09\09\09"
module asm "\09.long\09__crc_l2tp_nl_unregister_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l2tp_nl_unregister_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22l2tp_nl_unregister_ops\22\09\09\09\09\09"
module asm "__kstrtabns_l2tp_nl_unregister_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.l2tp_tunnel_cfg = type { i32, %struct.in_addr, %struct.in_addr, ptr, ptr, i16, i16, i8 }
%struct.in_addr = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.133, [0 x i32], %union.anon.134, i16, i16, %union.anon.135, %struct.refcount_struct, [0 x i32], %union.anon.136 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { %struct.hlist_node }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.l2tp_session_cfg = type { i32, i8, i16, [8 x i8], i32, [8 x i8], i32, i32, ptr }
%struct.l2tp_tunnel = type { i32, i32, %struct.callback_head, %struct.spinlock, i8, [16 x %struct.hlist_head], i32, i32, i32, [20 x i8], i32, %struct.l2tp_stats, %struct.list_head, ptr, %struct.refcount_struct, ptr, ptr, i32, %struct.work_struct }
%struct.callback_head = type { ptr, ptr }
%struct.l2tp_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.l2tp_session = type { i32, i32, ptr, i32, i32, [8 x i8], i32, [8 x i8], i32, i16, i16, i32, i32, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.hlist_node, %struct.refcount_struct, [32 x i8], [16 x i8], i8, i32, i32, i32, %struct.l2tp_stats, %struct.hlist_node, ptr, ptr, ptr, [0 x i8] }
%struct.l2tp_nl_cmd_ops = type { ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.137, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.138, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.139, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.137 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.138 = type { ptr }
%union.anon.139 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.106 }
%union.anon.106 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }

@l2tp_nl_cmd_ops = internal global { [12 x ptr], [48 x i8] } zeroinitializer, align 32
@__kstrtab_l2tp_nl_register_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_l2tp_nl_register_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_l2tp_nl_register_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l2tp_nl_register_ops to i32), ptr @__kstrtab_l2tp_nl_register_ops, ptr @__kstrtabns_l2tp_nl_register_ops }, section "___ksymtab_gpl+l2tp_nl_register_ops", align 4
@__kstrtab_l2tp_nl_unregister_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_l2tp_nl_unregister_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_l2tp_nl_unregister_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l2tp_nl_unregister_ops to i32), ptr @__kstrtab_l2tp_nl_unregister_ops, ptr @__kstrtabns_l2tp_nl_unregister_ops }, section "___ksymtab_gpl+l2tp_nl_unregister_ops", align 4
@__initcall__kmod_l2tp_netlink__513_1040_l2tp_nl_init6 = internal global ptr @l2tp_nl_init, section ".initcall6.init", align 4
@__exitcall_l2tp_nl_cleanup = internal global ptr @l2tp_nl_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author514 = internal constant [57 x i8] c"l2tp_netlink.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description515 = internal constant [38 x i8] c"l2tp_netlink.description=L2TP netlink\00", section ".modinfo", align 1
@__UNIQUE_ID_file516 = internal constant [40 x i8] c"l2tp_netlink.file=net/l2tp/l2tp_netlink\00", section ".modinfo", align 1
@__UNIQUE_ID_license517 = internal constant [25 x i8] c"l2tp_netlink.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version518 = internal constant [25 x i8] c"l2tp_netlink.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2tp_netlink\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias519 = internal constant [50 x i8] c"l2tp_netlink.alias=net-pf-16-proto-16-family-l2tp\00", section ".modinfo", align 1
@l2tp_nl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016l2tp_netlink: L2TP netlink interface\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2tp_nl_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/l2tp/l2tp_netlink.c\00", [40 x i8] zeroinitializer }, align 32
@l2tp_nl_init._entry_ptr = internal global ptr @l2tp_nl_init._entry, section ".printk_index", align 4
@l2tp_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"l2tp\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 35, i32 0, i8 -128, i8 0, i8 9, i8 1, ptr @l2tp_nl_policy, ptr null, ptr null, ptr null, ptr @l2tp_nl_ops, ptr @l2tp_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@l2tp_nl_policy = internal constant { [36 x %struct.nla_policy], [64 x i8] } { [36 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 8, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 8, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 7, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [64 x i8] zeroinitializer }, align 32
@l2tp_nl_ops = internal constant { [9 x %struct.genl_small_ops], [52 x i8] } { [9 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @l2tp_nl_cmd_noop, ptr null, i8 0, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_tunnel_create, ptr null, i8 1, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_tunnel_delete, ptr null, i8 2, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_tunnel_modify, ptr null, i8 3, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_tunnel_get, ptr @l2tp_nl_cmd_tunnel_dump, i8 4, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_session_create, ptr null, i8 5, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_session_delete, ptr null, i8 6, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_session_modify, ptr null, i8 7, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @l2tp_nl_cmd_session_get, ptr @l2tp_nl_cmd_session_dump, i8 8, i8 0, i8 16, i8 3 }], [52 x i8] zeroinitializer }, align 32
@l2tp_multicast_group = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"l2tp\00\00\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net-l2tp-type-%u\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"l2tp_nl_cmd_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 44, i32 38 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1046, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1031, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"l2tp_nl_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 872, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"l2tp_nl_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 923, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"l2tp_multicast_group\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 31, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 991, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [27 x i8] c"../net/l2tp/l2tp_netlink.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 623, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias519, ptr @__UNIQUE_ID_author514, ptr @__UNIQUE_ID_description515, ptr @__UNIQUE_ID_file516, ptr @__UNIQUE_ID_license517, ptr @__UNIQUE_ID_version518, ptr @__exitcall_l2tp_nl_cleanup, ptr @__initcall__kmod_l2tp_netlink__513_1040_l2tp_nl_init6, ptr @__ksymtab_l2tp_nl_register_ops, ptr @__ksymtab_l2tp_nl_unregister_ops, ptr @__modver_attr, ptr @l2tp_nl_init._entry, ptr @l2tp_nl_init._entry_ptr, ptr @l2tp_nl_cmd_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @l2tp_nl_policy, ptr @l2tp_nl_ops, ptr @l2tp_multicast_group, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_nl_cmd_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_nl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_nl_policy to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_nl_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l2tp_nl_register_ops(i32 noundef %pw_type, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %pw_type)
  %cmp = icmp ugt i32 %pw_type, 11
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  tail call void @genl_lock() #8
  %arrayidx = getelementptr [12 x ptr], ptr @l2tp_nl_cmd_ops, i32 0, i32 %pw_type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %arrayidx, align 4
  br label %out

out:                                              ; preds = %if.end2, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.out_crit_edge ], [ 0, %if.end2 ]
  tail call void @genl_unlock() #8
  br label %err

err:                                              ; preds = %out, %entry.err_crit_edge
  %ret.1 = phi i32 [ -22, %entry.err_crit_edge ], [ %ret.0, %out ]
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @genl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @genl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @l2tp_nl_unregister_ops(i32 noundef %pw_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %pw_type)
  %cmp = icmp ult i32 %pw_type, 12
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @genl_lock() #8
  %arrayidx = getelementptr [12 x ptr], ptr @l2tp_nl_cmd_ops, i32 0, i32 %pw_type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  tail call void @genl_unlock() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @l2tp_nl_family) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_nl_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @l2tp_nl_family) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_noop(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @l2tp_nl_family, i32 noundef 0, i8 noundef zeroext 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %9 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i18 = tail call i32 @netlink_unicast(ptr noundef %12, ptr noundef nonnull %call.i.i, i32 noundef %10, i32 noundef 64) #8
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i18, i32 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end4 ], [ -90, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_tunnel_create(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %cfg = alloca %struct.l2tp_tunnel_cfg, align 4
  %tunnel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #8
  %0 = getelementptr inbounds i8, ptr %cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tunnel) #8
  %2 = ptrtoint ptr %tunnel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tunnel, align 4, !annotation !52
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %3 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_net.i, align 4
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs1, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %arrayidx4 = getelementptr ptr, ptr %6, i32 10
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  %add.ptr.i.i64 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i64, align 4
  %arrayidx10 = getelementptr ptr, ptr %6, i32 7
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.end7.out_crit_edge, label %if.end13

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end13:                                         ; preds = %if.end7
  %add.ptr.i.i65 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i65, align 1
  %conv = zext i8 %18 to i32
  %arrayidx16 = getelementptr ptr, ptr %6, i32 2
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %20, null
  br i1 %tobool17.not, label %if.end13.out_crit_edge, label %if.end19

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %if.end13
  %add.ptr.i.i66 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i66, align 2
  %conv22 = zext i16 %22 to i32
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv22, ptr %cfg, align 4
  %arrayidx23 = getelementptr ptr, ptr %6, i32 23
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i67 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i67, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end19
  %arrayidx.i = getelementptr ptr, ptr %6, i32 26
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %local_udp_port.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 5
  %32 = ptrtoint ptr %local_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %local_udp_port.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %arrayidx2.i = getelementptr ptr, ptr %6, i32 27
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx2.i, align 4
  %tobool3.not.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i73.i = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i73.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i73.i, align 2
  %peer_udp_port.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 6
  %37 = ptrtoint ptr %peer_udp_port.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %peer_udp_port.i, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %arrayidx8.i = getelementptr ptr, ptr %6, i32 13
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx8.i, align 4
  %tobool.i.not.i = icmp eq ptr %39, null
  %use_udp_checksums.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 7
  %40 = ptrtoint ptr %use_udp_checksums.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %use_udp_checksums.i, align 4
  %bf.shl.i = select i1 %tobool.i.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %use_udp_checksums.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %6, i32 31
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %42, null
  br i1 %tobool11.not.i, label %if.end7.i.if.end35.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end35.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %arrayidx12.i = getelementptr ptr, ptr %6, i32 32
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %44, null
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i68 = getelementptr i8, ptr %42, i32 4
  %local_ip6.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 3
  %45 = ptrtoint ptr %local_ip6.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i.i68, ptr %local_ip6.i, align 4
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx12.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %47, i32 4
  %peer_ip6.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 4
  %48 = ptrtoint ptr %peer_ip6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i74.i, ptr %peer_ip6.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %6, i32 33
  %49 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx19.i, align 4
  %tobool.i75.not.i = icmp eq ptr %50, null
  %bf.value22.i = select i1 %tobool.i75.not.i, i8 0, i8 64
  %bf.clear24.i = and i8 %bf.set.i, -97
  %bf.set25.i = or i8 %bf.value22.i, %bf.clear24.i
  %arrayidx27.i = getelementptr ptr, ptr %6, i32 34
  %51 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx27.i, align 4
  %tobool.i77.not.i = icmp eq ptr %52, null
  %bf.value30.i = select i1 %tobool.i77.not.i, i8 0, i8 32
  %bf.set33.i = or i8 %bf.set25.i, %bf.value30.i
  %53 = ptrtoint ptr %use_udp_checksums.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.set33.i, ptr %use_udp_checksums.i, align 4
  br label %if.end32

if.end35.i:                                       ; preds = %land.lhs.true.i.if.end35.i_crit_edge, %if.end7.i.if.end35.i_crit_edge
  %arrayidx36.i = getelementptr ptr, ptr %6, i32 24
  %54 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %55, null
  br i1 %tobool37.not.i, label %if.end35.i.out_crit_edge, label %land.lhs.true38.i

if.end35.i.out_crit_edge:                         ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true38.i:                                ; preds = %if.end35.i
  %arrayidx39.i = getelementptr ptr, ptr %6, i32 25
  %56 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %57, null
  br i1 %tobool40.not.i, label %land.lhs.true38.i.out_crit_edge, label %if.then41.i

land.lhs.true38.i.out_crit_edge:                  ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then41.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i79.i = getelementptr i8, ptr %55, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i79.i, align 4
  %local_ip.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 1
  %60 = ptrtoint ptr %local_ip.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %local_ip.i, align 4
  %61 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx39.i, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i80.i, align 4
  %peer_ip.i = getelementptr inbounds %struct.l2tp_tunnel_cfg, ptr %cfg, i32 0, i32 2
  %65 = ptrtoint ptr %peer_ip.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %peer_ip.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then41.i, %if.then14.i, %if.then25
  %fd.0 = phi i32 [ %27, %if.then25 ], [ -1, %if.then14.i ], [ -1, %if.then41.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %switch = icmp ult i16 %22, 2
  br i1 %switch, label %sw.epilog, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.epilog:                                        ; preds = %if.end32
  %call34 = call i32 @l2tp_tunnel_create(i32 noundef %fd.0, i32 noundef %conv, i32 noundef %10, i32 noundef %14, ptr noundef nonnull %cfg, ptr noundef nonnull %tunnel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %sw.epilog.out_crit_edge, label %if.end38

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38:                                         ; preds = %sw.epilog
  %66 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_inc_refcount(ptr noundef %67) #8
  %68 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tunnel, align 4
  %call39 = call i32 @l2tp_tunnel_register(ptr noundef %69, ptr noundef %4, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  %70 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tunnel, align 4
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %71) #8
  br label %out

if.end43:                                         ; preds = %if.end38
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i69 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i69, label %if.end43.l2tp_tunnel_notify.exit_crit_edge, label %if.end.i70

if.end43.l2tp_tunnel_notify.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2tp_tunnel_notify.exit

if.end.i70:                                       ; preds = %if.end43
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %snd_portid.i, align 4
  %74 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %info, align 4
  %call1.i = call fastcc i32 @l2tp_nl_tunnel_send(ptr noundef nonnull %call.i.i.i, i32 noundef %73, i32 noundef %75, i32 noundef 4, ptr noundef %71, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i71

if.then2.i:                                       ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, -3
  %spec.store.select.i = select i1 %cmp4.i, i32 0, i32 %call3.i
  br label %l2tp_tunnel_notify.exit

if.end7.i71:                                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %l2tp_tunnel_notify.exit

l2tp_tunnel_notify.exit:                          ; preds = %if.end7.i71, %if.then2.i, %if.end43.l2tp_tunnel_notify.exit_crit_edge
  %retval.0.i72 = phi i32 [ %spec.store.select.i, %if.then2.i ], [ %call1.i, %if.end7.i71 ], [ -12, %if.end43.l2tp_tunnel_notify.exit_crit_edge ]
  %76 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tunnel, align 4
  call void @l2tp_tunnel_dec_refcount(ptr noundef %77) #8
  br label %out

out:                                              ; preds = %l2tp_tunnel_notify.exit, %if.then42, %sw.epilog.out_crit_edge, %if.end32.out_crit_edge, %land.lhs.true38.i.out_crit_edge, %if.end35.i.out_crit_edge, %if.end13.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call34, %sw.epilog.out_crit_edge ], [ %call39, %if.then42 ], [ %retval.0.i72, %l2tp_tunnel_notify.exit ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ -22, %if.end13.out_crit_edge ], [ -22, %land.lhs.true38.i.out_crit_edge ], [ -22, %if.end35.i.out_crit_edge ], [ -22, %if.end32.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tunnel) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_tunnel_delete(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @l2tp_tunnel_get(ptr noundef %5, i32 noundef %7) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.l2tp_tunnel_notify.exit_crit_edge, label %if.end.i

if.end7.l2tp_tunnel_notify.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2tp_tunnel_notify.exit

if.end.i:                                         ; preds = %if.end7
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid.i, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call1.i = tail call fastcc i32 @l2tp_nl_tunnel_send(ptr noundef nonnull %call.i.i.i, i32 noundef %9, i32 noundef %11, i32 noundef 4, ptr noundef nonnull %call4, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  br label %l2tp_tunnel_notify.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %l2tp_tunnel_notify.exit

l2tp_tunnel_notify.exit:                          ; preds = %if.end7.i, %if.then2.i, %if.end7.l2tp_tunnel_notify.exit_crit_edge
  tail call void @l2tp_tunnel_delete(ptr noundef nonnull %call4) #8
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call4) #8
  br label %out

out:                                              ; preds = %l2tp_tunnel_notify.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %l2tp_tunnel_notify.exit ], [ -22, %entry.out_crit_edge ], [ -19, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_tunnel_modify(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @l2tp_tunnel_get(ptr noundef %5, i32 noundef %7) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %if.end
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.l2tp_tunnel_notify.exit_crit_edge, label %if.end.i

if.end7.l2tp_tunnel_notify.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2tp_tunnel_notify.exit

if.end.i:                                         ; preds = %if.end7
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid.i, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call1.i = tail call fastcc i32 @l2tp_nl_tunnel_send(ptr noundef nonnull %call.i.i.i, i32 noundef %9, i32 noundef %11, i32 noundef 4, ptr noundef nonnull %call4, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, -3
  %spec.store.select.i = select i1 %cmp4.i, i32 0, i32 %call3.i
  br label %l2tp_tunnel_notify.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %l2tp_tunnel_notify.exit

l2tp_tunnel_notify.exit:                          ; preds = %if.end7.i, %if.then2.i, %if.end7.l2tp_tunnel_notify.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then2.i ], [ %call1.i, %if.end7.i ], [ -12, %if.end7.l2tp_tunnel_notify.exit_crit_edge ]
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call4) #8
  br label %out

out:                                              ; preds = %l2tp_tunnel_notify.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %l2tp_tunnel_notify.exit ], [ -22, %entry.out_crit_edge ], [ -19, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_tunnel_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @l2tp_tunnel_get(ptr noundef %1, i32 noundef %7) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.err_nlmsg_crit_edge, label %if.end11

if.end7.err_nlmsg_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_nlmsg

if.end11:                                         ; preds = %if.end7
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_portid, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %call12 = tail call fastcc i32 @l2tp_nl_tunnel_send(ptr noundef nonnull %call.i.i, i32 noundef %9, i32 noundef %11, i32 noundef 4, ptr noundef nonnull %call8, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call8) #8
  br i1 %cmp, label %if.end11.err_nlmsg_crit_edge, label %if.end14

if.end11.err_nlmsg_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_nlmsg

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i34 = tail call i32 @netlink_unicast(ptr noundef %15, ptr noundef nonnull %call.i.i, i32 noundef %13, i32 noundef 64) #8
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i34, i32 0) #8
  br label %cleanup

err_nlmsg:                                        ; preds = %if.end11.err_nlmsg_crit_edge, %if.end7.err_nlmsg_crit_edge
  %ret.0 = phi i32 [ -19, %if.end7.err_nlmsg_crit_edge ], [ %call12, %if.end11.err_nlmsg_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_nlmsg, %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.end14 ], [ %ret.0, %err_nlmsg ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_tunnel_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %call121 = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %7, i32 noundef %2) #8
  %tobool.not22 = icmp eq ptr %call121, null
  br i1 %tobool.not22, label %entry.out_crit_edge, label %if.end.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.lr.ph:                                     ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.end6.if.end_crit_edge, %if.end.lr.ph
  %call124 = phi ptr [ %call121, %if.end.lr.ph ], [ %call1, %if.end6.if.end_crit_edge ]
  %ti.023 = phi i32 [ %2, %if.end.lr.ph ], [ %inc, %if.end6.if.end_crit_edge ]
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid, align 4
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlmsg_seq, align 4
  %call4 = tail call fastcc i32 @l2tp_nl_tunnel_send(ptr noundef %skb, i32 noundef %11, i32 noundef %15, i32 noundef 2, ptr noundef nonnull %call124, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call124) #8
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end
  %inc = add i32 %ti.023, 1
  %call1 = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %7, i32 noundef %inc) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end6.out_crit_edge, label %if.end6.if.end_crit_edge

if.end6.if.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ti.020 = phi i32 [ %2, %entry.out_crit_edge ], [ %inc, %if.end6.out_crit_edge ], [ %ti.023, %if.end.out_crit_edge ]
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ti.020, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_session_create(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %cfg = alloca %struct.l2tp_session_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cfg) #8
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 40)
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %1 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup196_crit_edge, label %if.end

entry.cleanup196_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup196

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @l2tp_tunnel_get(ptr noundef %2, i32 noundef %8) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup196_crit_edge, label %if.end7

if.end.cleanup196_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup196

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx9 = getelementptr ptr, ptr %10, i32 11
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end7.out_tunnel_crit_edge, label %if.end12

if.end7.out_tunnel_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end12:                                         ; preds = %if.end7
  %add.ptr.i.i259 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i259 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i259, align 4
  %arrayidx17 = getelementptr ptr, ptr %10, i32 12
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end12.out_tunnel_crit_edge, label %if.end20

if.end12.out_tunnel_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end20:                                         ; preds = %if.end12
  %add.ptr.i.i260 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i260 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i260, align 4
  %arrayidx25 = getelementptr ptr, ptr %10, i32 1
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %20, null
  br i1 %tobool26.not, label %if.end20.out_tunnel_crit_edge, label %if.end28

if.end20.out_tunnel_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end28:                                         ; preds = %if.end20
  %add.ptr.i.i261 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i261 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i261, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %22)
  %cmp = icmp ugt i16 %22, 11
  br i1 %cmp, label %if.end28.out_tunnel_crit_edge, label %if.end35

if.end28.out_tunnel_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end35:                                         ; preds = %if.end28
  %version = getelementptr inbounds %struct.l2tp_tunnel, ptr %call4, i32 0, i32 8
  %24 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp36 = icmp ne i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %22)
  %cmp39.not = icmp eq i16 %22, 7
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %if.end42, label %if.end35.out_tunnel_crit_edge

if.end35.out_tunnel_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp44 = icmp sgt i32 %25, 2
  br i1 %cmp44, label %if.then46, label %if.end42.if.end120_crit_edge

if.end42.if.end120_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then46:                                        ; preds = %if.end42
  %arrayidx48 = getelementptr ptr, ptr %10, i32 5
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %27, null
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.then46
  %add.ptr.i.i262 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i262 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i262, align 1
  %conv54 = zext i8 %29 to i16
  %l2specific_type = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 2
  %30 = ptrtoint ptr %l2specific_type to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv54, ptr %l2specific_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %switch = icmp ult i8 %29, 2
  br i1 %switch, label %if.then50.if.end67_crit_edge, label %if.then50.out_tunnel_crit_edge

if.then50.out_tunnel_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.then50.if.end67_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.else:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %l2specific_type66 = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 2
  %31 = ptrtoint ptr %l2specific_type66 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %l2specific_type66, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then50.if.end67_crit_edge
  %arrayidx69 = getelementptr ptr, ptr %10, i32 15
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx69, align 4
  %tobool70.not = icmp eq ptr %33, null
  br i1 %tobool70.not, label %if.end67.if.end87_crit_edge, label %if.then71

if.end67.if.end87_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then71:                                        ; preds = %if.end67
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %36 = add i16 %35, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %36)
  %cmp77 = icmp ugt i16 %36, 8
  br i1 %cmp77, label %if.then71.out_tunnel_crit_edge, label %cleanup.thread

if.then71.out_tunnel_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

cleanup.thread:                                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %conv76 = zext i16 %36 to i32
  %cookie_len = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 4
  %37 = ptrtoint ptr %cookie_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv76, ptr %cookie_len, align 4
  %cookie = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx69, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 4
  %40 = call ptr @memcpy(ptr %cookie, ptr %add.ptr.i, i32 %conv76)
  br label %if.end87

if.end87:                                         ; preds = %cleanup.thread, %if.end67.if.end87_crit_edge
  %arrayidx89 = getelementptr ptr, ptr %10, i32 16
  %41 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %42, null
  br i1 %tobool90.not, label %if.end87.if.end111_crit_edge, label %if.then91

if.end87.if.end111_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then91:                                        ; preds = %if.end87
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %45 = add i16 %44, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %45)
  %cmp98 = icmp ugt i16 %45, 8
  br i1 %cmp98, label %if.then91.out_tunnel_crit_edge, label %cleanup108.thread

if.then91.out_tunnel_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

cleanup108.thread:                                ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %conv97 = zext i16 %45 to i32
  %peer_cookie_len = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 6
  %46 = ptrtoint ptr %peer_cookie_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv97, ptr %peer_cookie_len, align 4
  %peer_cookie = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx89, align 4
  %add.ptr.i265 = getelementptr i8, ptr %48, i32 4
  %49 = call ptr @memcpy(ptr %peer_cookie, ptr %add.ptr.i265, i32 %conv97)
  br label %if.end111

if.end111:                                        ; preds = %cleanup108.thread, %if.end87.if.end111_crit_edge
  %arrayidx113 = getelementptr ptr, ptr %10, i32 8
  %50 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx113, align 4
  %tobool114.not = icmp eq ptr %51, null
  br i1 %tobool114.not, label %if.end111.if.end120_crit_edge, label %if.then115

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i266 = getelementptr i8, ptr %51, i32 4
  %ifname = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 8
  %52 = ptrtoint ptr %ifname to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i266, ptr %ifname, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end111.if.end120_crit_edge, %if.end42.if.end120_crit_edge
  %arrayidx122 = getelementptr ptr, ptr %10, i32 18
  %53 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx122, align 4
  %tobool123.not = icmp eq ptr %54, null
  br i1 %tobool123.not, label %if.end120.if.end129_crit_edge, label %if.then124

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i267 = getelementptr i8, ptr %54, i32 4
  %55 = ptrtoint ptr %add.ptr.i.i267 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i.i267, align 1
  %recv_seq = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 1
  %57 = ptrtoint ptr %recv_seq to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %recv_seq, align 4
  %bf.shl = shl i8 %56, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %recv_seq, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end120.if.end129_crit_edge
  %arrayidx131 = getelementptr ptr, ptr %10, i32 19
  %58 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx131, align 4
  %tobool132.not = icmp eq ptr %59, null
  br i1 %tobool132.not, label %if.end129.if.end144_crit_edge, label %if.then133

if.end129.if.end144_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i268 = getelementptr i8, ptr %59, i32 4
  %60 = ptrtoint ptr %add.ptr.i.i268 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i.i268, align 1
  %send_seq = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 1
  %62 = ptrtoint ptr %send_seq to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load138 = load i8, ptr %send_seq, align 4
  %bf.value139 = shl i8 %61, 6
  %bf.shl140 = and i8 %bf.value139, 64
  %bf.clear141 = and i8 %bf.load138, -65
  %bf.set142 = or i8 %bf.clear141, %bf.shl140
  store i8 %bf.set142, ptr %send_seq, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then133, %if.end129.if.end144_crit_edge
  %arrayidx146 = getelementptr ptr, ptr %10, i32 20
  %63 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %64, null
  br i1 %tobool147.not, label %if.end144.if.end159_crit_edge, label %if.then148

if.end144.if.end159_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then148:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i269 = getelementptr i8, ptr %64, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i269 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr.i.i269, align 1
  %lns_mode = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 1
  %67 = ptrtoint ptr %lns_mode to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load153 = load i8, ptr %lns_mode, align 4
  %bf.value154 = shl i8 %66, 5
  %bf.shl155 = and i8 %bf.value154, 32
  %bf.clear156 = and i8 %bf.load153, -33
  %bf.set157 = or i8 %bf.clear156, %bf.shl155
  store i8 %bf.set157, ptr %lns_mode, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then148, %if.end144.if.end159_crit_edge
  %arrayidx161 = getelementptr ptr, ptr %10, i32 22
  %68 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx161, align 4
  %tobool162.not = icmp eq ptr %69, null
  br i1 %tobool162.not, label %if.end159.if.end167_crit_edge, label %if.then163

if.end159.if.end167_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  %call166 = tail call fastcc i32 @nla_get_msecs(ptr noundef nonnull %69)
  %reorder_timeout = getelementptr inbounds %struct.l2tp_session_cfg, ptr %cfg, i32 0, i32 7
  %70 = ptrtoint ptr %reorder_timeout to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call166, ptr %reorder_timeout, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end159.if.end167_crit_edge
  %71 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cfg, align 4
  %arrayidx169 = getelementptr [12 x ptr], ptr @l2tp_nl_cmd_ops, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx169, align 4
  %tobool170.not = icmp eq ptr %74, null
  br i1 %tobool170.not, label %if.then171, label %if.end167.if.end174_crit_edge

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @genl_unlock() #8
  %75 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cfg, align 4
  %call173 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef %76) #8
  tail call void @genl_lock() #8
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end167.if.end174_crit_edge
  %77 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cfg, align 4
  %arrayidx176 = getelementptr [12 x ptr], ptr @l2tp_nl_cmd_ops, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx176, align 4
  %tobool177.not = icmp eq ptr %80, null
  br i1 %tobool177.not, label %if.end174.out_tunnel_crit_edge, label %lor.lhs.false

if.end174.out_tunnel_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

lor.lhs.false:                                    ; preds = %if.end174
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %tobool180.not = icmp eq ptr %82, null
  br i1 %tobool180.not, label %lor.lhs.false.out_tunnel_crit_edge, label %if.end182

lor.lhs.false.out_tunnel_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.end182:                                        ; preds = %lor.lhs.false
  %call186 = call i32 %82(ptr noundef %2, ptr noundef nonnull %call4, i32 noundef %14, i32 noundef %18, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call186)
  %cmp187 = icmp sgt i32 %call186, -1
  br i1 %cmp187, label %if.then189, label %if.end182.out_tunnel_crit_edge

if.end182.out_tunnel_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.then189:                                       ; preds = %if.end182
  %call190 = call ptr @l2tp_tunnel_get_session(ptr noundef nonnull %call4, i32 noundef %14) #8
  %tobool191.not = icmp eq ptr %call190, null
  br i1 %tobool191.not, label %if.then189.out_tunnel_crit_edge, label %if.then192

if.then189.out_tunnel_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_tunnel

if.then192:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  %call193 = call fastcc i32 @l2tp_session_notify(ptr noundef %info, ptr noundef nonnull %call190, i8 noundef zeroext 5)
  call void @l2tp_session_dec_refcount(ptr noundef nonnull %call190) #8
  br label %out_tunnel

out_tunnel:                                       ; preds = %if.then192, %if.then189.out_tunnel_crit_edge, %if.end182.out_tunnel_crit_edge, %lor.lhs.false.out_tunnel_crit_edge, %if.end174.out_tunnel_crit_edge, %if.then91.out_tunnel_crit_edge, %if.then71.out_tunnel_crit_edge, %if.then50.out_tunnel_crit_edge, %if.end35.out_tunnel_crit_edge, %if.end28.out_tunnel_crit_edge, %if.end20.out_tunnel_crit_edge, %if.end12.out_tunnel_crit_edge, %if.end7.out_tunnel_crit_edge
  %ret.3 = phi i32 [ %call193, %if.then192 ], [ %call186, %if.then189.out_tunnel_crit_edge ], [ %call186, %if.end182.out_tunnel_crit_edge ], [ -22, %if.end7.out_tunnel_crit_edge ], [ -22, %if.end12.out_tunnel_crit_edge ], [ -22, %if.end20.out_tunnel_crit_edge ], [ -22, %if.end28.out_tunnel_crit_edge ], [ -93, %if.end35.out_tunnel_crit_edge ], [ -22, %if.then50.out_tunnel_crit_edge ], [ -93, %lor.lhs.false.out_tunnel_crit_edge ], [ -93, %if.end174.out_tunnel_crit_edge ], [ -22, %if.then71.out_tunnel_crit_edge ], [ -22, %if.then91.out_tunnel_crit_edge ]
  call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call4) #8
  br label %cleanup196

cleanup196:                                       ; preds = %out_tunnel, %if.end.cleanup196_crit_edge, %entry.cleanup196_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_tunnel ], [ -22, %entry.cleanup196_crit_edge ], [ -19, %if.end.cleanup196_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_session_delete(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %call4.i = tail call ptr @l2tp_session_get_by_ifname(ptr noundef %1, ptr noundef %add.ptr.i.i) #8
  br label %l2tp_nl_session_get.exit

if.else.i:                                        ; preds = %entry
  %arrayidx6.i = getelementptr ptr, ptr %3, i32 11
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %if.else.i.out_crit_edge, label %land.lhs.true.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx9.i = getelementptr ptr, ptr %3, i32 9
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.out_crit_edge, label %if.then11.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i34.i, align 4
  %call18.i = tail call ptr @l2tp_tunnel_get(ptr noundef %1, i32 noundef %11) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then11.i.out_crit_edge, label %if.then20.i

if.then11.i.out_crit_edge:                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call ptr @l2tp_tunnel_get_session(ptr noundef nonnull %call18.i, i32 noundef %13) #8
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call18.i) #8
  br label %l2tp_nl_session_get.exit

l2tp_nl_session_get.exit:                         ; preds = %if.then20.i, %if.then.i
  %session.0.i = phi ptr [ %call4.i, %if.then.i ], [ %call21.i, %if.then20.i ]
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %l2tp_nl_session_get.exit.out_crit_edge, label %if.end

l2tp_nl_session_get.exit.out_crit_edge:           ; preds = %l2tp_nl_session_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %l2tp_nl_session_get.exit
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i24 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i24, label %if.end.l2tp_session_notify.exit_crit_edge, label %if.end.i

if.end.l2tp_session_notify.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2tp_session_notify.exit

if.end.i:                                         ; preds = %if.end
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid.i, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info, align 4
  %call1.i = tail call fastcc i32 @l2tp_nl_session_send(ptr noundef nonnull %call.i.i.i, i32 noundef %15, i32 noundef %17, i32 noundef 4, ptr noundef nonnull %session.0.i, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  br label %l2tp_session_notify.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %l2tp_session_notify.exit

l2tp_session_notify.exit:                         ; preds = %if.end7.i, %if.then2.i, %if.end.l2tp_session_notify.exit_crit_edge
  %pwtype = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 26
  %18 = ptrtoint ptr %pwtype to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwtype, align 4
  %conv2 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv2)
  %cmp = icmp ult i32 %conv2, 12
  br i1 %cmp, label %if.then4, label %l2tp_session_notify.exit.if.end14_crit_edge

l2tp_session_notify.exit.if.end14_crit_edge:      ; preds = %l2tp_session_notify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %l2tp_session_notify.exit
  %arrayidx = getelementptr [12 x ptr], ptr @l2tp_nl_cmd_ops, i32 0, i32 %conv2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %if.then4.if.end14_crit_edge, label %land.lhs.true

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then4
  %session_delete = getelementptr inbounds %struct.l2tp_nl_cmd_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %session_delete to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %session_delete, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef nonnull %session.0.i) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %if.then4.if.end14_crit_edge, %l2tp_session_notify.exit.if.end14_crit_edge
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %session.0.i) #8
  br label %out

out:                                              ; preds = %if.end14, %l2tp_nl_session_get.exit.out_crit_edge, %if.then11.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.else.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end14 ], [ -19, %l2tp_nl_session_get.exit.out_crit_edge ], [ -19, %if.then11.i.out_crit_edge ], [ -19, %land.lhs.true.i.out_crit_edge ], [ -19, %if.else.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_session_modify(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %call4.i = tail call ptr @l2tp_session_get_by_ifname(ptr noundef %1, ptr noundef %add.ptr.i.i) #8
  br label %l2tp_nl_session_get.exit

if.else.i:                                        ; preds = %entry
  %arrayidx6.i = getelementptr ptr, ptr %3, i32 11
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %if.else.i.out_crit_edge, label %land.lhs.true.i

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx9.i = getelementptr ptr, ptr %3, i32 9
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.out_crit_edge, label %if.then11.i

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i34.i, align 4
  %call18.i = tail call ptr @l2tp_tunnel_get(ptr noundef %1, i32 noundef %11) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then11.i.out_crit_edge, label %if.then20.i

if.then11.i.out_crit_edge:                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call ptr @l2tp_tunnel_get_session(ptr noundef nonnull %call18.i, i32 noundef %13) #8
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call18.i) #8
  br label %l2tp_nl_session_get.exit

l2tp_nl_session_get.exit:                         ; preds = %if.then20.i, %if.then.i
  %session.0.i = phi ptr [ %call4.i, %if.then.i ], [ %call21.i, %if.then20.i ]
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %l2tp_nl_session_get.exit.out_crit_edge, label %if.end

l2tp_nl_session_get.exit.out_crit_edge:           ; preds = %l2tp_nl_session_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %l2tp_nl_session_get.exit
  %14 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs.i, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 18
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %17, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i66 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i66, align 1
  %recv_seq = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 23
  %20 = ptrtoint ptr %recv_seq to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %recv_seq, align 4
  %bf.shl = shl i8 %19, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %recv_seq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %21 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attrs.i, align 4
  %arrayidx8 = getelementptr ptr, ptr %22, i32 19
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %24, null
  br i1 %tobool9.not, label %if.end6.if.end21_crit_edge, label %if.then10

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i67 = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i67 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i67, align 1
  %send_seq = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 23
  %27 = ptrtoint ptr %send_seq to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load15 = load i8, ptr %send_seq, align 4
  %bf.value16 = shl i8 %26, 6
  %bf.shl17 = and i8 %bf.value16, 64
  %bf.clear18 = and i8 %bf.load15, -65
  %bf.set19 = or i8 %bf.clear18, %bf.shl17
  store i8 %bf.set19, ptr %send_seq, align 4
  %tunnel = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tunnel, align 4
  %version = getelementptr inbounds %struct.l2tp_tunnel, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version, align 4
  tail call void @l2tp_session_set_header_len(ptr noundef nonnull %session.0.i, i32 noundef %31) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then10, %if.end6.if.end21_crit_edge
  %32 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attrs.i, align 4
  %arrayidx23 = getelementptr ptr, ptr %33, i32 20
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %35, null
  br i1 %tobool24.not, label %if.end21.if.end36_crit_edge, label %if.then25

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i68 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i.i68, align 1
  %lns_mode = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 23
  %38 = ptrtoint ptr %lns_mode to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load30 = load i8, ptr %lns_mode, align 4
  %bf.value31 = shl i8 %37, 5
  %bf.shl32 = and i8 %bf.value31, 32
  %bf.clear33 = and i8 %bf.load30, -33
  %bf.set34 = or i8 %bf.clear33, %bf.shl32
  store i8 %bf.set34, ptr %lns_mode, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %if.end21.if.end36_crit_edge
  %39 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %attrs.i, align 4
  %arrayidx38 = getelementptr ptr, ptr %40, i32 22
  %41 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %42, null
  br i1 %tobool39.not, label %if.end36.if.end44_crit_edge, label %if.then40

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #8
  %43 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %tmp.i.i, align 8, !annotation !52
  %call.i.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i.i, ptr noundef nonnull %42, i32 noundef 8) #8
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tmp.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #8
  %conv.i = trunc i64 %45 to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #8
  %reorder_timeout = getelementptr inbounds %struct.l2tp_session, ptr %session.0.i, i32 0, i32 24
  %46 = ptrtoint ptr %reorder_timeout to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call2.i.i, ptr %reorder_timeout, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end36.if.end44_crit_edge
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not.i69 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i69, label %if.end44.l2tp_session_notify.exit_crit_edge, label %if.end.i

if.end44.l2tp_session_notify.exit_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2tp_session_notify.exit

if.end.i:                                         ; preds = %if.end44
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %47 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %snd_portid.i, align 4
  %49 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %info, align 4
  %call1.i = call fastcc i32 @l2tp_nl_session_send(ptr noundef nonnull %call.i.i.i, i32 noundef %48, i32 noundef %50, i32 noundef 4, ptr noundef nonnull %session.0.i, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, -3
  %spec.store.select.i = select i1 %cmp4.i, i32 0, i32 %call3.i
  br label %l2tp_session_notify.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %l2tp_session_notify.exit

l2tp_session_notify.exit:                         ; preds = %if.end7.i, %if.then2.i, %if.end44.l2tp_session_notify.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then2.i ], [ %call1.i, %if.end7.i ], [ -12, %if.end44.l2tp_session_notify.exit_crit_edge ]
  call void @l2tp_session_dec_refcount(ptr noundef nonnull %session.0.i) #8
  br label %out

out:                                              ; preds = %l2tp_session_notify.exit, %l2tp_nl_session_get.exit.out_crit_edge, %if.then11.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.else.i.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %l2tp_session_notify.exit ], [ -19, %l2tp_nl_session_get.exit.out_crit_edge ], [ -19, %if.then11.i.out_crit_edge ], [ -19, %land.lhs.true.i.out_crit_edge ], [ -19, %if.else.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_session_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %call4.i = tail call ptr @l2tp_session_get_by_ifname(ptr noundef %1, ptr noundef %add.ptr.i.i) #8
  br label %l2tp_nl_session_get.exit

if.else.i:                                        ; preds = %entry
  %arrayidx6.i = getelementptr ptr, ptr %3, i32 11
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %if.else.i.cleanup_crit_edge, label %land.lhs.true.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else.i
  %arrayidx9.i = getelementptr ptr, ptr %3, i32 9
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then11.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.i:                                      ; preds = %land.lhs.true.i
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i34.i, align 4
  %call18.i = tail call ptr @l2tp_tunnel_get(ptr noundef %1, i32 noundef %11) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then11.i.cleanup_crit_edge, label %if.then20.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call ptr @l2tp_tunnel_get_session(ptr noundef nonnull %call18.i, i32 noundef %13) #8
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %call18.i) #8
  br label %l2tp_nl_session_get.exit

l2tp_nl_session_get.exit:                         ; preds = %if.then20.i, %if.then.i
  %session.0.i = phi ptr [ %call4.i, %if.then.i ], [ %call21.i, %if.then20.i ]
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %l2tp_nl_session_get.exit.cleanup_crit_edge, label %if.end

l2tp_nl_session_get.exit.cleanup_crit_edge:       ; preds = %l2tp_nl_session_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %l2tp_nl_session_get.exit
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info, align 4
  %call5 = tail call fastcc i32 @l2tp_nl_session_send(ptr noundef nonnull %call.i.i, i32 noundef %15, i32 noundef %17, i32 noundef 0, ptr noundef nonnull %session.0.i, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %err_ref_msg, label %if.end7

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_net.i.i, align 4
  %20 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 21
  %22 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i25 = tail call i32 @netlink_unicast(ptr noundef %23, ptr noundef nonnull %call.i.i, i32 noundef %21, i32 noundef 64) #8
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i25, i32 0) #8
  br label %cleanup.sink.split

err_ref_msg:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_ref_msg, %if.end7, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %24, %if.end7 ], [ %call5, %err_ref_msg ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %session.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %l2tp_nl_session_get.exit.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %l2tp_nl_session_get.exit.cleanup_crit_edge ], [ -19, %if.then11.i.cleanup_crit_edge ], [ -19, %land.lhs.true.i.cleanup_crit_edge ], [ -19, %if.else.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_nl_cmd_session_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then8, %entry
  %ti.0.ph = phi i32 [ %inc, %if.then8 ], [ %7, %entry ]
  %si.0.ph = phi i32 [ 0, %if.then8 ], [ %9, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %for.cond.outer
  %tunnel.0 = phi ptr [ %tunnel.1, %if.end14 ], [ null, %for.cond.outer ]
  %si.0 = phi i32 [ %inc15, %if.end14 ], [ %si.0.ph, %for.cond.outer ]
  %tobool.not = icmp eq ptr %tunnel.0, null
  br i1 %tobool.not, label %if.then, label %for.cond.if.end5_crit_edge

for.cond.if.end5_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %for.cond
  %call2 = tail call ptr @l2tp_tunnel_get_nth(ptr noundef %4, i32 noundef %ti.0.ph) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.out_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %for.cond.if.end5_crit_edge
  %tunnel.1 = phi ptr [ %tunnel.0, %for.cond.if.end5_crit_edge ], [ %call2, %if.then.if.end5_crit_edge ]
  %call6 = tail call ptr @l2tp_session_get_nth(ptr noundef nonnull %tunnel.1, i32 noundef %si.0) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %ti.0.ph, 1
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %tunnel.1) #8
  br label %for.cond.outer

if.end9:                                          ; preds = %if.end5
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
  %call12 = tail call fastcc i32 @l2tp_nl_session_send(ptr noundef %skb, i32 noundef %13, i32 noundef %17, i32 noundef 2, ptr noundef nonnull %call6, i8 noundef zeroext 8)
  %cmp = icmp slt i32 %call12, 0
  tail call void @l2tp_session_dec_refcount(ptr noundef nonnull %call6) #8
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @l2tp_tunnel_dec_refcount(ptr noundef nonnull %tunnel.1) #8
  br label %out

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %inc15 = add i32 %si.0, 1
  br label %for.cond

out:                                              ; preds = %if.then13, %if.then.out_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ti.0.ph, ptr %5, align 4
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %si.0, ptr %arrayidx1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_tunnel_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_inc_refcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2tp_tunnel_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_dec_refcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2tp_nl_tunnel_send(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %tunnel, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %tmp.i159 = alloca i64, align 8
  %tmp.i157 = alloca i64, align 8
  %tmp.i155 = alloca i64, align 8
  %tmp.i153 = alloca i64, align 8
  %tmp.i151 = alloca i64, align 8
  %tmp.i149 = alloca i64, align 8
  %tmp.i147 = alloca i64, align 8
  %tmp.i145 = alloca i64, align 8
  %tmp.i143 = alloca i64, align 8
  %tmp.i141 = alloca i64, align 8
  %tmp.i139 = alloca i16, align 2
  %tmp.i137 = alloca i32, align 4
  %tmp.i135 = alloca i32, align 4
  %tmp.i133 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @l2tp_nl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 8
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %conv = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 6
  %3 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tunnel_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i133) #8
  %5 = ptrtoint ptr %tmp.i133 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i133, align 4
  %call.i134 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i133) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool4.not = icmp eq i32 %call.i134, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %peer_tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 7
  %6 = ptrtoint ptr %peer_tunnel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %peer_tunnel_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i135) #8
  %8 = ptrtoint ptr %tmp.i135 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i135, align 4
  %call.i136 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i135) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i135) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool7.not = icmp eq i32 %call.i136, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.if.then.i_crit_edge

lor.lhs.false5.if.then.i_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i137) #8
  %9 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tmp.i137, align 4
  %call.i138 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i137) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool10.not = icmp eq i32 %call.i138, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false8.if.then.i_crit_edge

lor.lhs.false8.if.then.i_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %encap = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 10
  %10 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encap, align 4
  %conv12 = trunc i32 %11 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i139) #8
  %12 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv12, ptr %tmp.i139, align 2
  %call.i140 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i139) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i139) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool14.not = icmp eq i32 %call.i140, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false11.if.then.i_crit_edge

lor.lhs.false11.if.then.i_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end16:                                         ; preds = %lor.lhs.false11
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool18.not163 = icmp eq ptr %14, null
  %tobool18.not = select i1 %cmp.i, i1 true, i1 %tobool18.not163
  br i1 %tobool18.not, label %if.end16.if.then.i_crit_edge, label %if.end20

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end20:                                         ; preds = %if.end16
  %stats = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #8
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %stats, align 4
  %conv22 = sext i32 %16 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i141) #8
  %17 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv22, ptr %tmp.i141, align 8
  %call.i142 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i141, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i141) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool24.not = icmp eq i32 %call.i142, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end20.if.then.i_crit_edge

if.end20.if.then.i_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false25:                                  ; preds = %if.end20
  %tx_bytes = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 1
  %call.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes, i32 noundef 4) #8
  %18 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_bytes, align 4
  %conv28 = sext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i143) #8
  %20 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv28, ptr %tmp.i143, align 8
  %call.i144 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i143, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i143) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool30.not = icmp eq i32 %call.i144, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false25.if.then.i_crit_edge

lor.lhs.false25.if.then.i_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %tx_errors = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 2
  %call.i.i125 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors, i32 noundef 4) #8
  %21 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %tx_errors, align 4
  %conv34 = sext i32 %22 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i145) #8
  %23 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv34, ptr %tmp.i145, align 8
  %call.i146 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i145, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i145) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool36.not = icmp eq i32 %call.i146, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false31.if.then.i_crit_edge

lor.lhs.false31.if.then.i_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %rx_packets = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 3
  %call.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets, i32 noundef 4) #8
  %24 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_packets, align 4
  %conv40 = sext i32 %25 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i147) #8
  %26 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv40, ptr %tmp.i147, align 8
  %call.i148 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i147, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i147) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool42.not = icmp eq i32 %call.i148, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false37.if.then.i_crit_edge

lor.lhs.false37.if.then.i_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %rx_bytes = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 4
  %call.i.i127 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes, i32 noundef 4) #8
  %27 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %rx_bytes, align 4
  %conv46 = sext i32 %28 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i149) #8
  %29 = ptrtoint ptr %tmp.i149 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv46, ptr %tmp.i149, align 8
  %call.i150 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i149, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool48.not = icmp eq i32 %call.i150, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false43.if.then.i_crit_edge

lor.lhs.false43.if.then.i_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false49:                                  ; preds = %lor.lhs.false43
  %rx_seq_discards = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 5
  %call.i.i128 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_seq_discards, i32 noundef 4) #8
  %30 = ptrtoint ptr %rx_seq_discards to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %rx_seq_discards, align 4
  %conv52 = sext i32 %31 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i151) #8
  %32 = ptrtoint ptr %tmp.i151 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv52, ptr %tmp.i151, align 8
  %call.i152 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i151, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool54.not = icmp eq i32 %call.i152, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %lor.lhs.false49.if.then.i_crit_edge

lor.lhs.false49.if.then.i_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false55:                                  ; preds = %lor.lhs.false49
  %rx_cookie_discards = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 8
  %call.i.i129 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_cookie_discards, i32 noundef 4) #8
  %33 = ptrtoint ptr %rx_cookie_discards to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %rx_cookie_discards, align 4
  %conv58 = sext i32 %34 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i153) #8
  %35 = ptrtoint ptr %tmp.i153 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv58, ptr %tmp.i153, align 8
  %call.i154 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i153, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i153) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool60.not = icmp eq i32 %call.i154, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %lor.lhs.false55.if.then.i_crit_edge

lor.lhs.false55.if.then.i_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false61:                                  ; preds = %lor.lhs.false55
  %rx_oos_packets = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 6
  %call.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_oos_packets, i32 noundef 4) #8
  %36 = ptrtoint ptr %rx_oos_packets to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %rx_oos_packets, align 4
  %conv64 = sext i32 %37 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i155) #8
  %38 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv64, ptr %tmp.i155, align 8
  %call.i156 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i155, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i155) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool66.not = icmp eq i32 %call.i156, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %lor.lhs.false61.if.then.i_crit_edge

lor.lhs.false61.if.then.i_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false67:                                  ; preds = %lor.lhs.false61
  %rx_errors = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 7
  %call.i.i131 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors, i32 noundef 4) #8
  %39 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %rx_errors, align 4
  %conv70 = sext i32 %40 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i157) #8
  %41 = ptrtoint ptr %tmp.i157 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv70, ptr %tmp.i157, align 8
  %call.i158 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i157, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool72.not = icmp eq i32 %call.i158, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %lor.lhs.false67.if.then.i_crit_edge

lor.lhs.false67.if.then.i_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false73:                                  ; preds = %lor.lhs.false67
  %rx_invalid = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 11, i32 9
  %call.i.i132 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_invalid, i32 noundef 4) #8
  %42 = ptrtoint ptr %rx_invalid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %rx_invalid, align 4
  %conv76 = sext i32 %43 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i159) #8
  %44 = ptrtoint ptr %tmp.i159 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv76, ptr %tmp.i159, align 8
  %call.i160 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i159, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i159) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool78.not = icmp eq i32 %call.i160, 0
  br i1 %tobool78.not, label %if.end80, label %lor.lhs.false73.if.then.i_crit_edge

lor.lhs.false73.if.then.i_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end80:                                         ; preds = %lor.lhs.false73
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %47 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i, ptr %14, align 2
  %call82 = call fastcc i32 @l2tp_nl_tunnel_send_addr(ptr noundef %skb, ptr noundef %tunnel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.if.then.i_crit_edge

if.end80.if.then.i_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end80.if.then.i_crit_edge, %lor.lhs.false73.if.then.i_crit_edge, %lor.lhs.false67.if.then.i_crit_edge, %lor.lhs.false61.if.then.i_crit_edge, %lor.lhs.false55.if.then.i_crit_edge, %lor.lhs.false49.if.then.i_crit_edge, %lor.lhs.false43.if.then.i_crit_edge, %lor.lhs.false37.if.then.i_crit_edge, %lor.lhs.false31.if.then.i_crit_edge, %lor.lhs.false25.if.then.i_crit_edge, %if.end20.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge, %lor.lhs.false11.if.then.i_crit_edge, %lor.lhs.false8.if.then.i_crit_edge, %lor.lhs.false5.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i162 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i162, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %52, %add.ptr1.i162
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !53

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i162 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end85, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -90, %entry.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ], [ -1, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genlmsg_multicast_allns(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2tp_nl_tunnel_send_addr(ptr noundef %skb, ptr nocapture noundef readonly %tunnel) unnamed_addr #0 align 64 {
entry:
  %tmp.i.i31.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i29.i = alloca i16, align 2
  %tmp.i27.i = alloca i16, align 2
  %tmp.i.i12 = alloca i8, align 1
  %tmp.i41.i = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 16
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp = icmp eq i16 %3, 10
  %encap = getelementptr inbounds %struct.l2tp_tunnel, ptr %tunnel, i32 0, i32 10
  %4 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encap, align 4
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %7 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then2.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then2.inet6_sk.exit.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then2.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %9, %cond.true.i.i ], [ null, %if.then2.inet6_sk.exit.i_crit_edge ]
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %inet6_sk.exit.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %inet6_sk.exit.i.sw.bb17.i_crit_edge
  ]

inet6_sk.exit.i.sw.bb17.i_crit_edge:              ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

inet6_sk.exit.i.sw.epilog.i_crit_edge:            ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %inet6_sk.exit.i
  %no_check6_tx.i.i = getelementptr inbounds %struct.udp_sock, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %no_check6_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %no_check6_tx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.i.i = icmp slt i8 %bf.load.i.i, 0
  br i1 %tobool.i.i, label %land.lhs.true.i, label %sw.bb.i.if.end.i_crit_edge

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %call.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 33, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %no_check6_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i37.i = load i8, ptr %no_check6_tx.i.i, align 1
  %13 = and i8 %bf.load.i37.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i38.not.i = icmp eq i8 %13, 0
  br i1 %tobool.i38.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true5.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %call.i39.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 34, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool7.not.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.if.end9.i_crit_edge, label %land.lhs.true5.i.cleanup_crit_edge

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %inet_sport.i = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %inet_sport.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inet_sport.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #8
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i.i, align 2
  %call.i40.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool11.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i41.i) #8
  %20 = ptrtoint ptr %tmp.i41.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %tmp.i41.i, align 2
  %call.i42.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 2, ptr noundef nonnull %tmp.i41.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool14.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.sw.bb17.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.sw.bb17.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

sw.bb17.i:                                        ; preds = %lor.lhs.false.i.sw.bb17.i_crit_edge, %inet6_sk.exit.i.sw.bb17.i_crit_edge
  %call.i43.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 31, i32 noundef 16, ptr noundef %cond.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool19.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %sw.bb17.i.cleanup_crit_edge

sw.bb17.i.cleanup_crit_edge:                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20.i:                                ; preds = %sw.bb17.i
  %skc_v6_daddr.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %call.i44.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32, i32 noundef 16, ptr noundef %skc_v6_daddr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool23.not.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false20.i.sw.epilog.i_crit_edge, label %lor.lhs.false20.i.cleanup_crit_edge

lor.lhs.false20.i.cleanup_crit_edge:              ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %lor.lhs.false20.i.sw.epilog.i_crit_edge, %inet6_sk.exit.i.sw.epilog.i_crit_edge
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %21 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %if.end3.sw.epilog.i18_crit_edge [
    i32 0, label %sw.bb.i14
    i32 1, label %if.end3.sw.bb9.i_crit_edge
  ]

if.end3.sw.bb9.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.end3.sw.epilog.i18_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i18

sw.bb.i14:                                        ; preds = %if.end3
  %sk_no_check_tx.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %22 = ptrtoint ptr %sk_no_check_tx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %sk_no_check_tx.i, align 8
  %23 = lshr i8 %bf.load.i, 5
  %.lobit.i = and i8 %23, 1
  %24 = xor i8 %.lobit.i, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i12) #8
  %25 = ptrtoint ptr %tmp.i.i12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %tmp.i.i12, align 1
  %call.i.i13 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i.i12) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %tobool2.not.i = icmp eq i32 %call.i.i13, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i16, label %sw.bb.i14.cleanup_crit_edge

sw.bb.i14.cleanup_crit_edge:                      ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i16:                                ; preds = %sw.bb.i14
  %inet_sport.i15 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %inet_sport.i15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %inet_sport.i15, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i27.i) #8
  %28 = ptrtoint ptr %tmp.i27.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %tmp.i27.i, align 2
  %call.i28.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 26, i32 noundef 2, ptr noundef nonnull %tmp.i27.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool4.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i16.cleanup_crit_edge

lor.lhs.false.i16.cleanup_crit_edge:              ; preds = %lor.lhs.false.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i16
  %29 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i29.i) #8
  %32 = ptrtoint ptr %tmp.i29.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %tmp.i29.i, align 2
  %call.i30.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 27, i32 noundef 2, ptr noundef nonnull %tmp.i29.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i29.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool8.not.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false5.i.sw.bb9.i_crit_edge, label %lor.lhs.false5.i.cleanup_crit_edge

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5.i.sw.bb9.i_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %lor.lhs.false5.i.sw.bb9.i_crit_edge, %if.end3.sw.bb9.i_crit_edge
  %inet_saddr.i = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %inet_saddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inet_saddr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %35 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool11.not.i17 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool11.not.i17, label %lor.lhs.false12.i, label %sw.bb9.i.cleanup_crit_edge

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12.i:                                ; preds = %sw.bb9.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i31.i) #8
  %38 = ptrtoint ptr %tmp.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i.i31.i, align 4
  %call.i.i32.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 25, i32 noundef 4, ptr noundef nonnull %tmp.i.i31.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i31.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool16.not.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false12.i.sw.epilog.i18_crit_edge, label %lor.lhs.false12.i.cleanup_crit_edge

lor.lhs.false12.i.cleanup_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false12.i.sw.epilog.i18_crit_edge:        ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i18

sw.epilog.i18:                                    ; preds = %lor.lhs.false12.i.sw.epilog.i18_crit_edge, %if.end3.sw.epilog.i18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i18, %lor.lhs.false12.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge, %lor.lhs.false.i16.cleanup_crit_edge, %sw.bb.i14.cleanup_crit_edge, %sw.epilog.i, %lor.lhs.false20.i.cleanup_crit_edge, %sw.bb17.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ -1, %land.lhs.true.i.cleanup_crit_edge ], [ -1, %land.lhs.true5.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.cleanup_crit_edge ], [ -1, %if.end9.i.cleanup_crit_edge ], [ -1, %lor.lhs.false20.i.cleanup_crit_edge ], [ -1, %sw.bb17.i.cleanup_crit_edge ], [ 0, %sw.epilog.i18 ], [ -1, %lor.lhs.false5.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i16.cleanup_crit_edge ], [ -1, %sw.bb.i14.cleanup_crit_edge ], [ -1, %lor.lhs.false12.i.cleanup_crit_edge ], [ -1, %sw.bb9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_tunnel_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_get_msecs(ptr noundef %nla) unnamed_addr #5 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp.i, align 8, !annotation !52
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef %nla, i32 noundef 8) #8
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %conv = trunc i64 %2 to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv) #8
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_tunnel_get_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2tp_session_notify(ptr nocapture noundef readonly %info, ptr noundef %session, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call1 = tail call fastcc i32 @l2tp_nl_session_send(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, i32 noundef 4, ptr noundef %session, i8 noundef zeroext %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @genlmsg_multicast_allns(ptr noundef nonnull @l2tp_nl_family, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call3)
  %cmp4 = icmp eq i32 %call3, -3
  %spec.store.select = select i1 %cmp4, i32 0, i32 %call3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.then2 ], [ %call1, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_dec_refcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2tp_nl_session_send(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, ptr noundef %session, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %tmp.i245 = alloca i64, align 8
  %tmp.i243 = alloca i64, align 8
  %tmp.i241 = alloca i64, align 8
  %tmp.i239 = alloca i64, align 8
  %tmp.i237 = alloca i64, align 8
  %tmp.i235 = alloca i64, align 8
  %tmp.i233 = alloca i64, align 8
  %tmp.i231 = alloca i64, align 8
  %tmp.i229 = alloca i64, align 8
  %tmp.i227 = alloca i64, align 8
  %tmp.i225 = alloca i8, align 1
  %tmp.i223 = alloca i8, align 1
  %tmp.i221 = alloca i8, align 1
  %tmp.i219 = alloca i8, align 1
  %tmp.i217 = alloca i16, align 2
  %tmp.i215 = alloca i32, align 4
  %tmp.i213 = alloca i32, align 4
  %tmp.i211 = alloca i32, align 4
  %tmp.i209 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel1 = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 2
  %0 = ptrtoint ptr %tunnel1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tunnel1, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @l2tp_nl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tunnel_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %session_id = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 3
  %5 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %session_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i209) #8
  %7 = ptrtoint ptr %tmp.i209 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i209, align 4
  %call.i210 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i209) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i209) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool5.not = icmp eq i32 %call.i210, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %peer_tunnel_id = getelementptr inbounds %struct.l2tp_tunnel, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %peer_tunnel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peer_tunnel_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i211) #8
  %10 = ptrtoint ptr %tmp.i211 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i211, align 4
  %call.i212 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i211) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i211) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool8.not = icmp eq i32 %call.i212, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.if.then.i_crit_edge

lor.lhs.false6.if.then.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %peer_session_id = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 4
  %11 = ptrtoint ptr %peer_session_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peer_session_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i213) #8
  %13 = ptrtoint ptr %tmp.i213 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i213, align 4
  %call.i214 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i213) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i213) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool11.not = icmp eq i32 %call.i214, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.if.then.i_crit_edge

lor.lhs.false9.if.then.i_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i215) #8
  %14 = ptrtoint ptr %tmp.i215 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tmp.i215, align 4
  %call.i216 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i215) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i215) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool14.not = icmp eq i32 %call.i216, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false12.if.then.i_crit_edge

lor.lhs.false12.if.then.i_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %pwtype = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 26
  %15 = ptrtoint ptr %pwtype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwtype, align 4
  %conv = trunc i32 %16 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i217) #8
  %17 = ptrtoint ptr %tmp.i217 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %tmp.i217, align 2
  %call.i218 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i217) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i217) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool17.not = icmp eq i32 %call.i218, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false15.if.then.i_crit_edge

lor.lhs.false15.if.then.i_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end19:                                         ; preds = %lor.lhs.false15
  %ifname = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 22
  %18 = ptrtoint ptr %ifname to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ifname, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %if.end19.lor.lhs.false25_crit_edge, label %land.lhs.true

if.end19.lor.lhs.false25_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false25

land.lhs.true:                                    ; preds = %if.end19
  %call23 = call fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %ifname)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true.lor.lhs.false25_crit_edge, label %land.lhs.true.if.then.i_crit_edge

land.lhs.true.if.then.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.lor.lhs.false25_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true.lor.lhs.false25_crit_edge, %if.end19.lor.lhs.false25_crit_edge
  %cookie_len = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 6
  %20 = ptrtoint ptr %cookie_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cookie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %lor.lhs.false25.lor.lhs.false32_crit_edge, label %land.lhs.true27

lor.lhs.false25.lor.lhs.false32_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false32

land.lhs.true27:                                  ; preds = %lor.lhs.false25
  %cookie = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 5
  %call30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef %21, ptr noundef %cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true27.lor.lhs.false32_crit_edge, label %land.lhs.true27.if.then.i_crit_edge

land.lhs.true27.if.then.i_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true27.lor.lhs.false32_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true27.lor.lhs.false32_crit_edge, %lor.lhs.false25.lor.lhs.false32_crit_edge
  %peer_cookie_len = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 8
  %22 = ptrtoint ptr %peer_cookie_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %peer_cookie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %lor.lhs.false32.lor.lhs.false39_crit_edge, label %land.lhs.true34

lor.lhs.false32.lor.lhs.false39_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false39

land.lhs.true34:                                  ; preds = %lor.lhs.false32
  %peer_cookie = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 7
  %call37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef %23, ptr noundef %peer_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true34.lor.lhs.false39_crit_edge, label %land.lhs.true34.if.then.i_crit_edge

land.lhs.true34.if.then.i_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true34.lor.lhs.false39_crit_edge:        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %land.lhs.true34.lor.lhs.false39_crit_edge, %lor.lhs.false32.lor.lhs.false39_crit_edge
  %recv_seq = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 23
  %24 = ptrtoint ptr %recv_seq to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %recv_seq, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i219) #8
  %25 = ptrtoint ptr %tmp.i219 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.lshr, ptr %tmp.i219, align 1
  %call.i220 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 1, ptr noundef nonnull %tmp.i219) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool42.not = icmp eq i32 %call.i220, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false39.if.then.i_crit_edge

lor.lhs.false39.if.then.i_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %26 = ptrtoint ptr %recv_seq to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load44 = load i8, ptr %recv_seq, align 4
  %bf.lshr45 = lshr i8 %bf.load44, 6
  %bf.clear = and i8 %bf.lshr45, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i221) #8
  %27 = ptrtoint ptr %tmp.i221 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear, ptr %tmp.i221, align 1
  %call.i222 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i221) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i221) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool49.not = icmp eq i32 %call.i222, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %lor.lhs.false43.if.then.i_crit_edge

lor.lhs.false43.if.then.i_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false50:                                  ; preds = %lor.lhs.false43
  %28 = ptrtoint ptr %recv_seq to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load51 = load i8, ptr %recv_seq, align 4
  %bf.lshr52 = lshr i8 %bf.load51, 5
  %bf.clear53 = and i8 %bf.lshr52, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i223) #8
  %29 = ptrtoint ptr %tmp.i223 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.clear53, ptr %tmp.i223, align 1
  %call.i224 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 1, ptr noundef nonnull %tmp.i223) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i223) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool57.not = icmp eq i32 %call.i224, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false50.if.then.i_crit_edge

lor.lhs.false50.if.then.i_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false58:                                  ; preds = %lor.lhs.false50
  %sock.i = getelementptr inbounds %struct.l2tp_tunnel, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %lor.lhs.false58.lor.lhs.false64_crit_edge, label %land.rhs.i

lor.lhs.false58.lor.lhs.false64_crit_edge:        ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false64

land.rhs.i:                                       ; preds = %lor.lhs.false58
  %sk_policy.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %sk_policy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %sk_policy.i, align 4
  %tobool2.not.i = icmp eq ptr %33, null
  br i1 %tobool2.not.i, label %l2tp_tunnel_uses_xfrm.exit, label %land.rhs.i.land.lhs.true61_crit_edge

land.rhs.i.land.lhs.true61_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true61

l2tp_tunnel_uses_xfrm.exit:                       ; preds = %land.rhs.i
  %arrayidx8.i = getelementptr %struct.sock, ptr %31, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx8.i, align 4
  %tobool10.i.not = icmp eq ptr %35, null
  br i1 %tobool10.i.not, label %l2tp_tunnel_uses_xfrm.exit.lor.lhs.false64_crit_edge, label %l2tp_tunnel_uses_xfrm.exit.land.lhs.true61_crit_edge

l2tp_tunnel_uses_xfrm.exit.land.lhs.true61_crit_edge: ; preds = %l2tp_tunnel_uses_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true61

l2tp_tunnel_uses_xfrm.exit.lor.lhs.false64_crit_edge: ; preds = %l2tp_tunnel_uses_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false64

land.lhs.true61:                                  ; preds = %l2tp_tunnel_uses_xfrm.exit.land.lhs.true61_crit_edge, %land.rhs.i.land.lhs.true61_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i225) #8
  %36 = ptrtoint ptr %tmp.i225 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %tmp.i225, align 1
  %call.i226 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i225) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i225) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool63.not = icmp eq i32 %call.i226, 0
  br i1 %tobool63.not, label %land.lhs.true61.lor.lhs.false64_crit_edge, label %land.lhs.true61.if.then.i_crit_edge

land.lhs.true61.if.then.i_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true61.lor.lhs.false64_crit_edge:        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true61.lor.lhs.false64_crit_edge, %l2tp_tunnel_uses_xfrm.exit.lor.lhs.false64_crit_edge, %lor.lhs.false58.lor.lhs.false64_crit_edge
  %reorder_timeout = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 24
  %37 = ptrtoint ptr %reorder_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reorder_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool65.not = icmp eq i32 %38, 0
  br i1 %tobool65.not, label %lor.lhs.false64.if.end71_crit_edge, label %land.lhs.true66

lor.lhs.false64.if.end71_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true66:                                  ; preds = %lor.lhs.false64
  %call68 = call fastcc i32 @nla_put_msecs(ptr noundef %skb, i32 noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true66.if.end71_crit_edge, label %land.lhs.true66.if.then.i_crit_edge

land.lhs.true66.if.then.i_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true66.if.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true66.if.end71_crit_edge, %lor.lhs.false64.if.end71_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 30, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool73.not251 = icmp eq ptr %40, null
  %tobool73.not = select i1 %cmp.i, i1 true, i1 %tobool73.not251
  br i1 %tobool73.not, label %if.end71.if.then.i_crit_edge, label %if.end75

if.end71.if.then.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end75:                                         ; preds = %if.end71
  %stats = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #8
  %41 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %stats, align 4
  %conv77 = sext i32 %42 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i227) #8
  %43 = ptrtoint ptr %tmp.i227 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv77, ptr %tmp.i227, align 8
  %call.i228 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i227, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i227) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool79.not = icmp eq i32 %call.i228, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.end75.if.then.i_crit_edge

if.end75.if.then.i_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false80:                                  ; preds = %if.end75
  %tx_bytes = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 1
  %call.i.i200 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_bytes, i32 noundef 4) #8
  %44 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %tx_bytes, align 4
  %conv83 = sext i32 %45 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i229) #8
  %46 = ptrtoint ptr %tmp.i229 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv83, ptr %tmp.i229, align 8
  %call.i230 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i229, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i229) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool85.not = icmp eq i32 %call.i230, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %lor.lhs.false80.if.then.i_crit_edge

lor.lhs.false80.if.then.i_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false86:                                  ; preds = %lor.lhs.false80
  %tx_errors = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 2
  %call.i.i201 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_errors, i32 noundef 4) #8
  %47 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %tx_errors, align 4
  %conv89 = sext i32 %48 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i231) #8
  %49 = ptrtoint ptr %tmp.i231 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv89, ptr %tmp.i231, align 8
  %call.i232 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i231, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i231) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool91.not = icmp eq i32 %call.i232, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %lor.lhs.false86.if.then.i_crit_edge

lor.lhs.false86.if.then.i_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %rx_packets = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 3
  %call.i.i202 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_packets, i32 noundef 4) #8
  %50 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %rx_packets, align 4
  %conv95 = sext i32 %51 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i233) #8
  %52 = ptrtoint ptr %tmp.i233 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv95, ptr %tmp.i233, align 8
  %call.i234 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i233, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i233) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool97.not = icmp eq i32 %call.i234, 0
  br i1 %tobool97.not, label %lor.lhs.false98, label %lor.lhs.false92.if.then.i_crit_edge

lor.lhs.false92.if.then.i_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false98:                                  ; preds = %lor.lhs.false92
  %rx_bytes = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 4
  %call.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_bytes, i32 noundef 4) #8
  %53 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %rx_bytes, align 4
  %conv101 = sext i32 %54 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i235) #8
  %55 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv101, ptr %tmp.i235, align 8
  %call.i236 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i235, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i235) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool103.not = icmp eq i32 %call.i236, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %lor.lhs.false98.if.then.i_crit_edge

lor.lhs.false98.if.then.i_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false104:                                 ; preds = %lor.lhs.false98
  %rx_seq_discards = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 5
  %call.i.i204 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_seq_discards, i32 noundef 4) #8
  %56 = ptrtoint ptr %rx_seq_discards to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %rx_seq_discards, align 4
  %conv107 = sext i32 %57 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i237) #8
  %58 = ptrtoint ptr %tmp.i237 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv107, ptr %tmp.i237, align 8
  %call.i238 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i237, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i237) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool109.not = icmp eq i32 %call.i238, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %lor.lhs.false104.if.then.i_crit_edge

lor.lhs.false104.if.then.i_crit_edge:             ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false110:                                 ; preds = %lor.lhs.false104
  %rx_cookie_discards = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 8
  %call.i.i205 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_cookie_discards, i32 noundef 4) #8
  %59 = ptrtoint ptr %rx_cookie_discards to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %rx_cookie_discards, align 4
  %conv113 = sext i32 %60 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i239) #8
  %61 = ptrtoint ptr %tmp.i239 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv113, ptr %tmp.i239, align 8
  %call.i240 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %tmp.i239, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i239) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool115.not = icmp eq i32 %call.i240, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %lor.lhs.false110.if.then.i_crit_edge

lor.lhs.false110.if.then.i_crit_edge:             ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false116:                                 ; preds = %lor.lhs.false110
  %rx_oos_packets = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 6
  %call.i.i206 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_oos_packets, i32 noundef 4) #8
  %62 = ptrtoint ptr %rx_oos_packets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %rx_oos_packets, align 4
  %conv119 = sext i32 %63 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i241) #8
  %64 = ptrtoint ptr %tmp.i241 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv119, ptr %tmp.i241, align 8
  %call.i242 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i241, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i241) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool121.not = icmp eq i32 %call.i242, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %lor.lhs.false116.if.then.i_crit_edge

lor.lhs.false116.if.then.i_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false122:                                 ; preds = %lor.lhs.false116
  %rx_errors = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 7
  %call.i.i207 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_errors, i32 noundef 4) #8
  %65 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %rx_errors, align 4
  %conv125 = sext i32 %66 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i243) #8
  %67 = ptrtoint ptr %tmp.i243 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv125, ptr %tmp.i243, align 8
  %call.i244 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i243, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i243) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool127.not = icmp eq i32 %call.i244, 0
  br i1 %tobool127.not, label %lor.lhs.false128, label %lor.lhs.false122.if.then.i_crit_edge

lor.lhs.false122.if.then.i_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false128:                                 ; preds = %lor.lhs.false122
  %rx_invalid = getelementptr inbounds %struct.l2tp_session, ptr %session, i32 0, i32 27, i32 9
  %call.i.i208 = call zeroext i1 @__kasan_check_read(ptr noundef %rx_invalid, i32 noundef 4) #8
  %68 = ptrtoint ptr %rx_invalid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %rx_invalid, align 4
  %conv131 = sext i32 %69 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i245) #8
  %70 = ptrtoint ptr %tmp.i245 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv131, ptr %tmp.i245, align 8
  %call.i246 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i245, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i245) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool133.not = icmp eq i32 %call.i246, 0
  br i1 %tobool133.not, label %if.end135, label %lor.lhs.false128.if.then.i_crit_edge

lor.lhs.false128.if.then.i_crit_edge:             ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end135:                                        ; preds = %lor.lhs.false128
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %73 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %40, align 2
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %74 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %75 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false128.if.then.i_crit_edge, %lor.lhs.false122.if.then.i_crit_edge, %lor.lhs.false116.if.then.i_crit_edge, %lor.lhs.false110.if.then.i_crit_edge, %lor.lhs.false104.if.then.i_crit_edge, %lor.lhs.false98.if.then.i_crit_edge, %lor.lhs.false92.if.then.i_crit_edge, %lor.lhs.false86.if.then.i_crit_edge, %lor.lhs.false80.if.then.i_crit_edge, %if.end75.if.then.i_crit_edge, %if.end71.if.then.i_crit_edge, %land.lhs.true66.if.then.i_crit_edge, %land.lhs.true61.if.then.i_crit_edge, %lor.lhs.false50.if.then.i_crit_edge, %lor.lhs.false43.if.then.i_crit_edge, %lor.lhs.false39.if.then.i_crit_edge, %land.lhs.true34.if.then.i_crit_edge, %land.lhs.true27.if.then.i_crit_edge, %land.lhs.true.if.then.i_crit_edge, %lor.lhs.false15.if.then.i_crit_edge, %lor.lhs.false12.if.then.i_crit_edge, %lor.lhs.false9.if.then.i_crit_edge, %lor.lhs.false6.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i249 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i249, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %77, %add.ptr1.i249
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !53

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %78 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i249 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end135, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end135 ], [ -90, %entry.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ], [ -1, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %str) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strlen(ptr noundef %str) #12
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef %add, ptr noundef %str) #8
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_msecs(ptr noundef %skb, i32 noundef %njiffies) unnamed_addr #5 align 64 {
entry:
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %njiffies) #8
  %conv = zext i32 %call to i64
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %tmp, align 8
  %call1 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 22, i32 noundef 8, ptr noundef nonnull %tmp, i32 noundef 35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get_by_ifname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2tp_session_set_header_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2tp_session_get_nth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__ksymtab_l2tp_nl_register_ops, !1, !"__ksymtab_l2tp_nl_register_ops", i1 false, i1 false}
!1 = !{!"../net/l2tp/l2tp_netlink.c", i32 1017, i32 1}
!2 = !{ptr @__ksymtab_l2tp_nl_unregister_ops, !3, !"__ksymtab_l2tp_nl_unregister_ops", i1 false, i1 false}
!3 = !{!"../net/l2tp/l2tp_netlink.c", i32 1027, i32 1}
!4 = !{ptr @__initcall__kmod_l2tp_netlink__513_1040_l2tp_nl_init6, !5, !"__initcall__kmod_l2tp_netlink__513_1040_l2tp_nl_init6", i1 false, i1 false}
!5 = !{!"../net/l2tp/l2tp_netlink.c", i32 1040, i32 1}
!6 = !{ptr @__exitcall_l2tp_nl_cleanup, !7, !"__exitcall_l2tp_nl_cleanup", i1 false, i1 false}
!7 = !{!"../net/l2tp/l2tp_netlink.c", i32 1041, i32 1}
!8 = !{ptr @__UNIQUE_ID_author514, !9, !"__UNIQUE_ID_author514", i1 false, i1 false}
!9 = !{!"../net/l2tp/l2tp_netlink.c", i32 1043, i32 1}
!10 = !{ptr @__UNIQUE_ID_description515, !11, !"__UNIQUE_ID_description515", i1 false, i1 false}
!11 = !{!"../net/l2tp/l2tp_netlink.c", i32 1044, i32 1}
!12 = !{ptr @__UNIQUE_ID_file516, !13, !"__UNIQUE_ID_file516", i1 false, i1 false}
!13 = !{!"../net/l2tp/l2tp_netlink.c", i32 1045, i32 1}
!14 = !{ptr @__UNIQUE_ID_license517, !13, !"__UNIQUE_ID_license517", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version518, !16, !"__UNIQUE_ID_version518", i1 false, i1 false}
!16 = !{!"../net/l2tp/l2tp_netlink.c", i32 1046, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias519, !22, !"__UNIQUE_ID_alias519", i1 false, i1 false}
!22 = !{!"../net/l2tp/l2tp_netlink.c", i32 1047, i32 1}
!23 = !{ptr @l2tp_nl_cmd_ops, !24, !"l2tp_nl_cmd_ops", i1 false, i1 false}
!24 = !{!"../net/l2tp/l2tp_netlink.c", i32 44, i32 38}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/l2tp/l2tp_netlink.c", i32 1031, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @l2tp_nl_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @l2tp_nl_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @l2tp_nl_family, !32, !"l2tp_nl_family", i1 false, i1 false}
!32 = !{!"../net/l2tp/l2tp_netlink.c", i32 982, i32 27}
!33 = !{ptr @l2tp_nl_policy, !34, !"l2tp_nl_policy", i1 false, i1 false}
!34 = !{!"../net/l2tp/l2tp_netlink.c", i32 872, i32 32}
!35 = !{ptr @l2tp_nl_ops, !36, !"l2tp_nl_ops", i1 false, i1 false}
!36 = !{!"../net/l2tp/l2tp_netlink.c", i32 923, i32 36}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/netlink.h", i32 991, i32 3}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/l2tp/l2tp_netlink.c", i32 623, i32 3}
!41 = !{ptr @l2tp_multicast_group, !42, !"l2tp_multicast_group", i1 false, i1 false}
!42 = !{!"../net/l2tp/l2tp_netlink.c", i32 31, i32 42}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{!"branch_weights", i32 1, i32 2000}
