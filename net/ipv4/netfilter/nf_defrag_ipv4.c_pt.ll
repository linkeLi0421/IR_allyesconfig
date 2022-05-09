; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_defrag_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_defrag_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_defrag_ipv4_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_defrag_ipv4_enable\09\09\09\09"
module asm "\09.long\09__crc_nf_defrag_ipv4_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_defrag_ipv4_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_defrag_ipv4_enable\22\09\09\09\09\09"
module asm "__kstrtabns_nf_defrag_ipv4_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_defrag_ipv4_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_defrag_ipv4_disable\09\09\09\09"
module asm "\09.long\09__crc_nf_defrag_ipv4_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_defrag_ipv4_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_defrag_ipv4_disable\22\09\09\09\09\09"
module asm "__kstrtabns_nf_defrag_ipv4_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.148, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.148 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.139, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.140, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.141, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.139 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.140 = type { ptr }
%union.anon.141 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.146 }
%union.anon.146 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.173, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.165 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.165 = type { %union.nf_inet_addr, %union.anon.166, i8, i8 }
%union.anon.166 = type { i16 }
%struct.anon.173 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@defrag4_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr @defrag4_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@defrag4_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @defrag4_mutex, i64 52), ptr getelementptr (i8, ptr @defrag4_mutex, i64 52) }, ptr @defrag4_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ipv4_defrag_ops = internal constant { [2 x %struct.nf_hook_ops], [48 x i8] } { [2 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @ipv4_conntrack_defrag, ptr null, ptr null, i8 2, i8 0, i32 0, i32 -400 }, %struct.nf_hook_ops { ptr @ipv4_conntrack_defrag, ptr null, ptr null, i8 2, i8 0, i32 3, i32 -400 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_nf_defrag_ipv4_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_defrag_ipv4_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_defrag_ipv4_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_defrag_ipv4_enable to i32), ptr @__kstrtab_nf_defrag_ipv4_enable, ptr @__kstrtabns_nf_defrag_ipv4_enable }, section "___ksymtab_gpl+nf_defrag_ipv4_enable", align 4
@__kstrtab_nf_defrag_ipv4_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_defrag_ipv4_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_defrag_ipv4_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_defrag_ipv4_disable to i32), ptr @__kstrtab_nf_defrag_ipv4_disable, ptr @__kstrtabns_nf_defrag_ipv4_disable }, section "___ksymtab_gpl+nf_defrag_ipv4_disable", align 4
@__initcall__kmod_nf_defrag_ipv4__589_170_nf_defrag_init6 = internal global ptr @nf_defrag_init, section ".initcall6.init", align 4
@__exitcall_nf_defrag_fini = internal global ptr @nf_defrag_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file590 = internal constant [54 x i8] c"nf_defrag_ipv4.file=net/ipv4/netfilter/nf_defrag_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license591 = internal constant [27 x i8] c"nf_defrag_ipv4.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"defrag4_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"defrag4_mutex\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"defrag4_net_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 116, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"defrag4_mutex\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"ipv4_defrag_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 92, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [39 x i8] c"../net/ipv4/netfilter/nf_defrag_ipv4.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 23, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file590, ptr @__UNIQUE_ID_license591, ptr @__exitcall_nf_defrag_fini, ptr @__initcall__kmod_nf_defrag_ipv4__589_170_nf_defrag_init6, ptr @__ksymtab_nf_defrag_ipv4_disable, ptr @__ksymtab_nf_defrag_ipv4_enable, ptr @nf_defrag_fini, ptr @defrag4_net_ops, ptr @defrag4_mutex, ptr @ipv4_defrag_ops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defrag4_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defrag4_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv4_defrag_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_defrag_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @defrag4_net_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_defrag_ipv4_enable(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @defrag4_mutex, i32 noundef 0) #4
  %defrag_ipv4_users = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 8
  %0 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %defrag_ipv4_users, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then3 [
    i32 -1, label %entry.out_unlock_crit_edge
    i32 0, label %if.end6
  ]

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add nuw i32 %1, 1
  br label %out_unlock.sink.split

if.end6:                                          ; preds = %entry
  %call = tail call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull @ipv4_defrag_ops, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.end6.out_unlock.sink.split_crit_edge, label %if.end6.out_unlock_crit_edge

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock

if.end6.out_unlock.sink.split_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock.sink.split

out_unlock.sink.split:                            ; preds = %if.end6.out_unlock.sink.split_crit_edge, %if.then3
  %.sink = phi i32 [ %inc, %if.then3 ], [ 1, %if.end6.out_unlock.sink.split_crit_edge ]
  %3 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %defrag_ipv4_users, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.sink.split, %if.end6.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %err.0 = phi i32 [ %call, %if.end6.out_unlock_crit_edge ], [ -75, %entry.out_unlock_crit_edge ], [ 0, %out_unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @defrag4_mutex) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_defrag_ipv4_disable(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @defrag4_mutex, i32 noundef 0) #4
  %defrag_ipv4_users = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 8
  %0 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %defrag_ipv4_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %defrag_ipv4_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @ipv4_defrag_ops, i32 noundef 2) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @defrag4_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_defrag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @defrag4_net_ops) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @defrag4_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %defrag_ipv4_users = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 39, i32 8
  %0 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %defrag_ipv4_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @ipv4_defrag_ops, i32 noundef 2) #4
  %2 = ptrtoint ptr %defrag_ipv4_users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %defrag_ipv4_users, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv4_conntrack_defrag(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp = icmp eq i16 %6, 2
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %nodefrag = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 12
  %7 = ptrtoint ptr %nodefrag to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %nodefrag, align 8
  %8 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool6.not = icmp eq i16 %8, 0
  br i1 %tobool6.not, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true3.cleanup21_crit_edge

land.lhs.true3.cleanup21_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %_nfct = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %9 = ptrtoint ptr %_nfct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nfct, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp7 = icmp eq i32 %10, 7
  br i1 %cmp7, label %if.end.cleanup21_crit_edge, label %if.end10

if.end.cleanup21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

if.end10:                                         ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %frag_off.i, align 2
  %17 = and i16 %16, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.i.not = icmp eq i16 %17, 0
  br i1 %cmp.i.not, label %if.end10.cleanup21_crit_edge, label %if.then13

if.end10.cleanup21_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

if.then13:                                        ; preds = %if.end10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state, align 4
  %and.i.i = and i32 %10, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then13.if.end.i_crit_edge, label %if.then.i

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  %20 = inttoptr i32 %and.i.i to ptr
  %and.i18.i = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i18.i)
  %cmp.i30 = icmp ugt i32 %and.i18.i, 2
  %cond.i = zext i1 %cmp.i30 to i32
  %dir1.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %20, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %dir1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dir1.i.i.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 1, %cond.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.if.end.i_crit_edge, label %cond.true.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %zone.i.i, align 4
  %phi.cast19.i = zext i16 %24 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i.i, %if.then.i.if.end.i_crit_edge, %if.then13.if.end.i_crit_edge
  %zone_id.0.i = phi i32 [ 0, %if.then13.if.end.i_crit_edge ], [ %phi.cast19.i, %cond.true.i.i ], [ 0, %if.then.i.if.end.i_crit_edge ]
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %25 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not.i.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end.i.if.end6.i_crit_edge, label %nf_bridge_info_get.exit.i.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

nf_bridge_info_get.exit.i.i:                      ; preds = %if.end.i
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %28 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %31 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %nf_bridge_info_get.exit.i.i.if.end6.i_crit_edge, label %nf_bridge_in_prerouting.exit.i

nf_bridge_info_get.exit.i.i.if.end6.i_crit_edge:  ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

nf_bridge_in_prerouting.exit.i:                   ; preds = %nf_bridge_info_get.exit.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load.i.i = load i16, ptr %add.ptr.i.i.i.i, align 4
  %33 = and i16 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool1.i.not.i = icmp eq i16 %33, 0
  br i1 %tobool1.i.not.i, label %nf_bridge_in_prerouting.exit.i.if.end6.i_crit_edge, label %nf_bridge_in_prerouting.exit.i.nf_ct_defrag_user.exit_crit_edge

nf_bridge_in_prerouting.exit.i.nf_ct_defrag_user.exit_crit_edge: ; preds = %nf_bridge_in_prerouting.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nf_ct_defrag_user.exit

nf_bridge_in_prerouting.exit.i.if.end6.i_crit_edge: ; preds = %nf_bridge_in_prerouting.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %nf_bridge_in_prerouting.exit.i.if.end6.i_crit_edge, %nf_bridge_info_get.exit.i.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp7.i = icmp eq i8 %19, 0
  %..i = select i1 %cmp7.i, i32 2, i32 65538
  br label %nf_ct_defrag_user.exit

nf_ct_defrag_user.exit:                           ; preds = %if.end6.i, %nf_bridge_in_prerouting.exit.i.nf_ct_defrag_user.exit_crit_edge
  %.sink.i = phi i32 [ 131074, %nf_bridge_in_prerouting.exit.i.nf_ct_defrag_user.exit_crit_edge ], [ %..i, %if.end6.i ]
  %add13.i = add nuw nsw i32 %.sink.i, %zone_id.0.i
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 4
  tail call fastcc void @local_bh_disable() #4
  %call.i = tail call i32 @ip_defrag(ptr noundef %35, ptr noundef %skb, i32 noundef %add13.i) #4
  tail call fastcc void @local_bh_enable() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i31 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i31, label %nf_ct_ipv4_gather_frags.exit.thread, label %nf_ct_defrag_user.exit.cleanup21_crit_edge

nf_ct_defrag_user.exit.cleanup21_crit_edge:       ; preds = %nf_ct_defrag_user.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup21

nf_ct_ipv4_gather_frags.exit.thread:              ; preds = %nf_ct_defrag_user.exit
  call void @__sanitizer_cov_trace_pc() #6
  %ignore_df.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %36 = ptrtoint ptr %ignore_df.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %ignore_df.i, align 8
  %bf.set.i = or i16 %bf.load.i, 4096
  store i16 %bf.set.i, ptr %ignore_df.i, align 8
  br label %cleanup21

cleanup21:                                        ; preds = %nf_ct_ipv4_gather_frags.exit.thread, %nf_ct_defrag_user.exit.cleanup21_crit_edge, %if.end10.cleanup21_crit_edge, %if.end.cleanup21_crit_edge, %land.lhs.true3.cleanup21_crit_edge
  %retval.1 = phi i32 [ 1, %land.lhs.true3.cleanup21_crit_edge ], [ 1, %if.end.cleanup21_crit_edge ], [ 2, %nf_ct_defrag_user.exit.cleanup21_crit_edge ], [ 1, %nf_ct_ipv4_gather_frags.exit.thread ], [ 1, %if.end10.cleanup21_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_nf_defrag_ipv4_enable, !1, !"__ksymtab_nf_defrag_ipv4_enable", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 154, i32 1}
!2 = !{ptr @__ksymtab_nf_defrag_ipv4_disable, !3, !"__ksymtab_nf_defrag_ipv4_disable", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 168, i32 1}
!4 = !{ptr @__initcall__kmod_nf_defrag_ipv4__589_170_nf_defrag_init6, !5, !"__initcall__kmod_nf_defrag_ipv4__589_170_nf_defrag_init6", i1 false, i1 false}
!5 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 170, i32 1}
!6 = !{ptr @__exitcall_nf_defrag_fini, !7, !"__exitcall_nf_defrag_fini", i1 false, i1 false}
!7 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 171, i32 1}
!8 = !{ptr @__UNIQUE_ID_file590, !9, !"__UNIQUE_ID_file590", i1 false, i1 false}
!9 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 173, i32 1}
!10 = !{ptr @__UNIQUE_ID_license591, !9, !"__UNIQUE_ID_license591", i1 false, i1 false}
!11 = !{ptr @defrag4_net_ops, !12, !"defrag4_net_ops", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 116, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 23, i32 8}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @defrag4_mutex, !14, !"defrag4_mutex", i1 false, i1 false}
!17 = !{ptr @ipv4_defrag_ops, !18, !"ipv4_defrag_ops", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/nf_defrag_ipv4.c", i32 92, i32 33}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
