; ModuleID = '/llk/IR_all_yes/net/ipv4/udp_diag.c_pt.bc'
source_filename = "../net/ipv4/udp_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.112 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.114 }
%union.anon.114 = type { [6 x i32], [24 x i8] }
%struct.inet_diag_req_v2 = type { i8, i8, i8, i8, i32, %struct.inet_diag_sockid }
%struct.udp_hslot = type { %struct.hlist_head, i32, %struct.spinlock, [4 x i8] }
%struct.hlist_head = type { ptr }
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
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@udplite_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @udplite_diag_dump, ptr @udplite_diag_dump_one, ptr @udp_diag_get_info, ptr null, ptr null, ptr @udplite_diag_destroy, i16 136, i16 0 }, [36 x i8] zeroinitializer }, align 32
@udp_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @udp_diag_dump, ptr @udp_diag_dump_one, ptr @udp_diag_get_info, ptr null, ptr null, ptr @udp_diag_destroy, i16 17, i16 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_udp_diag__493_296_udp_diag_init6 = internal global ptr @udp_diag_init, section ".initcall6.init", align 4
@__exitcall_udp_diag_exit = internal global ptr @udp_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file494 = internal constant [32 x i8] c"udp_diag.file=net/ipv4/udp_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license495 = internal constant [21 x i8] c"udp_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [43 x i8] c"udp_diag.alias=net-pf-16-proto-4-type-2-17\00", section ".modinfo", align 1
@__UNIQUE_ID_alias497 = internal constant [44 x i8] c"udp_diag.alias=net-pf-16-proto-4-type-2-136\00", section ".modinfo", align 1
@udplite_table = external dso_local global %struct.udp_table, align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/udp_diag.c\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@udp_table = external dso_local global %struct.udp_table, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"udplite_diag_handler\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 262, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"udp_diag_handler\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 239, i32 39 }
@___asan_gen_.12 = private constant [23 x i8] c"../net/ipv4/udp_diag.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 76, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_alias497, ptr @__UNIQUE_ID_file494, ptr @__UNIQUE_ID_license495, ptr @__exitcall_udp_diag_exit, ptr @__initcall__kmod_udp_diag__493_296_udp_diag_init6, ptr @udp_diag_exit, ptr @udplite_diag_handler, ptr @udp_diag_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udp_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @inet_diag_unregister(ptr noundef nonnull @udplite_diag_handler) #8
  tail call void @inet_diag_unregister(ptr noundef nonnull @udp_diag_handler) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_register(ptr noundef nonnull @udp_diag_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet_diag_register(ptr noundef nonnull @udplite_diag_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %out_lite

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %out_lite, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %out_lite ], [ 0, %if.end.out_crit_edge ]
  ret i32 %err.0

out_lite:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @inet_diag_unregister(ptr noundef nonnull @udp_diag_handler) #8
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udplite_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @udp_dump(ptr noundef nonnull @udplite_table, ptr noundef %skb, ptr noundef %cb, ptr noundef %r)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_diag_dump_one(ptr noundef %cb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @udp_dump_one(ptr noundef nonnull @udplite_table, ptr noundef %cb, ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_diag_get_info(ptr noundef %sk, ptr nocapture noundef writeonly %r, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #8
  %0 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %forward_deficit.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 18
  %2 = ptrtoint ptr %forward_deficit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %forward_deficit.i, align 8
  %sub.i = sub i32 %1, %3
  %idiag_rqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %idiag_rqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %idiag_rqueue, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i5 = add i32 %6, -1
  %idiag_wqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 7
  %7 = ptrtoint ptr %idiag_wqueue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i5, ptr %idiag_wqueue, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_diag_destroy(ptr nocapture noundef readonly %in_skb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__udp_diag_destroy(ptr noundef %in_skb, ptr noundef %req, ptr noundef nonnull @udplite_table)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_dump(ptr nocapture noundef readonly %table, ptr noundef %skb, ptr noundef %cb, ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %call = tail call zeroext i1 @netlink_net_capable(ptr noundef %1, i32 noundef 12) #8
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx4 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %mask = getelementptr inbounds %struct.udp_table, ptr %table, i32 0, i32 2
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp.not151 = icmp ugt i32 %13, %17
  br i1 %cmp.not151, label %entry.done_crit_edge, label %for.body.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body.lr.ph:                                   ; preds = %entry
  %idiag_states = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 4
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 5
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %r, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc85.for.body_crit_edge, %for.body.lr.ph
  %s_num.0155 = phi i32 [ %15, %for.body.lr.ph ], [ 0, %for.inc85.for.body_crit_edge ]
  %slot.0152 = phi i32 [ %13, %for.body.lr.ph ], [ %inc86, %for.inc85.for.body_crit_edge ]
  %18 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table, align 4
  %arrayidx5 = getelementptr %struct.udp_hslot, ptr %19, i32 %slot.0152
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx5, align 4
  %tobool.not.i.not = icmp eq ptr %21, null
  br i1 %tobool.not.i.not, label %for.body.for.inc85_crit_edge, label %if.end

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc85

if.end:                                           ; preds = %for.body
  %lock = getelementptr %struct.udp_hslot, ptr %19, i32 %slot.0152, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5, align 8
  %tobool8.not = icmp eq ptr %23, null
  %add.ptr = getelementptr i8, ptr %23, i32 -84
  %tobool11.not145160 = icmp eq ptr %add.ptr, null
  %tobool11.not145 = or i1 %tobool8.not, %tobool11.not145160
  br i1 %tobool11.not145, label %if.end.for.end_crit_edge, label %if.end.for.body12_crit_edge

if.end.for.body12_crit_edge:                      ; preds = %if.end
  br label %for.body12

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %if.end.for.body12_crit_edge
  %num.1149 = phi i32 [ %num.2.ph, %for.inc.for.body12_crit_edge ], [ 0, %if.end.for.body12_crit_edge ]
  %sk.0146 = phi ptr [ %add.ptr76, %for.inc.for.body12_crit_edge ], [ %add.ptr, %if.end.for.body12_crit_edge ]
  %skc_net.i127 = getelementptr inbounds %struct.sock_common, ptr %sk.0146, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i127, align 4
  %cmp.i.not = icmp eq ptr %25, %6
  br i1 %cmp.i.not, label %if.end18, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end18:                                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1149, i32 %s_num.0155)
  %cmp19 = icmp slt i32 %num.1149, %s_num.0155
  br i1 %cmp19, label %if.end18.next_crit_edge, label %if.end21

if.end18.next_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end21:                                         ; preds = %if.end18
  %26 = ptrtoint ptr %idiag_states to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idiag_states, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.0146, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end21.next_crit_edge, label %if.end24

if.end21.next_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end24:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp26.not = icmp eq i8 %31, 0
  br i1 %cmp26.not, label %if.end24.if.end35_crit_edge, label %land.lhs.true

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end24
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk.0146, i32 0, i32 3
  %32 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %skc_family, align 8
  %34 = zext i8 %31 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %34)
  %cmp32.not = icmp eq i16 %33, %34
  br i1 %cmp32.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true.next_crit_edge

land.lhs.true.next_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk.0146, i32 0, i32 6
  %37 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %inet_sport, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp38.not = icmp eq i16 %36, %38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool44.not = icmp eq i16 %36, 0
  %or.cond = or i1 %tobool44.not, %cmp38.not
  br i1 %or.cond, label %if.end46, label %if.end35.next_crit_edge

if.end35.next_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end46:                                         ; preds = %if.end35
  %39 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %idiag_dport, align 2
  %41 = getelementptr inbounds %struct.sock_common, ptr %sk.0146, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %43)
  %cmp52.not = icmp eq i16 %40, %43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool58.not = icmp eq i16 %40, 0
  %or.cond125 = or i1 %tobool58.not, %cmp52.not
  br i1 %or.cond125, label %if.end60, label %if.end46.next_crit_edge

if.end46.next_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

if.end60:                                         ; preds = %if.end46
  %call.i = tail call i32 @inet_diag_bc_sk(ptr noundef %10, ptr noundef nonnull %sk.0146) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i128 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i128, label %if.end60.next_crit_edge, label %sk_diag_dump.exit

if.end60.next_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

sk_diag_dump.exit:                                ; preds = %if.end60
  %call2.i = tail call i32 @inet_sk_diag_fill(ptr noundef nonnull %sk.0146, ptr noundef null, ptr noundef %skb, ptr noundef %cb, ptr noundef %r, i16 noundef zeroext 2, i1 noundef zeroext %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp63 = icmp slt i32 %call2.i, 0
  br i1 %cmp63, label %cleanup81, label %sk_diag_dump.exit.next_crit_edge

sk_diag_dump.exit.next_crit_edge:                 ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %next

next:                                             ; preds = %sk_diag_dump.exit.next_crit_edge, %if.end60.next_crit_edge, %if.end46.next_crit_edge, %if.end35.next_crit_edge, %land.lhs.true.next_crit_edge, %if.end21.next_crit_edge, %if.end18.next_crit_edge
  %inc = add i32 %num.1149, 1
  br label %for.inc

for.inc:                                          ; preds = %next, %for.body12.for.inc_crit_edge
  %num.2.ph = phi i32 [ %num.1149, %for.body12.for.inc_crit_edge ], [ %inc, %next ]
  %44 = getelementptr inbounds %struct.sock_common, ptr %sk.0146, i32 0, i32 15
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool72.not = icmp eq ptr %46, null
  %add.ptr76 = getelementptr i8, ptr %46, i32 -84
  %tobool11.not163 = icmp eq ptr %add.ptr76, null
  %tobool11.not = or i1 %tobool72.not, %tobool11.not163
  br i1 %tobool11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %num.1.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num.2.ph, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %for.inc85

cleanup81:                                        ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %done

for.inc85:                                        ; preds = %for.end, %for.body.for.inc85_crit_edge
  %num.3.ph = phi i32 [ 0, %for.body.for.inc85_crit_edge ], [ %num.1.lcssa, %for.end ]
  %inc86 = add i32 %slot.0152, 1
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask, align 4
  %cmp.not = icmp ugt i32 %inc86, %48
  br i1 %cmp.not, label %for.inc85.done_crit_edge, label %for.inc85.for.body_crit_edge

for.inc85.for.body_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc85.done_crit_edge:                         ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %for.inc85.done_crit_edge, %cleanup81, %entry.done_crit_edge
  %slot.0144 = phi i32 [ %slot.0152, %cleanup81 ], [ %13, %entry.done_crit_edge ], [ %inc86, %for.inc85.done_crit_edge ]
  %num.4 = phi i32 [ %num.1149, %cleanup81 ], [ %15, %entry.done_crit_edge ], [ %num.3.ph, %for.inc85.done_crit_edge ]
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %slot.0144, ptr %11, align 4
  %50 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %num.4, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_bc_sk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_diag_fill(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udp_dump_one(ptr noundef %tbl, ptr noundef %cb, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %req, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %rcu_read_lock.exit.if.end28_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then12
  ]

rcu_read_lock.exit.if.end28_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5
  %idiag_src = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %idiag_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idiag_src, align 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 4
  %idiag_dst = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %idiag_dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idiag_dst, align 4
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idiag_dport, align 2
  %idiag_if = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %idiag_if to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idiag_if, align 4
  %call7 = tail call ptr @__udp4_lib_lookup(ptr noundef %6, i32 noundef %15, i16 noundef zeroext %17, i32 noundef %19, i16 noundef zeroext %21, i32 noundef %23, i32 noundef 0, ptr noundef %tbl, ptr noundef null) #8
  br label %if.end25

if.then12:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %id13 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5
  %idiag_src14 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %id13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id13, align 4
  %idiag_dst18 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %idiag_dport21 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %idiag_dport21 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idiag_dport21, align 2
  %idiag_if23 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %idiag_if23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idiag_if23, align 4
  %call24 = tail call ptr @__udp6_lib_lookup(ptr noundef %6, ptr noundef %idiag_src14, i16 noundef zeroext %25, ptr noundef %idiag_dst18, i16 noundef zeroext %27, i32 noundef %29, i32 noundef 0, ptr noundef %tbl, ptr noundef null) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then12, %if.then
  %sk.0 = phi ptr [ %call7, %if.then ], [ %call24, %if.then12 ]
  %tobool.not = icmp eq ptr %sk.0, null
  br i1 %tobool.not, label %if.end25.if.end28_crit_edge, label %land.lhs.true

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end25
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk.0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #8
  %30 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %32 = phi i32 [ %31, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i113 = add i32 %32, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %34 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %35, i32 %add.i.i.i113, ptr elementtype(i32) %skc_refcnt) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %35
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !36

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %37 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %38, 1
  %39 = or i32 %add5.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !36

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %40 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.i.i.i.not = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %sk.0
  br label %if.end28

if.end28:                                         ; preds = %refcount_inc_not_zero.exit, %if.end25.if.end28_crit_edge, %rcu_read_lock.exit.if.end28_crit_edge
  %sk.1 = phi ptr [ null, %if.end25.if.end28_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %rcu_read_lock.exit.if.end28_crit_edge ]
  %call.i114 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i114, label %if.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i117

if.end28.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i117:                               ; preds = %if.end28
  %call1.i115 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i119

land.lhs.true.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i119:                              ; preds = %land.lhs.true.i117
  %.b4.i118 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i118, label %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, label %if.then.i120

land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i120:                                     ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i120, %land.lhs.true2.i119.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i117.rcu_read_unlock.exit_crit_edge, %if.end28.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %42 = call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i.i.i.i.i121 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i122, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i122, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool29.not = icmp eq ptr %sk.1, null
  br i1 %tobool29.not, label %rcu_read_unlock.exit.out_nosk_crit_edge, label %if.end31

rcu_read_unlock.exit.out_nosk_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nosk

if.end31:                                         ; preds = %rcu_read_unlock.exit
  %idiag_cookie = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 5
  %call34 = call i32 @sock_diag_check_cookie(ptr noundef nonnull %sk.1, ptr noundef %idiag_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.if.then79_crit_edge

if.end31.if.then79_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

if.end37:                                         ; preds = %if.end31
  %call.i.i = call ptr @__alloc_skb(i32 noundef 244, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool44.not = icmp eq ptr %call.i.i, null
  br i1 %tobool44.not, label %if.end37.if.then79_crit_edge, label %if.end46

if.end37.if.then79_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

if.end46:                                         ; preds = %if.end37
  %call47 = call zeroext i1 @netlink_net_capable(ptr noundef %1, i32 noundef 12) #8
  %call48 = call i32 @inet_sk_diag_fill(ptr noundef nonnull %sk.1, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef %cb, ptr noundef %req, i16 noundef zeroext 0, i1 noundef zeroext %call47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end75

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call48)
  %cmp52 = icmp eq i32 %call48, -90
  br i1 %cmp52, label %do.end, label %if.then51.if.end68_crit_edge, !prof !38

if.then51.if.end68_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #8
  br label %if.end68

if.end68:                                         ; preds = %do.end, %if.then51.if.end68_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %if.then79

if.end75:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 54
  %46 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %diag_nlsk, align 8
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %portid, align 4
  %call.i123 = call i32 @netlink_unicast(ptr noundef %47, ptr noundef nonnull %call.i.i, i32 noundef %49, i32 noundef 64) #8
  %50 = call i32 @llvm.smin.i32(i32 %call.i123, i32 0) #8
  br label %if.then79

if.then79:                                        ; preds = %if.end75, %if.end68, %if.end37.if.then79_crit_edge, %if.end31.if.then79_crit_edge
  %err.0 = phi i32 [ %call34, %if.end31.if.then79_crit_edge ], [ %call48, %if.end68 ], [ %50, %if.end75 ], [ -12, %if.end37.if.then79_crit_edge ]
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 19
  %call.i.i.i.i.i.i124 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i125, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_nosk_crit_edge, label %if.then10.i.i.i.i, !prof !36

if.end5.i.i.i.i.out_nosk_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nosk

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %out_nosk

if.then.i125:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @sk_free(ptr noundef nonnull %sk.1) #8
  br label %out_nosk

out_nosk:                                         ; preds = %if.then.i125, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_nosk_crit_edge, %rcu_read_unlock.exit.out_nosk_crit_edge
  %err.1 = phi i32 [ -2, %rcu_read_unlock.exit.out_nosk_crit_edge ], [ %err.0, %if.end5.i.i.i.i.out_nosk_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i125 ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp4_lib_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_check_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__udp_diag_destroy(ptr nocapture noundef readonly %in_skb, ptr noundef %req, ptr noundef %tbl) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %req, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %10, label %if.else50 [
    i8 2, label %if.then
    i8 10, label %if.then12
  ]

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5
  %idiag_dst = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %idiag_dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idiag_dst, align 4
  %idiag_dport = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %idiag_dport to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idiag_dport, align 2
  %idiag_src = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %idiag_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idiag_src, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id, align 4
  %idiag_if = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %idiag_if to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idiag_if, align 4
  %call7 = tail call ptr @__udp4_lib_lookup(ptr noundef %4, i32 noundef %13, i16 noundef zeroext %15, i32 noundef %17, i16 noundef zeroext %19, i32 noundef %21, i32 noundef 0, ptr noundef %tbl, ptr noundef null) #8
  br label %if.end52

if.then12:                                        ; preds = %rcu_read_lock.exit
  %id13 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5
  %idiag_dst14 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %idiag_dst14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idiag_dst14, align 4
  %arrayidx2.i = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %25, %23
  %arrayidx4.i = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %27, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.then12.if.else36_crit_edge

if.then12.if.else36_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36

land.lhs.true:                                    ; preds = %if.then12
  %idiag_src18 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %idiag_src18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idiag_src18, align 4
  %arrayidx2.i98 = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx2.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i98, align 4
  %or.i99 = or i32 %31, %29
  %arrayidx4.i100 = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx4.i100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i100, align 4
  %xor.i101 = xor i32 %33, 65535
  %or5.i102 = or i32 %or.i99, %xor.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i102)
  %cmp.i103 = icmp eq i32 %or5.i102, 0
  br i1 %cmp.i103, label %if.then22, label %land.lhs.true.if.else36_crit_edge

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else36

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25 = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx25, align 4
  %idiag_dport27 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %idiag_dport27 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %idiag_dport27, align 2
  %arrayidx30 = getelementptr %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx30, align 4
  %40 = ptrtoint ptr %id13 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %id13, align 4
  %idiag_if34 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %idiag_if34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idiag_if34, align 4
  %call35 = tail call ptr @__udp4_lib_lookup(ptr noundef %4, i32 noundef %35, i16 noundef zeroext %37, i32 noundef %39, i16 noundef zeroext %41, i32 noundef %43, i32 noundef 0, ptr noundef %tbl, ptr noundef null) #8
  br label %if.end52

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.then12.if.else36_crit_edge
  %idiag_dport41 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %idiag_dport41 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %idiag_dport41, align 2
  %idiag_src43 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %id13 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %id13, align 4
  %idiag_if48 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 4
  %48 = ptrtoint ptr %idiag_if48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idiag_if48, align 4
  %call49 = tail call ptr @__udp6_lib_lookup(ptr noundef %4, ptr noundef %idiag_dst14, i16 noundef zeroext %45, ptr noundef %idiag_src43, i16 noundef zeroext %47, i32 noundef %49, i32 noundef 0, ptr noundef %tbl, ptr noundef null) #8
  br label %if.end52

if.else50:                                        ; preds = %rcu_read_lock.exit
  %call.i104 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i104, label %if.else50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i107

if.else50.rcu_read_unlock.exit_crit_edge:         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i107:                               ; preds = %if.else50
  %call1.i105 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %tobool.not.i106 = icmp eq i32 %call1.i105, 0
  br i1 %tobool.not.i106, label %land.lhs.true.i107.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i109

land.lhs.true.i107.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i109:                              ; preds = %land.lhs.true.i107
  %.b4.i108 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i108, label %land.lhs.true2.i109.rcu_read_unlock.exit_crit_edge, label %if.then.i110

land.lhs.true2.i109.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i110:                                     ; preds = %land.lhs.true2.i109
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i110, %land.lhs.true2.i109.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i107.rcu_read_unlock.exit_crit_edge, %if.else50.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %50 = tail call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i.i.i.i.i111 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i111 to ptr
  %preempt_count.i.i.i.i112 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i112, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i112, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end52:                                         ; preds = %if.else36, %if.then22, %if.then
  %sk.0 = phi ptr [ %call7, %if.then ], [ %call35, %if.then22 ], [ %call49, %if.else36 ]
  %tobool.not = icmp eq ptr %sk.0, null
  br i1 %tobool.not, label %if.end52.if.end56_crit_edge, label %land.lhs.true53

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

land.lhs.true53:                                  ; preds = %if.end52
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %sk.0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #8
  %54 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true53
  %56 = phi i32 [ %55, %land.lhs.true53 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %57 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i113 = add i32 %56, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %58 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %60 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %59, i32 %add.i.i.i113, ptr elementtype(i32) %skc_refcnt) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %60, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %60, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %59
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !36

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %61 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %62, 1
  %63 = or i32 %add5.i.i.i, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !36

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #8
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %64 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool12.i.i.i.not = icmp eq i32 %65, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %sk.0
  br label %if.end56

if.end56:                                         ; preds = %refcount_inc_not_zero.exit, %if.end52.if.end56_crit_edge
  %sk.1 = phi ptr [ null, %if.end52.if.end56_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  %call.i114 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i114, label %if.end56.rcu_read_unlock.exit124_crit_edge, label %land.lhs.true.i117

if.end56.rcu_read_unlock.exit124_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit124

land.lhs.true.i117:                               ; preds = %if.end56
  %call1.i115 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i117.rcu_read_unlock.exit124_crit_edge, label %land.lhs.true2.i119

land.lhs.true.i117.rcu_read_unlock.exit124_crit_edge: ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit124

land.lhs.true2.i119:                              ; preds = %land.lhs.true.i117
  %.b4.i118 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i118, label %land.lhs.true2.i119.rcu_read_unlock.exit124_crit_edge, label %if.then.i120

land.lhs.true2.i119.rcu_read_unlock.exit124_crit_edge: ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit124

if.then.i120:                                     ; preds = %land.lhs.true2.i119
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_unlock.exit124

rcu_read_unlock.exit124:                          ; preds = %if.then.i120, %land.lhs.true2.i119.rcu_read_unlock.exit124_crit_edge, %land.lhs.true.i117.rcu_read_unlock.exit124_crit_edge, %if.end56.rcu_read_unlock.exit124_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %66 = call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i.i.i.i.i121 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i121 to ptr
  %preempt_count.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i122, align 4
  %sub.i.i.i123 = add i32 %69, -1
  store volatile i32 %sub.i.i.i123, ptr %preempt_count.i.i.i.i122, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool57.not = icmp eq ptr %sk.1, null
  br i1 %tobool57.not, label %rcu_read_unlock.exit124.cleanup_crit_edge, label %if.end59

rcu_read_unlock.exit124.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %rcu_read_unlock.exit124
  %idiag_cookie = getelementptr inbounds %struct.inet_diag_req_v2, ptr %req, i32 0, i32 5, i32 5
  %call62 = call i32 @sock_diag_check_cookie(ptr noundef nonnull %sk.1, ptr noundef %idiag_cookie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end59
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 19
  %call.i.i.i.i.i.i125 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i126, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !36

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %cleanup

if.then.i126:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @sk_free(ptr noundef nonnull %sk.1) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %call66 = call i32 @sock_diag_destroy(ptr noundef nonnull %sk.1, i32 noundef 103) #8
  %skc_refcnt.i127 = getelementptr inbounds %struct.sock_common, ptr %sk.1, i32 0, i32 19
  %call.i.i.i.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i127, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i127, i32 1, i32 3, i32 1) #8
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i127, ptr %skc_refcnt.i127, i32 1, ptr elementtype(i32) %skc_refcnt.i127) #8, !srcloc !40
  %asmresult.i.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i129)
  %cmp.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i129, 1
  br i1 %cmp.i.i.i.i130, label %if.then.i134, label %if.end5.i.i.i.i132

if.end5.i.i.i.i132:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i129)
  %.not.i.i.i.i131 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i129, 0
  br i1 %.not.i.i.i.i131, label %if.end5.i.i.i.i132.cleanup_crit_edge, label %if.then10.i.i.i.i133, !prof !36

if.end5.i.i.i.i132.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i133:                             ; preds = %if.end5.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i127, i32 noundef 3) #8
  br label %cleanup

if.then.i134:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  call void @sk_free(ptr noundef nonnull %sk.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i134, %if.then10.i.i.i.i133, %if.end5.i.i.i.i132.cleanup_crit_edge, %if.then.i126, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %rcu_read_unlock.exit124.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit ], [ -2, %rcu_read_unlock.exit124.cleanup_crit_edge ], [ -2, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -2, %if.then10.i.i.i.i ], [ -2, %if.then.i126 ], [ %call66, %if.end5.i.i.i.i132.cleanup_crit_edge ], [ %call66, %if.then10.i.i.i.i133 ], [ %call66, %if.then.i134 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @udp_dump(ptr noundef nonnull @udp_table, ptr noundef %skb, ptr noundef %cb, ptr noundef %r)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_diag_dump_one(ptr noundef %cb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @udp_dump_one(ptr noundef nonnull @udp_table, ptr noundef %cb, ptr noundef %req)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_diag_destroy(ptr nocapture noundef readonly %in_skb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__udp_diag_destroy(ptr noundef %in_skb, ptr noundef %req, ptr noundef nonnull @udp_table)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_udp_diag__493_296_udp_diag_init6, !1, !"__initcall__kmod_udp_diag__493_296_udp_diag_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/udp_diag.c", i32 296, i32 1}
!2 = !{ptr @__exitcall_udp_diag_exit, !3, !"__exitcall_udp_diag_exit", i1 false, i1 false}
!3 = !{!"../net/ipv4/udp_diag.c", i32 297, i32 1}
!4 = !{ptr @__UNIQUE_ID_file494, !5, !"__UNIQUE_ID_file494", i1 false, i1 false}
!5 = !{!"../net/ipv4/udp_diag.c", i32 298, i32 1}
!6 = !{ptr @__UNIQUE_ID_license495, !5, !"__UNIQUE_ID_license495", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias496, !8, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!8 = !{!"../net/ipv4/udp_diag.c", i32 299, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias497, !10, !"__UNIQUE_ID_alias497", i1 false, i1 false}
!10 = !{!"../net/ipv4/udp_diag.c", i32 300, i32 1}
!11 = !{ptr @udplite_diag_handler, !12, !"udplite_diag_handler", i1 false, i1 false}
!12 = !{!"../net/ipv4/udp_diag.c", i32 262, i32 39}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/udp_diag.c", i32 76, i32 3}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @udp_diag_handler, !23, !"udp_diag_handler", i1 false, i1 false}
!23 = !{!"../net/ipv4/udp_diag.c", i32 239, i32 39}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2149361543}
!35 = !{i64 829917, i64 829941, i64 829962, i64 829979, i64 829996}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2149361809}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2148434939}
!40 = !{i64 2148349379, i64 2148349411, i64 2148349440, i64 2148349474, i64 2148349505, i64 2148349528}
!41 = !{i64 2149311053}
