; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_proto_gre.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_proto_gre.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_ct_gre_keymap_add\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_gre_keymap_add\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_gre_keymap_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_gre_keymap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_gre_keymap_add\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_gre_keymap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_gre_keymap_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_gre_keymap_destroy\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_gre_keymap_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_gre_keymap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_gre_keymap_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_gre_keymap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.54 }
%union.anon.54 = type { i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.172, ptr }
%struct.anon.172 = type { ptr, ptr, i16, i16, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.135, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
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
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.nf_ct_pptp_master = type { i32, i32, i16, i16, [2 x ptr] }
%struct.nf_ct_gre_keymap = type { %struct.list_head, %struct.nf_conntrack_tuple, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.pptp_gre_header = type { %struct.gre_base_hdr, i16, i16, i32, i32 }
%struct.gre_base_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.34, %union.anon.37, %union.anon.38, [48 x i8], %union.anon.39, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.41, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, ptr, %union.anon.36 }
%union.anon.36 = type { ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.43, i32, i32, i32, i16, i16, %union.anon.45, i32, %union.anon.46, %union.anon.47, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.43 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i16 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }

@nf_ct_gre_keymap_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/netfilter/nf_conntrack_proto_gre.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_ct_gre_keymap_add\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"trying to override keymap_%s for ct %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reply\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"orig\00", [27 x i8] zeroinitializer }, align 32
@nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.7, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adding new entry %p: \00", [42 x i8] zeroinitializer }, align 32
@keymap_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_gre_keymap_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_gre_keymap_add = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_gre_keymap_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_gre_keymap_add to i32), ptr @__kstrtab_nf_ct_gre_keymap_add, ptr @__kstrtabns_nf_ct_gre_keymap_add }, section "___ksymtab_gpl+nf_ct_gre_keymap_add", align 4
@nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_ct_gre_keymap_destroy\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"entering for ct %p\0A\00", [44 x i8] zeroinitializer }, align 32
@nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str, ptr @.str.10, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"removing %p from list\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_gre_keymap_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_gre_keymap_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_gre_keymap_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_gre_keymap_destroy to i32), ptr @__kstrtab_nf_ct_gre_keymap_destroy, ptr @__kstrtabns_nf_ct_gre_keymap_destroy }, section "___ksymtab_gpl+nf_ct_gre_keymap_destroy", align 4
@gre_pkt_to_tuple.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gre_pkt_to_tuple\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported GRE proto(0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@nf_ct_port_nla_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@gre_timeout_nla_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.54 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nf_conntrack_l4proto_gre = dso_local constant { %struct.nf_conntrack_l4proto, [44 x i8] } { %struct.nf_conntrack_l4proto { i8 47, i8 0, i16 0, ptr null, ptr null, ptr null, ptr @nf_ct_port_tuple_to_nlattr, ptr @nf_ct_port_nlattr_tuple_size, ptr @nf_ct_port_nlattr_to_tuple, ptr @nf_ct_port_nla_policy, %struct.anon.172 { ptr @gre_timeout_nlattr_to_obj, ptr @gre_timeout_obj_to_nlattr, i16 8, i16 2, ptr @gre_timeout_nla_policy }, ptr @gre_print_conntrack }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"keymap_lock\00", [20 x i8] zeroinitializer }, align 32
@gre_keymap_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gre_keymap_lookup.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gre_keymap_lookup\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lookup src key 0x%x for \00", [39 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout=%u, stream_timeout=%u \00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 100, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 104, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 115, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"keymap_lock\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 132, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 137, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 175, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"gre_timeout_nla_policy\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 280, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"nf_conntrack_l4proto_gre\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 297, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 51, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 82, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 38, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [42 x i8] c"../net/netfilter/nf_conntrack_proto_gre.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 190, i32 16 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_nf_ct_gre_keymap_add, ptr @__ksymtab_nf_ct_gre_keymap_destroy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @keymap_lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @gre_timeout_nla_policy, ptr @nf_conntrack_l4proto_gre, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_timeout_nla_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_l4proto_gre to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_gre_keymap_add(ptr noundef %ct, i32 noundef %dir, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %gre.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 7
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %arrayidx = getelementptr %struct.nf_ct_pptp_master, ptr %data.i, i32 0, i32 4, i32 %dir
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end41, label %do.body

do.body:                                          ; preds = %nfct_help_data.exit
  %call3 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b86 = load i1, ptr @nf_ct_gre_keymap_add.__warned, align 1
  br i1 %.b86, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_ct_gre_keymap_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 100, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %8 = ptrtoint ptr %gre.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %km.094 = load volatile ptr, ptr %gre.i, align 4
  %cmp.not95 = icmp eq ptr %km.094, %gre.i
  br i1 %cmp.not95, label %do.end.do.body30_crit_edge, label %for.body.lr.ph

do.end.do.body30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

for.body.lr.ph:                                   ; preds = %do.end
  %l3num2.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %l3num2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %l3num2.i, align 2
  %dst12.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1
  %protonum21.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 2
  %u29.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %km.096 = phi ptr [ %km.094, %for.body.lr.ph ], [ %km.0, %for.inc.for.body_crit_edge ]
  %l3num.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.096, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %10)
  %cmp.i = icmp eq i16 %12, %10
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %tuple.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.096, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tuple.i, ptr noundef dereferenceable(16) %t, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %dst.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.096, i32 0, i32 1, i32 1
  %bcmp41.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst.i, ptr noundef dereferenceable(16) %dst12.i, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp41.i)
  %tobool15.not.i = icmp eq i32 %bcmp41.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true16.i, label %land.lhs.true9.i.for.inc_crit_edge

land.lhs.true9.i.for.inc_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true16.i:                                ; preds = %land.lhs.true9.i
  %protonum.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.096, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protonum.i, align 2
  %15 = ptrtoint ptr %protonum21.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protonum21.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp23.i = icmp eq i8 %14, %16
  br i1 %cmp23.i, label %gre_key_cmpfn.exit, label %land.lhs.true16.i.for.inc_crit_edge

land.lhs.true16.i.for.inc_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

gre_key_cmpfn.exit:                               ; preds = %land.lhs.true16.i
  %u.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.096, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %u.i, align 4
  %19 = ptrtoint ptr %u29.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %u29.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp31.i.not = icmp eq i16 %18, %20
  br i1 %cmp31.i.not, label %land.lhs.true17, label %gre_key_cmpfn.exit.for.inc_crit_edge

gre_key_cmpfn.exit.for.inc_crit_edge:             ; preds = %gre_key_cmpfn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true17:                                  ; preds = %gre_key_cmpfn.exit
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %cmp18 = icmp eq ptr %km.096, %22
  br i1 %cmp18, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %gre_key_cmpfn.exit.for.inc_crit_edge, %land.lhs.true16.i.for.inc_crit_edge, %land.lhs.true9.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %km.096 to i32
  call void @__asan_load4_noabort(i32 %23)
  %km.0 = load volatile ptr, ptr %km.096, align 4
  %cmp.not = icmp eq ptr %km.0, %gre.i
  br i1 %cmp.not, label %for.inc.do.body30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.body30:                                        ; preds = %for.inc.do.body30_crit_edge, %do.end.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_gre_keymap_add, %if.then36)) #7
          to label %cleanup [label %if.then36], !srcloc !59

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp37 = icmp eq i32 %dir, 1
  %cond = select i1 %cmp37, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, ptr noundef %ct) #7
  br label %cleanup

if.end41:                                         ; preds = %nfct_help_data.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2592, i32 noundef 56) #11
  %tobool43.not = icmp eq ptr %call7.i, null
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %if.end45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %tuple = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %call7.i, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %tuple, ptr %t, i32 40)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_gre_keymap_add, %if.then58)) #7
          to label %do.end61 [label %if.then58], !srcloc !59

if.then58:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %if.end45
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @keymap_lock) #7
  %prev.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 10, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %28, ptr noundef %gre.i) #7
  br i1 %call.i.i, label %if.end.i.i90, label %do.end61.list_add_tail.exit_crit_edge

do.end61.list_add_tail.exit_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i90:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i, ptr %prev.i, align 4
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %gre.i, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i90, %do.end61.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @keymap_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end41.cleanup_crit_edge, %if.then36, %do.body30, %land.lhs.true17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -17, %if.then36 ], [ -12, %if.end41.cleanup_crit_edge ], [ -17, %do.body30 ], [ 0, %land.lhs.true17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_gre_keymap_destroy(ptr noundef %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_gre_keymap_destroy, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.9, ptr noundef %ct) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %nfct_help_data.exit
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @keymap_lock) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %cmp = phi i1 [ true, %do.end ], [ false, %for.inc.for.body_crit_edge ]
  %dir.058 = phi i32 [ 0, %do.end ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nf_ct_pptp_master, ptr %data.i, i32 0, i32 4, i32 %dir.058
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %do.body6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body6:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_gre_keymap_destroy, %if.then18)) #7
          to label %do.end23 [label %if.then18], !srcloc !59

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.10, ptr noundef %7) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #7
  br i1 %call.i.i, label %if.end.i.i55, label %do.end23.list_del_rcu.exit_crit_edge

do.end23.list_del_rcu.exit_crit_edge:             ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i55:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i55, %do.end23.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %list_del_rcu.exit.if.end34_crit_edge, label %do.end33

list_del_rcu.exit.if.end34_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end33:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %18, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 48 to ptr)) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %list_del_rcu.exit.if.end34_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @keymap_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gre_pkt_to_tuple(ptr noundef %skb, i32 noundef %dataoff, ptr noundef %net, ptr nocapture noundef %tuple) local_unnamed_addr #0 align 64 {
entry:
  %_pgrehdr = alloca %struct.pptp_gre_header, align 2
  %_grehdr = alloca %struct.gre_base_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_pgrehdr) #7
  %0 = call ptr @memset(ptr %_pgrehdr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_grehdr) #7
  %1 = ptrtoint ptr %_grehdr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_grehdr, align 2, !annotation !60
  %2 = getelementptr inbounds %struct.gre_base_hdr, ptr %_grehdr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !60
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %8 = add i32 %7, %dataoff
  %sub.i4.i = sub i32 %5, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !61

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_grehdr, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %dataoff
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i60 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_grehdr, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i.i60 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %retval.0.i.i60, align 1
  %13 = and i16 %12, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp.not = icmp eq i16 %13, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %u, align 4
  %u2 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %u2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %u2, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %20 = add i32 %19, %dataoff
  %sub.i4.i42 = sub i32 %17, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i42)
  %cmp.not.i.i43 = icmp slt i32 %sub.i4.i42, 8
  br i1 %cmp.not.i.i43, label %if.end.i.i48, label %skb_header_pointer.exit54, !prof !61

if.end.i.i48:                                     ; preds = %if.end
  %tobool2.not.i.i47 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i47, label %if.end.i.i48.cleanup_crit_edge, label %lor.lhs.false.i.i52

if.end.i.i48.cleanup_crit_edge:                   ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i.i52:                              ; preds = %if.end.i.i48
  %call.i.i49 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %dataoff, ptr noundef nonnull %_pgrehdr, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp3.i.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp3.i.i50, label %lor.lhs.false.i.i52.cleanup_crit_edge, label %lor.lhs.false.i.i52.if.end6_crit_edge

lor.lhs.false.i.i52.if.end6_crit_edge:            ; preds = %lor.lhs.false.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

lor.lhs.false.i.i52.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skb_header_pointer.exit54:                        ; preds = %if.end
  %data.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i44, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %22, i32 %dataoff
  %tobool4.not = icmp eq ptr %add.ptr.i.i45, null
  br i1 %tobool4.not, label %skb_header_pointer.exit54.cleanup_crit_edge, label %skb_header_pointer.exit54.if.end6_crit_edge

skb_header_pointer.exit54.if.end6_crit_edge:      ; preds = %skb_header_pointer.exit54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

skb_header_pointer.exit54.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %skb_header_pointer.exit54.if.end6_crit_edge, %lor.lhs.false.i.i52.if.end6_crit_edge
  %retval.0.i.i5367 = phi ptr [ %add.ptr.i.i45, %skb_header_pointer.exit54.if.end6_crit_edge ], [ %_pgrehdr, %lor.lhs.false.i.i52.if.end6_crit_edge ]
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %retval.0.i.i60, i32 0, i32 1
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30709, i16 %24)
  %cmp8.not = icmp eq i16 %24, -30709
  br i1 %cmp8.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gre_pkt_to_tuple.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gre_pkt_to_tuple, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !59

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %protocol, align 1
  %conv17 = zext i16 %26 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gre_pkt_to_tuple.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.12, i32 noundef %conv17) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call_id = getelementptr inbounds %struct.pptp_gre_header, ptr %retval.0.i.i5367, i32 0, i32 2
  %27 = ptrtoint ptr %call_id to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %call_id, align 1
  %u21 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %u21 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %u21, align 4
  %call22 = call fastcc zeroext i16 @gre_keymap_lookup(ptr noundef %net, ptr noundef %tuple)
  %u24 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %30 = ptrtoint ptr %u24 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call22, ptr %u24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15, %do.body, %skb_header_pointer.exit54.cleanup_crit_edge, %lor.lhs.false.i.i52.cleanup_crit_edge, %if.end.i.i48.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.end19 ], [ true, %skb_header_pointer.exit54.cleanup_crit_edge ], [ false, %if.then15 ], [ false, %do.body ], [ true, %if.end.i.i48.cleanup_crit_edge ], [ true, %lor.lhs.false.i.i52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_grehdr) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_pgrehdr) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @gre_keymap_lookup(ptr noundef %net, ptr nocapture noundef readonly %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gre.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7
  %call1 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @gre_keymap_lookup.__warned, align 1
  br i1 %.b41, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @gre_keymap_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %l3num2.i = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 2
  %dst12.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1
  %protonum21.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 2
  %u29.i = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  br label %for.cond

for.cond:                                         ; preds = %gre_key_cmpfn.exit.for.cond_crit_edge, %do.end
  %km.0.in = phi ptr [ %gre.i, %do.end ], [ %km.0, %gre_key_cmpfn.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %km.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %km.0 = load volatile ptr, ptr %km.0.in, align 4
  %cmp.not = icmp eq ptr %km.0, %gre.i
  br i1 %cmp.not, label %for.cond.do.body25_crit_edge, label %for.body

for.cond.do.body25_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

for.body:                                         ; preds = %for.cond
  %l3num.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %l3num.i, align 2
  %3 = ptrtoint ptr %l3num2.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %l3num2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp.i = icmp eq i16 %2, %4
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.gre_key_cmpfn.exit_crit_edge

for.body.gre_key_cmpfn.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %gre_key_cmpfn.exit

land.lhs.true.i:                                  ; preds = %for.body
  %tuple.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %tuple.i, ptr noundef dereferenceable(16) %t, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true9.i, label %land.lhs.true.i.gre_key_cmpfn.exit_crit_edge

land.lhs.true.i.gre_key_cmpfn.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gre_key_cmpfn.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %dst.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1, i32 1
  %bcmp41.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst.i, ptr noundef dereferenceable(16) %dst12.i, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp41.i)
  %tobool15.not.i = icmp eq i32 %bcmp41.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true16.i, label %land.lhs.true9.i.gre_key_cmpfn.exit_crit_edge

land.lhs.true9.i.gre_key_cmpfn.exit_crit_edge:    ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gre_key_cmpfn.exit

land.lhs.true16.i:                                ; preds = %land.lhs.true9.i
  %protonum.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %protonum.i, align 2
  %7 = ptrtoint ptr %protonum21.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %protonum21.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp23.i = icmp eq i8 %6, %8
  br i1 %cmp23.i, label %land.rhs.i, label %land.lhs.true16.i.gre_key_cmpfn.exit_crit_edge

land.lhs.true16.i.gre_key_cmpfn.exit_crit_edge:   ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gre_key_cmpfn.exit

land.rhs.i:                                       ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %u.i, align 4
  %11 = ptrtoint ptr %u29.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %u29.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp31.i = icmp eq i16 %10, %12
  %phi.cast.i = zext i1 %cmp31.i to i32
  br label %gre_key_cmpfn.exit

gre_key_cmpfn.exit:                               ; preds = %land.rhs.i, %land.lhs.true16.i.gre_key_cmpfn.exit_crit_edge, %land.lhs.true9.i.gre_key_cmpfn.exit_crit_edge, %land.lhs.true.i.gre_key_cmpfn.exit_crit_edge, %for.body.gre_key_cmpfn.exit_crit_edge
  %13 = phi i32 [ 0, %land.lhs.true16.i.gre_key_cmpfn.exit_crit_edge ], [ 0, %land.lhs.true9.i.gre_key_cmpfn.exit_crit_edge ], [ 0, %land.lhs.true.i.gre_key_cmpfn.exit_crit_edge ], [ 0, %for.body.gre_key_cmpfn.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %gre_key_cmpfn.exit.for.cond_crit_edge, label %if.then13

gre_key_cmpfn.exit.for.cond_crit_edge:            ; preds = %gre_key_cmpfn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then13:                                        ; preds = %gre_key_cmpfn.exit
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr inbounds %struct.nf_ct_gre_keymap, ptr %km.0, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u, align 4
  br label %do.body25

do.body25:                                        ; preds = %if.then13, %for.cond.do.body25_crit_edge
  %key.0 = phi i16 [ %15, %if.then13 ], [ 0, %for.cond.do.body25_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gre_keymap_lookup.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gre_keymap_lookup, %if.then31)) #7
          to label %do.end34 [label %if.then31], !srcloc !59

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %key.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gre_keymap_lookup.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.15, i32 noundef %conv) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body25
  ret i16 %key.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_gre_packet(ptr noundef %ct, ptr noundef %skb, i32 noundef %dataoff, i32 noundef %ctinfo, ptr nocapture noundef readnone %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.if.then3_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.then
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.then3_crit_edge, label %nf_ct_timeout_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.then3_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

nf_ct_timeout_find.exit.i:                        ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %6 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %nf_ct_timeout_find.exit.i.if.then3_crit_edge, label %if.then.i

nf_ct_timeout_find.exit.i.if.then3_crit_edge:     ; preds = %nf_ct_timeout_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then.i:                                        ; preds = %nf_ct_timeout_find.exit.i
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.nf_ct_timeout_data.exit.i_crit_edge

if.then.i.nf_ct_timeout_data.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_timeout_data.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 38, ptr noundef nonnull @.str.17) #7
  br label %nf_ct_timeout_data.exit.i

nf_ct_timeout_data.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true5.i.i.nf_ct_timeout_data.exit.i_crit_edge, %land.lhs.true.i.i.nf_ct_timeout_data.exit.i_crit_edge, %if.then.i.nf_ct_timeout_data.exit.i_crit_edge
  %cmp.i.i = icmp eq ptr %8, null
  %data.i.i = getelementptr inbounds %struct.nf_ct_timeout, ptr %8, i32 0, i32 2
  %tobool2.not = icmp eq ptr %data.i.i, null
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %nf_ct_timeout_data.exit.i.if.then3_crit_edge, label %nf_ct_timeout_data.exit.i.if.end_crit_edge

nf_ct_timeout_data.exit.i.if.end_crit_edge:       ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nf_ct_timeout_data.exit.i.if.then3_crit_edge:     ; preds = %nf_ct_timeout_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %nf_ct_timeout_data.exit.i.if.then3_crit_edge, %nf_ct_timeout_find.exit.i.if.then3_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %9 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ct_net.i, align 4
  %timeouts.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 40, i32 10, i32 7, i32 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %nf_ct_timeout_data.exit.i.if.end_crit_edge
  %timeouts.0 = phi ptr [ %timeouts.i, %if.then3 ], [ %data.i.i, %nf_ct_timeout_data.exit.i.if.end_crit_edge ]
  %arrayidx = getelementptr i32, ptr %timeouts.0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %proto, align 8
  %14 = ptrtoint ptr %timeouts.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeouts.0, align 4
  %timeout = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %timeout, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 8
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %proto11 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %19 = ptrtoint ptr %proto11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %proto11, align 8
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %20, i1 noundef zeroext true) #7
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then16:                                        ; preds = %if.then10
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %21 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 40, i32 9
  %23 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i36 = icmp eq ptr %24, null
  br i1 %tobool.not.i36, label %if.then16.if.end20_crit_edge, label %if.end.i

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i:                                         ; preds = %if.then16
  %ext.i.i.i.i37 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %25 = ptrtoint ptr %ext.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext.i.i.i.i37, align 8
  %tobool.not.i.i.i.i38 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i.i38, label %if.end.i.if.end20_crit_edge, label %nf_ct_ext_exist.exit.i.i.i41

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

nf_ct_ext_exist.exit.i.i.i41:                     ; preds = %if.end.i
  %arrayidx.i.i.i.i.i39 = getelementptr [10 x i8], ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx.i.i.i.i.i39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i.i.i.i39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.i.not.i.i.i40 = icmp eq i8 %28, 0
  br i1 %tobool.i.i.not.i.i.i40, label %nf_ct_ext_exist.exit.i.i.i41.if.end20_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i41.if.end20_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i41
  %conv.i.i.i42 = zext i8 %28 to i32
  %add.ptr.i.i.i43 = getelementptr i8, ptr %26, i32 %conv.i.i.i42
  %cmp.i = icmp eq ptr %add.ptr.i.i.i43, null
  br i1 %cmp.i, label %nf_ct_ecache_find.exit.i.if.end20_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.if.end20_crit_edge:      ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef nonnull %add.ptr.i.i.i43) #7
  br label %if.end20

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %timeout19 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %29 = ptrtoint ptr %timeout19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout19, align 4
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef %ctinfo, ptr noundef %skb, i32 noundef %30, i1 noundef zeroext true) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end5.i, %nf_ct_ecache_find.exit.i.if.end20_crit_edge, %nf_ct_ext_exist.exit.i.i.i41.if.end20_crit_edge, %if.end.i.if.end20_crit_edge, %if.then16.if.end20_crit_edge, %if.then10.if.end20_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_gre_init_net(ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gre.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7
  %0 = ptrtoint ptr %gre.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %gre.i, ptr %gre.i, align 4
  %prev.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gre.i, ptr %prev.i, align 4
  %uglygep = getelementptr i8, ptr %net, i32 3128
  %2 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 12884901906000, ptr %uglygep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_tuple_to_nlattr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_tuple_size() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_port_nlattr_to_tuple(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gre_timeout_nlattr_to_obj(ptr nocapture noundef readonly %tb, ptr nocapture noundef %net, ptr noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %timeouts.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7, i32 1
  %spec.select = select i1 %tobool.not, ptr %timeouts.i, ptr %data
  %0 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeouts.i, align 4
  %2 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %spec.select, align 4
  %arrayidx5 = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %spec.select, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %entry.if.end13_crit_edge, label %if.then9

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %mul = mul i32 %9, 100
  %10 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %spec.select, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %entry.if.end13_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 2
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end13.if.end21_crit_edge, label %if.then16

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i32 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i32, align 4
  %mul19 = mul i32 %14, 100
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul19, ptr %arrayidx6, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end13.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_timeout_obj_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %div = udiv i32 %1, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %div2 = udiv i32 %4, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #7
  %5 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div2, ptr %tmp.i7, align 4
  %call.i8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool4.not = icmp eq i32 %call.i8, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gre_print_conntrack(ptr noundef %s, ptr nocapture noundef readonly %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %timeout = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %div = udiv i32 %1, 100
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proto, align 8
  %div2 = udiv i32 %3, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %div, i32 noundef %div2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !14, !16, !18, !19, !20, !22, !23, !25, !27, !28, !29, !31, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 100, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 104, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug597, !5, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 115, i32 2}
!13 = !{ptr @nf_ct_gre_keymap_add.__UNIQUE_ID_ddebug598, !12, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!14 = !{ptr @__ksymtab_nf_ct_gre_keymap_add, !15, !"__ksymtab_nf_ct_gre_keymap_add", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 124, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 132, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug599, !17, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 137, i32 4}
!22 = !{ptr @nf_ct_gre_keymap_destroy.__UNIQUE_ID_ddebug600, !21, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!23 = !{ptr @__ksymtab_nf_ct_gre_keymap_destroy, !24, !"__ksymtab_nf_ct_gre_keymap_destroy", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 146, i32 1}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 175, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gre_pkt_to_tuple.__UNIQUE_ID_ddebug602, !26, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!29 = !{ptr @nf_conntrack_l4proto_gre, !30, !"nf_conntrack_l4proto_gre", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 297, i32 35}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 51, i32 8}
!33 = !{ptr @keymap_lock, !32, !"keymap_lock", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 75, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 82, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gre_keymap_lookup.__UNIQUE_ID_ddebug594, !37, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"gre_timeouts", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 45, i32 27}
!46 = !{ptr @gre_timeout_nla_policy, !47, !"gre_timeout_nla_policy", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 280, i32 1}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_proto_gre.c", i32 190, i32 16}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148960747, i64 2148960752, i64 2148960765, i64 2148960809, i64 2148960843, i64 2148960864}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
